package com.globalfun.adventuretime.free;

import com.flurry.android.Constants;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class RecordStore {
    private static List<byte[]> data = new ArrayList();
    private static int current = 0;
    private static int totalSize = 0;
    private static String prefix = "recordStore";
    private static RecordStore store = new RecordStore();
    private static String openRecordStoreName = "";

    public RecordEnumeration enumerateRecords(RecordFilter filter, RecordComparator comparator, boolean keepUpdated) {
        return new RecordEnumeration(data, current);
    }

    public void closeRecordStore() {
        current = 0;
        data.clear();
    }

    public byte[] getRecord(int recordId) {
        return data.get(recordId);
    }

    public byte[] getRecord(int recordId, byte[] arr, int offset) {
        byte[] from = data.get(recordId);
        System.arraycopy(from, offset, arr, 0, arr.length);
        return arr;
    }

    public void setRecord(int recordId, byte[] newData, int offset, int numBytes) throws RecordStoreException {
        if (recordId < current) {
            totalSize -= data.get(recordId).length;
            totalSize += numBytes;
            data.set(recordId, newData);
            saveRecordStoreToFile();
            return;
        }
        throw new RecordStoreException("");
    }

    public int addRecord(byte[] recordData, int offset, int numBytes) {
        totalSize += numBytes;
        data.add(recordData);
        current++;
        saveRecordStoreToFile();
        return current - 1;
    }

    public int getNumRecords() {
        return data.size();
    }

    public static String[] listRecordStores() {
        String[] allfiles = Main.midlet.fileList();
        Vector tmp = new Vector();
        for (int i = 0; i < allfiles.length; i++) {
            if (allfiles[i].startsWith(prefix)) {
                tmp.add(new String(allfiles[i].replaceAll(prefix, "")).replaceAll(".dat", ""));
            }
        }
        tmp.trimToSize();
        String[] allfiles2 = new String[tmp.size()];
        for (int i2 = 0; i2 < allfiles2.length; i2++) {
            allfiles2[i2] = (String) tmp.get(i2);
        }
        return allfiles2;
    }

    public static void deleteRecordStore(String recordStoreName) throws RecordStoreNotFoundException {
        if (!Main.midlet.deleteFile(String.valueOf(prefix) + recordStoreName + ".dat")) {
            throw new RecordStoreNotFoundException("did not delete RecordStore");
        }
    }

    public static RecordStore openRecordStore(String recordStoreName, boolean createIfNecessary) throws RecordStoreNotFoundException {
        try {
            totalSize = 0;
            InputStream is = Main.midlet.openFileInput(String.valueOf(prefix) + recordStoreName + ".dat");
            readDataFromInputStream(is);
            openRecordStoreName = String.valueOf(prefix) + recordStoreName;
            return store;
        } catch (FileNotFoundException e) {
            if (createIfNecessary) {
                CreateNewRecordStore();
                openRecordStoreName = String.valueOf(prefix) + recordStoreName;
                return store;
            }
            throw new RecordStoreNotFoundException("Could not Find the recordStore");
        }
    }

    private static void CreateNewRecordStore() {
        current = 0;
        data.clear();
        totalSize = 0;
    }

    private static void readDataFromInputStream(InputStream is) {
        totalSize = 0;
        int read = 0;
        int totalRead = 0;
        byte[] tmp = new byte[1024];
        byte[] totaldata = new byte[20480];
        while (read != -1) {
            try {
                read = is.read(tmp);
                if (read > -1) {
                    System.arraycopy(tmp, 0, totaldata, totalRead, read);
                    totalRead += read;
                }
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
        int readOffset = 0;
        data.clear();
        current = 0;
        while (readOffset < totalRead) {
            int length = parseInt(totaldata, readOffset);
            readOffset += 4;
            if (length > 0) {
                data.add(new byte[length]);
                System.arraycopy(totaldata, readOffset, data.get(current), 0, length);
                readOffset += length;
                current++;
            }
        }
        totalSize = totalRead;
    }

    static final int parseInt(byte[] buf, int offset) {
        int offset2 = offset + 1;
        int i = (buf[offset] & Constants.UNKNOWN) << 24;
        int offset3 = offset2 + 1;
        return i | ((buf[offset2] & Constants.UNKNOWN) << 16) | ((buf[offset3] & Constants.UNKNOWN) << 8) | (buf[offset3 + 1] & Constants.UNKNOWN);
    }

    static final byte[] getIntBytes(int i, byte[] buf, int offset) {
        int offset2 = offset + 1;
        buf[offset] = (byte) ((i >>> 24) & 255);
        int offset3 = offset2 + 1;
        buf[offset2] = (byte) ((i >>> 16) & 255);
        buf[offset3] = (byte) ((i >>> 8) & 255);
        buf[offset3 + 1] = (byte) (i & 255);
        return buf;
    }

    private static void saveRecordStoreToFile() {
        try {
            OutputStream os = Main.midlet.openFileOutput(String.valueOf(openRecordStoreName) + ".dat", 0);
            byte[] buffer = new byte[totalSize + (current * 4)];
            int offset = 0;
            for (int i = 0; i < current; i++) {
                getIntBytes(data.get(i).length, buffer, offset);
                int offset2 = offset + 4;
                System.arraycopy(data.get(i), 0, buffer, offset2, data.get(i).length);
                offset = offset2 + data.get(i).length;
            }
            os.write(buffer);
            os.flush();
            os.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
