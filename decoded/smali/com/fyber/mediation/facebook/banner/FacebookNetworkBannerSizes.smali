.class public Lcom/fyber/mediation/facebook/banner/FacebookNetworkBannerSizes;
.super Ljava/lang/Object;
.source "FacebookNetworkBannerSizes.java"


# static fields
.field public static final BANNER_50:Lcom/fyber/ads/banners/NetworkBannerSize;
    .annotation runtime Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;
        value = "FacebookAudienceNetwork"
    .end annotation
.end field

.field public static final BANNER_90:Lcom/fyber/ads/banners/NetworkBannerSize;
    .annotation runtime Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;
        value = "FacebookAudienceNetwork"
    .end annotation
.end field

.field public static final RECTANGLE_HEIGHT_250:Lcom/fyber/ads/banners/NetworkBannerSize;
    .annotation runtime Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;
        value = "FacebookAudienceNetwork"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/fyber/ads/banners/NetworkBannerSize;

    const-string v1, "FacebookAudienceNetwork"

    sget-object v2, Lcom/fyber/ads/banners/BannerSize;->FIXED_SIZE_320_50:Lcom/fyber/ads/banners/BannerSize;

    invoke-direct {v0, v1, v2}, Lcom/fyber/ads/banners/NetworkBannerSize;-><init>(Ljava/lang/String;Lcom/fyber/ads/banners/BannerSize;)V

    sput-object v0, Lcom/fyber/mediation/facebook/banner/FacebookNetworkBannerSizes;->BANNER_50:Lcom/fyber/ads/banners/NetworkBannerSize;

    .line 19
    new-instance v0, Lcom/fyber/ads/banners/NetworkBannerSize;

    const-string v1, "FacebookAudienceNetwork"

    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    const/16 v3, 0x140

    invoke-virtual {v2, v3}, Lcom/fyber/ads/banners/BannerSize$Builder;->withWidth(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lcom/fyber/ads/banners/BannerSize$Builder;->withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fyber/ads/banners/NetworkBannerSize;-><init>(Ljava/lang/String;Lcom/fyber/ads/banners/BannerSize;)V

    sput-object v0, Lcom/fyber/mediation/facebook/banner/FacebookNetworkBannerSizes;->BANNER_90:Lcom/fyber/ads/banners/NetworkBannerSize;

    .line 22
    new-instance v0, Lcom/fyber/ads/banners/NetworkBannerSize;

    const-string v1, "FacebookAudienceNetwork"

    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/fyber/ads/banners/BannerSize$Builder;->withWidth(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcom/fyber/ads/banners/BannerSize$Builder;->withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fyber/ads/banners/NetworkBannerSize;-><init>(Ljava/lang/String;Lcom/fyber/ads/banners/BannerSize;)V

    sput-object v0, Lcom/fyber/mediation/facebook/banner/FacebookNetworkBannerSizes;->RECTANGLE_HEIGHT_250:Lcom/fyber/ads/banners/NetworkBannerSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
