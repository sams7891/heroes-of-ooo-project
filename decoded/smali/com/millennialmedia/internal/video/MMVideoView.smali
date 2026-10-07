.class public Lcom/millennialmedia/internal/video/MMVideoView;
.super Landroid/widget/RelativeLayout;
.source "MMVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;,
        Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;,
        Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;,
        Lcom/millennialmedia/internal/video/MMVideoView$MediaController;,
        Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;
    }
.end annotation


# static fields
.field private static final COMPLETED:I = 0x6

.field private static final ERROR:I = 0x7

.field private static final IDLE:I = 0x0

.field private static final PAUSED:I = 0x5

.field private static final PLAYING:I = 0x4

.field private static final PREPARED:I = 0x2

.field private static final PREPARING:I = 0x1

.field private static final PROGRESS_POLLING_INTERVAL:I = 0x64

.field private static final READY_TO_PLAY:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile currentState:I

.field private mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private muted:Z

.field private progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private seekToMilliseconds:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

.field private volatile targetState:I

.field private uri:Landroid/net/Uri;

.field private videoHeight:I

.field private videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoPlay"    # Z
    .param p3, "muted"    # Z
    .param p4, "videoViewListener"    # Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 335
    new-instance v2, Landroid/content/MutableContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput v3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    .line 67
    iput v3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 240
    new-instance v2, Lcom/millennialmedia/internal/video/MMVideoView$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/MMVideoView$1;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 338
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/content/MutableContextWrapper;

    .line 340
    .local v1, "mutableContext":Landroid/content/MutableContextWrapper;
    iput-boolean p3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    .line 341
    iput-object p4, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    .line 343
    if-eqz p2, :cond_0

    .line 344
    const/4 v2, 0x4

    iput v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/millennialmedia/internal/video/MMVideoView;->setBackgroundColor(I)V

    .line 350
    new-instance v2, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-direct {v2, p0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    .line 351
    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 352
    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 354
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 357
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceView:Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p1, "x1"    # Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    return v0
.end method

.method static synthetic access$502(Lcom/millennialmedia/internal/video/MMVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    return-void
.end method

.method static synthetic access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/internal/video/MMVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    return v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    return-object v0
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 909
    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseAudioFocus()V
    .locals 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 482
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 483
    return-void
.end method

.method private setAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 468
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 469
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    if-nez v1, :cond_0

    .line 472
    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 703
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    .line 632
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 634
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    .line 636
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$8;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_1

    .line 647
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$9;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 655
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 916
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 918
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    .line 919
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 832
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    .line 833
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$19;

    invoke-direct {v0, p0, p2}, Lcom/millennialmedia/internal/video/MMVideoView$19;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;I)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 841
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v0, 0x6

    .line 722
    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 723
    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    .line 725
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_1

    .line 731
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$12;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$12;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_2

    .line 742
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$13;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$13;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 750
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->releaseAudioFocus()V

    .line 927
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 928
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 756
    const/4 v0, 0x7

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 758
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    .line 759
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$14;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$14;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 768
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_4

    .line 776
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    .line 777
    const/4 v0, 0x3

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 778
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 779
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$15;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$15;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 817
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_2

    .line 818
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$18;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$18;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 826
    :cond_2
    return-void

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_1

    .line 792
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$16;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$16;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 803
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 805
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_1

    .line 806
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$17;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$17;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x4

    .line 366
    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    .line 368
    .local v0, "videoViewInfo":Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 370
    iget v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    .line 371
    iget v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentPosition:I

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    .line 372
    iget-boolean v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->muted:Z

    iput-boolean v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    .line 374
    iget v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentState:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    if-ne v1, v2, :cond_1

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 377
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;-><init>(Landroid/os/Parcelable;)V

    .line 384
    .local v0, "videoViewInfo":Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;
    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    iput v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentState:I

    .line 385
    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    iput v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->targetState:I

    .line 386
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->currentPosition:I

    .line 387
    iget-boolean v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    iput-boolean v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->muted:Z

    .line 388
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;->uri:Ljava/lang/String;

    .line 390
    return-object v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    .line 855
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$20;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$20;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_1

    .line 865
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$21;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$21;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 873
    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 890
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 891
    iput p2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoWidth:I

    .line 892
    iput p3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoHeight:I

    .line 894
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoWidth:I

    iget v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 896
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->requestLayout()V

    .line 899
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 588
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 591
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    .line 592
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$6;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_1

    .line 602
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$7;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 611
    :cond_1
    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 612
    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    .line 614
    :cond_2
    return-void
.end method

.method public restart()V
    .locals 2

    .prologue
    .line 500
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 510
    :goto_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    goto :goto_1
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    iput p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    goto :goto_0
.end method

.method public setMediaController(Lcom/millennialmedia/internal/video/MMVideoView$MediaController;)V
    .locals 0
    .param p1, "mediaController"    # Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    .line 495
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 489
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 396
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->uri:Landroid/net/Uri;

    .line 399
    if-nez p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v1, :cond_2

    .line 406
    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    monitor-enter v2

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 411
    const/4 v1, 0x0

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 412
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 418
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 419
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 420
    iput v3, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 423
    :cond_3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 426
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_4

    .line 427
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 430
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 431
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 432
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 433
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 434
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 435
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 436
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 439
    :try_start_1
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 441
    const/4 v1, 0x1

    iput v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 445
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/millennialmedia/internal/video/MMVideoView;->TAG:Ljava/lang/String;

    const-string v2, "An error occurred preparing the VideoPlayer."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    iput v4, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 451
    iput v4, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    .line 453
    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Lcom/millennialmedia/internal/video/MMVideoView$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/video/MMVideoView$2;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setVideoViewListener(Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;)V
    .locals 0
    .param p1, "videoViewListener"    # Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    .line 710
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 516
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    if-eq v0, v2, :cond_5

    .line 517
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    .line 521
    :cond_0
    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->seekToMilliseconds:I

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 528
    iput v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 529
    iput v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    .line 531
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_2

    .line 532
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$3;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_3

    .line 542
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$4;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 555
    :cond_4
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/internal/video/MMVideoView$ProgressRunnable;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;Lcom/millennialmedia/internal/video/MMVideoView$1;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->progressRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_5
    iput v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->releaseAudioFocus()V

    .line 567
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 570
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_1

    .line 571
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$5;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 580
    :cond_1
    iput v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->currentState:I

    .line 581
    iput v2, p0, Lcom/millennialmedia/internal/video/MMVideoView;->targetState:I

    .line 583
    :cond_2
    return-void
.end method

.method public unmute()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->muted:Z

    .line 661
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 663
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/MMVideoView;->setAudioFocus()V

    .line 665
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->videoViewListener:Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$10;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView;->mediaController:Lcom/millennialmedia/internal/video/MMVideoView$MediaController;

    if-eqz v0, :cond_1

    .line 676
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$11;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$11;-><init>(Lcom/millennialmedia/internal/video/MMVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 684
    :cond_1
    return-void
.end method
