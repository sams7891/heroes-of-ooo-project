.class Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;
.super Ljava/lang/Object;
.source "ChartboostMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSignature:Ljava/lang/String;

.field final synthetic val$configs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$appSignature:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 88
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v3}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$000(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v3}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$100(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 91
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    new-instance v4, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    iget-object v5, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {v4, v5}, Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)V

    invoke-static {v3, v4}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$202(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;)Lcom/fyber/mediation/chartboost/interstitial/ChartboostInterstitialMediationAdapter;

    .line 93
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    new-instance v4, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    iget-object v5, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {v4, v5}, Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;-><init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)V

    invoke-static {v3, v4}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$302(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;)Lcom/fyber/mediation/chartboost/rv/ChartboostVideoMediationAdapter;

    .line 95
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v5, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$appSignature:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 100
    new-instance v3, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;

    iget-object v4, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-direct {v3, v4}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$FyberChartboostDelegate;-><init>(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)V

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 102
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 103
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 106
    sget-object v3, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationFyber:Lcom/chartboost/sdk/Chartboost$CBMediation;

    sget-object v4, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Chartboost;->setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->val$configs:Ljava/util/Map;

    const-string v4, "LogLevel"

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "logLevel":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 121
    .local v2, "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :goto_1
    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 123
    iget-object v3, p0, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter$1;->this$0:Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;

    invoke-static {v3}, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->access$400(Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->setCustomId(Ljava/lang/String;)V

    .line 124
    return-void

    .line 88
    .end local v1    # "logLevel":Ljava/lang/String;
    .end local v2    # "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 115
    .restart local v1    # "logLevel":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_2
    sget-object v3, Lcom/fyber/mediation/chartboost/ChartboostMediationAdapter;->TAG:Ljava/lang/String;

    const-string v4, "No or not proper value has been passed to \'LogLevel\' setting key, setting ALL by default."

    .line 117
    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v2, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->ALL:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .restart local v2    # "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    goto :goto_1

    .line 115
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "lvl":Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    :catch_1
    move-exception v0

    goto :goto_2
.end method
