.class public Lcom/millennialmedia/internal/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;,
        Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    }
.end annotation


# static fields
.field private static final CLIENT_MEDIATION_TIMEOUT_FLOOR:I = 0x3e8

.field private static final DEFAULT_HANDSHAKE_BASE_URL:Ljava/lang/String; = "https://ads.nexage.com"

.field private static final DEFAULT_HANDSHAKE_JSON:Ljava/lang/String; = "mmadsdk/default_handshake.json"

.field private static final EXCHANGE_TIMEOUT_FLOOR:I = 0x3e8

.field public static final HANDSHAKE_JSON:Ljava/lang/String; = "handshake.json"

.field public static HANDSHAKE_PATH:Ljava/lang/String; = null

.field private static final HANDSHAKE_TTL_FLOOR:I = 0xea60

.field public static final HANDSHAKE_VERSION:Ljava/lang/String; = "1"

.field private static final INLINE_TIMEOUT_FLOOR:I = 0xbb8

.field private static final INTERSTITIAL_TIMEOUT_FLOOR:I = 0xbb8

.field private static final MAX_HANDSHAKE_ATTEMPTS:I = 0xa

.field private static final MIN_INLINE_REFRESH_RATE_FLOOR:I = 0x2710

.field private static final NATIVE_TIMEOUT_FLOOR:I = 0xbb8

.field private static final REPORTING_BATCH_FREQUENCY_FLOOR:I = 0x1d4c0

.field private static final REPORTING_BATCH_SIZE_FLOOR:I = 0x1

.field private static final SERVER_ADAPTER_KEY_GREEN:Ljava/lang/String; = "green"

.field private static final SERVER_ADAPTER_KEY_ORANGE:Ljava/lang/String; = "orange"

.field private static final SERVER_TO_SERVER_TIMEOUT_FLOOR:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final VAST_VIDEO_SKIP_OFFSET_FLOOR:I

.field private static availableHandshakePlayListServerAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

.field private static defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

.field private static existingPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static handshakeAttempts:I

.field private static initialized:Z

.field private static requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lcom/millennialmedia/internal/Handshake;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    .line 65
    sput-boolean v1, Lcom/millennialmedia/internal/Handshake;->initialized:Z

    .line 68
    sput v1, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/internal/Handshake;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/millennialmedia/internal/Handshake;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    const-string v0, "/admax/sdk/handshake/1"

    sput-object v0, Lcom/millennialmedia/internal/Handshake;->HANDSHAKE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->requestInternal()V

    return-void
.end method

.method public static getActivePlayListServerAdapterClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->availableHandshakePlayListServerAdapters:Ljava/util/Map;

    .line 747
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlaylistServerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 749
    .local v0, "activePlaylistServerAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;>;"
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake active playlist server adapter class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_0
    return-object v0
.end method

.method public static getActivePlaylistServerBaseUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 521
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerBaseUrl:Ljava/lang/String;

    .line 522
    .local v0, "activePlaylistServerBaseUrl":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake active playlist server base url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    return-object v0
.end method

.method public static getActivePlaylistServerName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 510
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerName:Ljava/lang/String;

    .line 511
    .local v0, "playlistServerName":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake playlist server name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    return-object v0
.end method

.method public static getClientMediationTimeout()I
    .locals 4

    .prologue
    .line 620
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->clientMediationTimeout:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 621
    .local v0, "clientMediationTimeout":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake client mediation timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_0
    return v0
.end method

.method public static getConfig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 499
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->config:Ljava/lang/String;

    .line 500
    .local v0, "config":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-object v0
.end method

.method public static getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-eqz v0, :cond_1

    .line 468
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Returning current handshake info"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    .line 482
    :goto_0
    return-object v0

    .line 474
    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-eqz v0, :cond_3

    .line 475
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v1, "Returning default handshake info"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_2
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    goto :goto_0

    .line 482
    :cond_3
    new-instance v0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    invoke-direct {v0}, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;-><init>()V

    goto :goto_0
.end method

.method public static getExchangeTimeout()I
    .locals 4

    .prologue
    .line 642
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->exchangeTimeout:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 643
    .local v0, "exchangeTimeout":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake exchange timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    return v0
.end method

.method public static getExistingIds()Ljava/util/List;
    .locals 5
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
    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v0, "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/millennialmedia/internal/Handshake;->existingPackages:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 772
    :cond_0
    return-object v0

    .line 765
    :cond_1
    sget-object v3, Lcom/millennialmedia/internal/Handshake;->existingPackages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 766
    .local v1, "existingPackageId":Ljava/lang/String;
    sget-object v4, Lcom/millennialmedia/internal/Handshake;->existingPackages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 767
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 768
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getHandshakeTtl()I
    .locals 4

    .prologue
    .line 543
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeTtl:I

    const v2, 0xea60

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 544
    .local v0, "handshakeTtl":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake handshake ttl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    return v0
.end method

.method public static getInlineTimeout()I
    .locals 4

    .prologue
    .line 587
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->inlineTimeout:I

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 588
    .local v0, "inlineTimeout":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake inline timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_0
    return v0
.end method

.method public static getInterstitialExpirationDuration()I
    .locals 4

    .prologue
    .line 666
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialExpirationDuration:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 667
    .local v0, "interstitialExpiration":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake interstitial expiration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_0
    return v0
.end method

.method public static getInterstitialTimeout()I
    .locals 4

    .prologue
    .line 598
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialTimeout:I

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 599
    .local v0, "interstitialTimeout":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake interstitial timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_0
    return v0
.end method

.method public static getMinInlineRefreshRate()I
    .locals 4

    .prologue
    .line 653
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minInlineRefreshRate:I

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 656
    .local v0, "minInlineRefreshRate":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake min inline refresh rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_0
    return v0
.end method

.method public static getNativeExpirationDuration()I
    .locals 4

    .prologue
    .line 677
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeExpirationDuration:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    .local v0, "nativeExpirationDuration":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake native expiration duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    return v0
.end method

.method public static getNativeTimeout()I
    .locals 4

    .prologue
    .line 609
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTimeout:I

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 610
    .local v0, "nativeTimeout":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake native timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_0
    return v0
.end method

.method public static getNativeTypeDefinition(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
    .locals 4
    .param p0, "nativeTypeId"    # Ljava/lang/String;

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 720
    .local v0, "nativeTypeDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 721
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nativeTypeDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    .line 724
    .restart local v0    # "nativeTypeDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake native type definition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_1
    return-object v0
.end method

.method public static getNativeTypeDefinitions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    .line 736
    .local v0, "nativeTypeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;>;"
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake native type definitions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_0
    return-object v0
.end method

.method public static getReportingBaseUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 532
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBaseUrl:Ljava/lang/String;

    .line 533
    .local v0, "reportingBaseUrl":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake reporting base url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    return-object v0
.end method

.method public static getReportingBatchFrequency()I
    .locals 4

    .prologue
    .line 576
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchFrequency:I

    const v2, 0x1d4c0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 577
    .local v0, "reportingBatchFrequency":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake reporting batch frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_0
    return v0
.end method

.method public static getReportingBatchSize()I
    .locals 4

    .prologue
    .line 565
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchSize:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 566
    .local v0, "reportingBatchSize":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake reportingBatchSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    return v0
.end method

.method public static getSdkEnabled()Z
    .locals 4

    .prologue
    .line 554
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-boolean v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->sdkEnabled:Z

    .line 555
    .local v0, "sdkEnabled":Z
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake sdk enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_0
    return v0
.end method

.method public static getServerToServerTimeout()I
    .locals 4

    .prologue
    .line 631
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v1, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->serverToServerTimeout:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 632
    .local v0, "serverToServerTimeout":I
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake server to server timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    return v0
.end method

.method public static getVASTVideoSkipOffsetMax()I
    .locals 4

    .prologue
    .line 688
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMax:I

    .line 689
    .local v0, "vastVideoSkipOffsetMax":I
    if-gez v0, :cond_0

    .line 690
    const/4 v0, 0x0

    .line 693
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VAST video max skip offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_1
    return v0
.end method

.method public static getVASTVideoSkipOffsetMin()I
    .locals 4

    .prologue
    .line 703
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMin:I

    .line 704
    .local v0, "vastVideoSkipOffsetMin":I
    if-gez v0, :cond_0

    .line 705
    const/4 v0, 0x0

    .line 708
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake VAST video min skip offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_1
    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getCurrentHandshakeInfo()Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->version:Ljava/lang/String;

    .line 489
    .local v0, "version":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    sget-object v1, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handshake version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    return-object v0
.end method

.method public static initialize()V
    .locals 9

    .prologue
    .line 139
    sget-boolean v6, Lcom/millennialmedia/internal/Handshake;->initialized:Z

    if-eqz v6, :cond_1

    .line 140
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Handshake already initialized"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v3, "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 147
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x1

    sput-boolean v6, Lcom/millennialmedia/internal/Handshake;->initialized:Z

    .line 151
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/millennialmedia/internal/Handshake;->availableHandshakePlayListServerAdapters:Ljava/util/Map;

    .line 152
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->availableHandshakePlayListServerAdapters:Ljava/util/Map;

    const-string v7, "green"

    const-class v8, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->availableHandshakePlayListServerAdapters:Ljava/util/Map;

    const-string v7, "orange"

    const-class v8, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/4 v3, 0x0

    .line 158
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 159
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Loading packaged default handshake"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "mmadsdk/default_handshake.json"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 163
    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "defaultHandshake":Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/internal/Handshake;->parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v6

    sput-object v6, Lcom/millennialmedia/internal/Handshake;->defaultHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v3, :cond_7

    .line 173
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v3

    .line 182
    .end local v0    # "defaultHandshake":Ljava/lang/String;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Loading previously stored handshake"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMillennialDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "handshake.json"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :try_start_3
    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "storedHandshake":Ljava/lang/String;
    invoke-static {v5}, Lcom/millennialmedia/internal/Handshake;->parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v6

    sput-object v6, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    .line 191
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-nez v6, :cond_4

    .line 192
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Unable to create handshake info object"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 202
    :cond_4
    if-eqz v3, :cond_0

    .line 204
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not close InputStream when reading handshake.json"

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "storedHandshake":Ljava/lang/String;
    .restart local v0    # "defaultHandshake":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 175
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not close InputStream when reading default handshake."

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    .line 176
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 166
    .end local v0    # "defaultHandshake":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 167
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not read default handshake."

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    if-eqz v3, :cond_7

    .line 173
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v4, v3

    .line 176
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 174
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 175
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not close InputStream when reading default handshake."

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    .line 176
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    .line 169
    .local v1, "e":Lorg/json/JSONException;
    :try_start_7
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not parse the default handshake."

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    if-eqz v3, :cond_7

    .line 173
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v4, v3

    .line 176
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 174
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not close InputStream when reading default handshake."

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    .line 176
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_5

    .line 173
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 176
    :cond_5
    :goto_2
    throw v6

    .line 174
    :catch_6
    move-exception v1

    .line 175
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v8, "Could not close InputStream when reading default handshake."

    invoke-static {v7, v8, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .line 196
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_3
    :try_start_a
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "No handshake.json exists."

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 202
    if-eqz v3, :cond_0

    .line 204
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 205
    :catch_8
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not close InputStream when reading handshake.json"

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 197
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .line 198
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_4
    :try_start_c
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not read handshake.json"

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 202
    if-eqz v3, :cond_0

    .line 204
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_0

    .line 205
    :catch_a
    move-exception v1

    .line 206
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not close InputStream when reading handshake.json"

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .line 200
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v1, "e":Lorg/json/JSONException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_5
    :try_start_e
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not parse handshake.json"

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 202
    if-eqz v3, :cond_0

    .line 204
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_0

    .line 205
    :catch_c
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v7, "Could not close InputStream when reading handshake.json"

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_6
    if-eqz v3, :cond_6

    .line 204
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 207
    :cond_6
    :goto_7
    throw v6

    .line 205
    :catch_d
    move-exception v1

    .line 206
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v8, "Could not close InputStream when reading handshake.json"

    invoke-static {v7, v8, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v6

    goto :goto_6

    .line 199
    .restart local v2    # "file":Ljava/io/File;
    :catch_e
    move-exception v1

    goto :goto_5

    .line 197
    :catch_f
    move-exception v1

    goto :goto_4

    .line 195
    :catch_10
    move-exception v1

    goto :goto_3

    .end local v2    # "file":Ljava/io/File;
    :cond_7
    move-object v4, v3

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private static loadNativeAdConfig(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 15
    .param p0, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v7, 0x0

    .line 430
    .local v7, "nativeTypeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;>;"
    const-string v11, "nativeConfig"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 432
    .local v4, "nativeAdConfig":Lorg/json/JSONObject;
    const-string v11, "typeDefs"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 433
    .local v10, "typeDefinitionsJson":Lorg/json/JSONObject;
    if-eqz v10, :cond_1

    .line 434
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "nativeTypeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 436
    .restart local v7    # "nativeTypeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;>;"
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 437
    .local v8, "nativeTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 438
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 439
    .local v5, "nativeType":Ljava/lang/String;
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 441
    .local v9, "typeDefinitionJson":Lorg/json/JSONObject;
    new-instance v6, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    const-string v11, "name"

    .line 442
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;-><init>(Ljava/lang/String;)V

    .line 444
    .local v6, "nativeTypeDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
    const-string v11, "components"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 446
    .local v1, "componentDefinitions":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 447
    .local v3, "componentIds":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 448
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 449
    .local v2, "componentId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 451
    .local v0, "componentDefinition":Lorg/json/JSONObject;
    iget-object v11, v6, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    new-instance v12, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    const-string v13, "publisherRequired"

    .line 453
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "advertiserRequired"

    .line 454
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v12, v2, v13, v14}, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;-><init>(Ljava/lang/String;II)V

    .line 451
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    .end local v0    # "componentDefinition":Lorg/json/JSONObject;
    .end local v2    # "componentId":Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 461
    .end local v1    # "componentDefinitions":Lorg/json/JSONObject;
    .end local v3    # "componentIds":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "nativeType":Ljava/lang/String;
    .end local v6    # "nativeTypeDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;
    .end local v8    # "nativeTypes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "typeDefinitionJson":Lorg/json/JSONObject;
    :cond_1
    return-object v7
.end method

.method private static parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    .locals 10
    .param p0, "handshakeContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    sget-object v7, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parsing handshake:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    const/4 v4, 0x0

    .line 358
    .local v4, "handshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    if-eqz p0, :cond_4

    .line 359
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 362
    .local v5, "handshakeJson":Lorg/json/JSONObject;
    new-instance v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    .end local v4    # "handshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    invoke-direct {v4}, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;-><init>()V

    .line 364
    .restart local v4    # "handshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    const-string v7, "ver"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->version:Ljava/lang/String;

    .line 365
    iget-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->version:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 366
    sget-object v7, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v8, "Handshake response does not match requested version"

    invoke-static {v7, v8}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v7, 0x0

    .line 422
    .end local v5    # "handshakeJson":Lorg/json/JSONObject;
    :goto_0
    return-object v7

    .line 371
    .restart local v5    # "handshakeJson":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "config"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->config:Ljava/lang/String;

    .line 373
    const-string v7, "playlistServer"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 374
    .local v0, "activePlaylistServerJson":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerName:Ljava/lang/String;

    .line 375
    const-string v7, "baseUrl"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->activePlaylistServerBaseUrl:Ljava/lang/String;

    .line 377
    const-string v7, "handshakeBaseUrl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeBaseUrl:Ljava/lang/String;

    .line 378
    const-string v7, "rptBaseUrl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBaseUrl:Ljava/lang/String;

    .line 379
    const-string v7, "ttl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeTtl:I

    .line 380
    const-string v7, "sdkEnabled"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->sdkEnabled:Z

    .line 381
    const-string v7, "rptBatchSize"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchSize:I

    .line 382
    const-string v7, "rptFreq"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->reportingBatchFrequency:I

    .line 383
    const-string v7, "inlineTmax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->inlineTimeout:I

    .line 384
    const-string v7, "instlTmax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialTimeout:I

    .line 385
    const-string v7, "nativeTmax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTimeout:I

    .line 386
    const-string v7, "clientAdTmax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->clientMediationTimeout:I

    .line 387
    const-string v7, "serverAdTmax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->serverToServerTimeout:I

    .line 388
    const-string v7, "exTmax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->exchangeTimeout:I

    .line 389
    const-string v7, "minInlineRefresh"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->minInlineRefreshRate:I

    .line 390
    const-string v7, "instlExpDur"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->interstitialExpirationDuration:I

    .line 391
    const-string v7, "nativeExpDur"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeExpirationDuration:I

    .line 392
    const-string v7, "vastSkipOffsetMax"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMax:I

    .line 393
    const-string v7, "vastSkipOffsetMin"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->vastVideoSkipOffsetMin:I

    .line 394
    invoke-static {v5}, Lcom/millennialmedia/internal/Handshake;->loadNativeAdConfig(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, v4, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->nativeTypeDefinitions:Ljava/util/Map;

    .line 396
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/millennialmedia/internal/Handshake;->existingPackages:Ljava/util/Map;

    .line 398
    const-string v7, "exists"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 399
    .local v2, "existsArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_3

    .line 400
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 401
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 402
    .local v3, "existsItemJsonObject":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 400
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 407
    :cond_2
    :try_start_0
    sget-object v7, Lcom/millennialmedia/internal/Handshake;->existingPackages:Ljava/util/Map;

    const-string v8, "id"

    .line 408
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pkg"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 410
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_2

    .line 417
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "existsItemJsonObject":Lorg/json/JSONObject;
    .end local v6    # "i":I
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 418
    sget-object v7, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v8, "Handshake successfully parsed"

    invoke-static {v7, v8}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "activePlaylistServerJson":Lorg/json/JSONObject;
    .end local v2    # "existsArray":Lorg/json/JSONArray;
    .end local v5    # "handshakeJson":Lorg/json/JSONObject;
    :cond_4
    move-object v7, v4

    .line 422
    goto/16 :goto_0
.end method

.method public static request(Z)V
    .locals 3
    .param p0, "async"    # Z

    .prologue
    .line 220
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting handshake, async mode <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    if-eqz p0, :cond_1

    .line 225
    new-instance v0, Lcom/millennialmedia/internal/Handshake$1;

    invoke-direct {v0}, Lcom/millennialmedia/internal/Handshake$1;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->requestInternal()V

    goto :goto_0
.end method

.method private static requestInternal()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 243
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-virtual {v10, v14, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    .line 244
    .local v8, "setSuccessful":Z
    if-nez v8, :cond_1

    .line 245
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Handshake request already in progress"

    invoke-static {v10, v11}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const v2, 0xea60

    .line 256
    .local v2, "handshakeRefreshDelay":I
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 257
    .local v5, "requestParams":Lorg/json/JSONObject;
    const-string v10, "ver"

    const-string v11, "1"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v10, "sdkVer"

    const-string v11, "6.1.0-5323db4"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v10, "os"

    const-string v11, "android"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v10, "osv"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v10, "appId"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v3, "https://ads.nexage.com"

    .line 264
    .local v3, "handshakeUrl":Ljava/lang/String;
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    if-eqz v10, :cond_2

    sget v10, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    const/16 v11, 0xa

    if-ge v10, v11, :cond_2

    .line 265
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    iget-object v3, v10, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->handshakeBaseUrl:Ljava/lang/String;

    .line 267
    :cond_2
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->HANDSHAKE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    sget v10, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    .line 270
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "requestParamsString":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 273
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Executing handshake request.\n\tattempt: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\turl: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\tpost data: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_3
    const-string v10, "application/json"

    .line 280
    invoke-static {v3, v6, v10}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v7

    .line 282
    .local v7, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget v10, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_7

    iget-object v10, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v10, :cond_7

    .line 284
    :try_start_1
    iget-object v10, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v10}, Lcom/millennialmedia/internal/Handshake;->parseHandshake(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    move-result-object v9

    .line 285
    .local v9, "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    if-nez v9, :cond_6

    .line 286
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Unable to create handshake info object"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 311
    .end local v9    # "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "An error occurred parsing the handshake response.  Reverting to last known good copy."

    invoke-static {v10, v11, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v10, :cond_5

    .line 327
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 328
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Canceling existing handshake refresh"

    invoke-static {v10, v11}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_4
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v10}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 333
    :cond_5
    new-instance v10, Lcom/millennialmedia/internal/Handshake$2;

    invoke-direct {v10}, Lcom/millennialmedia/internal/Handshake$2;-><init>()V

    int-to-long v12, v2

    invoke-static {v10, v12, v13}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v10

    sput-object v10, Lcom/millennialmedia/internal/Handshake;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 346
    .end local v3    # "handshakeUrl":Ljava/lang/String;
    .end local v5    # "requestParams":Lorg/json/JSONObject;
    .end local v6    # "requestParamsString":Ljava/lang/String;
    .end local v7    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :goto_2
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->requestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 288
    .restart local v3    # "handshakeUrl":Ljava/lang/String;
    .restart local v5    # "requestParams":Lorg/json/JSONObject;
    .restart local v6    # "requestParamsString":Ljava/lang/String;
    .restart local v7    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .restart local v9    # "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :cond_6
    :try_start_3
    sput-object v9, Lcom/millennialmedia/internal/Handshake;->currentHandshakeInfo:Lcom/millennialmedia/internal/Handshake$HandshakeInfo;

    .line 290
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMillennialDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "handshake.json"

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 294
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v10, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/millennialmedia/internal/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 307
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getHandshakeTtl()I

    move-result v2

    .line 309
    const/4 v10, 0x0

    sput v10, Lcom/millennialmedia/internal/Handshake;->handshakeAttempts:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 315
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :catch_1
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Unable to open a file to store the handshake response."

    invoke-static {v10, v11, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 342
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "handshakeUrl":Ljava/lang/String;
    .end local v5    # "requestParams":Lorg/json/JSONObject;
    .end local v6    # "requestParamsString":Ljava/lang/String;
    .end local v7    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :catch_2
    move-exception v0

    .line 343
    .local v0, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Cannot build the handshake request data"

    invoke-static {v10, v11, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 300
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "handshakeUrl":Ljava/lang/String;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "requestParams":Lorg/json/JSONObject;
    .restart local v6    # "requestParamsString":Ljava/lang/String;
    .restart local v7    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .restart local v9    # "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :catch_3
    move-exception v0

    .line 301
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Failed to close OutputStream when writing handshake response"

    invoke-static {v10, v11, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :catch_4
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Exception occurred when trying to load handshake."

    invoke-static {v10, v11, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :catch_5
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    :try_start_a
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Error storing handshake response"

    invoke-static {v10, v11, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 299
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 300
    :catch_6
    move-exception v0

    .line 301
    :try_start_c
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v11, "Failed to close OutputStream when writing handshake response"

    invoke-static {v10, v11, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    .line 298
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 299
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 302
    :goto_4
    :try_start_e
    throw v10

    .line 300
    :catch_7
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    const-string v12, "Failed to close OutputStream when writing handshake response"

    invoke-static {v11, v12, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_4

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .end local v9    # "tempHandshakeInfo":Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
    :cond_7
    :try_start_f
    sget-object v10, Lcom/millennialmedia/internal/Handshake;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handshake request failed with HTTP response code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1
.end method
