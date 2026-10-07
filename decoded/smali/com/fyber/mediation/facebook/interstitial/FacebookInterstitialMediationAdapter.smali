.class public Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "FacebookInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/facebook/FacebookMediationAdapter;",
        ">;",
        "Lcom/facebook/ads/InterstitialAdListener;"
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

.field private mAdHasBeenClicked:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInterstitialAd:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/facebook/FacebookMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/facebook/FacebookMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/facebook/FacebookMediationAdapter;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 33
    iput-object p3, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->configs:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Lcom/facebook/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;
    .param p1, "x1"    # Lcom/facebook/ads/InterstitialAd;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->configs:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;-><init>(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1
    .param p1, "pAd"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->fireClickEvent()V

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 73
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "pAd"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->setAdAvailable()V

    .line 79
    check-cast p1, Lcom/facebook/ads/InterstitialAd;

    .end local p1    # "pAd":Lcom/facebook/ads/Ad;
    iput-object p1, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 80
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "pError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 85
    sget-object v0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Facebook ad error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 1
    .param p1, "pAd"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->fireCloseEvent()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 95
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 1
    .param p1, "pAd"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 102
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
