.class public Lcom/unity3d/ads/android/webapp/UnityAdsWebData;
.super Ljava/lang/Object;
.source "UnityAdsWebData.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static _campaignJson:Lorg/json/JSONObject;

.field private static _campaignRefreshTimer:Ljava/util/Timer;

.field private static _campaignRefreshTimerDeadline:J

.field private static _campaigns:Ljava/util/ArrayList;

.field private static _initInProgress:Z

.field private static _isLoading:Z

.field private static _listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

.field private static _refreshAfterShowAds:Z

.field private static _totalLoadersCreated:I

.field private static _totalLoadersHaveRun:I

.field private static _totalUrlsSent:I

.field private static final _urlLoaderLock:Ljava/lang/Object;

.field private static _urlLoaders:Ljava/util/ArrayList;

.field private static _zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

.field private static installedAppsSent:Z

.field private static whitelistRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    .line 59
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 60
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 61
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    .line 63
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 64
    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    .line 65
    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    .line 66
    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    .line 68
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 69
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 71
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    .line 72
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    .line 73
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    .line 75
    sput-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 56
    sput-boolean p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    return p0
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->addLoader(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersCreated:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalLoadersHaveRun:I

    return v0
.end method

.method static synthetic access$600(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->urlLoadFailed(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method static synthetic access$700(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->urlLoadCompleted(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    return-void
.end method

.method private static addLoader(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2

    .prologue
    .line 400
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    .line 404
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static campaignDataFailed()V
    .locals 1

    .prologue
    .line 693
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v0, :cond_0

    .line 694
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataFailed()V

    .line 695
    :cond_0
    return-void
.end method

.method private static campaignDataReceived(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 570
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 571
    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 574
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad plan: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 576
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 579
    sput-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_11

    .line 581
    :try_start_1
    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 588
    :try_start_2
    const-string v4, "webViewUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 589
    :cond_0
    const-string v4, "analyticsUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 590
    :cond_1
    const-string v4, "impactUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 591
    :cond_2
    const-string v4, "gamerId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 592
    :cond_3
    const-string v4, "campaigns"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 593
    :cond_4
    const-string v4, "zones"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 596
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 599
    const-string v4, "campaigns"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 600
    if-eqz v4, :cond_6

    .line 601
    invoke-static {v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 604
    :cond_6
    const-string v4, "appFiltering"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 605
    const-string v4, "appFiltering"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 607
    if-eqz v4, :cond_9

    const-string v5, "simple"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "advanced"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 608
    :cond_7
    const-string v5, "advanced"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 609
    const-string v4, "installedAppsUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "appWhitelist"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 610
    const-string v4, "installedAppsUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    .line 611
    const-string v4, "appWhitelist"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    invoke-static {v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->requestAppWhitelist(Ljava/lang/String;)V

    .line 617
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 618
    invoke-static {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->filterCampaigns(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 620
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 621
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    .line 690
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v1

    const-string v1, "Malformed data JSON"

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 670
    :catch_1
    move-exception v1

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 674
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_12

    aget-object v3, v1, v0

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Malformed JSON: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_9
    :try_start_3
    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 634
    :cond_a
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 635
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    .line 637
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Parsed total of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " campaigns"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 640
    const-string v1, "webViewUrl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->WEBVIEW_BASE_URL:Ljava/lang/String;

    .line 641
    const-string v1, "analyticsUrl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    .line 642
    const-string v1, "impactUrl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    .line 643
    const-string v1, "gamerId"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    .line 646
    const-string v1, "refreshCampaignsAfterViewed"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 647
    const/4 v1, 0x0

    sput v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    .line 648
    const-string v1, "refreshCampaignsAfterViewed"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    .line 652
    :cond_c
    const-string v1, "refreshCampaignsAfterSeconds"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 653
    const-string v1, "refreshCampaignsAfterSeconds"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    .line 657
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 658
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v1, :cond_e

    .line 659
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->clear()V

    .line 660
    const/4 v1, 0x0

    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    .line 662
    :cond_e
    new-instance v1, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    const-string v4, "zones"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;-><init>(Lorg/json/JSONArray;)V

    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 683
    :cond_f
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    if-eqz v1, :cond_13

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads initialized with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " campaigns and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    if-eqz v2, :cond_10

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->zoneCount()I

    move-result v0

    :cond_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    invoke-interface {v0}, Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;->onWebDataCompleted()V

    goto/16 :goto_0

    .line 666
    :cond_11
    :try_start_4
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 679
    :cond_12
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto/16 :goto_0

    .line 688
    :cond_13
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto/16 :goto_0
.end method

.method private static checkFailedUrls()V
    .locals 9

    .prologue
    .line 477
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/UnityAds-pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v2}, Lcom/unity3d/ads/android/UnityAdsUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 485
    if-nez v0, :cond_0

    const-string v0, "Could not remove pending requests file"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 486
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 493
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 495
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 496
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 497
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 498
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v1, "url"

    .line 499
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    .line 500
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "methodType"

    .line 501
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "requestType"

    .line 502
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->getValueOf(Ljava/lang/String;)Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v4

    const-string v8, "retries"

    .line 503
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 505
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 510
    :catch_0
    move-exception v0

    const-string v0, "Problems while sending some of the failed urls."

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 514
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 515
    return-void
.end method

.method private static deserializeCampaigns(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 698
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 704
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 705
    new-instance v3, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-direct {v3, v2}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;-><init>(Lorg/json/JSONObject;)V

    .line 707
    invoke-virtual {v3}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->hasValidData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    const-string v2, "Adding campaign to cache"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v2

    .line 713
    const-string v2, "Problem with the campaign, skipping."

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 720
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static filterCampaigns(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x26

    const/4 v3, 0x0

    .line 724
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-object v1

    .line 726
    :cond_1
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 727
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 730
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 731
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getStoreId()Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 735
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 742
    :cond_2
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 743
    if-eqz v7, :cond_a

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    .line 744
    const/4 v2, 0x1

    .line 751
    :goto_2
    if-eqz v2, :cond_4

    .line 752
    if-nez v1, :cond_3

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    :cond_3
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_4
    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getFilterMode()Ljava/lang/String;

    move-result-object v7

    .line 761
    if-eqz v7, :cond_6

    const-string v8, "whitelist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 763
    if-eqz v2, :cond_5

    .line 764
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 746
    :catch_0
    move-exception v2

    move v2, v3

    .line 747
    goto :goto_2

    .line 766
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Filtered game id "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from ad plan (not installed)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 770
    :cond_6
    if-eqz v2, :cond_7

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Filtered game id "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from ad plan (already installed)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    :cond_7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 778
    :cond_8
    if-eqz v1, :cond_9

    .line 779
    const-string v0, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPFILTER_LIST:Ljava/lang/String;

    :cond_9
    move-object v1, v4

    .line 782
    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_2
.end method

.method public static getCampaignById(Ljava/lang/String;)Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;
    .locals 2

    .prologue
    .line 132
    if-eqz p0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 134
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 139
    :goto_1
    return-object v0

    .line 133
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getViewableVideoPlanCampaigns()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 146
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 149
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaigns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignStatus()Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->VIEWED:Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;

    invoke-virtual {v3, v4}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign$UnityAdsCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 155
    :cond_2
    return-object v0
.end method

.method public static getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_zoneManager:Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    return-object v0
.end method

.method public static hasViewableAds()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initCampaigns()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return v6

    .line 167
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->TEST_DATA:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    sput-boolean v6, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    .line 176
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 183
    :goto_1
    if-nez v0, :cond_3

    .line 184
    const-string v0, "Device offline, can\'t init campaigns"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$1;

    invoke-direct {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$1;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    move v6, v5

    .line 191
    goto :goto_0

    :cond_2
    move v0, v5

    .line 180
    goto :goto_1

    .line 194
    :cond_3
    const-string v0, "impact.applifier.com"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad server resolves to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    const-string v0, "initCampaigns failed, ad server resolves to loopback address (due to ad blocker?)"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$2;

    invoke-direct {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$2;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v5

    .line 205
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    const-string v0, "initCampaigns failed due to DNS error, unable to resolve ad server address"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$3;

    invoke-direct {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$3;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    move v6, v5

    .line 216
    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown exception during DNS test: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 222
    :cond_4
    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryUrl()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting Unity Ads ad plan from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 224
    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 225
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    aget-object v1, v2, v5

    aget-object v2, v2, v6

    const-string v3, "GET"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->VideoPlan:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 226
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->checkFailedUrls()V

    goto/16 :goto_0

    :cond_5
    move v0, v5

    goto/16 :goto_1
.end method

.method public static initInProgress()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_initInProgress:Z

    return v0
.end method

.method public static refreshCampaignsIfNeeded()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 334
    sget-boolean v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    if-eqz v2, :cond_0

    .line 335
    sput-boolean v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_refreshAfterShowAds:Z

    .line 336
    const-string v2, "Starting delayed ad plan refresh"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move v2, v0

    .line 350
    :goto_0
    if-eqz v2, :cond_3

    .line 351
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$4;

    invoke-direct {v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$4;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 355
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 359
    :goto_1
    return v0

    .line 338
    :cond_0
    sget-wide v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 339
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->removeCampaignRefreshTimer()V

    .line 340
    const-string v2, "Refreshing ad plan from server due to timer deadline"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move v2, v0

    .line 341
    goto :goto_0

    .line 342
    :cond_1
    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lez v2, :cond_2

    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_COUNT:I

    sget v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_VIEWS_MAX:I

    if-lt v2, v3, :cond_2

    .line 343
    const-string v2, "Refreshing ad plan from server due to endscreen limit"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move v2, v0

    .line 344
    goto :goto_0

    .line 345
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getViewableVideoPlanCampaigns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 346
    const-string v2, "All available videos watched, refreshing ad plan from server"

    invoke-static {v2}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move v2, v0

    .line 347
    goto :goto_0

    :cond_3
    move v0, v1

    .line 359
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method private static removeCampaignRefreshTimer()V
    .locals 2

    .prologue
    .line 392
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    .line 394
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 397
    :cond_0
    return-void
.end method

.method private static requestAppWhitelist(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 786
    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    if-eqz v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistRequested:Z

    .line 788
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const/4 v2, 0x0

    const-string v3, "GET"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->AppWhitelist:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 789
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendAnalyticsRequest(Ljava/lang/String;Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 305
    if-eqz p1, :cond_0

    .line 306
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s"

    new-array v2, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->ANALYTICS_BASE_URL:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 307
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s=%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "gameId"

    aput-object v4, v3, v5

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s&%s=%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v0, "type"

    aput-object v0, v4, v8

    aput-object p0, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s&%s=%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v0, "trackingId"

    aput-object v0, v4, v8

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v0, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s&%s=%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v0, "providerId"

    aput-object v0, v4, v8

    invoke-virtual {p1}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    .line 312
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v5

    const-string v0, "zone"

    aput-object v0, v6, v8

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 315
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 316
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s&%s=%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v5

    const-string v3, "rewardItem"

    aput-object v3, v7, v8

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 320
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v0, v6, v5

    const-string v0, "sid"

    aput-object v0, v6, v8

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 322
    :goto_1
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v3, "GET"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->Analytics:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 323
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public static sendCampaignViewProgress(Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;)Z
    .locals 11

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 300
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads video position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gamer id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->info(Ljava/lang/String;)V

    .line 238
    sget-object v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 239
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_BASE_URL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gamers/"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s%s/video/%s/%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAMER_ID:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsVideoPosition;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/unity3d/ads/android/campaign/UnityAdsCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    sget-object v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getCurrentZone()Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v2

    .line 243
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "zone"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getZoneId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 246
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "platform"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "android"

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v4

    .line 249
    if-eqz v4, :cond_7

    .line 250
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s&%s=%d"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v7, v0

    const/4 v0, 0x1

    const-string v8, "trackingEnabled"

    aput-object v8, v7, v0

    const/4 v8, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsUtils;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 252
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s&%s=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const-string v9, "advertisingTrackingId"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 253
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s&%s=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, "rawAdvertisingTrackingId"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "UTF-8"

    invoke-static {v4, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    :cond_2
    :goto_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "gameId"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->UNITY_ADS_GAME_ID:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 263
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "sdkVersion"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "1506"

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 264
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "softwareVersion"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 265
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "hardwareVersion"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getHardwareVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 266
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "deviceType"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getDeviceType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 267
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "connectionType"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getConnectionType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isUsingWifi()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "androidNetworkType"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getNetworkType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 273
    :cond_3
    sget-wide v4, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 274
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "cachingSpeed"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-wide v8, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 277
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "screenSize"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 278
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "screenDensity"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getScreenDensity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 279
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s&%s=%s"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, v6, v0

    const/4 v0, 0x1

    const-string v7, "cachedPlayback"

    aput-object v7, v6, v0

    const/4 v7, 0x2

    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->SELECTED_CAMPAIGN_CACHED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "true"

    :goto_3
    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    .line 285
    :goto_4
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    .line 286
    check-cast v0, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;

    invoke-virtual {v0}, Lcom/unity3d/ads/android/zone/UnityAdsIncentivizedZone;->itemManager()Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;

    move-result-object v0

    .line 287
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s&%s=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    const-string v7, "rewardItem"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItemManager;->getCurrentItem()Lcom/unity3d/ads/android/item/UnityAdsRewardItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 290
    :cond_5
    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 291
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const-string v6, "sid"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/unity3d/ads/android/zone/UnityAdsZone;->getGamerSid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 294
    :goto_5
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    const-string v3, "POST"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->VideoViewed:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 295
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 250
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 256
    :cond_7
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "androidId"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 258
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s&%s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "rawAndroidId"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getAndroidId(Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 279
    :cond_8
    const-string v0, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 281
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    .line 282
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Problems creating campaigns query: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_4

    :cond_9
    move-object v2, v3

    goto/16 :goto_5
.end method

.method private static sendInstalledApps(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 819
    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    if-eqz v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 820
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->installedAppsSent:Z

    .line 821
    invoke-static {p1}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->getPackageDataJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 823
    if-eqz v6, :cond_1

    .line 824
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;

    invoke-static {}, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->getCampaignQueryArguments()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    sget-object v4, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->InstalledApps:Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;I)V

    .line 825
    invoke-virtual {v0, v6}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoaderCreator;->setPostBody(Ljava/lang/String;)V

    .line 826
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 828
    :cond_1
    const-string v0, "Nothing to send for installed applications"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setWebDataListener(Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;)V
    .locals 0

    .prologue
    .line 124
    sput-object p0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_listener:Lcom/unity3d/ads/android/webapp/IUnityAdsWebDataListener;

    .line 125
    return-void
.end method

.method public static setupCampaignRefreshTimer()V
    .locals 6

    .prologue
    .line 363
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->removeCampaignRefreshTimer()V

    .line 365
    sget v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    if-lez v0, :cond_0

    .line 366
    new-instance v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;

    invoke-direct {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$5;-><init>()V

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget v1, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimerDeadline:J

    .line 380
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 381
    sput-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_campaignRefreshTimer:Ljava/util/Timer;

    sget v2, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CAMPAIGN_REFRESH_SECONDS:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 383
    :cond_0
    return-void
.end method

.method private static startNextLoader()V
    .locals 3

    .prologue
    .line 409
    sget-object v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    if-nez v0, :cond_0

    .line 411
    const-string v0, "Starting next URL loader"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 412
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 413
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaders:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 415
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static urlLoadCompleted(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2

    .prologue
    .line 419
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$6;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebData$UnityAdsRequestType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->clear()V

    .line 442
    :goto_1
    sget v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Total urls sent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_totalUrlsSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 445
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 446
    return-void

    .line 422
    :pswitch_1
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :pswitch_2
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->whitelistReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static urlLoadFailed(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 2

    .prologue
    .line 449
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$6;->$SwitchMap$com$unity3d$ads$android$webapp$UnityAdsWebData$UnityAdsRequestType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 458
    :goto_0
    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->clear()V

    .line 472
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_isLoading:Z

    .line 473
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->startNextLoader()V

    .line 474
    return-void

    .line 454
    :pswitch_0
    invoke-static {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->writeFailedUrl(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V

    goto :goto_0

    .line 457
    :pswitch_1
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->campaignDataFailed()V

    goto :goto_0

    .line 469
    :cond_0
    const-string v0, "Got broken urlLoader!"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static whitelistReceived(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 793
    const-string v0, "Received whitelist"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 796
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 797
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 798
    const-string v2, "whitelist"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 800
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge v0, v3, :cond_1

    .line 802
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 804
    const-string v4, "game"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 805
    const-string v4, "game"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 800
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_1
    :try_start_2
    sget-object v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->INSTALLED_APPS_URL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->sendInstalledApps(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 816
    :goto_2
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse app whitelist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 807
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static writeFailedUrl(Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 518
    if-nez p0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 520
    :cond_0
    sget-object v3, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->_urlLoaderLock:Ljava/lang/Object;

    monitor-enter v3

    .line 522
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unity3d/ads/android/cache/UnityAdsCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/UnityAds-pendingrequests.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 528
    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/unity3d/ads/android/UnityAdsUtils;->readFile(Ljava/io/File;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 531
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "JNIDEBUG read json: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 533
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "JNIDEBUG read array: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 541
    :goto_1
    if-nez v1, :cond_1

    .line 542
    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 545
    :cond_1
    if-nez v0, :cond_2

    .line 546
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 549
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 550
    const-string v5, "url"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    const-string v5, "requestType"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRequestType()Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsRequestType;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v5, "methodType"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getHTTPMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v5, "body"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getQueryParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v5, "retries"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData$UnityAdsUrlLoader;->getRetries()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 556
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 557
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsUtils;->canUseExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 561
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error while writing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    :cond_3
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 536
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 537
    goto :goto_1

    .line 563
    :catch_1
    move-exception v0

    .line 564
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception when writing failed url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method
