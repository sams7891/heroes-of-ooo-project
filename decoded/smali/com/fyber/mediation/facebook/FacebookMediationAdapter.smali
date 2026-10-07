.class public Lcom/fyber/mediation/facebook/FacebookMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "FacebookMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x4
    name = "FacebookAudienceNetwork"
    version = "4.10.0-r2"
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "FacebookAudienceNetwork"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "4.10.0-r2"

.field public static final BANNER_PLACEMENT_ID_KEY:Ljava/lang/String; = "bannerPlacementId"

.field public static final PLACEMENT_ID_KEY:Ljava/lang/String; = "placementId"

.field public static final TAG:Ljava/lang/String;

.field public static final TEST_DEVICE_HASH_KEY:Ljava/lang/String; = "testDeviceHash"


# instance fields
.field private bannerMediationAdapter:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

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

.field private interstitialMediationAdapter:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method

.method private getConfigListOfDevices()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v5, "zoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->configs:Ljava/util/Map;

    const-string v7, "testDeviceHash"

    const-class v8, Lorg/json/JSONArray;

    invoke-static {v6, v7, v8}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 116
    .local v3, "zoneIdJsonArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 120
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "exception":Lorg/json/JSONException;
    sget-object v6, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string v7, "Error on parsing: testDeviceHash"

    invoke-static {v6, v7}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v0    # "exception":Lorg/json/JSONException;
    .end local v1    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->configs:Ljava/util/Map;

    const-string v7, "testDeviceHash"

    const-class v8, Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "zoneIdString":Ljava/lang/String;
    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 136
    .end local v4    # "zoneIdString":Ljava/lang/String;
    :cond_2
    return-object v5
.end method


# virtual methods
.method public bridge synthetic getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->getBannerMediationAdapter()Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getBannerMediationAdapter()Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->bannerMediationAdapter:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->interstitialMediationAdapter:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

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
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "FacebookAudienceNetwork"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "4.10.0-r2"

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
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 7
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
    const/4 v4, 0x0

    .line 40
    iput-object p2, p0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->configs:Ljava/util/Map;

    .line 41
    sget-object v5, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Starting Facebook Audience Network mediation adapter"

    invoke-static {v5, v6}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 43
    sget-object v5, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string v6, "Facebook Audience Network requires Android API level 11+. Adapter won\'t start."

    invoke-static {v5, v6}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return v4

    .line 47
    :cond_0
    const-string v5, "placementId"

    const-class v6, Ljava/lang/String;

    invoke-static {p2, v5, v6}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    .local v1, "placementId":Ljava/lang/String;
    const-string v5, "bannerPlacementId"

    const-class v6, Ljava/lang/String;

    invoke-static {p2, v5, v6}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "bannerPlacementId":Ljava/lang/String;
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    sget-object v5, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string v6, "PlacementID and bannerPlacementId are missing. Adapter won\u2019t start"

    invoke-static {v5, v6}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->getConfigListOfDevices()Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "testDevicesHashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "tHashId":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v2    # "tHashId":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 65
    new-instance v4, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-direct {v4, p0, p1, p2}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/facebook/FacebookMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->interstitialMediationAdapter:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    .line 68
    :cond_3
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 69
    new-instance v4, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    invoke-direct {v4, p0, p2}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;-><init>(Lcom/fyber/mediation/facebook/FacebookMediationAdapter;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;->bannerMediationAdapter:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    .line 72
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method
