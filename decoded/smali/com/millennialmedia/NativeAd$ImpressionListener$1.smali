.class Lcom/millennialmedia/NativeAd$ImpressionListener$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd$ImpressionListener;-><init>(Lcom/millennialmedia/NativeAd;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

.field final synthetic val$nativeAd:Lcom/millennialmedia/NativeAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd$ImpressionListener;Lcom/millennialmedia/NativeAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/NativeAd$ImpressionListener;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->val$nativeAd:Lcom/millennialmedia/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 6
    .param p1, "viewable"    # Z

    .prologue
    .line 241
    iget-object v1, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    monitor-enter v1

    .line 242
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iget-boolean v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionFound:Z

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    new-instance v2, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;-><init>(Lcom/millennialmedia/NativeAd$ImpressionListener$1;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 271
    :cond_0
    :goto_0
    monitor-exit v1

    .line 272
    return-void

    .line 267
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 269
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
