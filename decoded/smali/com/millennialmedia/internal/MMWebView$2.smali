.class Lcom/millennialmedia/internal/MMWebView$2;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/MMWebView;

.field final synthetic val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$2;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->close()V

    .line 264
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1
    .param p1, "expandParams"    # Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z

    move-result v0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onAdLeftApplication()V

    .line 292
    return-void
.end method

.method public onInjectedScriptsLoaded()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/millennialmedia/internal/MMWebView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Injected scripts have been loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->this$0:Lcom/millennialmedia/internal/MMWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->access$502(Lcom/millennialmedia/internal/MMWebView;Z)Z

    .line 244
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->this$0:Lcom/millennialmedia/internal/MMWebView;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMWebView;->access$200(Lcom/millennialmedia/internal/MMWebView;)V

    .line 245
    return-void
.end method

.method public onJSBridgeReady()V
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lcom/millennialmedia/internal/MMWebView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSBridge is ready"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    sget v1, Lcom/millennialmedia/MMLog;->logLevel:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/JSBridge;->setLogLevel(I)V

    .line 256
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onReady()V

    .line 257
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1
    .param p1, "resizeParams"    # Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result v0

    return v0
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->setOrientation(I)V

    .line 299
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$2;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->showCloseIndicator(Z)V

    .line 285
    return-void
.end method
