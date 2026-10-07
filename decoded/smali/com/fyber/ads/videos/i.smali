.class final Lcom/fyber/ads/videos/i;
.super Lcom/fyber/utils/c;
.source "RewardedVideoClient.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/RewardedVideoActivity;

.field final synthetic b:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/RewardedVideoActivity;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/fyber/ads/videos/i;->b:Lcom/fyber/ads/videos/d;

    iput-object p2, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 331
    iget-object v0, p0, Lcom/fyber/ads/videos/i;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    iget-object v1, p0, Lcom/fyber/ads/videos/i;->b:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/videos/RewardedVideoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    return-void
.end method
