package com.globalfun.adventuretime.free;

import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import com.lklab.azagmglib.AzaGmg$GmgListener;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class Main$4 extends AzaGmg$GmgListener {
    final /* synthetic */ Main this$0;

    Main$4(Main main) {
        this.this$0 = main;
    }

    @Override // com.lklab.azagmglib.AzaGmg$GmgListener
    public void onLoadListener() {
        Bitmap gmg;
        try {
            SharedPreferences sha = this.this$0.getSharedPreferences("AzaGMG", 0);
            String iconUrl = sha.getString("Saved_Icon", null);
            if (iconUrl == null) {
                sha.edit().putString("Saved_Url", "market://details?id=com.globalfun.masters.google").commit();
                AssetManager assetManager = this.this$0.getAssets();
                InputStream istr = null;
                try {
                    istr = assetManager.open("icekingdom_new.png");
                } catch (IOException e) {
                    e.printStackTrace();
                }
                gmg = BitmapFactory.decodeStream(istr);
            } else {
                String[] split = iconUrl.split("/");
                Package pack = getClass().getPackage();
                String packageName = pack.getName();
                String path = Environment.getExternalStorageDirectory() + "/android/data/" + packageName + "/";
                gmg = BitmapFactory.decodeFile(String.valueOf(path) + split[split.length - 1]);
            }
            int srcWidth = gmg.getWidth();
            int srcHeight = gmg.getHeight();
            Main.gmgIcon = null;
            int i = UI.state;
        } catch (Throwable e2) {
            Main.gmgIcon = null;
            e2.printStackTrace();
        }
    }
}
