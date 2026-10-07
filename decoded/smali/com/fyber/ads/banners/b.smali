.class final Lcom/fyber/ads/banners/b;
.super Lcom/fyber/utils/c;
.source "BannerAd.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/banners/BannerAd;


# direct methods
.method constructor <init>(Lcom/fyber/ads/banners/BannerAd;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/fyber/ads/banners/b;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/fyber/ads/banners/b;->a:Lcom/fyber/ads/banners/BannerAd;

    iget-object v0, v0, Lcom/fyber/ads/banners/BannerAd;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/fyber/ads/banners/b;->a:Lcom/fyber/ads/banners/BannerAd;

    iget-object v0, v0, Lcom/fyber/ads/banners/BannerAd;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/banners/b;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/fyber/ads/banners/b;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
