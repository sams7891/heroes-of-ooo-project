.class Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;
.super Ljava/lang/Object;
.source "AdMobMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/admob/AdMobMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/admob/AdMobMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$configs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/admob/AdMobMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/admob/AdMobMediationAdapter;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/AdMobMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/AdMobMediationAdapter;

    new-instance v1, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;->this$0:Lcom/fyber/mediation/admob/AdMobMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;->val$activity:Landroid/app/Activity;

    .line 53
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/mediation/admob/AdMobMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/admob/AdMobMediationAdapter;Landroid/content/Context;Ljava/util/Map;)V

    .line 52
    invoke-static {v0, v1}, Lcom/fyber/mediation/admob/AdMobMediationAdapter;->access$002(Lcom/fyber/mediation/admob/AdMobMediationAdapter;Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;)Lcom/fyber/mediation/admob/interstitial/AdMobInterstitialMediationAdapter;

    .line 54
    return-void
.end method
