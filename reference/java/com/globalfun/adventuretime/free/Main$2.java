package com.globalfun.adventuretime.free;

import android.content.Intent;
import com.fyber.ads.AdFormat;
import com.fyber.requesters.RequestCallback;
import com.fyber.requesters.RequestError;

/* JADX INFO: loaded from: classes.dex */
class Main$2 implements RequestCallback {
    Main$2() {
    }

    @Override // com.fyber.requesters.Callback
    public void onRequestError(RequestError requestError) {
    }

    @Override // com.fyber.requesters.RequestCallback
    public void onAdAvailable(Intent intent) {
        Main.access$1(Main.midlet, intent);
    }

    @Override // com.fyber.requesters.RequestCallback
    public void onAdNotAvailable(AdFormat adFormat) {
        int i = 0 + 1;
    }
}
