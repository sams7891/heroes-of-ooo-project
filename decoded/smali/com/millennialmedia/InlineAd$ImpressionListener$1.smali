.class Lcom/millennialmedia/InlineAd$ImpressionListener$1;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$ImpressionListener;-><init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

.field final synthetic val$inlineAd:Lcom/millennialmedia/InlineAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd$ImpressionListener;Lcom/millennialmedia/InlineAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/InlineAd$ImpressionListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iput-object p2, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->val$inlineAd:Lcom/millennialmedia/InlineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 6
    .param p1, "viewable"    # Z

    .prologue
    .line 278
    iget-object v1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    monitor-enter v1

    .line 279
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-boolean v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    new-instance v2, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;-><init>(Lcom/millennialmedia/InlineAd$ImpressionListener$1;)V

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 306
    :cond_0
    :goto_0
    monitor-exit v1

    .line 307
    return-void

    .line 302
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 304
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
