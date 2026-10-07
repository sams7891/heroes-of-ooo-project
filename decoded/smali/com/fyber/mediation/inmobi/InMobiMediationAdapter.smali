.class public Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "InMobiMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x3
    name = "Inmobi"
    version = "5.2.3-r1"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "inmobi-account-id"

.field public static final INTERSTITIAL_PLACEMENT_ID:Ljava/lang/String; = "inmobi-int-placement-id"

.field public static final REWARDED_VIDEO_PLACEMENT_ID:Ljava/lang/String; = "inmobi-rv-placement-id"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

.field private mInterstitialAdapter:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

.field private mVideoAdapter:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;)Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mVideoAdapter:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

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
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "Inmobi"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "5.2.3-r1"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mVideoAdapter:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

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
    const/4 v0, 0x0

    .line 38
    iput-object p0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    .line 39
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Starting InMobi mediation adapter..."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InMobi SDK version  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 43
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobi requires Android Version 4.0 or higher.\nThe mediation adapter will not be started"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return v0

    .line 48
    :cond_0
    const-string v1, "inmobi-int-placement-id"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    .local v4, "intPlacementId":Ljava/lang/String;
    const-string v1, "inmobi-rv-placement-id"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 50
    .local v6, "rvPlacementId":Ljava/lang/String;
    const-string v1, "inmobi-account-id"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 52
    .local v3, "accountId":Ljava/lang/String;
    invoke-static {v3}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "You need to provide the parameter: \'inmobi-account-id . Adapter won\u2019t start"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v6}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "You need to provide at least one of the parameters: \'inmobi-int-placement-id\' or \'inmobi-rv-placement-id\'. Adapter won\u2019t start"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;-><init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    const/4 v0, 0x1

    goto :goto_0
.end method
