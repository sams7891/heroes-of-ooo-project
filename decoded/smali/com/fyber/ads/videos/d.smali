.class public final Lcom/fyber/ads/videos/d;
.super Ljava/lang/Object;
.source "RewardedVideoClient.java"

# interfaces
.implements Lcom/fyber/ads/videos/a/g$a;


# static fields
.field public static final a:Lcom/fyber/ads/videos/d;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Lcom/fyber/ads/videos/RewardedVideoActivity;

.field private e:Landroid/content/Context;

.field private f:Landroid/webkit/WebView;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lcom/fyber/ads/videos/v;

.field private l:Lcom/fyber/requesters/VirtualCurrencyRequester;

.field private m:Lcom/fyber/ads/videos/u;

.field private n:Landroid/webkit/WebViewClient;

.field private o:Landroid/webkit/WebChromeClient;

.field private p:Lcom/fyber/ads/videos/a/g;

.field private q:Lcom/fyber/ads/videos/mediation/d;

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/fyber/ads/videos/d;

    invoke-direct {v0}, Lcom/fyber/ads/videos/d;-><init>()V

    sput-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/fyber/ads/videos/d;->g:Z

    .line 130
    iput-boolean v2, p0, Lcom/fyber/ads/videos/d;->j:Z

    .line 132
    sget-object v0, Lcom/fyber/ads/videos/v;->a:Lcom/fyber/ads/videos/v;

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    .line 144
    iput-boolean v1, p0, Lcom/fyber/ads/videos/d;->r:Z

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RVTimer"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/fyber/ads/videos/e;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/e;-><init>(Lcom/fyber/ads/videos/d;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/videos/g;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/g;-><init>(Lcom/fyber/ads/videos/d;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->c:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/fyber/ads/videos/mediation/d;

    invoke-direct {v0}, Lcom/fyber/ads/videos/mediation/d;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->q:Lcom/fyber/ads/videos/mediation/d;

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/a/g;)Lcom/fyber/ads/videos/a/g;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->p:Lcom/fyber/ads/videos/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;Lcom/fyber/a/a;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 9612
    const-string v0, "videos"

    invoke-static {v0}, Lcom/fyber/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9251
    invoke-static {v0, p1}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 9252
    invoke-virtual {v0}, Lcom/fyber/utils/t;->d()Lcom/fyber/utils/t;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/d;->h:Ljava/lang/String;

    .line 9253
    invoke-virtual {v0, v1}, Lcom/fyber/utils/t;->b(Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/d;->i:Ljava/util/Map;

    .line 9254
    invoke-virtual {v0, v1}, Lcom/fyber/utils/t;->a(Ljava/util/Map;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v1, "rewarded"

    const-string v2, "1"

    .line 9255
    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v1, "ad_format"

    const-string v2, "video"

    .line 9256
    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 9257
    invoke-virtual {v0}, Lcom/fyber/utils/t;->a()Lcom/fyber/utils/t;

    move-result-object v0

    .line 9259
    invoke-direct {p0}, Lcom/fyber/ads/videos/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9260
    invoke-virtual {v0}, Lcom/fyber/utils/t;->e()Lcom/fyber/utils/t;

    .line 9263
    :cond_0
    invoke-virtual {v0}, Lcom/fyber/utils/t;->f()Ljava/lang/String;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 70
    .line 8384
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8385
    if-lez p1, :cond_1

    move v0, v1

    .line 8386
    :goto_0
    if-eqz v0, :cond_2

    .line 8387
    sget-object v1, Lcom/fyber/ads/videos/v;->c:Lcom/fyber/ads/videos/v;

    invoke-direct {p0, v1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    .line 8391
    :goto_1
    iget-object v1, p0, Lcom/fyber/ads/videos/d;->m:Lcom/fyber/ads/videos/u;

    if-eqz v1, :cond_0

    .line 8392
    iget-object v1, p0, Lcom/fyber/ads/videos/d;->m:Lcom/fyber/ads/videos/u;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/u;->didReceiveOffers(Z)V

    .line 70
    :cond_0
    return-void

    .line 8385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 8421
    :cond_2
    invoke-direct {p0, v1}, Lcom/fyber/ads/videos/d;->b(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/u$a;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/u$a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/fyber/ads/videos/u$a;)V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->m:Lcom/fyber/ads/videos/u;

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardedVideoClientStatus -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->m:Lcom/fyber/ads/videos/u;

    invoke-interface {v0, p1}, Lcom/fyber/ads/videos/u;->didChangeStatus(Lcom/fyber/ads/videos/u$a;)V

    .line 527
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/v;)Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/fyber/ads/videos/d;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/fyber/ads/videos/d;->g:Z

    return p1
.end method

.method private a(Lcom/fyber/ads/videos/v;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 616
    iget-object v1, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    if-eq v1, p1, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/fyber/ads/videos/v;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/v;->ordinal()I

    move-result v2

    sub-int/2addr v1, v2

    .line 620
    if-gt v1, v0, :cond_0

    .line 621
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    .line 622
    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RewardedVideoClient mStatus -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/ads/videos/v;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 397
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    sget-object v0, Lcom/fyber/ads/videos/v;->d:Lcom/fyber/ads/videos/v;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/fyber/ads/videos/u$a;->a:Lcom/fyber/ads/videos/u$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/u$a;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v0, "CLOSE_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3638
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    if-eqz v0, :cond_2

    .line 3640
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-static {v0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/d;->h:Ljava/lang/String;

    .line 3641
    invoke-virtual {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->withPlacementId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 3642
    iput-boolean v3, p0, Lcom/fyber/ads/videos/d;->s:Z

    .line 3644
    iget-object v1, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    new-instance v2, Lcom/fyber/ads/videos/l;

    invoke-direct {v2, p0, v0}, Lcom/fyber/ads/videos/l;-><init>(Lcom/fyber/ads/videos/d;Lcom/fyber/requesters/VirtualCurrencyRequester;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->b(Z)V

    .line 406
    sget-object v0, Lcom/fyber/ads/videos/u$a;->b:Lcom/fyber/ads/videos/u$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/u$a;)V

    .line 4630
    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->j:Z

    if-eqz v0, :cond_0

    .line 4631
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REWARD_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 4632
    invoke-static {v1}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 4631
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 4633
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 408
    :cond_3
    const-string v0, "CLOSE_ABORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5421
    invoke-direct {p0, v3}, Lcom/fyber/ads/videos/d;->b(Z)V

    .line 412
    sget-object v0, Lcom/fyber/ads/videos/u$a;->c:Lcom/fyber/ads/videos/u$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/u$a;)V

    goto :goto_0

    .line 413
    :cond_4
    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_5
    const-string v0, "USER_ENGAGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/fyber/ads/videos/v;->e:Lcom/fyber/ads/videos/v;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    if-eqz p1, :cond_0

    .line 427
    iput-object v1, p0, Lcom/fyber/ads/videos/d;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 430
    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->c(Ljava/lang/String;)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->p:Lcom/fyber/ads/videos/a/g;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->p:Lcom/fyber/ads/videos/a/g;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/a/g;->c()V

    .line 439
    :cond_2
    iput-object v1, p0, Lcom/fyber/ads/videos/d;->i:Ljava/util/Map;

    .line 440
    iput-object v1, p0, Lcom/fyber/ads/videos/d;->h:Ljava/lang/String;

    .line 441
    sget-object v0, Lcom/fyber/ads/videos/v;->a:Lcom/fyber/ads/videos/v;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    .line 442
    return-void
.end method

.method static synthetic c(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->n:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic c(Lcom/fyber/ads/videos/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 445
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 447
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 448
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 449
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/d;->g:Z

    .line 591
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 593
    invoke-static {v2}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fyber/ads/videos/k;

    invoke-direct {v3, p0}, Lcom/fyber/ads/videos/k;-><init>(Lcom/fyber/ads/videos/d;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 603
    :try_start_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_0
    :goto_1
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/videos/d;->g:Z

    .line 606
    const-string v0, "RewardedVideoClient"

    const-string v1, "Unable to show the dialog window"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/fyber/ads/videos/d;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    return-object v0
.end method

.method static synthetic f(Lcom/fyber/ads/videos/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/fyber/ads/videos/d;)V
    .locals 3

    .prologue
    .line 70
    .line 8861
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->p:Lcom/fyber/ads/videos/a/g;

    if-nez v0, :cond_0

    .line 8863
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    const/4 v2, 0x0

    .line 8864
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8867
    :cond_0
    :goto_0
    return-void

    .line 8865
    :catch_0
    move-exception v0

    .line 8866
    const-string v1, "RewardedVideoClient"

    const-string v2, "onPause error"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/fyber/ads/videos/d;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->i:Ljava/util/Map;

    return-object v0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    iget-object v2, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 271
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 276
    const-string v3, "FYBEnableSSLRewardedVideo"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 278
    if-nez v2, :cond_0

    .line 279
    const-string v3, "RewardedVideoClient"

    const-string v4, "Manifest metadata - disabling SSL"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    if-nez v2, :cond_1

    .line 287
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 281
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    :goto_1
    const-string v2, "RewardedVideoClient"

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

    :cond_2
    move v0, v1

    .line 287
    goto :goto_0

    .line 283
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic i(Lcom/fyber/ads/videos/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/fyber/ads/videos/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 70
    .line 9809
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->o:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 9810
    new-instance v0, Lcom/fyber/ads/videos/q;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/q;-><init>(Lcom/fyber/ads/videos/d;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->o:Landroid/webkit/WebChromeClient;

    .line 9849
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->o:Landroid/webkit/WebChromeClient;

    .line 70
    return-object v0
.end method

.method static synthetic l(Lcom/fyber/ads/videos/d;)Landroid/webkit/WebViewClient;
    .locals 2

    .prologue
    .line 70
    .line 10664
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->n:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 10666
    new-instance v0, Lcom/fyber/ads/videos/m;

    iget-object v1, p0, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {v0, p0, v1}, Lcom/fyber/ads/videos/m;-><init>(Lcom/fyber/ads/videos/d;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->n:Landroid/webkit/WebViewClient;

    .line 10804
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->n:Landroid/webkit/WebViewClient;

    .line 70
    return-object v0
.end method

.method static synthetic m(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/mediation/d;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->q:Lcom/fyber/ads/videos/mediation/d;

    return-object v0
.end method

.method static synthetic n(Lcom/fyber/ads/videos/d;)V
    .locals 1

    .prologue
    .line 70
    .line 11421
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->b(Z)V

    .line 70
    return-void
.end method

.method static synthetic o(Lcom/fyber/ads/videos/d;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->s:Z

    return v0
.end method

.method static synthetic p(Lcom/fyber/ads/videos/d;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    return-object v0
.end method

.method static synthetic q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    return-object v0
.end method

.method static synthetic r(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/a/g;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->p:Lcom/fyber/ads/videos/a/g;

    return-object v0
.end method

.method static synthetic s(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/v;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    return-object v0
.end method

.method static synthetic t(Lcom/fyber/ads/videos/d;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->g:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    sget-object v1, Lcom/fyber/ads/videos/v;->e:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    sget-object v1, Lcom/fyber/ads/videos/v;->d:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    sget-object v1, Lcom/fyber/ads/videos/v;->c:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    sget-object v1, Lcom/fyber/ads/videos/v;->e:Lcom/fyber/ads/videos/v;

    if-ne v0, v1, :cond_2

    .line 347
    const-string v0, "CLOSE_FINISHED"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->b(Ljava/lang/String;)V

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    const-string v0, "CLOSE_ABORTED"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->q:Lcom/fyber/ads/videos/mediation/d;

    iget-object v1, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/ads/videos/mediation/d;->a(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V

    .line 531
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/fyber/ads/videos/d;->j:Z

    .line 381
    return-void
.end method

.method public final a(Lcom/fyber/a/a;Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    .line 1359
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/v;->c()Z

    move-result v0

    .line 214
    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1535
    iput-object p2, p0, Lcom/fyber/ads/videos/d;->e:Landroid/content/Context;

    .line 1536
    iput-boolean v1, p0, Lcom/fyber/ads/videos/d;->s:Z

    .line 1552
    new-instance v0, Lcom/fyber/ads/videos/j;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/j;-><init>(Lcom/fyber/ads/videos/d;)V

    .line 1542
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1543
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    .line 219
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/fyber/ads/videos/d;->r:Z

    .line 2233
    new-instance v0, Lcom/fyber/ads/videos/h;

    invoke-direct {v0, p0, p1}, Lcom/fyber/ads/videos/h;-><init>(Lcom/fyber/ads/videos/d;Lcom/fyber/a/a;)V

    .line 2247
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 223
    const/4 v0, 0x1

    .line 228
    :goto_1
    return v0

    .line 1546
    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1547
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->f:Landroid/webkit/WebView;

    goto :goto_0

    .line 225
    :cond_2
    const-string v0, "RewardedVideoClient"

    const-string v2, "RewardedVideoClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 228
    goto :goto_1
.end method

.method public final a(Lcom/fyber/ads/videos/RewardedVideoActivity;Z)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 300
    if-eqz p1, :cond_3

    .line 2367
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/v;->a()Z

    move-result v0

    .line 301
    if-eqz v0, :cond_2

    .line 2880
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->b()Lcom/fyber/cache/internal/a;

    move-result-object v3

    .line 2881
    const-string v0, ""

    .line 2882
    if-eqz v3, :cond_0

    .line 2883
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, ", cache_config_id:\'%s\'"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/fyber/cache/internal/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2885
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "javascript:Sponsorpay.MBE.SDKInterface.do_start({cached_ad_ids:%s, downloaded_videos_count:%d%s})"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    invoke-static {}, Lcom/fyber/cache/internal/e;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2886
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/internal/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v0, v5, v2

    .line 2885
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v2, "RewardedVideoClient"

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->c(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/e;->c()V

    .line 309
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    .line 310
    if-nez p2, :cond_1

    .line 3328
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/videos/i;

    invoke-direct {v0, p0, p1}, Lcom/fyber/ads/videos/i;-><init>(Lcom/fyber/ads/videos/d;Lcom/fyber/ads/videos/RewardedVideoActivity;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/c;)V

    .line 3454
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 324
    :goto_0
    return v0

    .line 317
    :cond_2
    const-string v0, "RewardedVideoClient"

    const-string v1, "RewardedVideoClient is not ready to show offers. Call requestOffers() and wait until your listener is called with the confirmation that offers have been received."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v2

    .line 324
    goto :goto_0

    .line 322
    :cond_3
    const-string v0, "RewardedVideoClient"

    const-string v1, "The provided activity is null, RewardedVideoClient cannot start the engagement."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/fyber/ads/videos/u;)Z
    .locals 1

    .prologue
    .line 518
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->m:Lcom/fyber/ads/videos/u;

    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/fyber/requesters/VirtualCurrencyRequester;)Z
    .locals 2

    .prologue
    .line 476
    .line 7371
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/v;->b()Z

    move-result v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    .line 478
    sget-object v0, Lcom/fyber/ads/videos/v;->a:Lcom/fyber/ads/videos/v;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    .line 479
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    .line 481
    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change the currency ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 464
    .line 6371
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/v;->b()Z

    move-result v0

    .line 464
    if-eqz v0, :cond_0

    .line 465
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->h:Ljava/lang/String;

    .line 466
    sget-object v0, Lcom/fyber/ads/videos/v;->a:Lcom/fyber/ads/videos/v;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    .line 467
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    .line 469
    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change the placement ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 497
    .line 8371
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/v;->b()Z

    move-result v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    iput-object p1, p0, Lcom/fyber/ads/videos/d;->i:Ljava/util/Map;

    .line 500
    sget-object v0, Lcom/fyber/ads/videos/v;->a:Lcom/fyber/ads/videos/v;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/v;)Z

    .line 501
    const/4 v0, 0x1

    .line 505
    :goto_0
    return v0

    .line 503
    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/v;->c()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/v;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 855
    const/16 v1, 0x20a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 856
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 857
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/d;->p:Lcom/fyber/ads/videos/a/g;

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/d;->r:Z

    .line 877
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/fyber/ads/videos/d;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    sget-object v1, Lcom/fyber/ads/videos/v;->a:Lcom/fyber/ads/videos/v;

    if-ne v0, v1, :cond_0

    .line 896
    sget-object v0, Lcom/fyber/ads/videos/u$a;->c:Lcom/fyber/ads/videos/u$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/u$a;)V

    .line 898
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->k:Lcom/fyber/ads/videos/v;

    sget-object v1, Lcom/fyber/ads/videos/v;->d:Lcom/fyber/ads/videos/v;

    if-ne v0, v1, :cond_0

    .line 903
    const-string v0, "RewardedVideoClient"

    const-string v1, "Connection has been lost"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/fyber/ads/videos/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/ads/videos/f;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/f;-><init>(Lcom/fyber/ads/videos/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 911
    :cond_0
    return-void
.end method
