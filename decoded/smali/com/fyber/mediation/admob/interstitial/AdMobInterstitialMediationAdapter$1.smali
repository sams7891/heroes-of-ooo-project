.class Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;
.super Ljava/lang/Object;
.source "AdMobInterstitialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    iget-object v1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$100(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$002(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 52
    iget-object v0, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    invoke-static {v1}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$200(Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 53
    invoke-static {}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading the ad."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
