.class public Lcom/millennialmedia/internal/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;,
        Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_VIEWABILITY_PERCENT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/millennialmedia/internal/utils/ViewUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static attachView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    return-void
.end method

.method public static attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 339
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 345
    .local v0, "childContext":Landroid/content/Context;
    instance-of v2, v0, Landroid/content/MutableContextWrapper;

    if-eqz v2, :cond_2

    .line 346
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 347
    .local v1, "parentContext":Landroid/content/Context;
    if-eq v0, v1, :cond_2

    .line 348
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v3, "Changing view context to match parent context"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    check-cast v0, Landroid/content/MutableContextWrapper;

    .end local v0    # "childContext":Landroid/content/Context;
    invoke-virtual {v0, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 355
    .end local v1    # "parentContext":Landroid/content/Context;
    :cond_2
    if-eqz p2, :cond_3

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static convertPixelsToDips(I)I
    .locals 2
    .param p0, "pixels"    # I

    .prologue
    .line 550
    int-to-float v0, p0

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static convertPixelsToDips(Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "dimensions"    # Landroid/graphics/Rect;

    .prologue
    .line 556
    if-nez p0, :cond_1

    .line 557
    sget-object v3, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to convert for null dimensions"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v0

    .line 565
    .local v0, "displayDensity":F
    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v2, v3

    .line 566
    .local v2, "width":I
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v1, v3

    .line 568
    .local v1, "height":I
    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Landroid/graphics/Rect;->left:I

    .line 569
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, p0, Landroid/graphics/Rect;->top:I

    .line 570
    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/graphics/Rect;->right:I

    .line 571
    iget v3, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 573
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    sget-object v3, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converted dimensions from pixels to dips: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getActivityForView(Landroid/view/View;)Landroid/app/Activity;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p0, :cond_1

    .line 587
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 588
    .local v1, "context":Landroid/content/Context;
    :goto_0
    instance-of v2, v1, Landroid/content/MutableContextWrapper;

    if-eqz v2, :cond_0

    .line 589
    check-cast v1, Landroid/content/MutableContextWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    goto :goto_0

    .line 592
    :cond_0
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 593
    check-cast v0, Landroid/app/Activity;

    .line 597
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found activity <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for view <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_2
    return-object v0
.end method

.method public static getActivityHashForView(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 402
    const/4 v1, -0x1

    .line 404
    .local v1, "activityHash":I
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 405
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 406
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get activity hash"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found activity hash code <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for view <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    return v1

    .line 408
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public static getContentDimensions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dimensions"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 489
    if-nez p0, :cond_0

    .line 490
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to calculate content dimensions for null view"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :goto_0
    return-object v1

    .line 495
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 496
    .local v0, "rootView":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 497
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to calculate content for null root view"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    if-nez p1, :cond_2

    .line 503
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "dimensions":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 506
    .restart local p1    # "dimensions":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 508
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content dimensions for View <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, p1

    .line 512
    goto :goto_0
.end method

.method public static getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, "decorView":Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 424
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, "tempDecorView":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 428
    check-cast v1, Landroid/view/ViewGroup;

    .line 432
    .end local v2    # "tempDecorView":Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    sget-object v3, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found decor view <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> for view <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_1
    return-object v1
.end method

.method public static getParentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 392
    .local v0, "viewParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 396
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :goto_0
    return-object v0

    .restart local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public static getViewDimensionsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dimensions"    # Landroid/graphics/Rect;

    .prologue
    .line 454
    if-nez p0, :cond_0

    .line 455
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to calculate view dimensions for null view"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x0

    .line 478
    :goto_0
    return-object v1

    .line 460
    :cond_0
    if-nez p1, :cond_1

    .line 461
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "dimensions":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 464
    .restart local p1    # "dimensions":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 468
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 469
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 470
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 471
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 472
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 474
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On screen dimensions for View <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, p1

    .line 478
    goto :goto_0
.end method

.method public static getViewDimensionsRelativeToContent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dimensions"    # Landroid/graphics/Rect;

    .prologue
    .line 523
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewDimensionsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 524
    if-eqz p1, :cond_2

    .line 525
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 526
    .local v1, "rootView":Landroid/view/ViewGroup;
    if-nez v1, :cond_1

    .line 527
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to calculate dimensions for null root view"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 p1, 0x0

    .line 544
    .end local v1    # "rootView":Landroid/view/ViewGroup;
    .end local p1    # "dimensions":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object p1

    .line 534
    .restart local v1    # "rootView":Landroid/view/ViewGroup;
    .restart local p1    # "dimensions":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 535
    .local v0, "contentRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 536
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 537
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 540
    .end local v0    # "contentRect":Landroid/graphics/Rect;
    .end local v1    # "rootView":Landroid/view/ViewGroup;
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    sget-object v2, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dimensions relative to content for View <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getViewPositionOnScreen(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 442
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 446
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 448
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static isChild(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 381
    .local v0, "viewParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 382
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "viewParent":Landroid/view/ViewParent;
    if-ne v0, p0, :cond_0

    const/4 v1, 0x1

    .line 385
    :cond_0
    return v1
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 366
    .local v0, "viewParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 367
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    sget-object v1, Lcom/millennialmedia/internal/utils/ViewUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to remove view from parent, no valid parent view found"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 374
    .restart local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "viewParent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
