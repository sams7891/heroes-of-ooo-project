.class final Lcom/fyber/ads/banners/d;
.super Lcom/fyber/utils/c;
.source "BannerAd.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/banners/BannerAd;


# direct methods
.method constructor <init>(Lcom/fyber/ads/banners/BannerAd;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/fyber/ads/banners/d;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fyber/ads/banners/d;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->b(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 209
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/d;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/fyber/ads/banners/d;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/banners/d;->a:Lcom/fyber/ads/banners/BannerAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/banners/d;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->b(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->destroy()V

    .line 225
    iget-object v0, p0, Lcom/fyber/ads/banners/d;->a:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->e(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    .line 227
    sget-object v0, Lcom/fyber/ads/banners/a/b;->a:Lcom/fyber/ads/banners/a/b;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/banners/a/b;)Z

    .line 228
    return-void
.end method
