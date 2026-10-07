package com.globalfun.adventuretime.free;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.Signature;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.util.Base64;
import android.util.Log;
import android.view.Display;
import com.flurry.android.Constants;
import com.fyber.Fyber;
import com.fyber.requesters.RequestCallback;
import com.jirbo.adcolony.AdColony;
import com.lklab.azagmglib.AzaGmg;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public final class Main extends Activity {
    private static final int DIALOG_ERROR = 1;
    static boolean HIGH = false;
    static final int INTERSTITIAL_REQUEST_CODE = 1200;
    static boolean LOW = false;
    static boolean MEDIUM = false;
    private static final int PNG_CHK_TYPE_LENGTH = 4;
    private static final int PNG_CRC_POLYNOMIAL = -306674912;
    private static final int PNG_CRC_REGISTER = -1;
    private static final int PNG_CRC_TABLE_SIZE = 256;
    private static final int PNG_HEADER_LENGTH = 8;
    static boolean PREMIUM = false;
    static final int REWARDED_VIDEO_REQUEST_CODE = 1100;
    static final int TEMPORARY_DEFAULT_COLOR = 11184810;
    static final int TEMPORARY_ERROR_FIXER = 1;
    static final int TEMPORARY_ERROR_FIXER_2 = 7829367;
    private static int[] crcTable;
    static Engine engine;
    static GameThread gameThread;
    static Image gmgIcon;
    static volatile Handler handler;
    public static Main midlet;
    static RequestCallback requestCallbackVideo;
    static int size;
    public static Object sync;
    AzaGmg azaGmg;
    private String errorMessage;
    private Intent mIntent;
    private Intent mIntentVideo;
    RequestCallback requestCallback = new Main$1(this);
    Resources res;
    private Vibrator vibrator;

    static {
        System.gc();
        PREMIUM = false;
        sync = new Object();
        gmgIcon = null;
        requestCallbackVideo = new Main$2();
        size = 1;
        MEDIUM = false;
        LOW = false;
        HIGH = false;
        handler = null;
        crcTable = null;
    }

    static /* synthetic */ void access$0(Main main, Intent intent) {
        main.mIntent = intent;
    }

    static /* synthetic */ void access$1(Main main, Intent intent) {
        main.mIntentVideo = intent;
    }

    public void exitApplication() {
        finish();
        engine.exit();
        System.exit(0);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (AdColony.isConfigured()) {
            AdColony.pause();
        }
        if (engine != null) {
            engine.hideNotify();
        }
    }

    static void showMoreApps() {
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (engine != null) {
            engine.show();
        }
        Fyber.with("61229", this).withSecurityToken("5ea967eb42e73fd912f15894012b0990").start();
        if (AdColony.isConfigured()) {
            AdColony.resume(this);
        }
    }

    public void showAds() {
        if (this.mIntent != null) {
            startActivityForResult(this.mIntent, INTERSTITIAL_REQUEST_CODE);
            this.mIntent = null;
        }
    }

    public static void displayInterstitial() {
        handler.post(new Main$3());
    }

    public void startApp() {
        engine.start();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        if (engine != null) {
            engine.show();
        }
        logMessage("Main.onRestart()");
        super.onRestart();
        Display display = getWindowManager().getDefaultDisplay();
        GameCanvas.trueScreenWidth = Math.max(display.getWidth(), display.getHeight()) / size;
        GameCanvas.trueScreenHeight = Math.min(display.getWidth(), display.getHeight()) / size;
        int trueW = Math.max(display.getHeight(), display.getWidth());
        int trueH = Math.min(display.getHeight(), display.getWidth());
        if (trueH > 540) {
            float w = trueH / 480.0f;
            size = ((double) trueH) % 480.0d == 0.0d ? (int) w : ((int) w) + 1;
            GameCanvas.trueScreenWidth = trueW / size;
            GameCanvas.trueScreenHeight = trueH / size;
        }
        if (GameCanvas.trueScreenHeight > 350) {
            HIGH = true;
            this.res = new Resources480();
        } else {
            MEDIUM = true;
            this.res = new Resources320();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        logMessage("Main.onStart()");
        UtilsAndroid.onStartSessionFlurry(this, "7B83ZP9ZNZYZPXN3RTV8");
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        logMessage("Main.onStop()");
        engine.rmsWrite();
        UtilsAndroid.onEndSessionFlurry(this);
        super.onStop();
    }

    public static void logMessage(String msg) {
    }

    public static String getLogMessages() {
        return null;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (handler == null) {
            handler = new Handler();
        }
        getWindow().addFlags(128);
        setRequestedOrientation(0);
        Display display = getWindowManager().getDefaultDisplay();
        GameCanvas.trueScreenWidth = Math.max(display.getWidth(), display.getHeight()) / size;
        GameCanvas.trueScreenHeight = Math.min(display.getWidth(), display.getHeight()) / size;
        int trueW = Math.max(display.getHeight(), display.getWidth());
        int trueH = Math.min(display.getHeight(), display.getWidth());
        if (trueH > 540) {
            float w = trueH / 480.0f;
            size = ((double) trueH) % 480.0d == 0.0d ? (int) w : ((int) w) + 1;
            GameCanvas.trueScreenWidth = trueW / size;
            GameCanvas.trueScreenHeight = trueH / size;
        }
        if (GameCanvas.trueScreenHeight > 350) {
            HIGH = true;
            this.res = new Resources480();
        } else {
            MEDIUM = true;
            this.res = new Resources320();
        }
        if (midlet == null) {
            midlet = this;
            engine = new Engine(this);
        }
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if (gameThread == null) {
            gameThread = new GameThread(this);
        } else {
            gameThread.recreateView(this);
        }
        try {
            Package pack = getClass().getPackage();
            String packageName = pack.getName();
            PackageInfo info = getPackageManager().getPackageInfo(packageName, 64);
            for (Signature signature : info.signatures) {
                MessageDigest md = MessageDigest.getInstance("SHA");
                md.update(signature.toByteArray());
                Log.d("KeyHash:", Base64.encodeToString(md.digest(), 0));
            }
        } catch (PackageManager$NameNotFoundException e) {
        } catch (NoSuchAlgorithmException e2) {
        }
        this.azaGmg = new AzaGmg(this, "ooo.json", new Main$4(this));
    }

    public String getAppProperty(String key) {
        return getPreferences(0).getString(key, null);
    }

    public String getVersionName() {
        try {
            PackageInfo pInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
            return pInfo.versionName;
        } catch (PackageManager$NameNotFoundException e) {
            return null;
        }
    }

    public boolean platformRequest(String req) {
        throw new UnsupportedOperationException();
    }

    public boolean vibrate(int duration) {
        if (this.vibrator == null) {
            this.vibrator = (Vibrator) getSystemService("vibrator");
        }
        this.vibrator.vibrate(duration);
        return true;
    }

    public InputStream getResourceAsStream(String resName) throws IOException {
        String resName2;
        if (resName.startsWith("/")) {
            resName = resName.substring(1);
        }
        if (HIGH) {
            resName2 = "high/" + resName;
        } else {
            resName2 = "medium/" + resName;
        }
        return getAssets().open(resName2);
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int id) {
        if (id != 1) {
            return null;
        }
        Dialog dialog = new AlertDialog$Builder(this).setTitle("Oh Noes").setMessage("").setPositiveButton("Ok", new Main$5(this)).setNegativeButton("Meh", new Main$6(this)).create();
        return dialog;
    }

    @Override // android.app.Activity
    protected void onPrepareDialog(int id, Dialog dialog) {
        super.onPrepareDialog(id, dialog);
        if (id == 1) {
            ((AlertDialog) dialog).setMessage(this.errorMessage);
        }
    }

    public void showErrorDialog(String errorMessage) {
        this.errorMessage = errorMessage;
        runOnUiThread(new Main$7(this));
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
        engine.exit();
    }

    private static int parseInt(byte[] data, int off) {
        return ((data[off] & Constants.UNKNOWN) << 24) | ((data[off + 1] & Constants.UNKNOWN) << 16) | ((data[off + 2] & Constants.UNKNOWN) << 8) | (data[off + 3] & Constants.UNKNOWN);
    }

    private static void copyInt(byte[] data, int off, int value) {
        data[off] = (byte) ((value >> 24) & 255);
        data[off + 1] = (byte) ((value >> 16) & 255);
        data[off + 2] = (byte) ((value >> 8) & 255);
        data[off + 3] = (byte) (value & 255);
    }

    public static byte[] setChunk(String name, byte[] data, byte[] set) {
        byte[] chunk = null;
        int i = 8;
        while (i < data.length) {
            int indexLength = i;
            int chunkLen = parseInt(data, i);
            int i2 = i + 4;
            char[] chunkChars = new char[4];
            for (int j = 0; j < 4; j++) {
                chunkChars[j] = (char) data[i2];
                i2++;
            }
            String chunkName = new String(chunkChars);
            int indexData = i2;
            if (chunkName.equals(name)) {
                if (set == null) {
                    chunk = new byte[chunkLen];
                    System.arraycopy(data, indexData, chunk, 0, chunkLen);
                } else {
                    System.arraycopy(set, 0, data, indexData, set.length);
                }
            }
            int i3 = i2 + chunkLen;
            copyInt(data, indexLength, chunkLen);
            int calculatedCrc = crc(-1, data, i2, 4);
            copyInt(data, i3, crc(calculatedCrc, data, indexData, chunkLen) ^ (-1));
            i = i3 + 4;
        }
        return chunk;
    }

    private static int crc(int register, byte[] data, int off, int len) {
        if (crcTable == null) {
            crcTable = new int[256];
            int i = 256;
            while (true) {
                i--;
                if (i < 0) {
                    break;
                }
                int c = i;
                for (int k = 0; k < 8; k++) {
                    boolean xor = (c & 1) > 0;
                    c >>>= 1;
                    if (xor) {
                        c ^= PNG_CRC_POLYNOMIAL;
                    }
                }
                crcTable[i] = c;
            }
        }
        int i2 = off;
        int j = len;
        while (true) {
            j--;
            if (j >= 0) {
                int b = data[i2];
                int index = (register ^ b) & 255;
                register = crcTable[index] ^ (register >>> 8);
                i2++;
            } else {
                return register;
            }
        }
    }

    public static Image createMatte(byte[] imgData, int color) {
        byte[] palette = setChunk("PLTE", imgData, null);
        byte[] rgb = {(byte) ((color >> 16) & 255), (byte) ((color >> 8) & 255), (byte) (color & 255)};
        int j = 0;
        for (int i = 0; i < palette.length; i++) {
            palette[i] = rgb[j];
            j++;
            if (j >= rgb.length) {
                j = 0;
            }
        }
        setChunk("PLTE", imgData, palette);
        return Image.createImage(imgData, 0, imgData.length);
    }
}
