.class public Lcom/fyber/mediation/millennial/MillennialMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "MillennialMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x3
    name = "Millennial"
    version = "6.1.0-r1"
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "Millennial"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "6.1.0-r1"

.field public static final APP_ID:Ljava/lang/String; = "app.id"

.field public static final LOG_LEVEL:Ljava/lang/String; = "log.level"

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

.field private mInterstitialAdapter:Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->getLogLevel()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;)Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/millennial/MillennialMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;

    return-object p1
.end method

.method private getLogLevel()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "log.level"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "logLevel":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v1

    .line 96
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;

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
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "Millennial"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "6.1.0-r1"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
            "<+",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 3
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
    const/4 v1, 0x0

    .line 38
    sget-object v0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Starting Millennial SDK version 6.1.0-5323db4"

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 40
    sget-object v0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Millennial SDK requires Android API level 16+. Adapter won\'t start."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 60
    :goto_0
    return v0

    .line 43
    :cond_0
    iput-object p2, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->configs:Ljava/util/Map;

    .line 44
    const-string v0, "app.id"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;-><init>(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "App ID value is missing. Adapter won\'t start"

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 60
    goto :goto_0
.end method
