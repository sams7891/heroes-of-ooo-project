.class final Lcom/fyber/ads/videos/a/g$b;
.super Landroid/os/Handler;
.source "RewardedVideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fyber/ads/videos/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/a/g;)V
    .locals 1

    .prologue
    .line 802
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 803
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g$b;->a:Ljava/lang/ref/WeakReference;

    .line 804
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 808
    invoke-static {}, Lcom/fyber/ads/videos/a/f;->a()[I

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget v1, v0, v1

    .line 809
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/videos/a/g;

    .line 810
    if-eqz v0, :cond_0

    .line 811
    sget-object v2, Lcom/fyber/ads/videos/a/i;->b:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 814
    :pswitch_0
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->b(Lcom/fyber/ads/videos/a/g;)V

    goto :goto_0

    .line 818
    :pswitch_1
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->c(Lcom/fyber/ads/videos/a/g;)V

    goto :goto_0

    .line 822
    :pswitch_2
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->d(Lcom/fyber/ads/videos/a/g;)V

    goto :goto_0

    .line 826
    :pswitch_3
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->e(Lcom/fyber/ads/videos/a/g;)Lcom/fyber/c/b/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 827
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->e(Lcom/fyber/ads/videos/a/g;)Lcom/fyber/c/b/b;

    move-result-object v1

    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->f(Lcom/fyber/ads/videos/a/g;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fyber/c/b/b;->a(J)V

    goto :goto_0

    .line 832
    :pswitch_4
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->g(Lcom/fyber/ads/videos/a/g;)Z

    .line 833
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->h(Lcom/fyber/ads/videos/a/g;)V

    goto :goto_0

    .line 838
    :pswitch_5
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->i(Lcom/fyber/ads/videos/a/g;)V

    goto :goto_0

    .line 842
    :pswitch_6
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->d(Lcom/fyber/ads/videos/a/g;)V

    .line 843
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 844
    invoke-static {v2}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    .line 843
    invoke-static {v0, v1, v2, v3}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :pswitch_7
    const-string v1, "RewardedVideoPlayerView"

    const-string v2, "displayErrorLoadingDialog(): Error Loading video"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->j(Lcom/fyber/ads/videos/a/g;)Z

    .line 850
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 851
    invoke-static {v2}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    .line 850
    invoke-static {v0, v1, v2, v3}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :pswitch_8
    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->k(Lcom/fyber/ads/videos/a/g;)V

    goto :goto_0

    .line 811
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
