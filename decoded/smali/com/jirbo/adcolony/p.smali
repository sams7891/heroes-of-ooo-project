.class Lcom/jirbo/adcolony/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/p$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x5

.field public static final b:I = 0xa

.field static c:Ljava/lang/String;

.field static volatile d:Lcom/jirbo/adcolony/p;

.field static volatile e:J


# instance fields
.field f:Ljava/lang/Runnable;

.field g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "MONITOR_MUTEX"

    sput-object v0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method static a()V
    .locals 4

    .prologue
    .line 30
    sget-object v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v1

    .line 32
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/jirbo/adcolony/p;->e:J

    .line 33
    sget-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "Creating ADC Monitor singleton."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/jirbo/adcolony/p;

    invoke-direct {v0}, Lcom/jirbo/adcolony/p;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 37
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    :cond_0
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 199
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 44
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(I)V

    .line 46
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC Monitor Started."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 47
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->b()V

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    :goto_0
    sget-object v3, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 56
    const/4 v3, 0x0

    sput-boolean v3, Lcom/jirbo/adcolony/a;->z:Z

    .line 57
    sget-boolean v3, Lcom/jirbo/adcolony/a;->z:Z

    if-eqz v3, :cond_8

    const-wide/16 v4, 0x32

    move-wide v6, v4

    .line 59
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 60
    sget-wide v4, Lcom/jirbo/adcolony/p;->e:J

    sub-long v4, v10, v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    long-to-int v3, v4

    .line 62
    iget-object v4, p0, Lcom/jirbo/adcolony/p;->f:Ljava/lang/Runnable;

    if-nez v4, :cond_0

    .line 64
    new-instance v4, Lcom/jirbo/adcolony/p$1;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/p$1;-><init>(Lcom/jirbo/adcolony/p;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/p;->f:Ljava/lang/Runnable;

    .line 74
    :cond_0
    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    :cond_1
    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    .line 79
    :cond_2
    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/jirbo/adcolony/p;->f:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 81
    if-eqz v2, :cond_11

    .line 83
    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    .line 163
    :cond_3
    sget-object v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v1

    .line 165
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-nez v2, :cond_4

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->c()V

    .line 170
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 173
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 174
    sget-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    if-eqz v0, :cond_5

    .line 176
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC.finishing, controller on_stop"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 177
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->d()V

    .line 178
    invoke-static {}, Lcom/jirbo/adcolony/z;->a()V

    .line 180
    :cond_5
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 181
    sget-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    if-eqz v0, :cond_7

    .line 183
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Releasing Activity reference"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 184
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_6

    .line 186
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 188
    :cond_6
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    .line 189
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 192
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exiting monitor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :goto_2
    return-void

    .line 57
    :cond_8
    if-eqz v2, :cond_9

    const/16 v3, 0x7d0

    :goto_3
    int-to-long v4, v3

    move-wide v6, v4

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0xfa

    goto :goto_3

    .line 84
    :cond_a
    const/4 v4, 0x5

    if-ge v3, v4, :cond_12

    .line 86
    const/4 v2, 0x0

    .line 87
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/d;->b()V

    .line 88
    const-string v3, "AdColony is active."

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    move v4, v2

    .line 103
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v12, 0xbb8

    cmp-long v2, v2, v12

    if-lez v2, :cond_15

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 106
    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-nez v0, :cond_13

    .line 108
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 109
    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    .line 119
    :goto_5
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ag;->a()V

    .line 121
    :cond_c
    invoke-virtual {p0, v6, v7}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    sub-long v6, v0, v8

    const-wide/16 v12, 0xbb8

    cmp-long v5, v6, v12

    if-gtz v5, :cond_10

    sub-long v6, v0, v8

    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_10

    .line 126
    sget-object v5, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v5, v5, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-wide v6, v5, Lcom/jirbo/adcolony/u;->i:D

    sub-long/2addr v0, v8

    long-to-double v0, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v8

    add-double/2addr v0, v6

    iput-wide v0, v5, Lcom/jirbo/adcolony/u;->i:D

    .line 129
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/jirbo/adcolony/p;->g:J

    sub-long v0, v10, v0

    const-wide/16 v6, 0x3e8

    cmp-long v0, v0, v6

    if-lez v0, :cond_10

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/p;->g:J

    .line 135
    :try_start_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->n:Lcom/jirbo/adcolony/n$ag;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/n$ad;

    .line 139
    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->a()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    sub-long/2addr v6, v8

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->p:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_f

    :cond_e
    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    sub-long/2addr v6, v8

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->o:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_d

    .line 141
    :cond_f
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_10

    .line 143
    sget-boolean v0, Lcom/jirbo/adcolony/a;->p:Z

    if-nez v0, :cond_10

    .line 145
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    sget-object v1, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/b;->a(Landroid/app/Activity;)V

    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->p:Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    move-wide v0, v2

    move v2, v4

    .line 161
    goto/16 :goto_0

    .line 93
    :cond_11
    const/4 v4, 0x5

    if-lt v3, v4, :cond_12

    .line 95
    const-string v2, "AdColony is idle."

    invoke-static {v2}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x1

    .line 97
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/d;->c()V

    :cond_12
    move v4, v2

    goto/16 :goto_4

    .line 113
    :cond_13
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-nez v0, :cond_14

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 114
    :cond_14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    goto/16 :goto_5

    .line 153
    :catch_0
    move-exception v0

    .line 155
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Issue refreshing zones, disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 156
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_2

    .line 166
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_15
    move-wide v2, v0

    goto/16 :goto_5
.end method
