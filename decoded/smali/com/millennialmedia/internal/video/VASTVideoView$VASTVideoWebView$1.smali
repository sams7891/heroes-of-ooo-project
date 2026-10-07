.class Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->skip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$600(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 269
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$700(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 270
    return-void
.end method
