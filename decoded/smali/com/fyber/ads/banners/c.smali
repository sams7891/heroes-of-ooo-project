.class final Lcom/fyber/ads/banners/c;
.super Lcom/fyber/utils/c;
.source "BannerAd.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/fyber/ads/banners/BannerAd;


# direct methods
.method constructor <init>(Lcom/fyber/ads/banners/BannerAd;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    iput-object p2, p0, Lcom/fyber/ads/banners/c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    iget-object v0, v0, Lcom/fyber/ads/banners/BannerAd;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    iget-object v0, v0, Lcom/fyber/ads/banners/BannerAd;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v1}, Lcom/fyber/ads/banners/BannerAd;->b(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v0}, Lcom/fyber/ads/banners/BannerAd;->d(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/a/c;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/a/a;->f:Lcom/fyber/ads/a/a;

    invoke-static {v0, v1}, Lcom/fyber/b/e;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 186
    iget-object v0, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    iget-object v1, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v1}, Lcom/fyber/ads/banners/BannerAd;->b(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/ads/banners/BannerAd;->onBannerLoaded(Landroid/view/View;)V

    .line 187
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fyber/ads/banners/c;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 180
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v3}, Lcom/fyber/ads/banners/BannerAd;->c(Lcom/fyber/ads/banners/BannerAd;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 181
    iget-object v1, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v1}, Lcom/fyber/ads/banners/BannerAd;->b(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v2}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v1, p0, Lcom/fyber/ads/banners/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fyber/ads/banners/c;->b:Lcom/fyber/ads/banners/BannerAd;

    invoke-static {v2}, Lcom/fyber/ads/banners/BannerAd;->a(Lcom/fyber/ads/banners/BannerAd;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
