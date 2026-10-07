.class Lcom/millennialmedia/internal/video/VASTVideoView$10;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->createCompanionWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 1067
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1
    .param p1, "expandParams"    # Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    .prologue
    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 1041
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public onLoaded()V
    .locals 0

    .prologue
    .line 1019
    return-void
.end method

.method public onReady()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1025
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2100(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-result-object v0

    const-string v1, "MmJsBridge.vast.enableWebOverlay"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2100(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-result-object v0

    const-string v1, "MmJsBridge.vast.setDuration"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$10;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2100(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    move-result-object v0

    const-string v1, "MmJsBridge.vast.setState"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "complete"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1
    .param p1, "resizeParams"    # Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1079
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1073
    return-void
.end method
