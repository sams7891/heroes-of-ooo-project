.class public Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
.super Lcom/millennialmedia/internal/MMWebView;
.source "VASTVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VASTVideoWebView"
.end annotation


# instance fields
.field volatile lastUpdateTime:I

.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field updateTimeInterval:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;ZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/VASTVideoView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transparent"    # Z
    .param p4, "listener"    # Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 228
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    .line 229
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$400(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 254
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    .line 247
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    .line 238
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public seek(I)V
    .locals 2
    .param p1, "milliseconds"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/video/MMVideoView;->seekTo(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public setTimeInterval(I)V
    .locals 0
    .param p1, "timeInterval"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    .line 309
    return-void
.end method

.method public skip()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$200(Lcom/millennialmedia/internal/video/VASTVideoView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$502(Lcom/millennialmedia/internal/video/VASTVideoView;Z)Z

    .line 264
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    :cond_0
    return-void
.end method

.method public triggerTimeUpdate()V
    .locals 4

    .prologue
    .line 301
    const-string v0, "MmJsBridge.vast.setCurrentTime"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method updateTime(I)V
    .locals 4
    .param p1, "milliseconds"    # I

    .prologue
    .line 314
    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    iget v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->updateTimeInterval:I

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_1

    .line 317
    :cond_0
    iput p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->lastUpdateTime:I

    .line 318
    const-string v0, "MmJsBridge.vast.setCurrentTime"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :cond_1
    return-void
.end method
