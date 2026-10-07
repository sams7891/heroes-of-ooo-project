.class Lcom/millennialmedia/NativeAd$ImpressionListener;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImpressionListener"
.end annotation


# instance fields
.field volatile impressionFound:Z

.field volatile impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Landroid/view/View;)V
    .locals 2
    .param p1, "nativeAd"    # Lcom/millennialmedia/NativeAd;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionFound:Z

    .line 237
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v1, Lcom/millennialmedia/NativeAd$ImpressionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/NativeAd$ImpressionListener$1;-><init>(Lcom/millennialmedia/NativeAd$ImpressionListener;Lcom/millennialmedia/NativeAd;)V

    invoke-direct {v0, p2, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 274
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancelling previous impression timer runnable"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 293
    iput-object v2, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Lcom/millennialmedia/NativeAd;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stopping previous impression viewability watcher"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    .line 299
    iput-object v2, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 301
    :cond_1
    return-void
.end method

.method protected listen()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->setMinViewabilityPercent(I)V

    .line 284
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    goto :goto_0
.end method
