.class final Lcom/fyber/ads/videos/a;
.super Landroid/content/BroadcastReceiver;
.source "RewardedVideoActivity.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/RewardedVideoActivity;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/RewardedVideoActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fyber/ads/videos/a;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/d;->g()V

    .line 82
    :cond_1
    return-void
.end method
