.class public Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "ChartboostInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/fyber/mediation/chartboost/interstitial/IFyberChartboostInterstitial;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;",
        ">;",
        "Lcom/fyber/mediation/chartboost/interstitial/IFyberChartboostInterstitial;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdHasBeenClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 29
    return-void
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->checkForInterstitial()V

    .line 34
    return-void
.end method

.method public checkForInterstitial()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "fyber_interstitial"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public fyberFireClickEvent()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireClickEvent()V

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 82
    return-void
.end method

.method public fyberFireCloseEvent()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireCloseEvent()V

    .line 87
    return-void
.end method

.method public fyberFireImpressionEvent()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 68
    return-void
.end method

.method public fyberFireShowErrorEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public fyberFireValidationErrorEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public fyberSetAdAvailable()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->setAdAvailable()V

    .line 61
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 42
    const-string v0, "fyber_interstitial"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "fyber_interstitial"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    sget-object v0, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Chartboost.hasInterstitial(fyber_interstitial) returned `false`;"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "Ad has not been cached yet."

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method
