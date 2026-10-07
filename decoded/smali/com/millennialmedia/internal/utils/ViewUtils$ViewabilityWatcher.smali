.class public Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityWatcher"
.end annotation


# instance fields
.field volatile activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

.field clipRect:Landroid/graphics/Rect;

.field volatile lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

.field volatile listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

.field volatile listeningToActivity:Z

.field minViewabilityPercent:I

.field volatile observingViewTree:Z

.field volatile viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public volatile viewable:Z

.field volatile watching:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->minViewabilityPercent:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    .line 51
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    .line 53
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    .line 54
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    .line 59
    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    .line 64
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating viewability watcher <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> for view <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    .line 69
    iput-object p2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    .line 73
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher$1;-><init>(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    return-void
.end method

.method private addObserver(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    if-eqz v1, :cond_1

    .line 199
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying to set view tree observer when already set"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 209
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ViewTreeObserver.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    goto :goto_0
.end method

.method private checkViewable()V
    .locals 11

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 299
    .local v0, "currentlyViewable":Z
    iget-object v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 300
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    sget-object v9, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->RESUMED:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    if-ne v8, v9, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    .line 301
    invoke-virtual {v1, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 303
    iget-object v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget-object v9, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v6, v8

    .line 305
    .local v6, "visibleViewArea":J
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v4, v8

    .line 306
    .local v4, "totalArea":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 307
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v6

    div-long v2, v8, v4

    .line 308
    .local v2, "percentVisible":J
    iget v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->minViewabilityPercent:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_3

    const/4 v0, 0x1

    .line 312
    .end local v2    # "percentVisible":J
    .end local v4    # "totalArea":J
    .end local v6    # "visibleViewArea":J
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    if-eq v8, v0, :cond_2

    .line 313
    iput-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    .line 315
    iget-object v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    if-eqz v8, :cond_2

    .line 316
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 317
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notifying listener of viewability change.\n\tViewability watcher: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\tView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\tViewable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1
    iget-object v8, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listener:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;

    iget-boolean v9, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewable:Z

    invoke-interface {v8, v9}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;->onViewableChanged(Z)V

    .line 326
    :cond_2
    return-void

    .line 308
    .restart local v2    # "percentVisible":J
    .restart local v4    # "totalArea":J
    .restart local v6    # "visibleViewArea":J
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listenToActivity(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listen"    # Z

    .prologue
    .line 253
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 254
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 258
    :cond_0
    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    if-nez v1, :cond_2

    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/ActivityListenerManager;->registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->getLifecycleState(I)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 266
    :cond_1
    :goto_1
    iput-boolean p2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    .line 268
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    goto :goto_0

    .line 262
    :cond_2
    if-nez p2, :cond_3

    const/4 v1, 0x1

    :goto_2
    iget-boolean v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listeningToActivity:Z

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->activityListener:Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/ActivityListenerManager;->unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_1

    .line 262
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private removeObserver(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    if-nez v1, :cond_1

    .line 226
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying to remove view tree observer when not set"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 236
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing ViewTreeObserver.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tViewTreeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 247
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->observingViewTree:Z

    goto :goto_0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    .line 290
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    .line 279
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow called.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->addObserver(Landroid/view/View;)V

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listenToActivity(Landroid/view/View;Z)V

    .line 177
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewDetachedFromWindow called.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->removeObserver(Landroid/view/View;)V

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listenToActivity(Landroid/view/View;Z)V

    .line 193
    :cond_1
    return-void
.end method

.method public setMinViewabilityPercent(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 95
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the viewability percentage.\n\tViewability watcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPercentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iput p1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->minViewabilityPercent:I

    .line 102
    return-void
.end method

.method public startWatching()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 107
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting watcher.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    .line 110
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 114
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-eqz v1, :cond_2

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 124
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 126
    iput-boolean v4, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 133
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->addObserver(Landroid/view/View;)V

    .line 134
    invoke-direct {p0, v0, v4}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listenToActivity(Landroid/view/View;Z)V

    goto :goto_0

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->checkViewable()V

    goto :goto_0
.end method

.method public stopWatching()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lcom/millennialmedia/internal/utils/ViewUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping watcher.\n\tViewability watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    .line 146
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 150
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    if-nez v1, :cond_2

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->removeObserver(Landroid/view/View;)V

    .line 155
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 158
    iput-boolean v4, p0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->watching:Z

    .line 160
    invoke-direct {p0, v0, v4}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->listenToActivity(Landroid/view/View;Z)V

    goto :goto_0
.end method
