.class public Lcom/millennialmedia/internal/video/LightboxView;
.super Landroid/widget/RelativeLayout;
.source "LightboxView.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;
    }
.end annotation


# static fields
.field private static final COLLAPSING:I = 0x3

.field private static final DEFAULT:I = 0x0

.field private static final EXPANDED:I = 0x4

.field private static final EXPANDING:I = 0x2

.field private static final SWIPE_AWAY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile animating:Z

.field private volatile complete:Z

.field private completeFired:Z

.field private defaultHeight:I

.field private defaultWidth:I

.field private downX:F

.field private downY:F

.field private fullscreenCompanion:Landroid/widget/ImageView;

.field private fullscreenCompanionLoadedFired:Z

.field private fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

.field private fullscreenContainer:Landroid/widget/FrameLayout;

.field private fullscreenContainerTopMargin:I

.field private landscape:Z

.field private lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

.field private lightboxBottomMargin:I

.field private lightboxRightMargin:I

.field private lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

.field private midpointFired:Z

.field private minimizeButton:Landroid/widget/ImageView;

.field private minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private originalX:F

.field private originalY:F

.field private volatile prepared:Z

.field private q1Fired:Z

.field private q3Fired:Z

.field private replayButton:Landroid/widget/ImageView;

.field private scaleFactor:F

.field private startFired:Z

.field private volatile state:I

.field private topMargin:I

.field private videoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field private videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lightboxAd"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
    .param p3, "lightboxViewListener"    # Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    .line 66
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 69
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->startFired:Z

    .line 70
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->q1Fired:Z

    .line 71
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->midpointFired:Z

    .line 72
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->q3Fired:Z

    .line 73
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->completeFired:Z

    .line 74
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    .line 76
    const/4 v6, 0x0

    iput v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 77
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->prepared:Z

    .line 78
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    .line 79
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 99
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->windowManager:Landroid/view/WindowManager;

    .line 100
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 102
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    .local v4, "resources":Landroid/content/res/Resources;
    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_width:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    .line 104
    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_height:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    .line 105
    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_bottom_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    .line 106
    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_right_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    .line 107
    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_top_margin:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    .line 108
    sget v6, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_fullscreen_companion_top_margin:I

    .line 109
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    .line 111
    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 112
    invoke-virtual {p0, p0}, Lcom/millennialmedia/internal/video/LightboxView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iput-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    .line 115
    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    .line 117
    new-instance v6, Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, p1, v7, v8, p0}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 118
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    sget v7, Lcom/millennialmedia/R$id;->mmadsdk_light_box_video_view:I

    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/video/MMVideoView;->setId(I)V

    .line 119
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v7, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v7, v7, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->uri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 120
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    const v7, 0x106000c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/video/MMVideoView;->setBackgroundColor(I)V

    .line 122
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    .line 123
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 125
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$drawable;->mmadsdk_lightbox_down:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/millennialmedia/internal/video/LightboxView$1;

    invoke-direct {v7, p0}, Lcom/millennialmedia/internal/video/LightboxView$1;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 137
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v2, "minimizeButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_top_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_minimize_button_right_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 145
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    .line 150
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 152
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$drawable;->mmadsdk_lightbox_replay:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/millennialmedia/internal/video/LightboxView$2;

    invoke-direct {v7, p0}, Lcom/millennialmedia/internal/video/LightboxView$2;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 168
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_replay_button_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 169
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$dimen;->mmadsdk_lightbox_replay_button_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v3, "replayOverlayLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v3}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v6, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v8, Lcom/millennialmedia/internal/video/LightboxView$3;

    invoke-direct {v8, p0}, Lcom/millennialmedia/internal/video/LightboxView$3;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-direct {v6, v7, v8}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 189
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    .line 191
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    .line 192
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 193
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$color;->mmadsdk_lightbox_curtain_background:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 195
    iget-object v6, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v6, v6, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->imageUri:Ljava/lang/String;

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 196
    new-instance v6, Lcom/millennialmedia/internal/video/LightboxView$4;

    invoke-direct {v6, p0, p2}, Lcom/millennialmedia/internal/video/LightboxView$4;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;)V

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 217
    :cond_0
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 219
    new-instance v6, Lcom/millennialmedia/internal/MMWebView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/millennialmedia/internal/video/LightboxView$5;

    invoke-direct {v9, p0, p3}, Lcom/millennialmedia/internal/video/LightboxView$5;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V

    invoke-direct {v6, p1, v7, v8, v9}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    .line 285
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    iget-object v7, p2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v7, v7, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->webContent:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    .line 287
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    .local v1, "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 292
    const/4 v6, 0x3

    sget v7, Lcom/millennialmedia/R$id;->mmadsdk_light_box_video_view:I

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 294
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 295
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, v6, v1}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 300
    .local v5, "videoLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v6, :cond_1

    .line 301
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    :cond_1
    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {p0, v6, v5}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/video/LightboxView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/millennialmedia/internal/video/LightboxView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    return p1
.end method

.method static synthetic access$102(Lcom/millennialmedia/internal/video/LightboxView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    return v0
.end method

.method static synthetic access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    return v0
.end method

.method static synthetic access$1600(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    return v0
.end method

.method static synthetic access$1700(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/millennialmedia/internal/video/LightboxView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->replayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;
    .param p1, "x1"    # Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/internal/video/LightboxView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    return v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/internal/video/LightboxView;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/millennialmedia/internal/video/LightboxView;->startMinimizeFadeOut(JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    return-object v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/LightboxView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V

    return-void
.end method

.method private animateFromExpandedToDefault()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 855
    iput-boolean v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 857
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 858
    .local v2, "displaySize":Landroid/graphics/Point;
    iget v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 860
    .local v3, "wasExpanding":Z
    :goto_0
    iput v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 861
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 864
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v5}, Lcom/millennialmedia/internal/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 865
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 867
    :cond_0
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 868
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 869
    iget-boolean v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v5, :cond_1

    .line 870
    iget-object v5, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 873
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v1

    .line 875
    .local v1, "defaultPosition":Landroid/graphics/Point;
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$11;

    invoke-direct {v0, p0, v2, v1}, Lcom/millennialmedia/internal/video/LightboxView$11;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 964
    .local v0, "animation":Landroid/view/animation/Animation;
    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    .line 965
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 967
    new-instance v4, Lcom/millennialmedia/internal/video/LightboxView$12;

    invoke-direct {v4, p0, v3}, Lcom/millennialmedia/internal/video/LightboxView$12;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 995
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 996
    return-void

    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "defaultPosition":Landroid/graphics/Point;
    .end local v3    # "wasExpanding":Z
    :cond_2
    move v3, v4

    .line 858
    goto :goto_0
.end method

.method private animateToDefault(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "displaySize"    # Landroid/graphics/Point;

    .prologue
    .line 791
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 792
    const/4 v2, 0x0

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 794
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v1

    .line 796
    .local v1, "defaultPosition":Landroid/graphics/Point;
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$9;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/video/LightboxView$9;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V

    .line 829
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/millennialmedia/internal/video/LightboxView$10;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/LightboxView$10;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 848
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 849
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 850
    return-void
.end method

.method private animateToExpand(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "displaySize"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1001
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 1003
    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 1005
    .local v1, "wasCollapsing":Z
    :goto_0
    const/4 v4, 0x4

    iput v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 1006
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1008
    iget-boolean v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v4, :cond_0

    .line 1009
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    .line 1010
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1014
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v2, :cond_1

    .line 1015
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1017
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 1019
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v2, :cond_2

    .line 1020
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1023
    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$13;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$13;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V

    .line 1090
    .local v0, "animation":Landroid/view/animation/Animation;
    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    .line 1091
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1093
    new-instance v2, Lcom/millennialmedia/internal/video/LightboxView$14;

    invoke-direct {v2, p0, v1}, Lcom/millennialmedia/internal/video/LightboxView$14;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1123
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1124
    return-void

    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "wasCollapsing":Z
    :cond_3
    move v1, v3

    .line 1003
    goto :goto_0
.end method

.method private crossFadeCurtainWebView()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1129
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1130
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0, v3}, Lcom/millennialmedia/internal/MMWebView;->setAlpha(F)V

    .line 1131
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$15;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/LightboxView$15;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1162
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1164
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1165
    return-void
.end method

.method private fireTrackingEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1170
    .local p1, "trackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;>;"
    if-eqz p1, :cond_0

    .line 1171
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$16;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$16;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1185
    :cond_0
    return-void
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 1246
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1247
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1249
    return-object v0
.end method

.method private goToDefaultState()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1403
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 1404
    iput v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 1405
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    .line 1406
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 1408
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 1410
    .local v0, "defaultPosition":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 1411
    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1412
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1413
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 1414
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1415
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1416
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1417
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1418
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1420
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    .line 1421
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1423
    .local v1, "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1424
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1425
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1426
    iput-boolean v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 1427
    return-void
.end method

.method private goToExpandedLandscapeState(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "displaySize"    # Landroid/graphics/Point;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1369
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 1370
    const/4 v2, 0x4

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 1371
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 1373
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1376
    .local v1, "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1378
    invoke-virtual {p0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 1379
    invoke-virtual {p0, v3}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1380
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1382
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    .line 1383
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1385
    .local v0, "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1387
    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 1388
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1389
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1391
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1393
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1395
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1396
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    .line 1397
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V

    .line 1398
    return-void
.end method

.method private goToExpandedPortraitState(Landroid/graphics/Point;)V
    .locals 7
    .param p1, "displaySize"    # Landroid/graphics/Point;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1330
    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    .line 1331
    const/4 v2, 0x4

    iput v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 1332
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 1334
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1337
    .local v1, "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1339
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1341
    invoke-virtual {p0, v4}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 1342
    invoke-virtual {p0, v4}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1343
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2, v4}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1345
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    .line 1346
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1348
    .local v0, "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1349
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1351
    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 1352
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1354
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    if-nez v2, :cond_0

    .line 1355
    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionLoadedFired:Z

    .line 1356
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->trackingEvents:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1359
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 1361
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1362
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    .line 1363
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V

    .line 1364
    return-void
.end method

.method private setHeight(I)V
    .locals 4
    .param p1, "height"    # I

    .prologue
    .line 1239
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1240
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1241
    return-void
.end method

.method private startMinimizeFadeOut(JJ)V
    .locals 3
    .param p1, "startDelay"    # J
    .param p3, "animationDuration"    # J

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1261
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$17;

    invoke-direct {v0, p0, p3, p4}, Lcom/millennialmedia/internal/video/LightboxView$17;-><init>(Lcom/millennialmedia/internal/video/LightboxView;J)V

    invoke-static {v0, p1, p2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1294
    return-void
.end method


# virtual methods
.method public animateToGone(Z)V
    .locals 4
    .param p1, "fireCloseTracking"    # Z

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v1

    .line 723
    .local v1, "displaySize":Landroid/graphics/Point;
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/LightboxView$7;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    .line 756
    .local v0, "animation":Landroid/view/animation/Animation;
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 757
    new-instance v2, Lcom/millennialmedia/internal/video/LightboxView$8;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/internal/video/LightboxView$8;-><init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 783
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 784
    return-void
.end method

.method public getDefaultDimensions()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1204
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDefaultPosition()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v2

    .line 1192
    .local v2, "displaySize":Landroid/graphics/Point;
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    sub-int v0, v3, v4

    .line 1195
    .local v0, "defaultXPosition":I
    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    sub-int v1, v3, v4

    .line 1198
    .local v1, "defaultYPosition":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->prepared:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1211
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1213
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1215
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    .line 1217
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 1219
    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1221
    .local v1, "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1224
    .end local v1    # "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 1225
    return-void

    .line 1215
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p2, "percentage"    # I

    .prologue
    .line 451
    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 3
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v2, 0x1

    .line 363
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->complete:Z

    .line 365
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->completeFired:Z

    if-nez v0, :cond_1

    .line 366
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v1, "LightboxView firing complete event"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/LightboxView;->completeFired:Z

    .line 370
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->complete:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeFadeOutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 378
    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/video/LightboxView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/LightboxView$6;-><init>(Lcom/millennialmedia/internal/video/LightboxView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1300
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/LightboxView;->clearAnimation()V

    .line 1301
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1303
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_4

    .line 1304
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    .line 1306
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v1, v5, :cond_2

    .line 1307
    :cond_0
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->goToExpandedPortraitState(Landroid/graphics/Point;)V

    .line 1325
    :cond_1
    :goto_0
    return-void

    .line 1308
    :cond_2
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v1, v3, :cond_3

    .line 1309
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 1311
    :cond_3
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->goToDefaultState()V

    goto :goto_0

    .line 1314
    :cond_4
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    if-nez v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1315
    iput-boolean v3, p0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    .line 1317
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v1, v5, :cond_6

    .line 1318
    :cond_5
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->goToExpandedLandscapeState(Landroid/graphics/Point;)V

    goto :goto_0

    .line 1319
    :cond_6
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    if-ne v1, v3, :cond_7

    .line 1320
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 1322
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/LightboxView;->goToDefaultState()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    .line 1233
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1234
    return-void
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onFailed()V

    .line 445
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 432
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 357
    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->prepared:Z

    .line 324
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onPrepared()V

    .line 325
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 3
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p2, "milliseconds"    # I

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v1

    div-int/lit8 v0, v1, 0x4

    .line 397
    .local v0, "quartileDuration":I
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->q1Fired:Z

    if-nez v1, :cond_1

    if-lt p2, v0, :cond_1

    .line 398
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    sget-object v1, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v2, "LightboxView firing q1 event"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->q1Fired:Z

    .line 402
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V

    .line 405
    :cond_1
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->midpointFired:Z

    if-nez v1, :cond_3

    mul-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_3

    .line 406
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    sget-object v1, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v2, "LightboxView firing midpoint event"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->midpointFired:Z

    .line 410
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V

    .line 413
    :cond_3
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->q3Fired:Z

    if-nez v1, :cond_5

    mul-int/lit8 v1, v0, 0x3

    if-lt p2, v1, :cond_5

    .line 414
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 415
    sget-object v1, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v2, "LightboxView firing q3 event"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->q3Fired:Z

    .line 418
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_5
    monitor-exit p0

    return-void

    .line 395
    .end local v0    # "quartileDuration":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 1
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onReadyToStart()V

    .line 332
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 426
    return-void
.end method

.method public onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->startFired:Z

    if-nez v0, :cond_1

    .line 339
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/millennialmedia/internal/video/LightboxView;->TAG:Ljava/lang/String;

    const-string v1, "LightboxView firing start event"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->startFired:Z

    .line 343
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/LightboxView;->fireTrackingEvents(Ljava/util/List;)V

    .line 345
    :cond_1
    return-void
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 351
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->animating:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    .line 459
    const/16 v28, 0x1

    .line 715
    :goto_0
    return v28

    .line 462
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v28

    if-nez v28, :cond_1

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    .line 466
    const/16 v28, 0x1

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v9

    .line 471
    .local v9, "displaySize":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    .line 472
    .local v26, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    .line 474
    .local v27, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    move/from16 v28, v0

    sub-float v28, v28, v26

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v30, v0

    sub-float v30, v30, v27

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v6, v0

    .line 475
    .local v6, "c_sq":I
    int-to-double v0, v6

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 476
    .local v16, "length":D
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v7

    .line 478
    .local v7, "defaultPosition":Landroid/graphics/Point;
    const-wide/high16 v28, 0x4049000000000000L    # 50.0

    cmpl-double v28, v16, v28

    if-lez v28, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 479
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    if-nez v28, :cond_6

    .line 480
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->originalX:F

    .line 481
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    .line 489
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    move/from16 v28, v0

    sub-float v28, v28, v26

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v29, v0

    sub-float v29, v29, v27

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-lez v28, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    .line 490
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 531
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 532
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downX:F

    move/from16 v28, v0

    sub-float v10, v28, v26

    .line 534
    .local v10, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalX:F

    move/from16 v28, v0

    sub-float v22, v28, v10

    .line 537
    .local v22, "newX":F
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v22

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_4

    .line 538
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getWidth()I

    move-result v29

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v22, v0

    .line 541
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 657
    .end local v10    # "dx":F
    .end local v22    # "newX":F
    :cond_5
    :goto_3
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 483
    :cond_6
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->originalX:F

    .line 484
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    goto/16 :goto_1

    .line 492
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v28, v0

    cmpg-float v28, v27, v28

    if-gez v28, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    .line 493
    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/millennialmedia/internal/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-eqz v28, :cond_8

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 502
    :cond_8
    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v29

    sub-int v8, v28, v29

    .line 503
    .local v8, "deltaHeight":I
    int-to-float v0, v8

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v29, v0

    const v30, 0x3f666666    # 0.9f

    mul-float v29, v29, v30

    div-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    .line 505
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    move/from16 v28, v0

    if-nez v28, :cond_9

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    const/16 v29, -0x2

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 508
    :cond_9
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 511
    .end local v8    # "deltaHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v28, v0

    cmpl-float v28, v27, v28

    if-lez v28, :cond_3

    .line 512
    const/16 v28, 0x3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/high16 v29, 0x3f800000    # 1.0f

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanionWebView:Lcom/millennialmedia/internal/MMWebView;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x106000d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setBackgroundColor(I)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v29, v0

    sub-int v8, v28, v29

    .line 519
    .restart local v8    # "deltaHeight":I
    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const v29, 0x3f666666    # 0.9f

    mul-float v24, v28, v29

    .line 520
    .local v24, "remainingDragDistance":F
    int-to-float v0, v8

    move/from16 v28, v0

    div-float v28, v28, v24

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    move/from16 v28, v0

    if-nez v28, :cond_b

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    const/16 v29, -0x2

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 525
    :cond_b
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .line 543
    .end local v8    # "deltaHeight":I
    .end local v24    # "remainingDragDistance":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v28, v0

    sub-float v28, v28, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 545
    .local v11, "dy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    move/from16 v28, v0

    sub-float v23, v28, v11

    .line 546
    .local v23, "newY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxBottomMargin:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 547
    .local v19, "newHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v15, v28, v29

    .line 548
    .local v15, "heightRatio":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v28, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v15

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v21, v28, v29

    .line 549
    .local v21, "newWidth":I
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v15

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v22, v28, v29

    .line 552
    .local v22, "newX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 553
    .local v20, "newVideoTopMargin":I
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v15

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    sub-int v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 556
    .local v18, "newFullscreenContainerTopMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-le v0, v1, :cond_d

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v23, v28

    if-ltz v28, :cond_10

    .line 559
    :cond_d
    const/16 v20, 0x0

    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    move/from16 v18, v0

    .line 561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v21, v0

    .line 562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v19, v0

    .line 563
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v23, v0

    .line 564
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 578
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object/from16 v28, v0

    .line 579
    invoke-virtual/range {v28 .. v28}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 581
    .local v25, "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v20

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    .line 584
    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 586
    .local v14, "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v28

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    move/from16 v28, v0

    if-nez v28, :cond_f

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 592
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 593
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 594
    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 595
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->requestLayout()V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->invalidate()V

    goto/16 :goto_3

    .line 567
    .end local v14    # "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_10
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    if-lez v22, :cond_11

    const/16 v28, 0x0

    cmpg-float v28, v23, v28

    if-gtz v28, :cond_e

    .line 570
    :cond_11
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    .line 571
    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    .line 572
    const/16 v18, 0x0

    .line 573
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    move/from16 v20, v0

    .line 574
    const/16 v23, 0x0

    .line 575
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 599
    .end local v11    # "dy":F
    .end local v15    # "heightRatio":F
    .end local v18    # "newFullscreenContainerTopMargin":I
    .end local v19    # "newHeight":I
    .end local v20    # "newVideoTopMargin":I
    .end local v21    # "newWidth":I
    .end local v22    # "newX":I
    .end local v23    # "newY":F
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->downY:F

    move/from16 v28, v0

    sub-float v28, v28, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->scaleFactor:F

    move/from16 v29, v0

    mul-float v11, v28, v29

    .line 601
    .restart local v11    # "dy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->originalY:F

    move/from16 v28, v0

    sub-float v23, v28, v11

    .line 602
    .restart local v23    # "newY":F
    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v11

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 603
    .restart local v19    # "newHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v28, v0

    sub-int v28, v19, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v15, v28, v29

    .line 604
    .restart local v15    # "heightRatio":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v28, v0

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v15

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v21, v28, v29

    .line 605
    .restart local v21    # "newWidth":I
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    sub-int v28, v28, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->lightboxRightMargin:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v15

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    sub-int v29, v29, v30

    sub-int v22, v28, v29

    .line 608
    .restart local v22    # "newX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v20, v0

    .line 609
    .restart local v20    # "newVideoTopMargin":I
    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    .line 610
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 612
    .restart local v18    # "newFullscreenContainerTopMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-le v0, v1, :cond_13

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v23, v28

    if-ltz v28, :cond_16

    .line 615
    :cond_13
    const/16 v20, 0x0

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainerTopMargin:I

    move/from16 v18, v0

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultWidth:I

    move/from16 v21, v0

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->defaultHeight:I

    move/from16 v19, v0

    .line 619
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v23, v0

    .line 620
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 634
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_15

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->minimizeButton:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object/from16 v28, v0

    .line 639
    invoke-virtual/range {v28 .. v28}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 641
    .restart local v25    # "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v20

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenContainer:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    .line 644
    invoke-virtual/range {v28 .. v28}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 646
    .restart local v14    # "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    move-object/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 649
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 650
    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 651
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->setHeight(I)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->requestLayout()V

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->invalidate()V

    goto/16 :goto_3

    .line 623
    .end local v14    # "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v25    # "videoViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_16
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_17

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_17

    if-lez v22, :cond_17

    const/16 v28, 0x0

    cmpg-float v28, v23, v28

    if-gtz v28, :cond_14

    .line 626
    :cond_17
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    .line 627
    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    .line 628
    const/16 v18, 0x0

    .line 629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->topMargin:I

    move/from16 v20, v0

    .line 630
    const/16 v23, 0x0

    .line 631
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 659
    .end local v6    # "c_sq":I
    .end local v7    # "defaultPosition":Landroid/graphics/Point;
    .end local v9    # "displaySize":Landroid/graphics/Point;
    .end local v11    # "dy":F
    .end local v15    # "heightRatio":F
    .end local v16    # "length":D
    .end local v18    # "newFullscreenContainerTopMargin":I
    .end local v19    # "newHeight":I
    .end local v20    # "newVideoTopMargin":I
    .end local v21    # "newWidth":I
    .end local v22    # "newX":I
    .end local v23    # "newY":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v9

    .line 662
    .restart local v9    # "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v28

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_19

    .line 664
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V

    .line 669
    :goto_6
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 666
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V

    goto :goto_6

    .line 671
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3fe8000000000000L    # 0.75

    mul-double v30, v30, v32

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_1b

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V

    .line 678
    :goto_7
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 675
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V

    goto :goto_7

    .line 680
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getTranslationX()F

    move-result v28

    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/internal/video/LightboxView;->getWidth()I

    move-result v30

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_1d

    .line 684
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V

    .line 689
    :goto_8
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 686
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/internal/video/LightboxView;->animateToDefault(Landroid/graphics/Point;)V

    goto :goto_8

    .line 691
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    if-nez v28, :cond_20

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v30

    sub-long v12, v28, v30

    .line 696
    .local v12, "elapsedTime":J
    const-wide/16 v28, 0xc8

    cmp-long v28, v12, v28

    if-gtz v28, :cond_21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_21

    .line 697
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->landscape:Z

    move/from16 v28, v0

    if-nez v28, :cond_1f

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->fullscreenCompanion:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    :cond_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V

    .line 702
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 705
    .end local v12    # "elapsedTime":J
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/LightboxView;->state:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v30

    sub-long v12, v28, v30

    .line 707
    .restart local v12    # "elapsedTime":J
    const-wide/16 v28, 0xc8

    cmp-long v28, v12, v28

    if-gtz v28, :cond_21

    .line 708
    const-wide/16 v28, 0x9c4

    const-wide/16 v30, 0x1f4

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/millennialmedia/internal/video/LightboxView;->startMinimizeFadeOut(JJ)V

    .line 710
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 715
    .end local v9    # "displaySize":Landroid/graphics/Point;
    .end local v12    # "elapsedTime":J
    :cond_21
    const/16 v28, 0x0

    goto/16 :goto_0
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 438
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView;->videoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 311
    return-void
.end method
