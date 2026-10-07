.class public abstract Lcom/fyber/ads/banners/mediation/BannerWrapper;
.super Ljava/lang/Object;
.source "BannerWrapper.java"


# instance fields
.field private bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onBannerClick()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/ads/banners/mediation/BannerEventListener;->onBannerClick(Landroid/view/View;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onBannerError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/fyber/ads/banners/mediation/BannerEventListener;->onBannerError(Landroid/view/View;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onBannerLeftApplication()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/ads/banners/mediation/BannerEventListener;->onBannerLeftApplication(Landroid/view/View;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onBannerLoaded()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fyber/ads/banners/mediation/BannerEventListener;->onBannerLoaded(Landroid/view/View;)V

    .line 33
    :cond_0
    return-void
.end method

.method public setBannerEventListener(Lcom/fyber/ads/banners/mediation/BannerEventListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/mediation/BannerEventListener;

    .line 55
    return-void
.end method
