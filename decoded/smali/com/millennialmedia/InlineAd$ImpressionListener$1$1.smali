.class Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$ImpressionListener$1;->onViewableChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd$ImpressionListener$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v1, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 287
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-boolean v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    monitor-exit v1

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    .line 292
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->val$inlineAd:Lcom/millennialmedia/InlineAd;

    .line 295
    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$300(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 297
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/InlineAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
