.class public Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "UnityAdsInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;",
        ">;",
        "Lcom/unity3d/ads/android/IUnityAdsListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isAdShown:Z

.field private mZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;Ljava/util/Map;)V
    .locals 1
    .param p1, "adapter"    # Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->isAdShown:Z

    .line 29
    iput-object p2, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->configs:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private getOptionsMaps()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 110
    const/4 v5, 0x5

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "noOfferScreen"

    aput-object v5, v1, v4

    const/4 v5, 0x1

    const-string v6, "openAnimated"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "sid"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "muteVideoSounds"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "useDeviceOrientationForVideo"

    aput-object v6, v1, v5

    .line 115
    .local v1, "keys":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 117
    .local v2, "optionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 118
    .local v0, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-class v7, Ljava/lang/String;

    invoke-static {v6, v0, v7}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 119
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 120
    const-string v6, "sid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 123
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 60
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setAdAvailable()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFetchCompleted()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onFetchFailed()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Fetch failed - no ads to display"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "fetch failed"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->isAdShown:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireCloseEvent()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->isAdShown:Z

    .line 91
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->isAdShown:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 98
    :cond_0
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "skipped"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneIds"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->mZoneId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v1, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->mZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    .line 37
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->changeActivity(Landroid/app/Activity;)V

    .line 39
    invoke-direct {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->getOptionsMaps()Ljava/util/Map;

    move-result-object v0

    .line 40
    .local v0, "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    sget-object v1, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Error while trying to show interstitial"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "No internet connection"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 53
    .end local v0    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v3

    .line 46
    .restart local v0    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->isAdShown:Z

    goto :goto_0

    .line 49
    .end local v0    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    sget-object v1, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "UnityAds can\'t show ads"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "Can\'t show ads"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
