.class Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;
.super Ljava/lang/Object;
.source "InMobiVideoMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->videosAvailable(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)Lcom/inmobi/ads/InMobiInterstitial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)Lcom/inmobi/ads/InMobiInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->access$200(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    invoke-static {v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->access$300(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V

    goto :goto_0
.end method
