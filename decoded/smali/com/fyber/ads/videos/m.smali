.class final Lcom/fyber/ads/videos/m;
.super Lcom/fyber/utils/w;
.source "RewardedVideoClient.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, p2}, Lcom/fyber/utils/w;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    return-object v0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 787
    .line 1799
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    .line 789
    if-nez v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 794
    invoke-virtual {p0, p2}, Lcom/fyber/ads/videos/m;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 670
    const-string v0, "requestOffers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    const-string v1, "n"

    .line 672
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;I)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->c(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_2
    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    const-string v0, "tpn"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RewardedVideo client asks to validate a third party network: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 679
    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v2, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    iget-object v3, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v3}, Lcom/fyber/ads/videos/d;->j(Lcom/fyber/ads/videos/d;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fyber/ads/videos/n;

    invoke-direct {v4, p0}, Lcom/fyber/ads/videos/n;-><init>(Lcom/fyber/ads/videos/m;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/fyber/mediation/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/a;)V

    goto :goto_0

    .line 690
    :cond_3
    const-string v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 691
    const-string v0, "tpn"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    new-instance v0, Lcom/fyber/ads/videos/o;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/o;-><init>(Lcom/fyber/ads/videos/m;)V

    .line 704
    iget-object v1, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    new-instance v2, Lcom/fyber/ads/videos/a/j;

    invoke-direct {v2}, Lcom/fyber/ads/videos/a/j;-><init>()V

    iget-object v3, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    .line 706
    invoke-static {v3}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fyber/ads/videos/a/j;->a(Landroid/app/Activity;)Lcom/fyber/ads/videos/a/j;

    move-result-object v2

    .line 707
    invoke-virtual {v2, v0}, Lcom/fyber/ads/videos/a/j;->a(Lcom/fyber/ads/videos/a/b;)Lcom/fyber/ads/videos/a/j;

    move-result-object v0

    const-string v2, "id"

    .line 708
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/a/j;->a(Ljava/lang/String;)Lcom/fyber/ads/videos/a/j;

    move-result-object v0

    const-string v2, "clickThroughUrl"

    .line 709
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/a/j;->b(Ljava/lang/String;)Lcom/fyber/ads/videos/a/j;

    move-result-object v0

    const-string v2, "alertMessage"

    .line 710
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/a/j;->c(Ljava/lang/String;)Lcom/fyber/ads/videos/a/j;

    move-result-object v0

    const-string v2, "showAlert"

    .line 711
    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/a/j;->d(Ljava/lang/String;)Lcom/fyber/ads/videos/a/j;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    .line 712
    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/a/j;->a(Lcom/fyber/ads/videos/a/g$a;)Lcom/fyber/ads/videos/a/j;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Lcom/fyber/ads/videos/a/j;->a()Lcom/fyber/ads/videos/a/g;

    move-result-object v0

    .line 705
    invoke-static {v1, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/a/g;)Lcom/fyber/ads/videos/a/g;

    .line 714
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->r(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/videos/a/g;->a()V

    .line 715
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->r(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/videos/a/g;->b()V

    .line 716
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1}, Lcom/fyber/ads/videos/d;->r(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/a/g;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/videos/RewardedVideoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 721
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 722
    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v2, "RewardedVideoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RewardedVideo client asks to play an offer from a third party network:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    sget-object v2, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    iget-object v3, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v3}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v3

    new-instance v4, Lcom/fyber/ads/videos/p;

    invoke-direct {v4, p0}, Lcom/fyber/ads/videos/p;-><init>(Lcom/fyber/ads/videos/m;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/fyber/mediation/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/b;)V

    goto/16 :goto_0

    .line 739
    :cond_5
    const-string v0, "jud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    invoke-static {}, Lcom/fyber/user/User;->mapToString()Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 743
    const-string v0, ""

    .line 745
    :cond_6
    const-string v1, "javascript:Sponsorpay.MBE.SDKInterface.trigger(\'jud\', \'%s\')"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 746
    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JUD tracking event will be called:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v1, v0}, Lcom/fyber/ads/videos/d;->b(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    const-string v1, "USER_ENGAGED"

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->c(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/u$a;->d:Lcom/fyber/ads/videos/u$a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/u$a;)V

    .line 778
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 754
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError url - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v0, "market://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "RewardedVideoClient"

    const-string v1, "discarding error - market:// url"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->s(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/v;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/v;->b:Lcom/fyber/ads/videos/v;

    if-ne v0, v1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/u$a;->e:Lcom/fyber/ads/videos/u$a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/u$a;)V

    .line 763
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->n(Lcom/fyber/ads/videos/d;)V

    .line 771
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/fyber/utils/w;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->r(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 766
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->r(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/a/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/fyber/ads/videos/a/g;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_1

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/videos/m;->a:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V

    goto :goto_1
.end method
