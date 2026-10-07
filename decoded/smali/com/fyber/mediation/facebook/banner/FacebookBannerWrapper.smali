.class public Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;
.super Lcom/fyber/ads/banners/mediation/BannerWrapper;
.source "FacebookBannerWrapper.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# instance fields
.field private bannerView:Lcom/facebook/ads/AdView;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AdView;)V
    .locals 0
    .param p1, "bannerView"    # Lcom/facebook/ads/AdView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;->bannerView:Lcom/facebook/ads/AdView;

    .line 21
    invoke-virtual {p1, p0}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;->bannerView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 32
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;->bannerView:Lcom/facebook/ads/AdView;

    return-object v0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;->onBannerClick()V

    .line 48
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;->onBannerLoaded()V

    .line 43
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook ad error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;->onBannerError(Ljava/lang/String;)V

    .line 38
    return-void
.end method
