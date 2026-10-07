.class Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;
.super Ljava/lang/Object;
.source "InMobiInterstitialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V

    .line 62
    return-void
.end method
