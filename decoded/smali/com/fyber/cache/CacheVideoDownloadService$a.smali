.class final Lcom/fyber/cache/CacheVideoDownloadService$a;
.super Landroid/os/Handler;
.source "CacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/cache/CacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/cache/CacheVideoDownloadService;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fyber/cache/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/fyber/cache/CacheVideoDownloadService;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 433
    iput-object p1, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    .line 434
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 430
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->c:I

    .line 435
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 542
    const-string v0, "CacheVideoDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing videos to cache, entry num "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    iget v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->c:I

    .line 546
    return-void
.end method

.method private a()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->h(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/internal/a$a;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_6

    .line 574
    const-string v1, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Queuing video for network "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/cache/internal/a$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Lcom/fyber/cache/CacheManager;->b()Lcom/fyber/cache/internal/a;

    move-result-object v3

    .line 577
    invoke-virtual {v3}, Lcom/fyber/cache/internal/a;->c()I

    move-result v5

    .line 578
    invoke-virtual {v1}, Lcom/fyber/cache/CacheManager;->c()Lcom/fyber/cache/internal/f;

    move-result-object v6

    .line 579
    invoke-virtual {v3, v0}, Lcom/fyber/cache/internal/a;->a(Lcom/fyber/cache/internal/a$a;)Lcom/fyber/cache/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/d;->a()I

    move-result v7

    move v1, v2

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    if-ge v1, v7, :cond_6

    .line 581
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/h;

    .line 582
    if-eqz v0, :cond_4

    .line 584
    const-string v3, "CacheVideoDownloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Queuing video entry for ad_id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/cache/internal/h;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and URL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/fyber/cache/internal/f;->a(Ljava/lang/String;)Lcom/fyber/cache/internal/c;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    .line 587
    :goto_1
    invoke-virtual {v6, v0}, Lcom/fyber/cache/internal/f;->a(Lcom/fyber/cache/internal/h;)Lcom/fyber/cache/internal/c;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->c()I

    move-result v8

    .line 591
    if-eqz v8, :cond_0

    if-ne v8, v4, :cond_3

    .line 592
    :cond_0
    if-eqz v3, :cond_1

    .line 595
    invoke-virtual {v6}, Lcom/fyber/cache/internal/f;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sub-int/2addr v2, v5

    .line 597
    invoke-virtual {v6, v2}, Lcom/fyber/cache/internal/f;->b(I)V

    .line 600
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/fyber/cache/internal/c;->a(I)V

    .line 601
    iget-object v2, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v2}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$c;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, v0}, Lcom/fyber/cache/CacheVideoDownloadService$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 603
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 604
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 619
    :goto_2
    return v4

    :cond_2
    move v3, v2

    .line 585
    goto :goto_1

    .line 606
    :cond_3
    const/4 v0, 0x4

    if-ne v8, v0, :cond_5

    .line 607
    const-string v0, "CacheVideoDownloadService"

    const-string v3, "The file is marked as NOT_DOWNLOADABLE. Removing it from the current download list."

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$a;->a(I)V

    .line 580
    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 610
    :cond_5
    const-string v0, "CacheVideoDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "This cache entry will not be queued for download. Current state: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 615
    :cond_6
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "No videos to be queued for download at the moment"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService$a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 617
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->f(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$b;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    :cond_7
    move v4, v2

    .line 619
    goto :goto_2
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->c:I

    iget-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 629
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Checking videos already available locally..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->c()Lcom/fyber/cache/internal/f;

    move-result-object v2

    .line 631
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/h;

    .line 633
    if-eqz v0, :cond_0

    .line 634
    const-string v3, "CacheVideoDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Video entry for ad_id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/cache/internal/h;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fyber/cache/internal/f;->a(Ljava/lang/String;)Lcom/fyber/cache/internal/c;

    move-result-object v3

    .line 636
    if-eqz v3, :cond_0

    .line 637
    const-string v4, "CacheVideoDownloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "A cache entry already exists for url - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v3, v0}, Lcom/fyber/cache/internal/c;->a(Lcom/fyber/cache/internal/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    const-string v0, "CacheVideoDownloadService"

    const-string v4, "Video entry successfully added to cache entry"

    invoke-static {v0, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_1
    invoke-virtual {v3}, Lcom/fyber/cache/internal/c;->e()V

    .line 648
    invoke-virtual {v2}, Lcom/fyber/cache/internal/f;->b()V

    .line 650
    invoke-virtual {v3}, Lcom/fyber/cache/internal/c;->c()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 651
    const-string v0, "CacheVideoDownloadService"

    const-string v4, "Cache entry is already fully downloaded"

    invoke-static {v0, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v0, "CacheVideoDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from the new downloads list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 655
    iget v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->c:I

    .line 631
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 643
    :cond_1
    const-string v0, "CacheVideoDownloadService"

    const-string v4, "The video entry was already part of this cache entry"

    invoke-static {v0, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 660
    :cond_2
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0xc8

    const/4 v2, 0x0

    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 441
    :sswitch_0
    const/16 v3, 0xe10

    .line 442
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1549
    iget-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    sget v4, Lcom/fyber/cache/CacheVideoDownloadService$d;->a:I

    invoke-static {v1, v4}, Lcom/fyber/cache/CacheVideoDownloadService;->a(Lcom/fyber/cache/CacheVideoDownloadService;I)I

    .line 1551
    iput v2, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->c:I

    .line 1552
    iget-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 444
    if-eqz v0, :cond_2

    .line 445
    const-string v1, "CacheVideoDownloadService"

    const-string v4, "Cache config received, parsing..."

    invoke-static {v1, v4}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/cache/internal/g;->a(Ljava/lang/String;)Lcom/fyber/cache/internal/g;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/fyber/cache/internal/g;->a()Lcom/fyber/cache/internal/b;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_2

    .line 449
    const-string v4, "CacheVideoDownloadService"

    const-string v5, "Creating cache configuration object"

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Lcom/fyber/cache/internal/b;->a()Lcom/fyber/cache/internal/a;

    move-result-object v4

    .line 452
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/fyber/cache/CacheManager;->a(Lcom/fyber/cache/internal/a;)V

    .line 454
    invoke-virtual {v0}, Lcom/fyber/cache/internal/g;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 456
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1556
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->b()Lcom/fyber/cache/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/a;->c()I

    move-result v6

    .line 1558
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/h;

    .line 1559
    iget-object v8, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1560
    add-int/lit8 v0, v1, 0x1

    .line 1562
    if-ne v0, v6, :cond_3

    .line 1563
    const-string v0, "CacheVideoDownloadService"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "There are %d videos to download and the maximum cache slots size is %d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    invoke-static {v1, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v0, "CacheVideoDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trimming the list of new videos to download to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService$a;->c()V

    .line 461
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->c()Lcom/fyber/cache/internal/f;

    move-result-object v0

    invoke-virtual {v4}, Lcom/fyber/cache/internal/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fyber/cache/internal/f;->a(I)V

    .line 464
    invoke-virtual {p0, v9}, Lcom/fyber/cache/CacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    .line 469
    :cond_2
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->b()Lcom/fyber/cache/internal/a;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_9

    .line 471
    invoke-virtual {v0}, Lcom/fyber/cache/internal/a;->b()I

    move-result v0

    .line 472
    const-string v1, "CacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cache configuration exists, refresh interval is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_2
    iget-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v1, v0}, Lcom/fyber/cache/CacheVideoDownloadService;->b(Lcom/fyber/cache/CacheVideoDownloadService;I)V

    goto/16 :goto_0

    :cond_3
    move v1, v0

    .line 1567
    goto/16 :goto_1

    .line 483
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2513
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fyber/cache/CacheManager;->c()Lcom/fyber/cache/internal/f;

    move-result-object v4

    .line 2514
    invoke-virtual {v4, v0}, Lcom/fyber/cache/internal/f;->a(Ljava/lang/String;)Lcom/fyber/cache/internal/c;

    move-result-object v5

    .line 2517
    if-eqz v5, :cond_7

    .line 2518
    const-string v0, "CacheVideoDownloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating entry "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    invoke-virtual {v5, v3}, Lcom/fyber/cache/internal/c;->a(I)V

    .line 2522
    invoke-virtual {v4}, Lcom/fyber/cache/internal/f;->b()V

    .line 2524
    if-ne v3, v10, :cond_5

    .line 2525
    invoke-direct {p0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$a;->a(I)V

    .line 2526
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Reason - File fully downloaded"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0, v9}, Lcom/fyber/cache/CacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2527
    :cond_5
    const/4 v0, 0x4

    if-ne v3, v0, :cond_6

    .line 2528
    invoke-direct {p0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$a;->a(I)V

    .line 2529
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Reason - File not downloadable (file not found or no space left)"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2530
    :cond_6
    invoke-virtual {v5}, Lcom/fyber/cache/internal/c;->d()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    .line 2531
    invoke-direct {p0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$a;->a(I)V

    .line 2532
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Reason - Maximum retry count reached"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2535
    :cond_7
    const-string v3, "CacheVideoDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "There was no cache entry for the url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    invoke-direct {p0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$a;->a(I)V

    goto :goto_3

    .line 492
    :sswitch_2
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->e(Lcom/fyber/cache/CacheVideoDownloadService;)I

    move-result v0

    sget v1, Lcom/fyber/cache/CacheVideoDownloadService$d;->a:I

    if-ne v0, v1, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService$a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 494
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "No more videos to download \\m/"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->f(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$b;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 496
    :cond_8
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->g(Lcom/fyber/cache/CacheVideoDownloadService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService$a;->a()Z

    goto/16 :goto_0

    .line 502
    :sswitch_3
    invoke-virtual {p0, v9}, Lcom/fyber/cache/CacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 505
    :sswitch_4
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService$a;->a:Lcom/fyber/cache/CacheVideoDownloadService;

    invoke-static {v0}, Lcom/fyber/cache/CacheVideoDownloadService;->f(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$b;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_2

    .line 439
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x44c -> :sswitch_0
        0x488 -> :sswitch_1
        0x514 -> :sswitch_4
        0x51e -> :sswitch_3
    .end sparse-switch
.end method
