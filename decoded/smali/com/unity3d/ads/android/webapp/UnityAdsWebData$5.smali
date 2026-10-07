.class final Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;
.super Ljava/util/TimerTask;
.source "UnityAdsWebData.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->isShowingAds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const-string v0, "Refreshing ad plan to get new data"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_0
    const-string v0, "Refreshing ad plan after current ad"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->access$102(Z)Z

    goto :goto_0
.end method
