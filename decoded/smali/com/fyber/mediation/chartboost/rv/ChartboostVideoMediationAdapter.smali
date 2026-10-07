.class public Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "ChartboostVideoMediationAdapter.java"

# interfaces
.implements Lcom/fyber/mediation/chartboost/rv/IFyberChartboostMBE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;",
        ">;",
        "Lcom/fyber/mediation/chartboost/rv/IFyberChartboostMBE;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 26
    return-void
.end method


# virtual methods
.method public checkForVideo()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public fyberNotifyCloseEngagement()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->notifyCloseEngagement()V

    .line 81
    return-void
.end method

.method public fyberNotifyVideoError()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->notifyVideoError()V

    .line 76
    return-void
.end method

.method public fyberNotifyVideoStarted()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->notifyVideoStarted()V

    .line 71
    return-void
.end method

.method public fyberSendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 66
    return-void
.end method

.method public fyberSetVideoPlayed()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->setVideoPlayed()V

    .line 86
    return-void
.end method

.method public startPrecaching()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 48
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setShouldPrefetchVideoContent(Z)V

    .line 39
    const-string v0, "fyber_rewarded_video"

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 40
    const-string v0, "fyber_rewarded_video"

    .line 41
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 44
    return-void

    .line 41
    :cond_0
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    goto :goto_0
.end method
