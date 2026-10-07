.class public Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "ChartboostMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x3
    name = "Chartboost"
    version = "6.4.1-r1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;
    }
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "Chartboost"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "6.4.1-r1"

.field public static final APP_ID_KEY:Ljava/lang/String; = "AppId"

.field public static final APP_SIGNATURE_KEY:Ljava/lang/String; = "AppSignature"

.field public static final AUTOCACHE_ENABLED_KEY:Ljava/lang/String; = "AutocacheEnabled"

.field public static final INT_CACHE_KEY:Ljava/lang/String; = "CacheInterstitials"

.field public static final LOCATION_INTERSTITIAL_DEFAULT:Ljava/lang/String; = "fyber_interstitial"

.field public static final LOCATION_REWARDED_VIDEO_DEFAULT:Ljava/lang/String; = "fyber_rewarded_video"

.field public static final LOG_LEVEL_KEY:Ljava/lang/String; = "LogLevel"

.field public static final RV_CACHE_KEY:Ljava/lang/String; = "CacheRewardedVideo"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private configs:Ljava/util/Map;
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

.field private mCacheInterstitials:Z

.field private mCacheRewardedVideo:Z

.field private mHandler:Landroid/os/Handler;

.field private mInterstitialMediationAdapter:Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

.field private mVideoMediationAdapter:Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mCacheInterstitials:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mCacheRewardedVideo:Z

    return v0
.end method

.method static synthetic access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Interstitial adapter is null"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "Chartboost"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "6.4.1-r1"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "RV adapter is null"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    return-object v0
.end method

.method public shouldCacheInterstitials()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mCacheInterstitials:Z

    return v0
.end method

.method public shouldCacheRewardedVideo()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mCacheRewardedVideo:Z

    return v0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 62
    sget-object v1, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Starting Chartboost adapter."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->configs:Ljava/util/Map;

    .line 66
    const-string v1, "AppId"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .local v3, "appId":Ljava/lang/String;
    const-string v1, "AppSignature"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    .local v4, "appSignature":Ljava/lang/String;
    invoke-static {v3}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Chartboost App ID is missing. Adapter won\'t start."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    sget-object v1, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Chartboost App Signature is missing. Adapter won\'t start."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "CacheRewardedVideo"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {p2, v0, v1, v2}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mCacheRewardedVideo:Z

    .line 81
    const-string v0, "CacheInterstitials"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {p2, v0, v1, v2}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mCacheInterstitials:Z

    .line 84
    iget-object v7, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;-><init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    .line 127
    goto :goto_0
.end method
