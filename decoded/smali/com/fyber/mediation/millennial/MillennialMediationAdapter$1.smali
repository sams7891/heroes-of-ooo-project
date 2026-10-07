.class Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;
.super Ljava/lang/Object;
.source "MillennialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$configs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->this$0:Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 48
    iget-object v1, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->this$0:Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

    invoke-static {v1}, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->access$000(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;)Ljava/lang/Integer;

    move-result-object v0

    .line 49
    .local v0, "logLevel":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/millennialmedia/MMLog;->setLogLevel(I)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/millennialmedia/MMSDK;->initialize(Landroid/app/Activity;)V

    .line 53
    iget-object v1, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->this$0:Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

    new-instance v2, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->this$0:Lcom/fyber/mediation/millennial/MillennialMediationAdapter;

    iget-object v4, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/fyber/mediation/millennial/MillennialMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5}, Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/fyber/mediation/millennial/MillennialMediationAdapter;->access$102(Lcom/fyber/mediation/millennial/MillennialMediationAdapter;Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;)Lcom/fyber/mediation/millennial/interstitial/MillennialInterstitialMediationAdapter;

    .line 55
    return-void
.end method
