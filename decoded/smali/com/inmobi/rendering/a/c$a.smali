.class final Lcom/inmobi/rendering/a/c$a;
.super Landroid/os/Handler;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/c;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/a/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    .line 388
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 389
    return-void
.end method

.method private a(Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 528
    iget-boolean v0, p1, Lcom/inmobi/rendering/a/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 529
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    invoke-virtual {p0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 531
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/a/c$a;->c(Lcom/inmobi/rendering/a/a;)V

    return-void
.end method

.method private b(Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 535
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 536
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 538
    return-void
.end method

.method static synthetic b(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/a/c$a;->d(Lcom/inmobi/rendering/a/a;)V

    return-void
.end method

.method private c(Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 541
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 542
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 543
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 544
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 545
    return-void
.end method

.method private d(Lcom/inmobi/rendering/a/a;)V
    .locals 6

    .prologue
    .line 548
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 549
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 550
    :goto_0
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 552
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 553
    iget-boolean v1, v0, Lcom/inmobi/rendering/a/a;->f:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    :goto_1
    iput v1, v2, Landroid/os/Message;->what:I

    .line 554
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, v0, Lcom/inmobi/rendering/a/a;->c:J

    sub-long v0, v4, v0

    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->b()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 556
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 560
    :goto_2
    return-void

    .line 549
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 524
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->e()I

    move-result v1

    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$b;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/rendering/a/b;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/rendering/a/c;->a(Ljava/util/List;)Ljava/util/List;

    .line 397
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 402
    iput v6, v0, Landroid/os/Message;->what:I

    .line 403
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 407
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 408
    iget-boolean v1, v0, Lcom/inmobi/rendering/a/a;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    :goto_1
    iput v1, v2, Landroid/os/Message;->what:I

    .line 409
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, v0, Lcom/inmobi/rendering/a/a;->c:J

    sub-long v0, v4, v0

    .line 411
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->b()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_3

    .line 412
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->b()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    sub-long v0, v4, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 408
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 414
    :cond_3
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 420
    :pswitch_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 421
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c;->c()V

    goto/16 :goto_0

    .line 426
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 427
    iget v1, v0, Lcom/inmobi/rendering/a/a;->d:I

    if-nez v1, :cond_5

    .line 428
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/a/c$a;->b(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 432
    :cond_5
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->a()I

    move-result v1

    iget v2, v0, Lcom/inmobi/rendering/a/a;->d:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 433
    if-nez v1, :cond_6

    .line 437
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pinging click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") over HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_2
    new-instance v1, Lcom/inmobi/rendering/a/c$c;

    new-instance v2, Lcom/inmobi/rendering/a/c$a$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$a$1;-><init>(Lcom/inmobi/rendering/a/c$a;)V

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/a/c$c;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/c$c;->a(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 439
    :cond_6
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry attempt #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for click ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") over HTTP"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 458
    :pswitch_2
    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 459
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 460
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c;->c()V

    goto/16 :goto_0

    .line 465
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 466
    iget v1, v0, Lcom/inmobi/rendering/a/a;->d:I

    if-nez v1, :cond_8

    .line 467
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/a/c$a;->b(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 471
    :cond_8
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/ads/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$b;->a()I

    move-result v1

    iget v2, v0, Lcom/inmobi/rendering/a/a;->d:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 472
    if-nez v1, :cond_9

    .line 476
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pinging click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in WebView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_3
    new-instance v1, Lcom/inmobi/rendering/a/c$b;

    new-instance v2, Lcom/inmobi/rendering/a/c$a$2;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$a$2;-><init>(Lcom/inmobi/rendering/a/c$a;)V

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/a/c$b;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 478
    :cond_9
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry attempt #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for click ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") using WebView"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 497
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 498
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 499
    const-string v2, "pingUrl"

    iget-object v0, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v0, "errorCode"

    const-string v2, "MaxRetryCountReached"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "PingDiscarded"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 504
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 505
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") completed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/b;->b(Lcom/inmobi/rendering/a/a;)V

    .line 507
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 509
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 510
    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Lcom/inmobi/rendering/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 511
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Done processing all clicks!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 514
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 515
    iput v6, v0, Landroid/os/Message;->what:I

    .line 516
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 519
    :cond_b
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
