.class public final Lcom/fyber/ads/videos/a/g;
.super Landroid/widget/FrameLayout;
.source "RewardedVideoPlayerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/fyber/ads/videos/a/a/a$a;
.implements Lcom/fyber/mediation/MediationUserActivityListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/ads/videos/a/g$a;,
        Lcom/fyber/ads/videos/a/g$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Lcom/fyber/ads/videos/a/a/a;

.field private D:Lcom/fyber/ads/videos/a/g$a;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Landroid/widget/FrameLayout;

.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/VideoView;

.field private d:Landroid/media/MediaPlayer;

.field private e:J

.field private f:D

.field private g:Lcom/fyber/c/c/b;

.field private h:Lcom/fyber/c/a/a;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/fyber/c/b/b;

.field private k:J

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private volatile o:Z

.field private volatile p:J

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/fyber/ads/videos/a/c;

.field private t:I

.field private u:Ljava/util/concurrent/ScheduledExecutorService;

.field private v:Lcom/fyber/ads/videos/a/b;

.field private final w:Lcom/fyber/ads/videos/a/g$b;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/fyber/ads/videos/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->l:Z

    .line 112
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->o:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/fyber/ads/videos/a/g;->t:I

    .line 128
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->x:Z

    .line 129
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->y:Z

    .line 130
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->z:Z

    .line 133
    iput v1, p0, Lcom/fyber/ads/videos/a/g;->A:I

    .line 143
    iput-boolean v2, p0, Lcom/fyber/ads/videos/a/g;->E:Z

    .line 144
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->F:Z

    .line 145
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->G:Z

    .line 157
    iput-object p1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    .line 159
    iput-object p2, p0, Lcom/fyber/ads/videos/a/g;->v:Lcom/fyber/ads/videos/a/b;

    .line 160
    iput-object p3, p0, Lcom/fyber/ads/videos/a/g;->b:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/fyber/ads/videos/a/g;->m:Ljava/lang/String;

    .line 162
    iput-object p5, p0, Lcom/fyber/ads/videos/a/g;->r:Ljava/lang/String;

    .line 164
    iput-boolean v2, p0, Lcom/fyber/ads/videos/a/g;->q:Z

    .line 165
    invoke-static {p6}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->q:Z

    .line 169
    :cond_0
    new-instance v0, Lcom/fyber/ads/videos/a/g$b;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/a/g$b;-><init>(Lcom/fyber/ads/videos/a/g;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->w:Lcom/fyber/ads/videos/a/g$b;

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/a/g;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Lcom/fyber/ads/videos/a/a;JLjava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 632
    sget-object v0, Lcom/fyber/ads/videos/a/i;->a:[I

    invoke-virtual {p1}, Lcom/fyber/ads/videos/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 645
    const-string v0, "%s(\'play\', {tpn:\'%s\', result:\'%s\', id:\'%s\'})"

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v2, v1, v6

    const-string v2, "local"

    aput-object v2, v1, v7

    aput-object p1, v1, v8

    .line 646
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 645
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 634
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s(\'play\', {tpn:\'%s\', result:\'%s\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v2, v6

    const-string v3, "local"

    aput-object v3, v2, v7

    aput-object p1, v2, v8

    iget-wide v4, p0, Lcom/fyber/ads/videos/a/g;->f:D

    .line 635
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 634
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 639
    :pswitch_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 640
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%s(\'play\', {tpn:\'%s\', result:\'%s\', currentTime:\'%.3f\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v5, v4, v6

    const-string v5, "local"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    .line 641
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v9

    iget-wide v0, p0, Lcom/fyber/ads/videos/a/g;->f:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v10

    const/4 v0, 0x5

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 640
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->w:Lcom/fyber/ads/videos/a/g$b;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/a/g$b;->sendEmptyMessage(I)Z

    .line 786
    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 793
    if-eqz p0, :cond_0

    .line 794
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 796
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/a/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->y:Z

    if-nez v0, :cond_0

    .line 577
    sget-object v0, Lcom/fyber/ads/videos/a/a;->e:Lcom/fyber/ads/videos/a/a;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    const-string v1, "RewardedVideoPlayerView"

    invoke-static {v1, p1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->v:Lcom/fyber/ads/videos/a/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/a/b;->a(Ljava/lang/String;)V

    .line 582
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->k()V

    .line 583
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->d()V

    .line 584
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->e()V

    .line 586
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    invoke-static {p4}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {v0, p4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 771
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 772
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 773
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 774
    invoke-virtual {v0, p3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 775
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 778
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/fyber/ads/videos/a/g;)V
    .locals 1

    .prologue
    .line 68
    .line 2657
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->removeView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method static synthetic c(Lcom/fyber/ads/videos/a/g;)V
    .locals 2

    .prologue
    .line 68
    .line 2709
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/c/c/b;->setVisibility(I)V

    .line 68
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 497
    :cond_0
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fyber/ads/videos/a/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheManager;->b(Landroid/content/Context;)V

    .line 498
    return-void
.end method

.method static synthetic d(Lcom/fyber/ads/videos/a/g;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->i()V

    return-void
.end method

.method static synthetic e(Lcom/fyber/ads/videos/a/g;)Lcom/fyber/c/b/b;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->j:Lcom/fyber/c/b/b;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->z:Z

    .line 591
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 592
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->f()V

    .line 597
    :goto_0
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    .line 598
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    .line 599
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    .line 600
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->j:Lcom/fyber/c/b/b;

    .line 601
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    .line 602
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    .line 603
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/a/c;->a()V

    .line 605
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->D:Lcom/fyber/ads/videos/a/g$a;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->D:Lcom/fyber/ads/videos/a/g$a;

    invoke-interface {v0}, Lcom/fyber/ads/videos/a/g$a;->e()V

    .line 610
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->D:Lcom/fyber/ads/videos/a/g$a;

    .line 613
    :cond_1
    iput-object v2, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    .line 614
    return-void

    .line 594
    :cond_2
    sget v0, Lcom/fyber/ads/videos/a/f;->i:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/fyber/ads/videos/a/g;)J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/fyber/ads/videos/a/g;->p:J

    return-wide v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/fyber/ads/videos/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 618
    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    invoke-virtual {v0}, Lcom/fyber/c/c/b;->b()V

    .line 625
    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/c/a/a;->setTag(Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->addView(Landroid/view/View;)V

    .line 664
    return-void
.end method

.method static synthetic g(Lcom/fyber/ads/videos/a/g;)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->x:Z

    return v0
.end method

.method private h()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 670
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 672
    const-string v2, "FYBVideoPlayerOptionCloseButtonDelay"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 674
    const-string v2, "RewardedVideoPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delay for close button - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    if-ltz v0, :cond_0

    .line 682
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 677
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    :goto_1
    const-string v2, "RewardedVideoPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load meta-data from Manifest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 682
    goto :goto_0

    .line 679
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic h(Lcom/fyber/ads/videos/a/g;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->g()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fyber/c/c/b;->setVisibility(I)V

    .line 718
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/fyber/ads/videos/a/g;)V
    .locals 4

    .prologue
    .line 68
    .line 3687
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3689
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3690
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3691
    new-instance v1, Lcom/fyber/ads/videos/a/h;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/a/h;-><init>(Lcom/fyber/ads/videos/a/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3705
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->q:Z

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->F:Z

    .line 728
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_EXIT_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->r:Ljava/lang/String;

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_CLOSE_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 729
    invoke-static {v2}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_RESUME_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 730
    invoke-static {v3}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    .line 728
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    const-string v0, "displayCloseAlertDialog without alert"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/fyber/ads/videos/a/g;)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->o:Z

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->w:Lcom/fyber/ads/videos/a/g$b;

    sget v1, Lcom/fyber/ads/videos/a/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/a/g$b;->removeMessages(I)V

    .line 782
    return-void
.end method

.method static synthetic k(Lcom/fyber/ads/videos/a/g;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->f()V

    return-void
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->F:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, -0x1000000

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 173
    .line 1192
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    .line 1193
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    const-string v1, "videoPlayer"

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1195
    new-instance v0, Lcom/fyber/c/a/a;

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fyber/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    .line 1196
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    invoke-virtual {v0}, Lcom/fyber/c/a/a;->a()I

    move-result v0

    .line 1197
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/fyber/c/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/c/a/a;->setTag(Ljava/lang/Object;)V

    .line 1202
    new-instance v0, Lcom/fyber/c/c/b;

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fyber/c/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    .line 1203
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1204
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    invoke-virtual {v1, v0}, Lcom/fyber/c/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1208
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1209
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1213
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    .line 1214
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1215
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1216
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1219
    invoke-virtual {p0, v7}, Lcom/fyber/ads/videos/a/g;->setBackgroundColor(I)V

    .line 1221
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->addView(Landroid/view/View;)V

    .line 1222
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->addView(Landroid/view/View;)V

    .line 1223
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->addView(Landroid/view/View;)V

    .line 1293
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    .line 1296
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1297
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1299
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 1300
    invoke-virtual {p0}, Lcom/fyber/ads/videos/a/g;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x50

    invoke-direct {v0, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1301
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_CLICKTHROUGH_HINT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    const v1, -0x4dc1c1c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1304
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1305
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1306
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    const-string v1, "clickThroughHint"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fyber/ads/videos/a/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fyber/cache/CacheManager;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 177
    new-instance v0, Lcom/fyber/ads/videos/a/a/a;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/a/a/a;-><init>(Lcom/fyber/ads/videos/a/a/a$a;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->C:Lcom/fyber/ads/videos/a/a/a;

    .line 179
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 182
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->w:Lcom/fyber/ads/videos/a/g$b;

    sget v1, Lcom/fyber/ads/videos/a/f;->g:I

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/fyber/ads/videos/a/g$b;->sendEmptyMessageDelayed(IJ)Z

    .line 2230
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2231
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2232
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2233
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2234
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    invoke-virtual {v0, p0}, Lcom/fyber/c/a/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2236
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/fyber/ads/videos/RewardedVideoActivity;

    if-eqz v0, :cond_1

    .line 2237
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    check-cast v0, Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/videos/RewardedVideoActivity;->setRewardedVideoListener(Lcom/fyber/mediation/MediationUserActivityListener;)V

    .line 185
    :cond_1
    return-void
.end method

.method public final a(Lcom/fyber/ads/videos/a/g$a;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/fyber/ads/videos/a/g;->D:Lcom/fyber/ads/videos/a/g$a;

    .line 864
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x15

    .line 739
    const-string v0, "RewardedVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBufferingStateChanged - state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    if-eqz p1, :cond_1

    .line 741
    sget v0, Lcom/fyber/ads/videos/a/f;->b:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    .line 743
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 744
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->E:Z

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    sget v0, Lcom/fyber/ads/videos/a/f;->a:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    .line 750
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 754
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->E:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    invoke-virtual {v0}, Lcom/fyber/c/c/b;->a()V

    .line 189
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 567
    const-string v0, "forceClose"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public final notifyOnBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 431
    iget-boolean v2, p0, Lcom/fyber/ads/videos/a/g;->z:Z

    if-nez v2, :cond_1

    .line 432
    iget-boolean v2, p0, Lcom/fyber/ads/videos/a/g;->l:Z

    if-nez v2, :cond_3

    .line 433
    iget-boolean v2, p0, Lcom/fyber/ads/videos/a/g;->x:Z

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/fyber/ads/videos/a/g;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->j()V

    :cond_0
    :goto_0
    move v0, v1

    .line 474
    :cond_1
    :goto_1
    return v0

    .line 442
    :cond_2
    const-string v1, "notifyOnBackPressed()"

    invoke-direct {p0, v1}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_3
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/a/c;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/a/c;->b()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 449
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/a/c;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 453
    :cond_4
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    if-eqz v2, :cond_5

    .line 455
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/fyber/ads/videos/a/c;->setVisibility(I)V

    .line 458
    :cond_5
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_6

    .line 460
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 463
    :cond_6
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/a/c;->c()V

    .line 464
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/a/c;->e()V

    .line 467
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    invoke-static {v2, v1}, Lcom/fyber/ads/videos/a/g;->a(Landroid/view/View;Z)V

    .line 469
    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->l:Z

    goto :goto_0
.end method

.method public final notifyOnHomePressed()V
    .locals 1

    .prologue
    .line 426
    const-string v0, "notifyOnHomePressed()"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 408
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 410
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->F:Z

    .line 414
    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->E:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const-string v0, "displayCloseAlertDialog(): Close Video"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->l:Z

    if-nez v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->j()V

    .line 401
    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 316
    const-string v0, "RewardedVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCompletion() - mediaPlayer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 319
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->e()V

    .line 320
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->d()V

    .line 323
    if-eqz p1, :cond_0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->y:Z

    .line 326
    sget-object v0, Lcom/fyber/ads/videos/a/a;->c:Lcom/fyber/ads/videos/a/a;

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->v:Lcom/fyber/ads/videos/a/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/a/b;->a(Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->y:Z

    .line 330
    const-string v0, "onCompletion - video playing more than total duration"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 340
    const-string v0, "RewardedVideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred, error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 344
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->k()V

    .line 345
    sget v0, Lcom/fyber/ads/videos/a/f;->f:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    .line 346
    iput-boolean v3, p0, Lcom/fyber/ads/videos/a/g;->G:Z

    .line 348
    return v3
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 243
    const-string v0, "RewardedVideoPlayerView"

    const-string v1, "onPrepared()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->k()V

    .line 250
    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->o:Z

    if-nez v0, :cond_1

    .line 252
    iput-object p1, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    .line 254
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 255
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->C:Lcom/fyber/ads/videos/a/a/a;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/a/a/a;->a()V

    .line 258
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->i()V

    .line 260
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/a/g;->e:J

    .line 261
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/a/g;->f:D

    .line 262
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->C:Lcom/fyber/ads/videos/a/a/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/fyber/ads/videos/a/a/a;->a(J)V

    .line 264
    new-instance v0, Lcom/fyber/c/b/b;

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fyber/c/b/b;-><init>(Landroid/content/Context;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->j:Lcom/fyber/c/b/b;

    .line 265
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/fyber/ads/videos/a/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 266
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->j:Lcom/fyber/c/b/b;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/fyber/c/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    sget-object v0, Lcom/fyber/ads/videos/a/a;->a:Lcom/fyber/ads/videos/a/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->e:J

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->v:Lcom/fyber/ads/videos/a/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/a/b;->a(Ljava/lang/String;)V

    .line 271
    iget-wide v0, p0, Lcom/fyber/ads/videos/a/g;->e:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    const-wide v2, 0x40cd4c0000000000L    # 15000.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/a/g;->k:J

    .line 274
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->j:Lcom/fyber/c/b/b;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->addView(Landroid/view/View;)V

    .line 277
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->i:Ljava/lang/Integer;

    .line 278
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->g()V

    .line 280
    iput-boolean v4, p0, Lcom/fyber/ads/videos/a/g;->x:Z

    .line 2482
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2484
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->u:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 285
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->addView(Landroid/view/View;)V

    .line 289
    :cond_1
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 353
    const-string v0, "RewardedVideoPlayerView"

    const-string v3, "onTouch()"

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->g:Lcom/fyber/c/c/b;

    .line 356
    invoke-virtual {v0}, Lcom/fyber/c/c/b;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 358
    iput-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->l:Z

    .line 361
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 363
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    invoke-virtual {v0, v2}, Lcom/fyber/ads/videos/a/c;->setVisibility(I)V

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    invoke-static {v0, v2}, Lcom/fyber/ads/videos/a/g;->a(Landroid/view/View;Z)V

    .line 382
    sget-object v0, Lcom/fyber/ads/videos/a/a;->d:Lcom/fyber/ads/videos/a/a;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/fyber/ads/videos/a/g;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->v:Lcom/fyber/ads/videos/a/b;

    invoke-interface {v2, v0}, Lcom/fyber/ads/videos/a/b;->a(Ljava/lang/String;)V

    move v0, v1

    .line 387
    :goto_1
    return v0

    .line 375
    :cond_1
    new-instance v0, Lcom/fyber/ads/videos/a/c;

    iget-object v3, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fyber/ads/videos/a/g;->m:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/fyber/ads/videos/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    .line 376
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fyber/ads/videos/a/g;->s:Lcom/fyber/ads/videos/a/c;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 387
    goto :goto_1
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 503
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 504
    iget v1, p0, Lcom/fyber/ads/videos/a/g;->B:I

    if-eq v1, v0, :cond_1

    .line 505
    iget v1, p0, Lcom/fyber/ads/videos/a/g;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fyber/ads/videos/a/g;->A:I

    .line 507
    iget v1, p0, Lcom/fyber/ads/videos/a/g;->A:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 508
    iput v6, p0, Lcom/fyber/ads/videos/a/g;->A:I

    .line 509
    iput v0, p0, Lcom/fyber/ads/videos/a/g;->B:I

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-boolean v0, p0, Lcom/fyber/ads/videos/a/g;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 521
    :cond_2
    iget-wide v0, p0, Lcom/fyber/ads/videos/a/g;->p:J

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->e:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/videos/a/g;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/a/g;->p:J

    .line 530
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/fyber/ads/videos/a/g;->p:J

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 531
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->H:Landroid/widget/FrameLayout;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 532
    sget v0, Lcom/fyber/ads/videos/a/f;->h:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    .line 538
    :cond_4
    iget v0, p0, Lcom/fyber/ads/videos/a/g;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/ads/videos/a/g;->t:I

    .line 539
    iget v0, p0, Lcom/fyber/ads/videos/a/g;->t:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 540
    iput v6, p0, Lcom/fyber/ads/videos/a/g;->t:I

    .line 543
    :cond_5
    iget v0, p0, Lcom/fyber/ads/videos/a/g;->t:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/fyber/ads/videos/a/g;->t:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->C:Lcom/fyber/ads/videos/a/a/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->p:J

    iget-boolean v1, p0, Lcom/fyber/ads/videos/a/g;->E:Z

    invoke-direct {p0}, Lcom/fyber/ads/videos/a/g;->l()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/fyber/ads/videos/a/a/a;->a(JZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    :cond_7
    sget v0, Lcom/fyber/ads/videos/a/f;->c:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    .line 551
    iget v0, p0, Lcom/fyber/ads/videos/a/g;->t:I

    if-nez v0, :cond_8

    .line 552
    sget-object v0, Lcom/fyber/ads/videos/a/a;->b:Lcom/fyber/ads/videos/a/a;

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->p:J

    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/a;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/fyber/ads/videos/a/g;->v:Lcom/fyber/ads/videos/a/b;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/a/b;->a(Ljava/lang/String;)V

    .line 556
    :cond_8
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/fyber/ads/videos/a/g;->p:J

    iget-wide v2, p0, Lcom/fyber/ads/videos/a/g;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 557
    sget v0, Lcom/fyber/ads/videos/a/f;->e:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    .line 560
    :cond_9
    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/a/g;->h:Lcom/fyber/c/a/a;

    invoke-virtual {v0}, Lcom/fyber/c/a/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/fyber/ads/videos/a/g;->p:J

    iget-object v2, p0, Lcom/fyber/ads/videos/a/g;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 561
    sget v0, Lcom/fyber/ads/videos/a/f;->d:I

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/a/g;->a(I)V

    goto/16 :goto_0
.end method
