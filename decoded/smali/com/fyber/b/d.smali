.class public final Lcom/fyber/b/d;
.super Lcom/fyber/b/c;
.source "BannerAdsProcessorOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/c",
        "<",
        "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
        "Lcom/fyber/ads/banners/BannerAd;",
        "Lcom/fyber/ads/banners/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/fyber/b/c;-><init>(Ljava/util/List;)V

    .line 32
    iput-object p2, p0, Lcom/fyber/b/d;->b:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Lcom/fyber/ads/a/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/fyber/ads/banners/mediation/BannerWrapper;

    check-cast p2, Lcom/fyber/ads/banners/a/c;

    .line 2047
    new-instance v0, Lcom/fyber/ads/banners/BannerAd$a;

    invoke-direct {v0, p2, p1}, Lcom/fyber/ads/banners/BannerAd$a;-><init>(Lcom/fyber/ads/banners/a/c;Lcom/fyber/ads/banners/mediation/BannerWrapper;)V

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerAd$a;->a()Lcom/fyber/ads/banners/BannerAd;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "BannerAdsProcessorOperation"

    return-object v0
.end method

.method protected final synthetic a(Lcom/fyber/ads/a/b;)Ljava/util/concurrent/Future;
    .locals 3

    .prologue
    .line 25
    check-cast p1, Lcom/fyber/ads/banners/a/c;

    .line 1052
    iget-object v0, p0, Lcom/fyber/b/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1053
    if-eqz v0, :cond_0

    .line 1054
    sget-object v1, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    iget-object v2, p0, Lcom/fyber/b/d;->b:Ljava/util/List;

    invoke-virtual {v1, v0, p1, v2}, Lcom/fyber/mediation/d;->a(Landroid/content/Context;Lcom/fyber/ads/banners/a/c;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1056
    :cond_0
    const-string v0, "BannerAdsProcessorOperation"

    const-string v1, "There was no context. Not proceeding with the request..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const/4 v0, 0x0

    .line 25
    goto :goto_0
.end method

.method protected final a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p1, p2}, Lcom/fyber/b/e;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 63
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected final c()I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 68
    sget v0, Lcom/fyber/mediation/a;->c:I

    return v0
.end method
