.class public Lcom/millennialmedia/internal/video/InlineWebVideoView;
.super Landroid/widget/RelativeLayout;
.source "InlineWebVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;,
        Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;
    }
.end annotation


# static fields
.field private static final BASE_TAG:Ljava/lang/String; = "MMInlineWebVideoView_"

.field private static final HIDE_CONTROLS_DELAY:I = 0x9c4

.field public static final PROGRESS_UPDATES_DISABLED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static volatile nextTagID:I


# instance fields
.field private attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

.field private callbackId:Ljava/lang/String;

.field private endFired:Z

.field private error:Z

.field private expandCollapseToggleButton:Landroid/widget/ToggleButton;

.field private height:I

.field private hideControlsRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

.field private inlineWebVideoViewListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

.field private lastUpdateTime:J

.field private midpointFired:Z

.field private mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field private mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/MMWebView;",
            ">;"
        }
    .end annotation
.end field

.field private placeholderView:Landroid/widget/ImageView;

.field private q1Fired:Z

.field private q3Fired:Z

.field private showExpandControls:Z

.field private showMediaControls:Z

.field private startFired:Z

.field private timeUpdateInterval:I

.field private uri:Landroid/net/Uri;

.field private videoContainer:Landroid/widget/FrameLayout;

.field private viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    .line 47
    const/16 v0, 0x64

    sput v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->nextTagID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoPlay"    # Z
    .param p3, "muted"    # Z
    .param p4, "showMediaControls"    # Z
    .param p5, "showExpandControls"    # Z
    .param p6, "timeUpdateInterval"    # I
    .param p7, "callbackId"    # Ljava/lang/String;
    .param p8, "inlineWebVideoViewListener"    # Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    .prologue
    .line 351
    new-instance v2, Landroid/content/MutableContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v2, -0x1

    iput v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->timeUpdateInterval:I

    .line 63
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastUpdateTime:J

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    .line 72
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->startFired:Z

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q1Fired:Z

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->midpointFired:Z

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q3Fired:Z

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->endFired:Z

    .line 353
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineWebVideoViewListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    .line 356
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/content/MutableContextWrapper;

    .line 358
    .local v4, "mutableContext":Landroid/content/MutableContextWrapper;
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    .line 359
    move/from16 v0, p6

    iput v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->timeUpdateInterval:I

    .line 360
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showMediaControls:Z

    .line 361
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showExpandControls:Z

    .line 363
    new-instance v2, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-direct {v2, p0, v3}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 384
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 386
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    .line 388
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setBackgroundColor(I)V

    .line 390
    new-instance v2, Lcom/millennialmedia/internal/video/MMVideoView;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v2, v4, v0, v1, p0}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 394
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v13, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 396
    .local v13, "videoViewlayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 398
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMInlineWebVideoView_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/millennialmedia/internal/video/InlineWebVideoView;->nextTagID:I

    add-int/lit8 v5, v3, 0x1

    sput v5, Lcom/millennialmedia/internal/video/InlineWebVideoView;->nextTagID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setTag(Ljava/lang/Object;)V

    .line 401
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v11, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 404
    .local v11, "placeholderLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    .line 405
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 406
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 409
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v12, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 412
    .local v12, "videoContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v12}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iget-object v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object v3, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    .line 415
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v10, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 418
    .local v10, "inlineVideoControlsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 420
    if-nez p4, :cond_0

    .line 421
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->setVisibility(I)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {p0, v2, v10}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/internal/video/MMVideoView;->setMediaController(Lcom/millennialmedia/internal/video/MMVideoView$MediaController;)V

    .line 426
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v3, p0, v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;ZZ)V

    invoke-virtual {v2, v3}, Lcom/millennialmedia/internal/video/MMVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    new-instance v2, Landroid/widget/ToggleButton;

    invoke-direct {v2, v4}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    .line 455
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 458
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/millennialmedia/R$drawable;->mmadsdk_expand_collapse:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$3;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 472
    if-nez p5, :cond_1

    .line 473
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 476
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getButtonDimensions(Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 477
    .local v8, "buttonDimensions":Landroid/graphics/Rect;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v9, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 480
    .local v9, "expandCollapseLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 481
    const/16 v2, 0xb

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 482
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0, v2, v9}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->fireOnClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getButtonDimensions(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->scheduleAutoHideControls()V

    return-void
.end method

.method static synthetic access$1100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->internalExpandToFullScreen()V

    return-void
.end method

.method static synthetic access$1200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->placeholderView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    return v0
.end method

.method static synthetic access$1400(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    return v0
.end method

.method static synthetic access$1500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    return v0
.end method

.method static synthetic access$1600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    return v0
.end method

.method static synthetic access$1700(Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;
    .param p1, "x1"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachToAnchorView(Lcom/millennialmedia/internal/MMWebView;)V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->resizeButtons(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->videoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineWebVideoViewListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    return-object v0
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private attachToAnchorView(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 5
    .param p1, "webView"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 873
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    iget v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    iget v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    iget v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 874
    .local v0, "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {p1, p0, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    invoke-interface {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachSucceeded(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 877
    .end local v0    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private fireOnClick()V
    .locals 1

    .prologue
    .line 1225
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$11;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$11;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1234
    return-void
.end method

.method private getButtonDimensions(Z)Landroid/graphics/Rect;
    .locals 7
    .param p1, "fullscreen"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1200
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_max_width_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1202
    .local v0, "maxWidthHeight":I
    if-eqz p1, :cond_0

    .line 1203
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1212
    :goto_0
    return-object v4

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_min_width_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1209
    .local v1, "minWidthHeight":I
    iget v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    div-int/lit8 v2, v4, 0x5

    .line 1210
    .local v2, "scaledWidthHeight":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1212
    .local v3, "widthHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private internalExpandToFullScreen()V
    .locals 3

    .prologue
    .line 634
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v1, :cond_1

    .line 635
    new-instance v0, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    .line 637
    .local v0, "mmActivityConfig":Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    .line 727
    .end local v0    # "mmActivityConfig":Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v2, "InlineWebVideoView.expandToFullScreen could not complete because of a previous error."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resizeButtons(Z)V
    .locals 3
    .param p1, "fullscreen"    # Z

    .prologue
    .line 1184
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v2, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->resize(Z)V

    .line 1186
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getButtonDimensions(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 1188
    .local v0, "buttonWidthHeight":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    .line 1189
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1191
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1192
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1193
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    return-void
.end method

.method private scheduleAutoHideControls()V
    .locals 4

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showExpandControls:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->showMediaControls:Z

    if-eqz v0, :cond_2

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->hideControlsRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->hideControlsRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1117
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    const-wide/16 v2, 0x9c4

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->hideControlsRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1179
    :cond_2
    return-void
.end method

.method private toDips(Landroid/util/DisplayMetrics;I)I
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "pixels"    # I

    .prologue
    .line 1219
    int-to-float v0, p2

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public expandToFullScreen()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandCollapseToggleButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 629
    return-void
.end method

.method public mute()V
    .locals 2

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->mute()V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.mute could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p2, "percentage"    # I

    .prologue
    .line 1106
    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 9
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 969
    invoke-virtual {p1, v5}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    .line 971
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 972
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_3

    .line 973
    monitor-enter p0

    .line 974
    :try_start_0
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->endFired:Z

    if-nez v1, :cond_1

    .line 975
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->endFired:Z

    .line 976
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InlineVideoView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: firing end event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timeUpdate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "tracking"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "end"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 983
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "stateChange"

    aput-object v3, v2, v6

    const-string v3, "complete"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    :cond_2
    :goto_0
    new-instance v1, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$9;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1002
    return-void

    .line 983
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 988
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v2, "InlineVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v5, 0x1

    .line 1089
    iput-boolean v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    .line 1091
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1092
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "error"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "Inline video play back failed."

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    invoke-interface {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachFailed(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 1100
    :cond_1
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v5, 0x1

    .line 1069
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1070
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "mute"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    :cond_0
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 956
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 957
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 958
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "paused"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 960
    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$6;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 867
    :cond_0
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 8
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p2, "milliseconds"    # I

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/MMWebView;

    .line 1009
    .local v3, "webView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v3, :cond_7

    .line 1010
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v4

    div-int/lit8 v2, v4, 0x4

    .line 1012
    .local v2, "quartileDuration":I
    iget-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q1Fired:Z

    if-nez v4, :cond_1

    if-lt p2, v2, :cond_1

    .line 1013
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1014
    sget-object v4, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InlineVideoView["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: firing q1 event"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q1Fired:Z

    .line 1017
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "tracking"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "q1"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    :cond_1
    iget-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->midpointFired:Z

    if-nez v4, :cond_3

    mul-int/lit8 v4, v2, 0x2

    if-lt p2, v4, :cond_3

    .line 1021
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1022
    sget-object v4, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InlineVideoView["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: firing midpoint event"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->midpointFired:Z

    .line 1025
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "tracking"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "q2"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    :cond_3
    iget-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q3Fired:Z

    if-nez v4, :cond_5

    mul-int/lit8 v4, v2, 0x3

    if-lt p2, v4, :cond_5

    .line 1029
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1030
    sget-object v4, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InlineVideoView["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: firing q3 event"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q3Fired:Z

    .line 1033
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "tracking"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "q3"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1037
    .local v0, "currentTime":J
    iget v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->timeUpdateInterval:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    iget-wide v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastUpdateTime:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->timeUpdateInterval:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 1040
    iput-wide v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->lastUpdateTime:J

    .line 1042
    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "timeUpdate"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    .end local v0    # "currentTime":J
    .end local v2    # "quartileDuration":I
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 1046
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1047
    sget-object v4, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v5, "InlineVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1008
    .end local v3    # "webView":Lcom/millennialmedia/internal/MMWebView;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 8
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 883
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 884
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 885
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "stateChange"

    aput-object v3, v2, v5

    const-string v3, "readyToStart"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "updateVideoURL"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "durationChange"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    :cond_0
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1057
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "seek"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 9
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 899
    new-instance v1, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$7;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 907
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->scheduleAutoHideControls()V

    .line 909
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 910
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_3

    .line 911
    monitor-enter p0

    .line 912
    :try_start_0
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->startFired:Z

    if-nez v1, :cond_1

    .line 913
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->startFired:Z

    .line 914
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InlineWebVideoView["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: firing start event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "tracking"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "start"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "stateChange"

    aput-object v3, v2, v5

    const-string v3, "playing"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    :cond_2
    :goto_0
    return-void

    .line 921
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 926
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 927
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v2, "InlineWebVideoView anchor WebView is gone.  Tracking events disabled."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 936
    new-instance v1, Lcom/millennialmedia/internal/video/InlineWebVideoView$8;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$8;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 946
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 947
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 948
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "stopped"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_0
    return-void
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v5, 0x0

    .line 1079
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1080
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "mute"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.pause could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 776
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    .line 778
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 779
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 780
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "removed"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 784
    return-void
.end method

.method public reposition(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 790
    iget-boolean v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v3, :cond_6

    .line 791
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_2

    .line 792
    :cond_0
    sget-object v3, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v4, "All position parameters must be greater than or equal to zero."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_1
    :goto_0
    return-void

    .line 797
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    .line 798
    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/MMWebView;

    .line 799
    .local v2, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v2, :cond_4

    .line 800
    invoke-virtual {v2}, Lcom/millennialmedia/internal/MMWebView;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    if-lt v3, p3, :cond_3

    invoke-virtual {v2}, Lcom/millennialmedia/internal/MMWebView;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    if-lt v3, p4, :cond_3

    .line 803
    iput p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    .line 804
    iput p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    .line 805
    iput p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    .line 806
    iput p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    .line 808
    invoke-direct {p0, v6}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->resizeButtons(Z)V

    .line 810
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 811
    .local v1, "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 812
    invoke-static {v2, p0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    invoke-virtual {v2}, Lcom/millennialmedia/internal/MMWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 815
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "reposition"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-direct {p0, v0, p3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 816
    invoke-direct {p0, v0, p4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-direct {p0, v0, p2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->toDips(Landroid/util/DisplayMetrics;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 815
    invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 819
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_3
    sget-object v3, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v4, "Cannot reposition the inline video as it will not fit within the anchor view."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    :cond_4
    sget-object v3, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v4, "Cannot position the InlineVideoView because the anchor view is gone."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 827
    .end local v2    # "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    :cond_5
    sget-object v3, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v4, "Cannot position the InlineVideoView because the anchor view has not been set."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :cond_6
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 832
    sget-object v3, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v4, "InlineWebVideoView.reposition could not complete because of a previous error."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "milliseconds"    # I

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.seekTo could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAnchorView(Lcom/millennialmedia/internal/MMWebView;IIIILcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;)V
    .locals 2
    .param p1, "webView"    # Lcom/millennialmedia/internal/MMWebView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "attachListener"    # Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    .prologue
    .line 489
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-gez p5, :cond_2

    .line 490
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "All position parameters must be greater than or equal to zero."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-interface {p6, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;->attachFailed(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 509
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    .line 497
    iput-object p6, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->attachListener:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;

    .line 498
    iput p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->x:I

    .line 499
    iput p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->y:I

    .line 500
    iput p4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->width:I

    .line 501
    iput p5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->height:I

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->resizeButtons(Z)V

    .line 506
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setPlaceholder(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$4;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 545
    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 551
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    .line 552
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->startFired:Z

    .line 553
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q1Fired:Z

    .line 554
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->midpointFired:Z

    .line 555
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->q3Fired:Z

    .line 556
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->endFired:Z

    .line 558
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->uri:Landroid/net/Uri;

    .line 560
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 563
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 564
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "stateChange"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "loading"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    .end local v0    # "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->start()V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.start could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.stop could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public triggerTimeUpdate()V
    .locals 5

    .prologue
    .line 733
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 735
    .local v0, "webView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 736
    iget-object v1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->callbackId:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timeUpdate"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    .end local v0    # "webView":Lcom/millennialmedia/internal/MMWebView;
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    sget-object v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v2, "InlineWebVideoView.triggerTimeUpdate could not complete because of a previous error."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unmute()V
    .locals 2

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->error:Z

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->inlineVideoControls:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->unmute()V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    sget-object v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;->TAG:Ljava/lang/String;

    const-string v1, "InlineWebVideoView.unmute could not complete because of a previous error."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
