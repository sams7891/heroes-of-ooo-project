.class public Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FyberChartboostDelegate"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    .line 175
    const-string v0, "FyberChartboostDelegate"

    iput-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    return-void
.end method

.method private logMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v0, "FyberChartboostDelegate"

    invoke-static {v0, p1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 217
    const-string v0, "Interstitial has been cached."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberSetAdAvailable()V

    .line 219
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "RV has been cached"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 292
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 251
    const-string v0, "Interstitial has been clicked."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 252
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireClickEvent()V

    .line 254
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "RV has been clicked"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 320
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "Interstitial has been closed."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseInterstitial(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireCloseEvent()V

    .line 247
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v0, "RV has been closed"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->fyberNotifyCloseEngagement()V

    .line 314
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseRewardedVideo(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 325
    const-string v0, "RV has been completed"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 326
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 327
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->fyberSetVideoPlayed()V

    .line 328
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "Interstitial has been dismissed."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 239
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "RV has been dismissed - let\'s DO NOT notify as closed"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 307
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "Interstitial has been displayed."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 259
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireImpressionEvent()V

    .line 261
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "RV has just been shown"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 333
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->fyberNotifyVideoStarted()V

    .line 335
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 223
    const-string v0, "Interstitial load failed."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 224
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 225
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 226
    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_1
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$200(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;->fyberFireValidationErrorEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 297
    const-string v0, "RV failed to be loaded."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 298
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$300(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;->fyberNotifyVideoError()V

    .line 301
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 302
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 265
    const-string v0, "Click failed to be recorded."

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 266
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "FyberChartboostDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    .line 270
    return-void
.end method

.method public didInitialize()V
    .locals 6

    .prologue
    .line 179
    const/16 v0, 0x5dc

    .line 180
    .local v0, "DELAY":I
    const-string v1, "CB did initialize, delaying call for ads for 1500 ms..."

    invoke-direct {p0, v1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$600(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;

    invoke-direct {v2, p0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate$1;-><init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method

.method public didPauseClickForConfirmation()V
    .locals 1

    .prologue
    .line 274
    const-string v0, "didPauseClickForConfirmation() has been invoked"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 275
    invoke-super {p0}, Lcom/chartboost/sdk/ChartboostDelegate;->didPauseClickForConfirmation()V

    .line 276
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 210
    .local v0, "isShouldDisplay":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should we display an interstitial? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 211
    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 285
    .local v0, "isShouldDisplay":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should we display RV? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 286
    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 203
    .local v0, "isShouldRequest":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should we request for an interstitial? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 204
    return v0
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "RV is about to be displayed"

    invoke-direct {p0, v0}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;->logMessage(Ljava/lang/String;)V

    .line 340
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->willDisplayVideo(Ljava/lang/String;)V

    .line 341
    return-void
.end method
