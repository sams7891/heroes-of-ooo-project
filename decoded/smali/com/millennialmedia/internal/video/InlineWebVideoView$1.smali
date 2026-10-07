.class Lcom/millennialmedia/internal/video/InlineWebVideoView$1;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;-><init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private didPause:Z

.field final synthetic this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 1
    .param p1, "viewable"    # Z

    .prologue
    .line 371
    if-eqz p1, :cond_1

    .line 372
    iget-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->didPause:Z

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->didPause:Z

    .line 374
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->start()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->didPause:Z

    .line 379
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$1;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->pause()V

    goto :goto_0
.end method
