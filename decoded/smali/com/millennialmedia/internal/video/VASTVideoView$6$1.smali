.class Lcom/millennialmedia/internal/video/VASTVideoView$6$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$6;->onDownloadSucceeded(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

.field final synthetic val$downloadedFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$6;Ljava/io/File;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/VASTVideoView$6;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->val$downloadedFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->val$downloadedFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1402(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/io/File;)Ljava/io/File;

    .line 718
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->val$downloadedFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/MMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 720
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$6$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$6;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$6;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1500(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 721
    return-void
.end method
