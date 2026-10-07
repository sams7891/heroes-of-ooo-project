.class public Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "InMobiVideoMediationAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;",
        ">;",
        "Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;"
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

.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->configs:Ljava/util/Map;

    .line 40
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->videosAvailable(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)Lcom/inmobi/ads/InMobiInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->initVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->loadVideo()V

    return-void
.end method

.method private initVideo()V
    .locals 6

    .prologue
    .line 44
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->configs:Ljava/util/Map;

    const-string v4, "inmobi-rv-placement-id"

    const-class v5, Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 46
    .local v2, "rvPlacementId":J
    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4, v2, v3, p0}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;)V

    iput-object v1, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tp"

    const-string v4, "c_sponsorpay"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "tp-ver"

    sget-object v4, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method private loadVideo()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "mRewardedAd is null."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    goto :goto_0
.end method


# virtual methods
.method public onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->notifyCloseEngagement()V

    .line 101
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->videosAvailable(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->notifyVideoStarted()V

    .line 96
    return-void
.end method

.method public onAdInteraction(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;
    .param p2, "inMobiAdRequestStatus"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 116
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    .line 117
    .local v0, "errorCode":Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    sget-object v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdLoadFailed() : errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$2;->$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode:[I

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 132
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Error:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 135
    :goto_0
    return-void

    .line 120
    :pswitch_0
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 123
    :pswitch_1
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 126
    :pswitch_2
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 129
    :pswitch_3
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 111
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 112
    return-void
.end method

.method public onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->setVideoPlayed()V

    .line 91
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 140
    return-void
.end method

.method public startPrecaching()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 66
    :cond_0
    return-void
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;-><init>(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
