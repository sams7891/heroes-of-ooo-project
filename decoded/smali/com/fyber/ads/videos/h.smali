.class final Lcom/fyber/ads/videos/h;
.super Lcom/fyber/utils/c;
.source "RewardedVideoClient.java"


# instance fields
.field final synthetic a:Lcom/fyber/a/a;

.field final synthetic b:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;Lcom/fyber/a/a;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/d;

    iput-object p2, p0, Lcom/fyber/ads/videos/h;->a:Lcom/fyber/a/a;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/d;

    iget-object v1, p0, Lcom/fyber/ads/videos/h;->a:Lcom/fyber/a/a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Lcom/fyber/a/a;)Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->h(Lcom/fyber/ads/videos/d;)Ljava/util/Map;

    .line 240
    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v1, v0}, Lcom/fyber/ads/videos/d;->b(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/v;->b:Lcom/fyber/ads/videos/v;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/v;)Z

    .line 244
    iget-object v0, p0, Lcom/fyber/ads/videos/h;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->i(Lcom/fyber/ads/videos/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    return-void
.end method
