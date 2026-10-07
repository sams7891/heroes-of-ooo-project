.class Lcom/jirbo/adcolony/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/jirbo/adcolony/c;

.field b:Lcom/jirbo/adcolony/b;

.field c:Lcom/jirbo/adcolony/o;

.field d:Lcom/jirbo/adcolony/t;

.field e:Lcom/jirbo/adcolony/u;

.field f:Lcom/jirbo/adcolony/ADCStorage;

.field g:Lcom/jirbo/adcolony/ag;

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/j;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/j;",
            ">;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:Z

.field l:Z

.field m:Ljava/util/concurrent/ExecutorService;

.field n:Ljava/lang/Runnable;

.field o:Lcom/jirbo/adcolony/aa$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/jirbo/adcolony/c;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/c;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    .line 22
    new-instance v0, Lcom/jirbo/adcolony/b;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/b;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    .line 23
    new-instance v0, Lcom/jirbo/adcolony/o;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/o;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    .line 24
    new-instance v0, Lcom/jirbo/adcolony/t;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/t;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    .line 25
    new-instance v0, Lcom/jirbo/adcolony/u;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/u;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    .line 26
    new-instance v0, Lcom/jirbo/adcolony/ADCStorage;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCStorage;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    .line 27
    new-instance v0, Lcom/jirbo/adcolony/ag;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ag;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->g:Lcom/jirbo/adcolony/ag;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/jirbo/adcolony/aa$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/aa$a;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->o:Lcom/jirbo/adcolony/aa$a;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->f(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 268
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 85
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z

    .line 86
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 88
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->a()V

    .line 88
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 98
    iput-boolean v2, p0, Lcom/jirbo/adcolony/d;->k:Z

    .line 99
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 100
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 101
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 94
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(DLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 7

    .prologue
    .line 177
    new-instance v0, Lcom/jirbo/adcolony/d$6;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/d$6;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/AdColonyAd;D)V

    .line 189
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 534
    invoke-static {p1}, Lcom/jirbo/adcolony/a;->a(I)V

    .line 535
    return-void
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jirbo/adcolony/c;->o:D

    .line 145
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Tracking ad event - start"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 148
    iget-object v0, p1, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v1, v0, Lcom/jirbo/adcolony/af;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/af;->d:I

    .line 150
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p1, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->m()V

    .line 154
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/d$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/jirbo/adcolony/d$5;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)V
    .locals 2

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V
    .locals 2

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 2

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyVideoAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/jirbo/adcolony/j;)V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->n:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/jirbo/adcolony/d$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/d$1;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->n:Ljava/lang/Runnable;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 63
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    monitor-exit v1

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/jirbo/adcolony/d;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 73
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/jirbo/adcolony/d$8;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/jirbo/adcolony/d$8;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 6

    .prologue
    .line 250
    new-instance v0, Lcom/jirbo/adcolony/d$9;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/d$9;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 257
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/d;->a(I)V

    .line 479
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "==== Configuring AdColony "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, v1, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " with app/zone ids: ===="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 480
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    invoke-virtual {v0, p2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 481
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 483
    sget-object v1, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "package name: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/aa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 488
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p2, v0, Lcom/jirbo/adcolony/c;->k:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p3, v0, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->o:Lcom/jirbo/adcolony/aa$a;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/aa$a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :goto_1
    monitor-exit p0

    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 495
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 198
    monitor-enter p0

    if-nez p2, :cond_1

    .line 235
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_0
    invoke-virtual {p0, v2, v3, p2}, Lcom/jirbo/adcolony/d;->a(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 201
    if-nez p1, :cond_0

    .line 203
    invoke-virtual {p2}, Lcom/jirbo/adcolony/AdColonyAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->m()V

    .line 206
    iget-object v0, p2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget v2, v0, Lcom/jirbo/adcolony/n$ad;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jirbo/adcolony/n$ad;->s:I

    .line 207
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 209
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardAmount()I

    move-result v4

    .line 213
    iget-object v2, p2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ad;->b()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 215
    :cond_2
    if-eqz v1, :cond_0

    .line 217
    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->n:Lcom/jirbo/adcolony/n$af;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$af;->e:Z

    if-eqz v0, :cond_3

    .line 219
    sget-boolean v0, Lcom/jirbo/adcolony/a;->o:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    .line 222
    :cond_3
    new-instance v0, Lcom/jirbo/adcolony/d$7;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/d$7;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/a;->X:Lcom/jirbo/adcolony/a$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jirbo/adcolony/a$b;->a(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 330
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 331
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v1

    .line 333
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/n$ad;->b(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 337
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 281
    :goto_0
    monitor-exit p0

    return v0

    .line 278
    :catch_0
    move-exception v0

    .line 280
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    .line 109
    new-instance v0, Lcom/jirbo/adcolony/d$2;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/d$2;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;)V

    .line 116
    return-void
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    .locals 3

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->m:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    const/4 v1, 0x3

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    const/4 v0, 0x0

    .line 470
    :goto_0
    monitor-exit p0

    return v0

    .line 457
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 458
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_1

    .line 460
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Launching AdColonyOverlay"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 461
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 470
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 466
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 467
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 400
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 402
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    .line 404
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/d;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 415
    :goto_0
    monitor-exit p0

    return v0

    .line 406
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Showing ad for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 408
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    .line 414
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyV4VCAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 433
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 434
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    .line 436
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/d;->f(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 446
    :goto_0
    monitor-exit p0

    return v0

    .line 438
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Showing v4vc for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 440
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    .line 441
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v1

    .line 445
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyVideoAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 377
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 379
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyVideoAd;->h:Ljava/lang/String;

    .line 381
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/d;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 392
    :goto_0
    monitor-exit p0

    return v0

    .line 383
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Showing ad for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 385
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 387
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    .line 391
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 350
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 352
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v1

    .line 354
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/n$ad;->c(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 358
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    .line 122
    new-instance v0, Lcom/jirbo/adcolony/d$3;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/d$3;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;)V

    .line 129
    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    :goto_0
    monitor-exit p0

    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 293
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    :goto_0
    monitor-exit p0

    return-object v0

    .line 305
    :catch_0
    move-exception v0

    .line 307
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/jirbo/adcolony/d$4;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/d$4;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;)V

    .line 140
    return-void
.end method

.method declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 324
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->d()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/d;->b(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;
    .locals 1

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()V
    .locals 4

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :goto_0
    monitor-exit p0

    return-void

    .line 505
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/d;->a()V

    .line 507
    sget-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    if-nez v0, :cond_3

    .line 509
    invoke-static {}, Lcom/jirbo/adcolony/g;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->o:Lcom/jirbo/adcolony/aa$a;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/aa$a;->b()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/c;->a()V

    .line 512
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    .line 514
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->z:Z

    .line 517
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->f()V

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/o;->e()V

    .line 522
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/u;->b()V

    .line 523
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/t;->d()V

    .line 524
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->g:Lcom/jirbo/adcolony/ag;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ag;->d()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 528
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
