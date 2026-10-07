.class public final Lcom/fyber/mediation/MediationNetworkBannerSize;
.super Ljava/lang/Object;
.source "MediationNetworkBannerSize.java"


# static fields
.field public static final FACEBOOKAUDIENCENETWORK_BANNER_50:Lcom/fyber/ads/banners/NetworkBannerSize;

.field public static final FACEBOOKAUDIENCENETWORK_BANNER_90:Lcom/fyber/ads/banners/NetworkBannerSize;

.field public static final FACEBOOKAUDIENCENETWORK_RECTANGLE_HEIGHT_250:Lcom/fyber/ads/banners/NetworkBannerSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fyber/mediation/facebook/banner/FacebookNetworkBannerSizes;->BANNER_90:Lcom/fyber/ads/banners/NetworkBannerSize;

    sput-object v0, Lcom/fyber/mediation/MediationNetworkBannerSize;->FACEBOOKAUDIENCENETWORK_BANNER_90:Lcom/fyber/ads/banners/NetworkBannerSize;

    .line 9
    sget-object v0, Lcom/fyber/mediation/facebook/banner/FacebookNetworkBannerSizes;->RECTANGLE_HEIGHT_250:Lcom/fyber/ads/banners/NetworkBannerSize;

    sput-object v0, Lcom/fyber/mediation/MediationNetworkBannerSize;->FACEBOOKAUDIENCENETWORK_RECTANGLE_HEIGHT_250:Lcom/fyber/ads/banners/NetworkBannerSize;

    .line 11
    sget-object v0, Lcom/fyber/mediation/facebook/banner/FacebookNetworkBannerSizes;->BANNER_50:Lcom/fyber/ads/banners/NetworkBannerSize;

    sput-object v0, Lcom/fyber/mediation/MediationNetworkBannerSize;->FACEBOOKAUDIENCENETWORK_BANNER_50:Lcom/fyber/ads/banners/NetworkBannerSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
