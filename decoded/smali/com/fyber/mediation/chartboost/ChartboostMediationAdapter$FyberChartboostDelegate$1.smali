.class Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;
.super Ljava/lang/Object;
.source "ChartboostMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->didInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v0, v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v0, v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->shouldCacheRewardedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    const-string v1, "Precaching rewarded video..."

    invoke-static {v0, v1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->access$500(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v0, v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->checkForVideo()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v0, v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v0, v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->shouldCacheInterstitials()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    const-string v1, "Precaching interstitial ad..."

    invoke-static {v0, v1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->access$500(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;->this$1:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v0, v0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->checkForInterstitial()V

    .line 192
    :cond_1
    return-void
.end method
