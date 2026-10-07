.class Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/video/MMVideoView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p2, "x1"    # Lcom/millennialmedia/internal/video/MMVideoView$1;

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$500(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 305
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable$1;-><init>(Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 327
    :goto_0
    monitor-exit p0

    .line 328
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$1002(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
