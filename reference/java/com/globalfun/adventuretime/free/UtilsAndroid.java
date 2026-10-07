package com.globalfun.adventuretime.free;

import android.app.Activity;
import android.content.Intent;
import com.flurry.android.FlurryAgent;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UtilsAndroid {
    static void ShareGeneric(String message) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", Main.midlet.getResources().getString(2131034112));
        intent.putExtra("android.intent.extra.TEXT", message);
        Main.midlet.startActivity(Intent.createChooser(intent, "Share"));
    }

    static void onStartSessionFlurry(Activity main, String key) {
        FlurryAgent.onStartSession(main, key);
    }

    static void onEndSessionFlurry(Activity main) {
        FlurryAgent.onEndSession(main);
    }

    static void sendFlurryParams(String id, Map f) {
        FlurryAgent.logEvent(id, (Map<String, String>) f);
    }

    static void sendFlurry(String id) {
        FlurryAgent.logEvent(id);
    }
}
