.class public Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "AdMobInterstitialMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/admob/AdMobMediationAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_NO_FILL:Ljava/lang/String; = "ERROR_CODE_NO_FILL"

.field private static final INTERNAL_ERROR:Ljava/lang/String; = "ERROR_CODE_INTERNAL_ERROR"

.field private static final INVALID_REQUEST:Ljava/lang/String; = "ERROR_CODE_INVALID_REQUEST"

.field private static final NETWORK_ERROR:Ljava/lang/String; = "ERROR_CODE_NETWORK_ERROR"

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

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private final mLoadInterstitialRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/admob/AdMobMediationAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/admob/AdMobMediationAdapter;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/admob/AdMobMediationAdapter;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    .line 47
    new-instance v0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;-><init>(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V

    iput-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mLoadInterstitialRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p2, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->configs:Ljava/util/Map;

    .line 62
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->postInterstitialLoading()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .param p1, "x1"    # Lcom/google/android/gms/ads/InterstitialAd;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->getNewInterstitial()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mAdHasBeenClicked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireClickEvent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->setAdAvailable()V

    return-void
.end method

.method static synthetic access$1300(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireImpressionEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/google/android/gms/ads/AdRequest;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->generateRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireCloseEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method private generateRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 12

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->getConfigListOfDevices()Lorg/json/JSONArray;

    move-result-object v8

    .line 84
    .local v8, "testDevices":Lorg/json/JSONArray;
    new-instance v9, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v10, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 85
    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v7

    .line 88
    .local v7, "requestBuilder":Lcom/google/android/gms/ads/AdRequest$Builder;
    if-eqz v8, :cond_0

    .line 89
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 90
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "deviceId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v5

    .line 96
    .local v5, "jsonExc":Lorg/json/JSONException;
    sget-object v9, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v10, "Error on parsing device id."

    invoke-static {v9, v10, v5}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 111
    .end local v3    # "i":I
    .end local v5    # "jsonExc":Lorg/json/JSONException;
    :cond_0
    iget-object v9, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v10, "gender"

    const-class v11, Ljava/lang/Integer;

    invoke-static {v9, v10, v11}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 112
    .local v2, "gender":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->getBirthdayDate()Ljava/util/Date;

    move-result-object v0

    .line 120
    .local v0, "birthdayDate":Ljava/util/Date;
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 128
    .local v6, "location":Landroid/location/Location;
    if-eqz v6, :cond_3

    .line 129
    invoke-virtual {v7, v6}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->isCOPPACompliant()Ljava/lang/Boolean;

    move-result-object v4

    .line 135
    .local v4, "isCoppaCompliant":Ljava/lang/Boolean;
    if-eqz v4, :cond_4

    .line 136
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 140
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v9

    return-object v9
.end method

.method private getBirthdayDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v1, "birthday"

    const-class v2, Ljava/util/Date;

    invoke-static {v0, v1, v2}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method private getConfigListOfDevices()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v1, "addTestDevice"

    const-class v2, Lorg/json/JSONArray;

    invoke-static {v0, v1, v2}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v1, "location"

    const-class v2, Landroid/location/Location;

    invoke-static {v0, v1, v2}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method private getNewInterstitial()Lcom/google/android/gms/ads/InterstitialAd;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "interstitial":Lcom/google/android/gms/ads/InterstitialAd;
    iget-object v1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "ad.unit.id"

    const-class v3, Ljava/lang/String;

    .line 73
    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$AdMobAdListener;-><init>(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 75
    return-object v0
.end method

.method private isCOPPACompliant()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v1, "isCOPPAcompliant"

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private postInterstitialLoading()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mLoadInterstitialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mLoadInterstitialRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->postInterstitialLoading()V

    .line 157
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "Ad was not loaded."

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 150
    const/4 v0, 0x1

    goto :goto_0
.end method
