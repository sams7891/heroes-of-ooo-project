.class public Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "MillennialInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/millennialmedia/InterstitialAd$InterstitialListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/millennial/MillennialMediationAdapter;",
        ">;",
        "Lcom/millennialmedia/InterstitialAd$InterstitialListener;"
    }
.end annotation


# static fields
.field public static final METADATA_KEY:Ljava/lang/String; = "metadata"

.field public static final RUNTIME_METADATA_KEY:Ljava/lang/String; = "runtimeMetadata"

.field public static final TAG:Ljava/lang/String;


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

.field private mAdClicked:Z

.field private mInterstitial:Lcom/millennialmedia/InterstitialAd;

.field private mMetaData:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 5
    .param p1, "adapter"    # Lcom/fyber/mediation/millennial/MillennialMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/millennial/MillennialMediationAdapter;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 36
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mAdClicked:Z

    .line 43
    iput-object p3, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->configs:Ljava/util/Map;

    .line 44
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 46
    const-string v3, "app.id"

    const-class v4, Ljava/lang/String;

    invoke-static {p3, v3, v4}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    .local v0, "appId":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/millennialmedia/InterstitialAd;->createInstance(Ljava/lang/String;)Lcom/millennialmedia/InterstitialAd;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mInterstitial:Lcom/millennialmedia/InterstitialAd;

    .line 51
    iget-object v3, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mInterstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v3, p0}, Lcom/millennialmedia/InterstitialAd;->setListener(Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V
    :try_end_0
    .catch Lcom/millennialmedia/MMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "requestMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->getConfigMetadata()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-direct {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->getRuntimeMetadata()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    new-instance v3, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    invoke-direct {v3}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;-><init>()V

    iput-object v3, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mMetaData:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    .line 65
    iget-object v3, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mMetaData:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    const-string v4, ","

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;->setKeywords(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 69
    return-void

    .line 52
    .end local v2    # "requestMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lcom/millennialmedia/MMException;
    sget-object v3, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Error creating interstitial ad"

    invoke-static {v3, v4, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getConfigMetadata()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v4, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v5, "metadata"

    const-class v6, Lorg/json/JSONObject;

    invoke-static {v4, v5, v6}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 98
    .local v3, "metadata":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v0, "configMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "configMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object v0
.end method

.method private getRuntimeMetadata()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "runtimeMetadata"

    const-class v3, Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 116
    .local v0, "runtimeMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 119
    .end local v0    # "runtimeMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .restart local v0    # "runtimeMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "runtimeMetadata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mInterstitial:Lcom/millennialmedia/InterstitialAd;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mInterstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mMetaData:Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/InterstitialAd;->load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V

    .line 93
    :cond_0
    return-void
.end method

.method public onAdLeftApplication(Lcom/millennialmedia/InterstitialAd;)V
    .locals 0
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 169
    return-void
.end method

.method public onClicked(Lcom/millennialmedia/InterstitialAd;)V
    .locals 1
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mAdClicked:Z

    .line 164
    return-void
.end method

.method public onClosed(Lcom/millennialmedia/InterstitialAd;)V
    .locals 1
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mAdClicked:Z

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mAdClicked:Z

    .line 155
    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->fireClickEvent()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->fireCloseEvent()V

    goto :goto_0
.end method

.method public onExpired(Lcom/millennialmedia/InterstitialAd;)V
    .locals 0
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 174
    return-void
.end method

.method public onLoadFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 2
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;
    .param p2, "interstitialErrorStatus"    # Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    .prologue
    .line 131
    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getErrorCode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->setAdAvailable()V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->fireValidationErrorEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoaded(Lcom/millennialmedia/InterstitialAd;)V
    .locals 0
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->setAdAvailable()V

    .line 125
    return-void
.end method

.method public onShowFailed(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 2
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;
    .param p2, "interstitialErrorStatus"    # Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onShown(Lcom/millennialmedia/InterstitialAd;)V
    .locals 0
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->fireImpressionEvent()V

    .line 142
    return-void
.end method

.method public show(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mInterstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v2}, Lcom/millennialmedia/InterstitialAd;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->mInterstitial:Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {p0}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/InterstitialAd;->show(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/millennialmedia/MMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lcom/millennialmedia/MMException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to show interstitial ad content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/millennialmedia/MMException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0    # "e":Lcom/millennialmedia/MMException;
    :cond_0
    const-string v2, "Unable to show interstitial. Ad not loaded."

    invoke-virtual {p0, v2}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;->fireShowErrorEvent(Ljava/lang/String;)V

    goto :goto_0
.end method
