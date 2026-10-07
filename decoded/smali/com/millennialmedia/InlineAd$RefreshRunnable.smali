.class Lcom/millennialmedia/InlineAd$RefreshRunnable;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshRunnable"
.end annotation


# instance fields
.field inlineAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/InlineAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;)V
    .locals 1
    .param p1, "inlineAd"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd$RefreshRunnable;->inlineAdRef:Ljava/lang/ref/WeakReference;

    .line 430
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 436
    iget-object v3, p0, Lcom/millennialmedia/InlineAd$RefreshRunnable;->inlineAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/InlineAd;

    .line 437
    .local v2, "inlineAd":Lcom/millennialmedia/InlineAd;
    if-nez v2, :cond_0

    .line 438
    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InlineAd instance has been destroyed, shutting down refresh behavior"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$200(Lcom/millennialmedia/InlineAd;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$200(Lcom/millennialmedia/InlineAd;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    .line 444
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inline refresh disabled, aborting refresh behavior"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_2
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/millennialmedia/InlineAd;->access$402(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 450
    :cond_3
    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 451
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_4

    .line 452
    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to find valid activity context for placement container, aborting refresh"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_4
    invoke-static {v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->getLifecycleState(Landroid/app/Activity;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v3

    sget-object v4, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    if-ne v3, v4, :cond_6

    const/4 v1, 0x1

    .line 462
    .local v1, "activityResumed":Z
    :goto_1
    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$500(Lcom/millennialmedia/InlineAd;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$600(Lcom/millennialmedia/InlineAd;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 465
    new-instance v3, Lcom/millennialmedia/InlineAd$RefreshRunnable$1;

    invoke-direct {v3, p0, v2}, Lcom/millennialmedia/InlineAd$RefreshRunnable$1;-><init>(Lcom/millennialmedia/InlineAd$RefreshRunnable;Lcom/millennialmedia/InlineAd;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 474
    :cond_5
    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$200(Lcom/millennialmedia/InlineAd;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {p0, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/InlineAd;->access$402(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 457
    .end local v1    # "activityResumed":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method
