.class final Lcom/fyber/ads/videos/e;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/fyber/ads/videos/e;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 156
    :pswitch_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Timeout reached, canceling request..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/fyber/ads/videos/e;->a:Lcom/fyber/ads/videos/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;I)V

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/fyber/ads/videos/e;->a:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
