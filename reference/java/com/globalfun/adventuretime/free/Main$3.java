package com.globalfun.adventuretime.free;

import com.fyber.requesters.InterstitialRequester;

/* JADX INFO: loaded from: classes.dex */
class Main$3 implements Runnable {
    Main$3() {
    }

    @Override // java.lang.Runnable
    public void run() {
        InterstitialRequester.create(Main.midlet.requestCallback).request(Main.midlet);
    }
}
