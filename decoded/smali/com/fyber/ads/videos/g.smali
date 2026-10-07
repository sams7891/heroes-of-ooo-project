.class final Lcom/fyber/ads/videos/g;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 191
    const-string v0, "RewardedVideoClient"

    const-string v1, "Unknown message what field"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 172
    :sswitch_0
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/fyber/utils/k;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->b(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebView;

    .line 179
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->c(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebViewClient;

    .line 180
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->d(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    .line 181
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->e(Lcom/fyber/ads/videos/d;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->f(Lcom/fyber/ads/videos/d;)Landroid/content/Context;

    goto :goto_0

    .line 188
    :sswitch_1
    iget-object v0, p0, Lcom/fyber/ads/videos/g;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->g(Lcom/fyber/ads/videos/d;)V

    goto :goto_0

    .line 170
    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x20a -> :sswitch_1
    .end sparse-switch
.end method
