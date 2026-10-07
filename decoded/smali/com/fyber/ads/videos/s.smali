.class final Lcom/fyber/ads/videos/s;
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
    .line 832
    iput-object p1, p0, Lcom/fyber/ads/videos/s;->a:Lcom/fyber/ads/videos/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/fyber/ads/videos/s;->a:Lcom/fyber/ads/videos/q;

    iget-object v0, v0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Z)Z

    .line 836
    return-void
.end method
