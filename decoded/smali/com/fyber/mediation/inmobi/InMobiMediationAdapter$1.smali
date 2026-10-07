.class Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;
.super Ljava/lang/Object;
.source "InMobiMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$configs:Ljava/util/Map;

.field final synthetic val$intPlacementId:Ljava/lang/String;

.field final synthetic val$rvPlacementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$intPlacementId:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$configs:Ljava/util/Map;

    iput-object p6, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$rvPlacementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$accountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->DEBUG:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    .line 68
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$intPlacementId:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    new-instance v1, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    invoke-static {v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;)Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->access$002(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$rvPlacementId:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    .line 74
    sget-object v0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "InMobi supports rewarded video ads for Android 4.2 or higher.\nThe video adapter will not be started."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    new-instance v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    invoke-static {v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;)Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;-><init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->access$202(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    goto :goto_0
.end method
