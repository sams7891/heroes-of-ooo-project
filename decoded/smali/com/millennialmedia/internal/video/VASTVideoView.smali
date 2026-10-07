.class public Lcom/millennialmedia/internal/video/VASTVideoView;
.super Landroid/widget/RelativeLayout;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;,
        Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;,
        Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;
    }
.end annotation


# static fields
.field private static final CACHE_EXPIRATION_TIME:I = 0x2932e00

.field private static final COMPANION_AD_MIN_HEIGHT:I = 0xfa

.field private static final COMPANION_AD_MIN_WIDTH:I = 0x12c

.field private static final COMPLETE:I = 0x2

.field private static final DEFAULT_MAX_BITRATE:I = 0x320

.field private static final IDLE:I = 0x0

.field private static final IMAGE_BMP:Ljava/lang/String; = "image/bmp"

.field private static final IMAGE_GIF:Ljava/lang/String; = "image/gif"

.field private static final IMAGE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final IMAGE_PNG:Ljava/lang/String; = "image/png"

.field private static final LTE_MAX_BITRATE:I = 0x320

.field private static final MIN_BITRATE:I = 0x190

.field private static final PLAYBACK:I = 0x1

.field private static final PROGRESSIVE:Ljava/lang/String; = "progressive"

.field public static final PROGRESS_UPDATES_DISABLED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field private static final WIFI_MAX_BITRATE:I = 0x4b0

.field private static final supportImageTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundFrame:Landroid/widget/FrameLayout;

.field private backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private buttonContainer:Landroid/widget/LinearLayout;

.field private volatile canSkip:Z

.field private closeButton:Landroid/widget/ImageView;

.field private companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private controlButtonContainer:Landroid/widget/RelativeLayout;

.field private countdown:Landroid/widget/TextView;

.field private volatile currentState:I

.field private endCardContainer:Landroid/widget/FrameLayout;

.field private endCardViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private firedTrackingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

.field private lastKnownOrientation:I

.field private lastQuartileFired:I

.field private mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field private overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

.field private replayButton:Landroid/widget/ImageView;

.field private selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

.field private selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

.field private selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

.field private skipButton:Landroid/widget/ImageView;

.field private skipOffsetMilliseconds:I

.field private vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

.field private videoFile:Ljava/io/File;

.field private videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private wrapperAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    .line 106
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    const-string v1, "image/bmp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    const-string v1, "image/gif"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    const-string v1, "image/jpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    const-string v1, "image/png"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$InLineAd;Ljava/util/List;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inLineAd"    # Lcom/millennialmedia/internal/video/VASTParser$InLineAd;
    .param p4, "vastVideoViewListener"    # Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/millennialmedia/internal/video/VASTParser$InLineAd;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;",
            "Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 327
    .local p3, "wrapperAds":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;>;"
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    .line 69
    const/4 v6, 0x0

    iput v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    .line 81
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 82
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 83
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 91
    const/4 v6, 0x0

    iput v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    .line 100
    const/4 v6, 0x0

    iput v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    .line 329
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    .line 330
    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    .line 332
    const/high16 v6, -0x1000000

    invoke-virtual {p0, v6}, Lcom/millennialmedia/internal/video/VASTVideoView;->setBackgroundColor(I)V

    .line 334
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 335
    const/4 v6, 0x1

    iput v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    .line 340
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/List;

    .line 341
    iput-object p4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    .line 342
    new-instance v6, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v7, Lcom/millennialmedia/internal/video/VASTVideoView$1;

    invoke-direct {v7, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v6, p0, v7}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 355
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 357
    .local v2, "container":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 360
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2, v5}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    .line 364
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 367
    .local v0, "backgroundFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v6, Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, p1, v7, v8, p0}, Lcom/millennialmedia/internal/video/MMVideoView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 371
    new-instance v6, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v8, Lcom/millennialmedia/internal/video/VASTVideoView$2;

    invoke-direct {v8, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v6, v7, v8}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 402
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 403
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    .restart local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x3

    sget v7, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 407
    :cond_0
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {p0, v6, v5}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    .line 410
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 412
    new-instance v6, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    new-instance v8, Lcom/millennialmedia/internal/video/VASTVideoView$3;

    invoke-direct {v8, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$3;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v6, v7, v8}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 429
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v6}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 430
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v6}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 431
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v6}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 433
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 436
    .local v4, "endCardContainerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    .line 440
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    sget v7, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 442
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    .line 443
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_close:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/millennialmedia/internal/video/VASTVideoView$4;

    invoke-direct {v7, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$4;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 454
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 456
    .restart local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 457
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 459
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    .line 462
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_skip:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    .line 465
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_opacity:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 466
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 468
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 469
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 472
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 474
    .restart local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 475
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 477
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    .line 481
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$drawable;->mmadsdk_vast_replay:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/millennialmedia/internal/video/VASTVideoView$5;

    invoke-direct {v7, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$5;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 493
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/millennialmedia/R$dimen;->mmadsdk_control_button_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 495
    .restart local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 496
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 498
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 503
    .local v3, "controlButtonContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 505
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->controlButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 510
    .local v1, "buttonContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 512
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    .line 513
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadInlineAd(Landroid/content/Context;)V

    .line 520
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 521
    if-eqz p2, :cond_2

    iget-object v6, p2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v6, :cond_2

    iget-object v6, p2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v6, :cond_2

    iget-object v6, p2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iget-boolean v6, v6, Lcom/millennialmedia/internal/video/VASTParser$Background;->hideButtons:Z

    if-eqz v6, :cond_2

    .line 524
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    :goto_1
    const/4 v6, 0x1

    iput v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    .line 540
    return-void

    .line 337
    .end local v0    # "backgroundFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "buttonContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "container":Landroid/widget/FrameLayout;
    .end local v3    # "controlButtonContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "endCardContainerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v6, 0x2

    iput v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    goto/16 :goto_0

    .line 526
    .restart local v0    # "backgroundFrameLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1    # "buttonContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "container":Landroid/widget/FrameLayout;
    .restart local v3    # "controlButtonContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "endCardContainerLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 530
    :cond_3
    if-eqz p2, :cond_4

    iget-object v6, p2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v6, :cond_4

    iget-object v6, p2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v6, :cond_4

    iget-object v6, p2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-boolean v6, v6, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->hideButtons:Z

    if-eqz v6, :cond_4

    .line 533
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 535
    :cond_4
    iget-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->vastTimeToMilliseconds(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireOnClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p1, "x1"    # Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->registerVideoClicks()V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p1, "x1"    # Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getBackgroundColor(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperVideoClicks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->complete()V

    return-void
.end method

.method static synthetic access$2500(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p1, "x1"    # Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvent(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->close()V

    return-void
.end method

.method static synthetic access$502(Lcom/millennialmedia/internal/video/VASTVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    return p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->enableSkipControls()V

    return-void
.end method

.method static synthetic access$700(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->skip()V

    return-void
.end method

.method static synthetic access$800(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->replay()V

    return-void
.end method

.method static synthetic access$900(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireImpressions()V

    return-void
.end method

.method private close()V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 546
    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 548
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->closeLinear:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 549
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 548
    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 552
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 553
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 556
    :cond_1
    return-void
.end method

.method private complete()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1834
    const/4 v4, 0x2

    iput v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    .line 1835
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1837
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1838
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v4, v6}, Lcom/millennialmedia/internal/video/MMVideoView;->setVisibility(I)V

    .line 1839
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1840
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1841
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1842
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1843
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1846
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1847
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1849
    .local v1, "childView":Landroid/view/View;
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 1850
    check-cast v0, Landroid/widget/FrameLayout;

    .line 1852
    .local v0, "buttonPlaceholder":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1854
    .local v3, "imageButton":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1855
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1846
    .end local v0    # "buttonPlaceholder":Landroid/widget/FrameLayout;
    .end local v3    # "imageButton":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1860
    .end local v1    # "childView":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-boolean v4, v4, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->hideButtons:Z

    if-eqz v4, :cond_2

    .line 1861
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1869
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 1863
    .restart local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1867
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->close()V

    goto :goto_1
.end method

.method private createCompanionWebView(Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1015
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/millennialmedia/internal/video/VASTVideoView$10;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$10;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1082
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method private enableSkipControls()V
    .locals 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->countdown:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$18;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$18;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1582
    return-void
.end method

.method private fireImpressions()V
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->impressions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->impressionViewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->stopWatching()V

    .line 1690
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$21;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$21;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1719
    :cond_0
    return-void
.end method

.method private fireOnClick()V
    .locals 1

    .prologue
    .line 1913
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$22;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$22;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1922
    return-void
.end method

.method private fireTrackingEvent(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V
    .locals 3
    .param p1, "trackingEvent"    # Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    .prologue
    .line 1677
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing tracking url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1681
    iget-object v0, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    .line 1682
    return-void
.end method

.method private fireTrackingEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1657
    .local p1, "trackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    if-eqz p1, :cond_0

    .line 1658
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$20;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$20;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1672
    :cond_0
    return-void
.end method

.method private getBackgroundColor(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I
    .locals 5
    .param p1, "staticResource"    # Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    .prologue
    .line 1880
    const/high16 v0, -0x1000000

    .line 1881
    .local v0, "color":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1883
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1889
    :cond_0
    :goto_0
    return v0

    .line 1884
    :catch_0
    move-exception v1

    .line 1885
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hex color format specified = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;
    .locals 7
    .param p1, "trackableEvent"    # Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1949
    .local v0, "allTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 1950
    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 1951
    .local v3, "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    iget-object v5, v3, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 1952
    iget-object v5, v3, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 1953
    .local v1, "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    iget-object v6, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 1954
    iget-object v6, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v6, v6, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    .line 1955
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1957
    .local v2, "trackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    if-eqz v2, :cond_1

    .line 1958
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1966
    .end local v1    # "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    .end local v2    # "trackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .end local v3    # "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    :cond_2
    return-object v0
.end method

.method private getWrapperVideoClicks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1929
    .local v0, "allVideoClicks":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;>;"
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1930
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->wrapperAds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 1931
    .local v2, "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    iget-object v4, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 1932
    iget-object v4, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->creatives:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 1933
    .local v1, "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    iget-object v5, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v5, v5, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    if-eqz v5, :cond_1

    .line 1934
    iget-object v5, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v5, v5, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1941
    .end local v1    # "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    .end local v2    # "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    :cond_2
    return-object v0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBackground()V
    .locals 6

    .prologue
    .line 1088
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v2, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    .line 1090
    .local v0, "background":Lcom/millennialmedia/internal/video/VASTParser$Background;
    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1091
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1092
    .local v1, "backgroundImageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1093
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    invoke-direct {p0, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->getBackgroundColor(Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1095
    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$11;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$Background;Landroid/widget/ImageView;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1189
    .end local v0    # "background":Lcom/millennialmedia/internal/video/VASTParser$Background;
    .end local v1    # "backgroundImageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 1113
    .restart local v0    # "background":Lcom/millennialmedia/internal/video/VASTParser$Background;
    :cond_1
    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1115
    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/millennialmedia/internal/video/VASTVideoView$12;

    invoke-direct {v5, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$12;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1185
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1186
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadButtons()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 1194
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    if-eqz v9, :cond_3

    .line 1195
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    new-instance v10, Lcom/millennialmedia/internal/video/VASTVideoView$13;

    invoke-direct {v10, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$13;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1203
    const/4 v1, 0x0

    .line 1205
    .local v1, "buttonCount":I
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1206
    .local v6, "buttonWidth":I
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1208
    .local v2, "buttonHeight":I
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Button;

    .line 1210
    .local v0, "button":Lcom/millennialmedia/internal/video/VASTParser$Button;
    const/4 v10, 0x3

    if-ge v1, v10, :cond_3

    .line 1211
    iget-object v10, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v10, v10, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v10}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v10, v10, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 1212
    invoke-static {v10}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v0, Lcom/millennialmedia/internal/video/VASTParser$Button;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v10, v10, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 1213
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "image/png"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1215
    add-int/lit8 v1, v1, 0x1

    .line 1217
    new-instance v7, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, p0, v10, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$Button;)V

    .line 1218
    .local v7, "imageButton":Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1220
    .local v4, "buttonPlaceholder":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1223
    .local v3, "buttonLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x1

    .line 1226
    .local v8, "weight":I
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v10, v8

    invoke-direct {v5, v6, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1229
    .local v5, "buttonPlaceholderParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_padding_left:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1234
    :cond_1
    iget-object v10, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1225
    .end local v5    # "buttonPlaceholderParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "weight":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1241
    .end local v0    # "button":Lcom/millennialmedia/internal/video/VASTParser$Button;
    .end local v1    # "buttonCount":I
    .end local v2    # "buttonHeight":I
    .end local v3    # "buttonLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "buttonPlaceholder":Landroid/widget/FrameLayout;
    .end local v6    # "buttonWidth":I
    .end local v7    # "imageButton":Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;
    :cond_3
    return-void
.end method

.method private loadCompanionAd()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 909
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 910
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Creative;->companionAds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    .line 911
    .local v0, "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->width:I

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_0

    iget v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->height:I

    const/16 v4, 0xfa

    if-lt v3, v4, :cond_0

    .line 914
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/millennialmedia/internal/video/VASTVideoView;->supportImageTypes:Ljava/util/List;

    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 915
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 916
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 917
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 919
    :cond_3
    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    .line 928
    .end local v0    # "companionAd":Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
    :cond_4
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v2, :cond_5

    .line 929
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 930
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 932
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->createCompanionWebView(Ljava/lang/String;)V

    .line 934
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 938
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    :goto_0
    return-void

    .line 940
    :cond_6
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    .line 941
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 943
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$WebResource;->uri:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->createCompanionWebView(Ljava/lang/String;)V

    .line 945
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 949
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->companionAdWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 951
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 952
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 954
    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$9;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$9;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "vastVideoWebView"    # Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 887
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/millennialmedia/internal/video/VASTVideoView$8;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 904
    return-void
.end method

.method private loadInlineAd(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 670
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v8, v8, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->creatives:Ljava/util/List;

    if-eqz v8, :cond_1

    .line 671
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v8, v8, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->creatives:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 672
    .local v0, "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    iget-object v9, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    if-eqz v9, :cond_0

    .line 673
    iget-object v9, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->mediaFiles:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/millennialmedia/internal/video/VASTVideoView;->selectMediaFile(Ljava/util/List;)Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    move-result-object v6

    .line 674
    .local v6, "mediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    if-eqz v6, :cond_0

    .line 675
    iput-object v6, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    .line 676
    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    .line 685
    .end local v0    # "creative":Lcom/millennialmedia/internal/video/VASTParser$Creative;
    .end local v6    # "mediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    :cond_1
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    if-eqz v8, :cond_5

    .line 686
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 687
    .local v1, "externalFilesDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_mm_video_cache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v7, "mmVideoCache":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 691
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 693
    .local v3, "fileList":[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 694
    array-length v9, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v2, v3, v8

    .line 695
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 696
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 699
    .local v4, "lastModified":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/32 v12, 0x2932e00

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 700
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 694
    .end local v4    # "lastModified":J
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 707
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedMediaFile:Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    iget-object v8, v8, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lcom/millennialmedia/internal/video/VASTVideoView$6;

    invoke-direct {v10, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$6;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v8, v9, v7, v10}, Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    .line 735
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadButtons()V

    .line 737
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 738
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadBackground()V

    .line 739
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 745
    :goto_1
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadCompanionAd()V

    .line 754
    .end local v1    # "externalFilesDir":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v7    # "mmVideoCache":Ljava/io/File;
    :goto_2
    return-void

    .line 741
    .restart local v1    # "externalFilesDir":Ljava/io/File;
    .restart local v3    # "fileList":[Ljava/io/File;
    .restart local v7    # "mmVideoCache":Ljava/io/File;
    :cond_4
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 742
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadOverlay()V

    goto :goto_1

    .line 749
    .end local v1    # "externalFilesDir":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v7    # "mmVideoCache":Ljava/io/File;
    :cond_5
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 750
    sget-object v8, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v9, "VAST init failed because it did not contain a compatible media file."

    invoke-static {v8, v9}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_6
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    invoke-interface {v8}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    goto :goto_2
.end method

.method private loadOverlay()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 802
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->uri:Ljava/lang/String;

    .line 803
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/millennialmedia/internal/video/VASTVideoView$7;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$7;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 875
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 878
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->uri:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadContentIntoWebView(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;Ljava/lang/String;)V

    .line 882
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private registerVideoClicks()V
    .locals 3

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v1, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    .line 1248
    .local v0, "videoClicks":Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

    .line 1249
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$14;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$14;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1309
    :cond_1
    return-void
.end method

.method private replay()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1778
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    .line 1780
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iput v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iput v1, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    .line 1788
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1789
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1790
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1792
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Background;->hideButtons:Z

    if-eqz v0, :cond_2

    .line 1795
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1813
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1814
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1815
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1816
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVisibility(I)V

    .line 1817
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->restart()V

    .line 1818
    return-void

    .line 1797
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1801
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1802
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1804
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->hideButtons:Z

    if-eqz v0, :cond_4

    .line 1807
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1809
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private selectMediaFile(Ljava/util/List;)Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;",
            ">;)",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;"
        }
    .end annotation

    .prologue
    .local p1, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$MediaFile;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 759
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 760
    :cond_0
    const/4 v8, 0x0

    .line 796
    :cond_1
    return-object v8

    .line 763
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, "networkConnectivityType":Ljava/lang/String;
    const/16 v6, 0x190

    .line 766
    .local v6, "minBitRate":I
    const/16 v4, 0x320

    .line 768
    .local v4, "maxBitRate":I
    const-string v11, "wifi"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 769
    const/16 v4, 0x4b0

    .line 774
    :cond_3
    :goto_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 775
    const-string v11, "TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Using bit rate range "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " inclusive for network connectivity type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_4
    const/4 v8, 0x0

    .line 781
    .local v8, "selectedMediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;

    .line 782
    .local v5, "mediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    iget-object v12, v5, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->url:Ljava/lang/String;

    invoke-static {v12}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 783
    const-string v12, "progressive"

    iget-object v13, v5, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->delivery:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 784
    .local v2, "isProgressive":Z
    const-string v12, "video/mp4"

    iget-object v13, v5, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->contentType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 785
    .local v3, "isVideoMP4":Z
    iget v12, v5, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    if-lt v12, v6, :cond_8

    iget v12, v5, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    if-gt v12, v4, :cond_8

    move v1, v10

    .line 787
    .local v1, "hasAcceptableBitrate":Z
    :goto_2
    if-eqz v8, :cond_6

    iget v12, v8, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    iget v13, v5, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    if-ge v12, v13, :cond_9

    :cond_6
    move v0, v10

    .line 790
    .local v0, "betterThanSelectedMediaFile":Z
    :goto_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 791
    move-object v8, v5

    goto :goto_1

    .line 770
    .end local v0    # "betterThanSelectedMediaFile":Z
    .end local v1    # "hasAcceptableBitrate":Z
    .end local v2    # "isProgressive":Z
    .end local v3    # "isVideoMP4":Z
    .end local v5    # "mediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    .end local v8    # "selectedMediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    :cond_7
    const-string v11, "lte"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 771
    const/16 v4, 0x320

    goto/16 :goto_0

    .restart local v2    # "isProgressive":Z
    .restart local v3    # "isVideoMP4":Z
    .restart local v5    # "mediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    .restart local v8    # "selectedMediaFile":Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
    :cond_8
    move v1, v9

    .line 785
    goto :goto_2

    .restart local v1    # "hasAcceptableBitrate":Z
    :cond_9
    move v0, v9

    .line 787
    goto :goto_3
.end method

.method private skip()V
    .locals 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1824
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1826
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->skip:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1828
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->complete()V

    .line 1829
    return-void
.end method

.method private vastTimeToMilliseconds(Ljava/lang/String;)I
    .locals 9
    .param p1, "vastTime"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 1724
    const/4 v5, 0x0

    .line 1725
    .local v5, "time":I
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1726
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1730
    :try_start_0
    const-string v6, "%"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1731
    const-string v6, "%"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1733
    .local v3, "percentage":Ljava/lang/String;
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1734
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 1772
    .end local v3    # "percentage":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 1736
    .restart local v3    # "percentage":Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 1741
    .end local v3    # "percentage":Ljava/lang/String;
    :cond_2
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1742
    .local v4, "temp":[Ljava/lang/String;
    array-length v6, v4

    if-gt v6, v7, :cond_5

    .line 1743
    const/4 v2, 0x0

    .line 1744
    .local v2, "milliseconds":I
    array-length v6, v4

    if-ne v6, v7, :cond_3

    .line 1745
    const/4 v6, 0x0

    aget-object p1, v4, v6

    .line 1746
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1749
    :cond_3
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1750
    .local v1, "hhmmss":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 1751
    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const v7, 0x36ee80

    mul-int/2addr v6, v7

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const v8, 0xea60

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const/4 v7, 0x2

    aget-object v7, v1, v7

    .line 1752
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    add-int v5, v6, v2

    goto :goto_0

    .line 1755
    :cond_4
    sget-object v6, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VAST time format invalid parse value was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const/4 v5, -0x1

    goto :goto_0

    .line 1761
    .end local v1    # "hhmmss":[Ljava/lang/String;
    .end local v2    # "milliseconds":I
    :cond_5
    sget-object v6, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VAST time format invalid parse value was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    const/4 v5, -0x1

    goto :goto_0

    .line 1766
    .end local v4    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1767
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VAST time format invalid parse value was: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const/4 v5, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public canSkip()Z
    .locals 1

    .prologue
    .line 1907
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    return v0
.end method

.method public onBufferingUpdate(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 2
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p2, "percentage"    # I

    .prologue
    .line 1649
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onBufferingUpdate"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1394
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1399
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1401
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->complete:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1402
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1401
    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    .line 1406
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "complete"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1409
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_3

    .line 1410
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "complete"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1413
    :cond_3
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$15;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$15;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1419
    return-void
.end method

.method public onError(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1612
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$19;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$19;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1634
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onFailed()V

    .line 1636
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.fireErrorEvent"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Video playback error occurred."

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1640
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    .line 1641
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.fireErrorEvent"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Video playback error occurred."

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1643
    :cond_2
    return-void
.end method

.method public onMuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 1597
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onMuted"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :cond_0
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1377
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "paused"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    .line 1386
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "paused"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1388
    :cond_2
    return-void
.end method

.method public onPrepared(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 6
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1315
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->skipOffset:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->vastTimeToMilliseconds(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipOffsetMilliseconds:I

    .line 1321
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->vastVideoViewListener:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;->onLoaded()V

    .line 1323
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setDuration"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    .line 1328
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setDuration"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1330
    :cond_2
    return-void
.end method

.method public declared-synchronized onProgress(Lcom/millennialmedia/internal/video/MMVideoView;I)V
    .locals 22
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p2, "milliseconds"    # I

    .prologue
    .line 1425
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTime(I)V

    .line 1429
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTime(I)V

    .line 1434
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1435
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1438
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1439
    move-object/from16 v0, v16

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v4, v0

    .line 1440
    .local v4, "buttonPlaceholder":Landroid/widget/FrameLayout;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1442
    .local v7, "innerView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-eqz v18, :cond_2

    instance-of v0, v7, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1443
    move-object v0, v7

    check-cast v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;

    move-object v6, v0

    .line 1444
    .local v6, "imageButton":Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->updateVisibility(I)Z

    .line 1435
    .end local v4    # "buttonPlaceholder":Landroid/widget/FrameLayout;
    .end local v6    # "imageButton":Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;
    .end local v7    # "innerView":Landroid/view/View;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1450
    .end local v5    # "i":I
    .end local v16    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 1451
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMax()I

    move-result v14

    .line 1452
    .local v14, "vastVideoSkipOffsetMax":I
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getVASTVideoSkipOffsetMin()I

    move-result v15

    .line 1456
    .local v15, "vastVideoSkipOffsetMin":I
    if-le v15, v14, :cond_4

    .line 1457
    move v15, v14

    .line 1461
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->skipOffsetMilliseconds:I

    move/from16 v18, v0

    .line 1462
    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1463
    invoke-virtual/range {p1 .. p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v19

    .line 1462
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1465
    .local v2, "adjustedSkippedOffset":I
    sub-int v18, v2, p2

    move/from16 v0, v18

    div-int/lit16 v12, v0, 0x3e8

    .line 1467
    .local v12, "timeLeftToSkip":I
    if-lez v12, :cond_c

    .line 1468
    new-instance v18, Lcom/millennialmedia/internal/video/VASTVideoView$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/millennialmedia/internal/video/VASTVideoView$16;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;I)V

    invoke-static/range {v18 .. v18}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1487
    .end local v2    # "adjustedSkippedOffset":I
    .end local v12    # "timeLeftToSkip":I
    .end local v14    # "vastVideoSkipOffsetMax":I
    .end local v15    # "vastVideoSkipOffsetMin":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1490
    invoke-virtual/range {p1 .. p1}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v18

    div-int/lit8 v11, v18, 0x4

    .line 1492
    .local v11, "quartileDuration":I
    move/from16 v0, p2

    if-lt v0, v11, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 1493
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    .line 1495
    sget-object v18, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    move-object/from16 v18, v0

    sget-object v19, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1498
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 1497
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1501
    :cond_6
    mul-int/lit8 v18, v11, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 1502
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    .line 1504
    sget-object v18, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    move-object/from16 v18, v0

    sget-object v19, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1507
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 1506
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1510
    :cond_7
    mul-int/lit8 v18, v11, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 1511
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/video/VASTVideoView;->lastQuartileFired:I

    .line 1513
    sget-object v18, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    move-object/from16 v18, v0

    sget-object v19, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1516
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 1515
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1521
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .local v3, "allProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    move-object/from16 v18, v0

    sget-object v19, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1524
    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1526
    .local v10, "progressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    if-eqz v10, :cond_9

    .line 1527
    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1530
    :cond_9
    sget-object v18, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 1531
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v17

    .line 1533
    .local v17, "wrapperProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    if-eqz v17, :cond_a

    .line 1534
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1537
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    .line 1538
    .local v13, "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    move-object v0, v13

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    move-object v9, v0

    .line 1540
    .local v9, "progressEvent":Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;
    iget-object v0, v9, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->vastTimeToMilliseconds(Ljava/lang/String;)I

    move-result v8

    .line 1541
    .local v8, "offset":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_f

    .line 1542
    iget-object v0, v9, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    move/from16 v0, p2

    if-lt v0, v8, :cond_b

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvent(Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1425
    .end local v3    # "allProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .end local v8    # "offset":I
    .end local v9    # "progressEvent":Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;
    .end local v10    # "progressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .end local v11    # "quartileDuration":I
    .end local v13    # "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    .end local v17    # "wrapperProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1477
    .restart local v2    # "adjustedSkippedOffset":I
    .restart local v12    # "timeLeftToSkip":I
    .restart local v14    # "vastVideoSkipOffsetMax":I
    .restart local v15    # "vastVideoSkipOffsetMin":I
    :cond_c
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip:Z

    .line 1478
    new-instance v18, Lcom/millennialmedia/internal/video/VASTVideoView$17;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$17;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    invoke-static/range {v18 .. v18}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1549
    .end local v2    # "adjustedSkippedOffset":I
    .end local v12    # "timeLeftToSkip":I
    .end local v14    # "vastVideoSkipOffsetMax":I
    .end local v15    # "vastVideoSkipOffsetMin":I
    .restart local v3    # "allProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .restart local v8    # "offset":I
    .restart local v9    # "progressEvent":Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;
    .restart local v10    # "progressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .restart local v11    # "quartileDuration":I
    .restart local v13    # "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    .restart local v17    # "wrapperProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    :cond_d
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1550
    sget-object v19, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Progress event could not be fired because the url is empty. offset = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1559
    :cond_f
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 1560
    sget-object v19, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Progress event could not be fired because the time offset is invalid. url = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->url:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", offset = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v9, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView;->firedTrackingEvents:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1569
    .end local v3    # "allProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .end local v8    # "offset":I
    .end local v9    # "progressEvent":Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;
    .end local v10    # "progressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .end local v11    # "quartileDuration":I
    .end local v13    # "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    .end local v17    # "wrapperProgressEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    :cond_11
    monitor-exit p0

    return-void
.end method

.method public onReadyToStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 1336
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onReadyToStart"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_0
    return-void
.end method

.method public onSeek(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 1588
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1589
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onSeek"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    :cond_0
    return-void
.end method

.method public declared-synchronized onStart(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 5
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 1345
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "playing"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    const-string v1, "MmJsBridge.vast.setState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "playing"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1358
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getWrapperLinearTrackingEvents(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V

    .line 1360
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCreative:Lcom/millennialmedia/internal/video/VASTParser$Creative;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->start:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    :cond_3
    monitor-exit p0

    return-void

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 2
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 1368
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_0
    return-void
.end method

.method public onUnmuted(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "videoView"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 1606
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1897
    sget-object v0, Lcom/millennialmedia/internal/video/VASTVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete video asset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->stop()V

    .line 1902
    return-void
.end method

.method public updateLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 561
    const/4 v6, 0x0

    .line 563
    .local v6, "orientationChanged":Z
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    if-eq v9, v7, :cond_6

    .line 565
    const/4 v6, 0x1

    .line 568
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 569
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadBackground()V

    .line 573
    :cond_0
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v9, :cond_1

    .line 574
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 578
    :cond_1
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v5, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, 0x3

    sget v10, Lcom/millennialmedia/R$id;->mmadsdk_vast_video_control_buttons:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 583
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v9, v5}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    if-ne v9, v7, :cond_4

    .line 586
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 587
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 589
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iget-boolean v9, v9, Lcom/millennialmedia/internal/video/VASTParser$Background;->hideButtons:Z

    if-eqz v9, :cond_3

    .line 592
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :goto_0
    if-eqz v6, :cond_d

    .line 642
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_width:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 643
    .local v2, "buttonWidth":I
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 644
    .local v0, "buttonHeight":I
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 645
    .local v7, "weight":I
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v9, v7

    invoke-direct {v1, v2, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 648
    .local v1, "buttonPlaceholderParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v9

    if-nez v9, :cond_c

    .line 650
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/millennialmedia/R$dimen;->mmadsdk_ad_button_padding_left:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 655
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_d

    .line 656
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 657
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 594
    .end local v0    # "buttonHeight":I
    .end local v1    # "buttonPlaceholderParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "buttonWidth":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "i":I
    .end local v7    # "weight":I
    .restart local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 597
    :cond_4
    iget v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    if-ne v9, v12, :cond_2

    .line 598
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->backgroundFrame:Landroid/widget/FrameLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 599
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->endCardContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 601
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-boolean v9, v9, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->hideButtons:Z

    if-eqz v9, :cond_5

    .line 602
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 604
    :cond_5
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 608
    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->isPortrait()Z

    move-result v9

    if-nez v9, :cond_2

    iget v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    if-ne v9, v7, :cond_2

    .line 610
    const/4 v6, 0x1

    .line 612
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 615
    .restart local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v9, v5}, Lcom/millennialmedia/internal/video/MMVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v9, :cond_7

    .line 618
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    iget-object v10, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->overlayWebView:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-virtual {v9, v10, v5}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    :goto_4
    iget v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    if-ne v9, v7, :cond_9

    .line 624
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;->mmExtension:Lcom/millennialmedia/internal/video/VASTParser$MMExtension;

    iget-object v9, v9, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    iget-boolean v9, v9, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->hideButtons:Z

    if-eqz v9, :cond_8

    .line 627
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 620
    :cond_7
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->loadOverlay()V

    goto :goto_4

    .line 629
    :cond_8
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 632
    :cond_9
    iget v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->currentState:I

    if-ne v9, v12, :cond_2

    .line 633
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->selectedCompanionAd:Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    iget-boolean v9, v9, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->hideButtons:Z

    if-eqz v9, :cond_a

    .line 634
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 636
    :cond_a
    iget-object v9, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .end local v5    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0    # "buttonHeight":I
    .restart local v2    # "buttonWidth":I
    :cond_b
    move v7, v8

    .line 644
    goto/16 :goto_1

    .line 652
    .restart local v1    # "buttonPlaceholderParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7    # "weight":I
    :cond_c
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 661
    .end local v0    # "buttonHeight":I
    .end local v1    # "buttonPlaceholderParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "buttonWidth":I
    .end local v7    # "weight":I
    :cond_d
    iget-object v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 664
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/millennialmedia/internal/video/VASTVideoView;->lastKnownOrientation:I

    .line 665
    return-void
.end method
