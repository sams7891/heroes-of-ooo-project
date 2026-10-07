.class Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;
.super Landroid/os/Handler;
.source "UnityAdsCacheThreadHandler.java"


# instance fields
.field private _currentDownload:Ljava/lang/String;

.field private _stopped:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache: start downloading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 50
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsDevice;->isActiveNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Ads cache: Exception when downloading "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 59
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 62
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 63
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 64
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 67
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    const/16 v0, 0x1000

    new-array v7, v0, [B

    .line 70
    const-wide/16 v0, 0x0

    .line 73
    :goto_1
    iget-boolean v8, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    if-nez v8, :cond_3

    invoke-virtual {v6, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 74
    int-to-long v10, v8

    add-long/2addr v0, v10

    .line 75
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 79
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 80
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 82
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    .line 84
    iget-boolean v5, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    if-nez v5, :cond_4

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unity Ads cache: File "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes downloaded in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 89
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 90
    div-long/2addr v0, v2

    sput-wide v0, Lcom/unity3d/ads/android/properties/UnityAdsProperties;->CACHING_SPEED:J

    goto/16 :goto_0

    .line 93
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unity Ads cache: downloading of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 95
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_currentDownload:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-direct {p0, v1, v0}, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public setStoppedStatus(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/unity3d/ads/android/cache/UnityAdsCacheThreadHandler;->_stopped:Z

    .line 34
    return-void
.end method
