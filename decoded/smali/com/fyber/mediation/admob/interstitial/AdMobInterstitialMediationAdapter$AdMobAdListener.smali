.class Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdMobInterstitialMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdMobAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;


# direct methods
.method private constructor <init>(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .param p2, "x1"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;-><init>(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 200
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad closed."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$500(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V

    .line 203
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    const-string v1, "ERROR_CODE_INTERNAL_ERROR"

    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$600(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad request failed due to internal error."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    const-string v1, "ERROR_CODE_INVALID_REQUEST"

    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$700(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad request failed due to invalid request."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    const-string v1, "ERROR_CODE_NETWORK_ERROR"

    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$800(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad request failed due to network error."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    const-string v1, "ERROR_CODE_NO_FILL"

    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$900(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad request failed due to code not filled error."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    .line 241
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$1000(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$1100(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V

    .line 243
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User leaves the application. Clicked on the ad."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$1002(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Z)Z

    .line 246
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 254
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$1200(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V

    .line 255
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad received."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    .line 265
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$1300(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V

    .line 266
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$1002(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Z)Z

    .line 267
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad opened."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method
