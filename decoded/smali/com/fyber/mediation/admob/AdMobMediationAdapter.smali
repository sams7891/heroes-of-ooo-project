.class public Lcom/fyber/mediation/admob/AdMobMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "AdMobMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x3
    name = "AdMob"
    version = "8.4.0-r1"
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "AdMob"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "8.4.0-r1"

.field public static final AD_UNIT_ID:Ljava/lang/String; = "ad.unit.id"

.field public static final BIRTHDAY_KEY:Ljava/lang/String; = "birthday"

.field public static final BUILDER_CONFIG_ADD_TEST_DEVICE:Ljava/lang/String; = "addTestDevice"

.field public static final COPPA_COMPLIANT:Ljava/lang/String; = "isCOPPAcompliant"

.field public static final GENDER_KEY:Ljava/lang/String; = "gender"

.field public static final LOCATION_KEY:Ljava/lang/String; = "location"

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

.field private final mHandler:Landroid/os/Handler;

.field private mInterstitialAdapter:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/fyber/mediation/admob/AdMobMediationAdapter;Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/AdMobMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

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
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "AdMob"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "8.4.0-r1"

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
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 2
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
    .line 45
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p2, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->configs:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Starting AdMob mediation adapter..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "ad.unit.id"

    const-class v1, Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;-><init>(Lcom/fyber/mediation/admob/AdMobMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    sget-object v0, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Ad Unit ID is missing. Adapter won\'t start."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method
