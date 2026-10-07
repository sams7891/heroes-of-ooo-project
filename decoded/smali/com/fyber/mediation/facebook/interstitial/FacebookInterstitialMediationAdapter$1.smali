.class Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;
.super Ljava/lang/Object;
.source "FacebookInterstitialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    new-instance v3, Lcom/facebook/ads/InterstitialAd;

    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->access$100(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    .line 57
    invoke-static {v1}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->access$200(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Ljava/util/Map;

    move-result-object v1

    const-string v4, "placementId"

    const-class v5, Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-static {v2, v3}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->access$002(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;

    .line 59
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/facebook/interstitial/FacebookInterstitialMediationAdapter;)Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    .line 62
    return-void
.end method
