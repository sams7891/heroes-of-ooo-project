.class Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;
.super Ljava/lang/Object;
.source "FacebookBannerMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->checkForAds(Landroid/content/Context;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

.field final synthetic val$bannerSizes:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->val$bannerSizes:Ljava/util/List;

    iput-object p3, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 41
    iget-object v2, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->val$bannerSizes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->access$000(Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;Ljava/util/List;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    .line 43
    .local v0, "adSize":Lcom/facebook/ads/AdSize;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/facebook/ads/AdView;

    iget-object v3, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    invoke-static {v2}, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;->access$100(Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;)Ljava/util/Map;

    move-result-object v2

    const-string v4, "bannerPlacementId"

    const-class v5, Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    .line 45
    .local v1, "adView":Lcom/facebook/ads/AdView;
    iget-object v2, p0, Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/banner/FacebookBannerMediationAdapter;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 46
    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 48
    .end local v1    # "adView":Lcom/facebook/ads/AdView;
    :cond_0
    return-void
.end method
