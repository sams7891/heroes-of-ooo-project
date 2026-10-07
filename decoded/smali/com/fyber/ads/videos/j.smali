.class final Lcom/fyber/ads/videos/j;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/webkit/WebView;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 556
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->j(Lcom/fyber/ads/videos/d;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 557
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 559
    invoke-static {v1}, Lcom/fyber/utils/y;->a(Landroid/webkit/WebSettings;)V

    .line 560
    invoke-static {v0}, Lcom/fyber/utils/y;->a(Landroid/webkit/WebView;)V

    .line 562
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 563
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 565
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 567
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 568
    const-string v2, "Mozilla/5.0 (X11; CrOS i686 4319.74.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36 (Sponsorpay SDK)"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 575
    :cond_0
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 577
    iget-object v1, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->k(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 579
    iget-object v1, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->l(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 581
    iget-object v1, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->m(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/mediation/d;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/j;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v2}, Lcom/fyber/ads/videos/d;->m(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/mediation/d;

    move-result-object v2

    .line 1090
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SynchJS"

    .line 581
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/fyber/ads/videos/j;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method
