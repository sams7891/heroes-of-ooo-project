.class public Lcom/fyber/ads/banners/NetworkBannerSize;
.super Ljava/lang/Object;
.source "NetworkBannerSize.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/fyber/ads/banners/BannerSize;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/ads/banners/BannerSize;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fyber/ads/banners/NetworkBannerSize;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/fyber/ads/banners/NetworkBannerSize;->b:Lcom/fyber/ads/banners/BannerSize;

    .line 19
    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fyber/ads/banners/NetworkBannerSize;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/fyber/ads/banners/BannerSize;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyber/ads/banners/NetworkBannerSize;->b:Lcom/fyber/ads/banners/BannerSize;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fyber/ads/banners/NetworkBannerSize;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/banners/NetworkBannerSize;->b:Lcom/fyber/ads/banners/BannerSize;

    invoke-virtual {v1}, Lcom/fyber/ads/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
