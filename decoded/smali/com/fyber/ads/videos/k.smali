.class final Lcom/fyber/ads/videos/k;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/fyber/ads/videos/k;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/fyber/ads/videos/k;->a:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/u$a;->e:Lcom/fyber/ads/videos/u$a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/u$a;)V

    .line 598
    iget-object v0, p0, Lcom/fyber/ads/videos/k;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->n(Lcom/fyber/ads/videos/d;)V

    .line 599
    iget-object v0, p0, Lcom/fyber/ads/videos/k;->a:Lcom/fyber/ads/videos/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Z)Z

    .line 600
    return-void
.end method
