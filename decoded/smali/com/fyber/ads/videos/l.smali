.class final Lcom/fyber/ads/videos/l;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fyber/requesters/VirtualCurrencyRequester;

.field final synthetic b:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;Lcom/fyber/requesters/VirtualCurrencyRequester;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/fyber/ads/videos/l;->b:Lcom/fyber/ads/videos/d;

    iput-object p2, p0, Lcom/fyber/ads/videos/l;->a:Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/fyber/ads/videos/l;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->j(Lcom/fyber/ads/videos/d;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/fyber/ads/videos/l;->a:Lcom/fyber/requesters/VirtualCurrencyRequester;

    iget-object v1, p0, Lcom/fyber/ads/videos/l;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->j(Lcom/fyber/ads/videos/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->request(Landroid/content/Context;)V

    .line 650
    iget-object v0, p0, Lcom/fyber/ads/videos/l;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->o(Lcom/fyber/ads/videos/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/fyber/ads/videos/l;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->p(Lcom/fyber/ads/videos/d;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 652
    iget-object v0, p0, Lcom/fyber/ads/videos/l;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->f(Lcom/fyber/ads/videos/d;)Landroid/content/Context;

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    const-string v0, "RewardedVideoClient"

    const-string v1, "There\'s no context available to perform a VCS request"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
