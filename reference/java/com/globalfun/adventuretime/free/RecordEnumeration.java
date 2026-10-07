package com.globalfun.adventuretime.free;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecordEnumeration {
    private int current = 0;
    private List<byte[]> data;
    private int num;

    public RecordEnumeration(List<byte[]> data, int num) {
        this.num = 0;
        this.data = data;
        this.num = num;
    }

    public boolean hasNextElement() {
        return this.current < this.num;
    }

    public byte[] nextRecord() throws RecordStoreException {
        if (this.current < this.num) {
            this.current++;
            return this.data.get(this.current - 1);
        }
        throw new RecordStoreException("Error in reading the next Record!");
    }

    public int nextRecordId() throws RecordStoreException {
        if (this.current < this.num) {
            return this.current;
        }
        throw new RecordStoreException("Error in nextRecordId");
    }
}
