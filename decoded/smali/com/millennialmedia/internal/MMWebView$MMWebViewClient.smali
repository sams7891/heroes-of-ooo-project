.class Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;->this$0:Lcom/millennialmedia/internal/MMWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;->this$0:Lcom/millennialmedia/internal/MMWebView;

    invoke-static {v0, p2}, Lcom/millennialmedia/internal/MMWebView;->access$000(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;->this$0:Lcom/millennialmedia/internal/MMWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->access$102(Lcom/millennialmedia/internal/MMWebView;Z)Z

    .line 87
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;->this$0:Lcom/millennialmedia/internal/MMWebView;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMWebView;->access$200(Lcom/millennialmedia/internal/MMWebView;)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;->this$0:Lcom/millennialmedia/internal/MMWebView;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMWebView;->access$300(Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    .line 98
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 104
    move-object v0, p1

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 105
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    invoke-static {v0, p2}, Lcom/millennialmedia/internal/MMWebView;->access$000(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 109
    :cond_1
    invoke-static {p2}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;->this$0:Lcom/millennialmedia/internal/MMWebView;

    invoke-static {v1}, Lcom/millennialmedia/internal/MMWebView;->access$300(Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onAdLeftApplication()V

    goto :goto_0
.end method
