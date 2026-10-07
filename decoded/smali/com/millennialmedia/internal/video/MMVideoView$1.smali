.class Lcom/millennialmedia/internal/video/MMVideoView$1;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/MMVideoView;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$400(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$800(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 281
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x4

    .line 244
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$302(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 246
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$400(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$400(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$300(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$500(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 251
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$600(Lcom/millennialmedia/internal/video/MMVideoView;)V

    .line 252
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$502(Lcom/millennialmedia/internal/video/MMVideoView;I)I

    .line 254
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$300(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$700(Lcom/millennialmedia/internal/video/MMVideoView;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$800(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 259
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$1$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/MMVideoView$1$1;-><init>(Lcom/millennialmedia/internal/video/MMVideoView$1;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$800(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 269
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 272
    :cond_3
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->access$302(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 289
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$400(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/millennialmedia/internal/video/MMVideoView$1;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->access$400(Lcom/millennialmedia/internal/video/MMVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 292
    :cond_0
    return-void
.end method
