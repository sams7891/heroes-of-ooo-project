.class public Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "InMobiInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
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

.field private mActivity:Landroid/app/Activity;

.field private mAdHasBeenClicked:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
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
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object v2, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 32
    iput-object v2, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 38
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->configs:Ljava/util/Map;

    .line 40
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->initInterstitial()V

    return-void
.end method

.method static synthetic access$100(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->loadIntersitial()V

    return-void
.end method

.method private initInterstitial()V
    .locals 6

    .prologue
    .line 67
    iget-object v3, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v4, "inmobi-int-placement-id"

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 69
    .local v0, "intPlacementId":J
    new-instance v3, Lcom/inmobi/ads/InMobiInterstitial;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0, v1, p0}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;)V

    iput-object v3, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "tp"

    const-string v4, "c_sponsorpay"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v3, "tp-ver"

    sget-object v4, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v3, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v3, v2}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 74
    return-void
.end method

.method private loadIntersitial()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "mInterstitial is null."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    sget-object v0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "checkForAds"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;-><init>(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->fireCloseEvent()V

    .line 98
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 93
    return-void
.end method

.method public onAdInteraction(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 1
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
    .line 102
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->fireClickEvent()V

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 106
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
    sget-object v1, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial failed to load with errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->setAdAvailable()V

    .line 111
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
    .line 87
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 127
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 49
    :cond_0
    const-string v0, "Ad is not ready yet"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method
