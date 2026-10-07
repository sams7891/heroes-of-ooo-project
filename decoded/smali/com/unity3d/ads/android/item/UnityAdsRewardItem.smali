.class public Lcom/unity3d/ads/android/item/UnityAdsRewardItem;
.super Ljava/lang/Object;
.source "UnityAdsRewardItem.java"


# instance fields
.field private _key:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _pictureURL:Ljava/lang/String;

.field private final _requiredKeys:[Ljava/lang/String;

.field private _rewardItemJSON:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_key:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_name:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_pictureURL:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "picture"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_requiredKeys:[Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    .line 25
    invoke-direct {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->parseValues()V

    .line 26
    return-void
.end method

.method private checkDataIntegrity()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 68
    iget-object v2, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_requiredKeys:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 69
    iget-object v5, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    :cond_0
    :goto_1
    return v0

    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private parseValues()V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_key:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_name:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_rewardItemJSON:Lorg/json/JSONObject;

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_pictureURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    const-string v0, "Problem parsing campaign values"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDetails()Ljava/util/Map;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "picture"

    invoke-virtual {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->_pictureURL:Ljava/lang/String;

    return-object v0
.end method

.method public hasValidData()Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/unity3d/ads/android/item/UnityAdsRewardItem;->checkDataIntegrity()Z

    move-result v0

    return v0
.end method
