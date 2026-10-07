.class public Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;
.super Ljava/lang/Object;
.source "UnityAdsUnityWrapper.java"

# interfaces
.implements Lcom/unity3d/ads/android/IUnityAdsListener;


# static fields
.field private static _constructed:Ljava/lang/Boolean;

.field private static _initialized:Ljava/lang/Boolean;


# instance fields
.field private _gameId:Ljava/lang/String;

.field private _gameObject:Ljava/lang/String;

.field private _sendMessageMethod:Ljava/lang/reflect/Method;

.field private _startupActivity:Landroid/app/Activity;

.field private _testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_constructed:Ljava/lang/Boolean;

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_initialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_startupActivity:Landroid/app/Activity;

    .line 21
    iput-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_gameObject:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_gameId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_sendMessageMethod:Ljava/lang/reflect/Method;

    .line 24
    iput-boolean v1, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_testMode:Z

    .line 29
    sget-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_constructed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_constructed:Ljava/lang/Boolean;

    .line 32
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 33
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    .line 34
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 35
    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 36
    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 37
    const-string v2, "UnitySendMessage"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_sendMessageMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting class or method of com.unity3d.player.UnityPlayer, method UnitySendMessage(string, string, string). "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_testMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_startupActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_gameId:Ljava/lang/String;

    return-object v0
.end method

.method private sendMessageToUnity3D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 246
    if-nez p2, :cond_0

    .line 247
    const-string p2, ""

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_sendMessageMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 250
    const-string v0, "Cannot send message to Unity3D. Method is null"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending message ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to Unity3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_sendMessageMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_gameObject:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t invoke UnitySendMessage method. Error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    return v0
.end method

.method public canShowZone(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 125
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 126
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->getZoneManager()Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/android/zone/UnityAdsZoneManager;->getZone(Ljava/lang/String;)Lcom/unity3d/ads/android/zone/UnityAdsZone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->canShow()Z

    move-result v0

    goto :goto_0
.end method

.method public enableUnityDeveloperInternalTestMode()V
    .locals 0

    .prologue
    .line 205
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->enableUnityDeveloperInternalTestMode()V

    .line 206
    return-void
.end method

.method public getCurrentRewardItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getCurrentRewardItemKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRewardItemKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getDefaultRewardItemKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRewardItemDetailsKeys()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s;%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "picture"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "Fetching reward data"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->getRewardItemDetailsWithKey(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "picture"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 187
    :cond_0
    const-string v0, "Problems getting reward item details"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 193
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 191
    :cond_1
    const-string v0, "Could not find reward item details"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getRewardItemKeys()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getRewardItemKeys()Ljava/util/ArrayList;

    move-result-object v2

    .line 140
    if-nez v2, :cond_1

    .line 153
    :cond_0
    return-object v1

    .line 141
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    const-string v1, ""

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_2

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMultipleRewardItems()Z
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hasMultipleRewardItems()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->hide()Z

    move-result v0

    .line 117
    if-nez v0, :cond_0

    const-string v0, "Problems hiding UnityAds"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;Landroid/app/Activity;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_initialized:Ljava/lang/Boolean;

    .line 59
    iput-object p1, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_gameId:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_gameObject:Ljava/lang/String;

    .line 61
    iput-boolean p3, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_testMode:Z

    .line 63
    iget-object v0, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_startupActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 64
    iput-object p2, p0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->_startupActivity:Landroid/app/Activity;

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;

    invoke-direct {v0, p0, p4, p6, p0}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper$1;-><init>(Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;ILjava/lang/String;Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;)V

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    const-string v0, "Error occured while initializing Unity Ads"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->isSupported()Z

    move-result v0

    return v0
.end method

.method public onFetchCompleted()V
    .locals 2

    .prologue
    .line 236
    const-string v0, "onFetchCompleted"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->sendMessageToUnity3D(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onFetchFailed()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "onFetchFailed"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->sendMessageToUnity3D(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "onHide"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->sendMessageToUnity3D(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "onShow"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->sendMessageToUnity3D(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 231
    const-string v1, "onVideoCompleted"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->sendMessageToUnity3D(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 231
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public onVideoStarted()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "onVideoStarted"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->sendMessageToUnity3D(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public setCampaignDataURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setCampaignDataURL(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setDefaultRewardItemAsRewardItem()V
    .locals 0

    .prologue
    .line 169
    invoke-static {}, Lcom/unity3d/ads/android/UnityAds;->setDefaultRewardItemAsRewardItem()V

    .line 170
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .prologue
    .line 201
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->setLogLevel(I)V

    .line 202
    return-void
.end method

.method public setRewardItemKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 165
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setRewardItemKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/android/unity3d/UnityAdsUnityWrapper;->canShowZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v2, ","

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 94
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 95
    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 100
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    invoke-static {p1, p2}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->show(Ljava/util/Map;)Z

    move-result v0

    .line 112
    :goto_2
    return v0

    .line 104
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 105
    invoke-static {p1}, Lcom/unity3d/ads/android/UnityAds;->setZone(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    move v0, v1

    .line 112
    goto :goto_2
.end method
