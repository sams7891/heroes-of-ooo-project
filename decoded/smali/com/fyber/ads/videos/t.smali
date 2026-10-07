.class final Lcom/fyber/ads/videos/t;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/q;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/q;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/fyber/ads/videos/t;->a:Lcom/fyber/ads/videos/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/fyber/ads/videos/t;->a:Lcom/fyber/ads/videos/q;

    iget-object v0, v0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    const-string v1, "CLOSE_ABORTED"

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->c(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/fyber/ads/videos/t;->a:Lcom/fyber/ads/videos/q;

    iget-object v0, v0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Z)Z

    .line 831
    return-void
.end method
