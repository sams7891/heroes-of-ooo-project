.class public abstract Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
.super Ljava/lang/Object;
.source "BannerMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/mediation/MediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected asyncCallable:Lcom/fyber/utils/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/utils/b",
            "<",
            "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
            "Lcom/fyber/ads/banners/mediation/a;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdapter:Lcom/fyber/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/MediationAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/fyber/utils/b;

    invoke-direct {v0}, Lcom/fyber/utils/b;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/b;

    .line 86
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/b;

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->checkForAds(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/b;

    new-instance v2, Lcom/fyber/ads/banners/mediation/a;

    const-string v3, "Unable to perform the request"

    invoke-direct {v2, v3}, Lcom/fyber/ads/banners/mediation/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/fyber/utils/b;->a(Ljava/lang/Exception;)V

    .line 90
    :cond_0
    return-object v0
.end method

.method protected abstract checkForAds(Landroid/content/Context;Ljava/util/List;)Z
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
.end method

.method protected setAdAvailable(Lcom/fyber/ads/banners/mediation/BannerWrapper;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/b;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/b;->a(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method protected setAdError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/b;

    new-instance v1, Lcom/fyber/ads/banners/mediation/a;

    invoke-direct {v1, p1}, Lcom/fyber/ads/banners/mediation/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fyber/utils/b;->a(Ljava/lang/Exception;)V

    .line 75
    return-void
.end method

.method protected setAdNotAvailable()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/utils/b;->a(Ljava/lang/Object;)V

    .line 65
    return-void
.end method
