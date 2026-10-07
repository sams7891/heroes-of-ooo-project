.class Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd$ImpressionListener$1;->onViewableChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd$ImpressionListener$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v1, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 251
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iget-boolean v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionFound:Z

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    monitor-exit v1

    .line 263
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionFound:Z

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->val$nativeAd:Lcom/millennialmedia/NativeAd;

    .line 259
    invoke-static {v0}, Lcom/millennialmedia/NativeAd;->access$000(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 261
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    .line 262
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener$1$1;->this$1:Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    iget-object v0, v0, Lcom/millennialmedia/NativeAd$ImpressionListener$1;->this$0:Lcom/millennialmedia/NativeAd$ImpressionListener;

    iput-object v3, v0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
