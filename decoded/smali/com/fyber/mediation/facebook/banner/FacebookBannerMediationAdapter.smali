.class public Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;
.super Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
.source "FacebookBannerMediationAdapter.java"

# interfaces
.implements Lcom/facebook/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
        "<",
        "Lcom/fyber/mediation/facebook/FacebookMediationAdapter;",
        ">;",
        "Lcom/facebook/ads/AdListener;"
    }
.end annotation


# instance fields
.field private configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/facebook/FacebookMediationAdapter;Ljava/util/Map;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/facebook/FacebookMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/facebook/FacebookMediationAdapter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 32
    iput-object p2, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->configs:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;Ljava/util/List;)Lcom/facebook/ads/AdSize;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->mapBannerSize(Ljava/util/List;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->configs:Ljava/util/Map;

    return-object v0
.end method

.method private mapBannerSize(Ljava/util/List;)Lcom/facebook/ads/AdSize;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)",
            "Lcom/facebook/ads/AdSize;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "bannerSizes":Ljava/util/List;, "Ljava/util/List<Lcom/fyber/ads/banners/BannerSize;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    .line 85
    :goto_0
    return-object v1

    .line 74
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/banners/BannerSize;

    .line 75
    .local v0, "bannerSize":Lcom/fyber/ads/banners/BannerSize;
    sget-object v2, Lcom/fyber/ads/banners/BannerSize;->FIXED_SIZE_320_50:Lcom/fyber/ads/banners/BannerSize;

    invoke-virtual {v0, v2}, Lcom/fyber/ads/banners/BannerSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize;->getWidth()I

    move-result v2

    const/16 v3, 0x140

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize;->getHeight()I

    move-result v2

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_3

    .line 78
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize;->getWidth()I

    move-result v2

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize;->getHeight()I

    move-result v2

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_1

    .line 80
    sget-object v1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 84
    .end local v0    # "bannerSize":Lcom/fyber/ads/banners/BannerSize;
    :cond_4
    const-string v1, "Error: invalid banner size"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "bannerSizes":Ljava/util/List;, "Ljava/util/List<Lcom/fyber/ads/banners/BannerSize;>;"
    iget-object v0, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;-><init>(Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 67
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/facebook/ads/Ad;

    .prologue
    .line 62
    new-instance v0, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;

    check-cast p1, Lcom/facebook/ads/AdView;

    .end local p1    # "ad":Lcom/facebook/ads/Ad;
    invoke-direct {v0, p1}, Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;-><init>(Lcom/facebook/ads/AdView;)V

    .line 63
    .local v0, "facebookBannerWrapper":Lcom/fyber/mediation/facebook/banner/FacebookBannerWrapper;
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->setAdAvailable(Lcom/fyber/ads/banners/mediation/BannerWrapper;)V

    .line 64
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 3
    .param p1, "ad"    # Lcom/facebook/ads/Ad;
    .param p2, "adError"    # Lcom/facebook/ads/AdError;

    .prologue
    .line 56
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

    .line 57
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    .line 58
    return-void
.end method
