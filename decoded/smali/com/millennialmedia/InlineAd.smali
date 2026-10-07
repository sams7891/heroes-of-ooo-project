.class public Lcom/millennialmedia/InlineAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/InlineAd$RefreshRunnable;,
        Lcom/millennialmedia/InlineAd$AdSize;,
        Lcom/millennialmedia/InlineAd$ImpressionListener;,
        Lcom/millennialmedia/InlineAd$InlineAdMetadata;,
        Lcom/millennialmedia/InlineAd$InlineErrorStatus;,
        Lcom/millennialmedia/InlineAd$InlineAbortListener;,
        Lcom/millennialmedia/InlineAd$InlineListener;
    }
.end annotation


# static fields
.field private static final MIN_IMPRESSION_DISPLAY:I = 0x3e8

.field protected static final STATE_LOAD_ABORTED:Ljava/lang/String; = "aborted"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile aborting:Z

.field private adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private adContainer:Landroid/view/ViewGroup;

.field private volatile hasRequested:Z

.field private impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

.field private inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

.field private inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

.field private inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

.field private volatile isExpanded:Z

.field private volatile isResized:Z

.field private lastRequestTime:J

.field private mmAdContainer:Landroid/widget/RelativeLayout;

.field private placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private refreshInterval:Ljava/lang/Integer;

.field private refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/millennialmedia/InlineAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "adContainer"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    .line 63
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->hasRequested:Z

    .line 64
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    .line 65
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    .line 66
    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    .line 510
    iput-object p2, p0, Lcom/millennialmedia/InlineAd;->adContainer:Landroid/view/ViewGroup;

    .line 511
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->adContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/InlineAd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/millennialmedia/InlineAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/PlayList;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->playList:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->mmAdContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/millennialmedia/InlineAd;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->mmAdContainer:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onRequestSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/millennialmedia/InlineAd;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/InlineAd;->onResize(Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/millennialmedia/InlineAd;->onResized(Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onExpanded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onCollapsed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onClicked(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onAdLeftApplication(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/millennialmedia/InlineAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/millennialmedia/InlineAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->onAbortFailed()V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/millennialmedia/InlineAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    return v0
.end method

.method static synthetic access$600(Lcom/millennialmedia/InlineAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    return v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/InlineAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->loadPlayList()V

    return-void
.end method

.method static synthetic access$800(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onRequestFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method public static createInstance(Ljava/lang/String;Landroid/view/ViewGroup;)Lcom/millennialmedia/InlineAd;
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "adContainer"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 490
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    if-nez p1, :cond_1

    .line 495
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Unable to create instance, ad container cannot be null"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 499
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "Unable to create instance, ad container must have an associated context"

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_2
    new-instance v0, Lcom/millennialmedia/InlineAd;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/InlineAd;-><init>(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private isLoading()Z
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v1, "load_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v1, "loaded"

    .line 1271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v1, "aborted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    :cond_0
    const/4 v0, 0x0

    .line 1276
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 8
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 661
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v2

    .line 663
    .local v2, "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    monitor-enter p0

    .line 664
    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v4, v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v5, "play_list_loaded"

    .line 665
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v5, "ad_adapter_load_failed"

    .line 666
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 668
    :cond_0
    monitor-exit p0

    .line 854
    :goto_0
    return-void

    .line 671
    :cond_1
    const-string v4, "loading_ad_adapter"

    iput-object v4, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    .line 672
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 675
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    sget-object v4, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v5, "Unable to find ad adapter in play list"

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_2
    invoke-direct {p0, v2}, Lcom/millennialmedia/InlineAd;->onRequestFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 683
    :cond_3
    iget-boolean v4, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    if-eqz v4, :cond_4

    .line 684
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->onAborted(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 690
    :cond_4
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v3

    .line 692
    .local v3, "playListItemReporter":Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v4, p0, v3}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    .line 693
    .local v1, "inlineAdAdapter":Lcom/millennialmedia/internal/adadapters/InlineAdapter;
    if-eqz v1, :cond_7

    .line 697
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    .line 698
    iput-object v2, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 701
    iget v0, v1, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->requestTimeout:I

    .line 702
    .local v0, "adAdapterTimeout":I
    if-lez v0, :cond_6

    .line 703
    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v4, :cond_5

    .line 704
    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v4}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 707
    :cond_5
    new-instance v4, Lcom/millennialmedia/InlineAd$3;

    invoke-direct {v4, p0, v2, v3}, Lcom/millennialmedia/InlineAd$3;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 725
    :cond_6
    iget-object v4, p0, Lcom/millennialmedia/InlineAd;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/millennialmedia/InlineAd$4;

    invoke-direct {v5, p0, v2, v1, v3}, Lcom/millennialmedia/InlineAd$4;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/InlineAdapter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v1, v4, v5}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;)V

    goto :goto_0

    .line 851
    .end local v0    # "adAdapterTimeout":I
    :cond_7
    invoke-virtual {v2}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 852
    invoke-direct {p0, v2}, Lcom/millennialmedia/InlineAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private loadPlayList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 564
    iget-boolean v3, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    if-eqz v3, :cond_1

    .line 565
    :cond_0
    sget-object v3, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v4, "Inline ad is resized or expanded, unable to request new ad"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 572
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 573
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/millennialmedia/InlineAd;->lastRequestTime:J

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinInlineRefreshRate()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 574
    sget-object v3, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v4, "Too soon since last inline ad request, unable to request ad"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :cond_2
    monitor-enter p0

    .line 580
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 581
    monitor-exit p0

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 585
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    .line 586
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 588
    const-string v3, "loading_play_list"

    iput-object v3, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    .line 589
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    iput-object v8, p0, Lcom/millennialmedia/InlineAd;->playList:Lcom/millennialmedia/internal/PlayList;

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/InlineAd;->lastRequestTime:J

    .line 598
    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    if-nez v3, :cond_4

    .line 599
    new-instance v3, Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-direct {v3}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;-><init>()V

    iput-object v3, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    .line 602
    :cond_4
    invoke-virtual {p0}, Lcom/millennialmedia/InlineAd;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v2

    .line 605
    .local v2, "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v3, :cond_5

    .line 606
    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 609
    :cond_5
    new-instance v3, Lcom/millennialmedia/InlineAd$1;

    invoke-direct {v3, p0, v2}, Lcom/millennialmedia/InlineAd$1;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 619
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getInlineTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 609
    invoke-static {v3, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 621
    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    invoke-virtual {v3, p0}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->toMap(Lcom/millennialmedia/InlineAd;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/InlineAd$2;

    invoke-direct {v4, p0, v2}, Lcom/millennialmedia/InlineAd$2;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    invoke-static {v3, v4}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V

    goto :goto_0
.end method

.method private onAbortFailed()V
    .locals 3

    .prologue
    .line 1252
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad abort failed"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 1256
    .local v0, "localInlineAbortListener":Lcom/millennialmedia/InlineAd$InlineAbortListener;
    if-eqz v0, :cond_0

    .line 1257
    new-instance v1, Lcom/millennialmedia/InlineAd$14;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$14;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1265
    :cond_0
    return-void
.end method

.method private onAborted(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1210
    monitor-enter p0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1212
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "onAborted called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :cond_0
    monitor-exit p0

    .line 1247
    :cond_1
    :goto_0
    return-void

    .line 1219
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1220
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1221
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAborted called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1227
    :cond_4
    :try_start_1
    const-string v1, "aborted"

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    .line 1228
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad aborted"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1237
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 1238
    .local v0, "localInlineAbortListener":Lcom/millennialmedia/InlineAd$InlineAbortListener;
    if-eqz v0, :cond_1

    .line 1239
    new-instance v1, Lcom/millennialmedia/InlineAd$13;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$13;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineAbortListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 923
    monitor-enter p0

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdAdapterLoadFailed called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    monitor-exit p0

    .line 944
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 933
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 940
    :cond_3
    :try_start_1
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    .line 941
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    invoke-direct {p0, p1}, Lcom/millennialmedia/InlineAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private onAdLeftApplication(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1182
    monitor-enter p0

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1184
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "onAdLeftApplication called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_0
    monitor-exit p0

    .line 1205
    :cond_1
    :goto_0
    return-void

    .line 1190
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad left application"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1196
    .local v0, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v0, :cond_1

    .line 1197
    new-instance v1, Lcom/millennialmedia/InlineAd$12;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$12;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1190
    .end local v0    # "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
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
    .line 1043
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad clicked"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1047
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1048
    .local v0, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v0, :cond_0

    .line 1049
    new-instance v1, Lcom/millennialmedia/InlineAd$7;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$7;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1057
    :cond_0
    return-void
.end method

.method private onCollapsed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1153
    monitor-enter p0

    .line 1154
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1155
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1156
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "onCollapsed called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_0
    monitor-exit p0

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1161
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad collapsed"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    .line 1167
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1168
    .local v0, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v0, :cond_1

    .line 1169
    new-instance v1, Lcom/millennialmedia/InlineAd$11;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$11;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1161
    .end local v0    # "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onExpanded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1123
    monitor-enter p0

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1125
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "onExpanded called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_0
    monitor-exit p0

    .line 1148
    :cond_1
    :goto_0
    return-void

    .line 1131
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad expanded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/InlineAd;->isExpanded:Z

    .line 1135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    .line 1138
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1139
    .local v0, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v0, :cond_1

    .line 1140
    new-instance v1, Lcom/millennialmedia/InlineAd$10;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$10;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1131
    .end local v0    # "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onRequestFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 997
    monitor-enter p0

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 999
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "onRequestFailed called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_0
    monitor-exit p0

    .line 1038
    :cond_1
    :goto_0
    return-void

    .line 1006
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_play_list"

    .line 1007
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1008
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1009
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestFailed called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1021
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1015
    :cond_4
    :try_start_1
    const-string v1, "load_failed"

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    .line 1017
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Request failed"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->stopRequestTimeoutTimers()V

    .line 1020
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1021
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1025
    .local v0, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v0, :cond_1

    .line 1026
    new-instance v1, Lcom/millennialmedia/InlineAd$6;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$6;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onRequestSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 949
    monitor-enter p0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 951
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "onRequestSucceeded called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_0
    monitor-exit p0

    .line 992
    :cond_1
    :goto_0
    return-void

    .line 958
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 959
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 960
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestSucceeded called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 975
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 966
    :cond_4
    :try_start_1
    const-string v1, "loaded"

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->placementState:Ljava/lang/String;

    .line 968
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Request succeeded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->stopRequestTimeoutTimers()V

    .line 971
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 973
    new-instance v1, Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->mmAdContainer:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/InlineAd$ImpressionListener;-><init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;)V

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    .line 974
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->impressionListener:Lcom/millennialmedia/InlineAd$ImpressionListener;

    invoke-virtual {v1}, Lcom/millennialmedia/InlineAd$ImpressionListener;->listen()V

    .line 975
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 979
    .local v0, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v0, :cond_1

    .line 980
    new-instance v1, Lcom/millennialmedia/InlineAd$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/InlineAd$5;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onResize(Lcom/millennialmedia/internal/AdPlacement$RequestState;II)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1062
    monitor-enter p0

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1064
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "onResize called but request state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_0
    monitor-exit p0

    .line 1086
    :cond_1
    :goto_0
    return-void

    .line 1070
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    sget-object v1, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad resizing"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    .line 1076
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1077
    .local v0, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v0, :cond_1

    .line 1078
    new-instance v1, Lcom/millennialmedia/InlineAd$8;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/millennialmedia/InlineAd$8;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;II)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1070
    .end local v0    # "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onResized(Lcom/millennialmedia/internal/AdPlacement$RequestState;IIZ)V
    .locals 6
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isClosed"    # Z

    .prologue
    .line 1092
    monitor-enter p0

    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1094
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "onResized called but request state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_0
    monitor-exit p0

    .line 1118
    :cond_1
    :goto_0
    return-void

    .line 1100
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad resized, is closed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    if-eqz p4, :cond_3

    .line 1104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->isResized:Z

    .line 1108
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 1109
    .local v2, "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    if-eqz v2, :cond_1

    .line 1110
    new-instance v0, Lcom/millennialmedia/InlineAd$9;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/InlineAd$9;-><init>(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineListener;IIZ)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1100
    .end local v2    # "localInlineListener":Lcom/millennialmedia/InlineAd$InlineListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startRefresh()V
    .locals 4

    .prologue
    .line 894
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 895
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    const-string v1, "Refresh already active, canceling"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 906
    :cond_2
    :goto_0
    return-void

    .line 905
    :cond_3
    new-instance v0, Lcom/millennialmedia/InlineAd$RefreshRunnable;

    invoke-direct {v0, p0}, Lcom/millennialmedia/InlineAd$RefreshRunnable;-><init>(Lcom/millennialmedia/InlineAd;)V

    iget-object v1, p0, Lcom/millennialmedia/InlineAd;->refreshInterval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/InlineAd;->refreshRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0
.end method

.method private stopRequestTimeoutTimers()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/millennialmedia/InlineAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 918
    :cond_1
    return-void
.end method


# virtual methods
.method public abort(Lcom/millennialmedia/InlineAd$InlineAbortListener;)V
    .locals 3
    .param p1, "inlineAbortListener"    # Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .prologue
    .line 541
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to abort playlist request for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineAbortListener:Lcom/millennialmedia/InlineAd$InlineAbortListener;

    .line 545
    monitor-enter p0

    .line 546
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting playlist request for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->aborting:Z

    .line 553
    monitor-exit p0

    .line 558
    :goto_0
    return-void

    .line 555
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->onAbortFailed()V

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public request(Lcom/millennialmedia/InlineAd$InlineAdMetadata;)V
    .locals 3
    .param p1, "inlineAdMetadata"    # Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    .prologue
    .line 521
    sget-object v0, Lcom/millennialmedia/InlineAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting playlist for placement ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineAdMetadata:Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd;->hasRequested:Z

    .line 526
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->loadPlayList()V

    .line 527
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->startRefresh()V

    .line 528
    return-void
.end method

.method public setListener(Lcom/millennialmedia/InlineAd$InlineListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/millennialmedia/InlineAd$InlineListener;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/millennialmedia/InlineAd;->inlineListener:Lcom/millennialmedia/InlineAd$InlineListener;

    .line 865
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 2
    .param p1, "interval"    # I

    .prologue
    .line 878
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getMinInlineRefreshRate()I

    move-result v0

    .line 879
    .local v0, "minInlineRefreshRate":I
    if-eqz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 880
    move p1, v0

    .line 883
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/InlineAd;->refreshInterval:Ljava/lang/Integer;

    .line 885
    iget-boolean v1, p0, Lcom/millennialmedia/InlineAd;->hasRequested:Z

    if-eqz v1, :cond_1

    .line 886
    invoke-direct {p0}, Lcom/millennialmedia/InlineAd;->startRefresh()V

    .line 888
    :cond_1
    return-void
.end method
