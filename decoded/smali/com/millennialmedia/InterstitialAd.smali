.class public Lcom/millennialmedia/InterstitialAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;,
        Lcom/millennialmedia/InterstitialAd$DisplayOptions;,
        Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;,
        Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;,
        Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    }
.end annotation


# static fields
.field protected static final STATE_EXPIRED:Ljava/lang/String; = "expired"

.field protected static final STATE_SHOWN:Ljava/lang/String; = "shown"

.field protected static final STATE_SHOW_FAILED:Ljava/lang/String; = "show_failed"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private context:Landroid/content/Context;

.field private expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private interstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

.field private interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

.field private placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/millennialmedia/InterstitialAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$102(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onShown(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onShowFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onClosed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onClicked(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onAdLeftApplication(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/millennialmedia/InterstitialAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/millennialmedia/InterstitialAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/PlayList;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->playList:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InterstitialAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/millennialmedia/InterstitialAd;
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 259
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    new-instance v0, Lcom/millennialmedia/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/millennialmedia/InterstitialAd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 8
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 367
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v2

    .line 369
    .local v2, "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v4, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v5, "play_list_loaded"

    .line 371
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v5, "ad_adapter_load_failed"

    .line 372
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    :cond_0
    monitor-exit p0

    .line 508
    :goto_0
    return-void

    .line 377
    :cond_1
    const-string v4, "loading_ad_adapter"

    iput-object v4, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 381
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    sget-object v4, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v5, "Unable to find ad adapter in play list"

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_2
    invoke-direct {p0, v2}, Lcom/millennialmedia/InterstitialAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 390
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v3

    .line 392
    .local v3, "playListItemReporter":Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->playList:Lcom/millennialmedia/internal/PlayList;

    .line 393
    invoke-virtual {v4, p0, v3}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    .line 395
    .local v1, "interstitialAdAdapter":Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
    if-eqz v1, :cond_6

    .line 398
    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    .line 400
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    .line 402
    iput-object v2, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 405
    iget v0, v1, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->requestTimeout:I

    .line 406
    .local v0, "adAdapterTimeout":I
    if-lez v0, :cond_5

    .line 407
    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v4, :cond_4

    .line 408
    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v4}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 411
    :cond_4
    new-instance v4, Lcom/millennialmedia/InterstitialAd$3;

    invoke-direct {v4, p0, v2, v3}, Lcom/millennialmedia/InterstitialAd$3;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 429
    :cond_5
    iget-object v4, p0, Lcom/millennialmedia/InterstitialAd;->context:Landroid/content/Context;

    new-instance v5, Lcom/millennialmedia/InterstitialAd$4;

    invoke-direct {v5, p0, v2, v3}, Lcom/millennialmedia/InterstitialAd$4;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v1, v4, v5}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V

    goto :goto_0

    .line 505
    .end local v0    # "adAdapterTimeout":I
    :cond_6
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 506
    invoke-direct {p0, v2}, Lcom/millennialmedia/InterstitialAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 623
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdAdapterLoadFailed called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_0
    monitor-exit p0

    .line 644
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 633
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    sget-object v0, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 640
    :cond_3
    :try_start_1
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 641
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private onAdLeftApplication(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 841
    monitor-enter p0

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 843
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "onAdLeftApplication called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_0
    monitor-exit p0

    .line 864
    :cond_1
    :goto_0
    return-void

    .line 849
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad left application"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 855
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_1

    .line 856
    new-instance v1, Lcom/millennialmedia/InterstitialAd$11;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$11;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 849
    .end local v0    # "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onClicked(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 822
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad clicked"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 826
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 827
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_0

    .line 828
    new-instance v1, Lcom/millennialmedia/InterstitialAd$10;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$10;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 836
    :cond_0
    return-void
.end method

.method private onClosed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 792
    monitor-enter p0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 794
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "onClosed called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    monitor-exit p0

    .line 817
    :cond_1
    :goto_0
    return-void

    .line 801
    :cond_2
    const-string v1, "idle"

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 802
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad closed"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 808
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_1

    .line 809
    new-instance v1, Lcom/millennialmedia/InterstitialAd$9;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$9;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 802
    .end local v0    # "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 869
    monitor-enter p0

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 871
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "onExpired called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_0
    monitor-exit p0

    .line 903
    :cond_1
    :goto_0
    return-void

    .line 879
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "show_failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 880
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 881
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExpired called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 888
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 887
    :cond_4
    :try_start_1
    const-string v1, "expired"

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 888
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad expired"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 894
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_1

    .line 895
    new-instance v1, Lcom/millennialmedia/InterstitialAd$12;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$12;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 696
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "onLoadFailed called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_0
    monitor-exit p0

    .line 731
    :cond_1
    :goto_0
    return-void

    .line 703
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_play_list"

    .line 704
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 705
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 706
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFailed called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 712
    :cond_4
    :try_start_1
    const-string v1, "load_failed"

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 713
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopRequestTimeoutTimers()V

    .line 714
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 715
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Load failed"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 721
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_1

    .line 722
    new-instance v1, Lcom/millennialmedia/InterstitialAd$6;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$6;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 649
    monitor-enter p0

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "onLoadSucceeded called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    monitor-exit p0

    .line 689
    :cond_1
    :goto_0
    return-void

    .line 658
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 659
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 660
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadSucceeded called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 666
    :cond_4
    :try_start_1
    const-string v1, "loaded"

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 667
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Load succeeded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopRequestTimeoutTimers()V

    .line 671
    invoke-direct {p0, p1}, Lcom/millennialmedia/InterstitialAd;->startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 676
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 679
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 680
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_1

    .line 681
    new-instance v1, Lcom/millennialmedia/InterstitialAd$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$5;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onShowFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V
    .locals 3
    .param p1, "errorStatus"    # Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    .prologue
    .line 767
    monitor-enter p0

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "loaded"

    if-ne v1, v2, :cond_0

    .line 770
    const-string v1, "show_failed"

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 772
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad show failed"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 778
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_1

    .line 779
    new-instance v1, Lcom/millennialmedia/InterstitialAd$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/InterstitialAd$8;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 787
    :cond_1
    return-void

    .line 772
    .end local v0    # "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onShown(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 736
    monitor-enter p0

    .line 737
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 738
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "onShown called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    monitor-exit p0

    .line 762
    :cond_1
    :goto_0
    return-void

    .line 745
    :cond_2
    const-string v1, "shown"

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 746
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 747
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad shown"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 753
    .local v0, "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    if-eqz v0, :cond_1

    .line 754
    new-instance v1, Lcom/millennialmedia/InterstitialAd$7;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$7;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 747
    .end local v0    # "localInterstitialListener":Lcom/millennialmedia/InterstitialAd$InterstitialListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "requestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopExpirationTimer()V

    .line 604
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInterstitialExpirationDuration()I

    move-result v0

    .line 605
    .local v0, "expirationDuration":I
    if-lez v0, :cond_0

    .line 606
    new-instance v1, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    .line 607
    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 610
    :cond_0
    return-void
.end method

.method private stopExpirationTimer()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 618
    :cond_0
    return-void
.end method

.method private stopRequestTimeoutTimers()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 597
    :cond_1
    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interstitialAdMetadata"    # Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    .prologue
    .line 285
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading playlist for placement ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InterstitialAd;->placementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->context:Landroid/content/Context;

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "idle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "load_failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "expired"

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "show_failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    sget-object v1, Lcom/millennialmedia/InterstitialAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load interstitial ad, state is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    monitor-exit p0

    .line 361
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v1, "loading_play_list"

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->playList:Lcom/millennialmedia/internal/PlayList;

    .line 306
    if-nez p2, :cond_1

    .line 307
    new-instance p2, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;

    .end local p2    # "interstitialAdMetadata":Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;
    invoke-direct {p2}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;-><init>()V

    .line 310
    .restart local p2    # "interstitialAdMetadata":Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/InterstitialAd;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    .line 313
    .local v0, "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 317
    :cond_2
    new-instance v1, Lcom/millennialmedia/InterstitialAd$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InterstitialAd$1;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 327
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInterstitialTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 317
    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 329
    invoke-virtual {p2, p0}, Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/InterstitialAd$2;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/InterstitialAd$2;-><init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V

    goto :goto_0

    .line 300
    .end local v0    # "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setListener(Lcom/millennialmedia/InterstitialAd$InterstitialListener;)V
    .locals 0
    .param p1, "interstitialListener"    # Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialListener:Lcom/millennialmedia/InterstitialAd$InterstitialListener;

    .line 563
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/InterstitialAd;->show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V

    .line 520
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayOptions"    # Lcom/millennialmedia/InterstitialAd$DisplayOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "errorMessage":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 535
    new-instance v1, Lcom/millennialmedia/MMException;

    const-string v2, "Unable to show interstitial, specified context cannot be null"

    invoke-direct {v1, v2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_0
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    const-string v2, "loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to show interstitial ad, state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd;->placementState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    if-eqz v0, :cond_2

    .line 545
    new-instance v1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/millennialmedia/InterstitialAd;->onShowFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    .line 552
    :goto_0
    return-void

    .line 542
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 550
    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/InterstitialAd;->stopExpirationTimer()V

    .line 551
    iget-object v1, p0, Lcom/millennialmedia/InterstitialAd;->interstitialAdAdapter:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;->show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V

    goto :goto_0
.end method
