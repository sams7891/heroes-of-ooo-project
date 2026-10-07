package com.globalfun.adventuretime.free;

import android.content.Intent;
import com.fyber.ads.AdFormat;
import com.fyber.requesters.RequestCallback;
import com.fyber.requesters.RequestError;

/* JADX INFO: loaded from: classes.dex */
class Main$1 implements RequestCallback {
    final /* synthetic */ Main this$0;

    Main$1(Main main) {
        this.this$0 = main;
    }

    @Override // com.fyber.requesters.Callback
    public void onRequestError(RequestError requestError) {
        System.out.println("AZA onRequestError");
    }

    @Override // com.fyber.requesters.RequestCallback
    public void onAdAvailable(Intent intent) {
        Main.access$0(Main.midlet, intent);
        this.this$0.showAds();
    }

    @Override // com.fyber.requesters.RequestCallback
    public void onAdNotAvailable(AdFormat adFormat) {
        System.out.println("AZA onAdNotAvailable");
    }
}
