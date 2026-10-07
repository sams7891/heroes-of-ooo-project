.class public final Lcom/fyber/ads/banners/BannerAd$a;
.super Ljava/lang/Object;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/banners/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/fyber/ads/banners/a/c;

.field public b:Lcom/fyber/ads/banners/mediation/BannerWrapper;


# direct methods
.method public constructor <init>(Lcom/fyber/ads/banners/a/c;Lcom/fyber/ads/banners/mediation/BannerWrapper;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAd$a;->a:Lcom/fyber/ads/banners/a/c;

    .line 305
    iput-object p2, p0, Lcom/fyber/ads/banners/BannerAd$a;->b:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    .line 306
    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/ads/banners/BannerAd;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lcom/fyber/ads/banners/BannerAd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fyber/ads/banners/BannerAd;-><init>(Lcom/fyber/ads/banners/BannerAd$a;B)V

    return-object v0
.end method
