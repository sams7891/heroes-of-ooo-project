.class Lcom/millennialmedia/NativeAd$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->load(Landroid/content/Context;Lcom/millennialmedia/NativeAd$NativeAdMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/NativeAd;

.field final synthetic val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "errorStatus"    # Ljava/lang/Throwable;

    .prologue
    .line 502
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play list load failed"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->access$400(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 506
    return-void
.end method

.method public onLoaded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 2
    .param p1, "playList"    # Lcom/millennialmedia/internal/PlayList;

    .prologue
    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->access$500(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    monitor-exit p0

    .line 496
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    const-string v1, "play_list_loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->access$602(Lcom/millennialmedia/NativeAd;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    invoke-static {v0, p1}, Lcom/millennialmedia/NativeAd;->access$702(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;

    .line 492
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListReporter(Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 493
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->access$802(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 495
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$2;->this$0:Lcom/millennialmedia/NativeAd;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$2;->val$localRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-static {v0, v1}, Lcom/millennialmedia/NativeAd;->access$900(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
