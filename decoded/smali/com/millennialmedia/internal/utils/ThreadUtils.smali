.class public Lcom/millennialmedia/internal/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static uiHandler:Landroid/os/Handler;

.field private static workerExecutor:Ljava/util/concurrent/ExecutorService;

.field private static workerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/millennialmedia/internal/utils/ThreadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->workerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 22
    sput-object p0, Lcom/millennialmedia/internal/utils/ThreadUtils;->workerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static initialize()V
    .locals 6

    .prologue
    .line 39
    sget-object v3, Lcom/millennialmedia/internal/utils/ThreadUtils;->uiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 40
    sget-object v3, Lcom/millennialmedia/internal/utils/ThreadUtils;->TAG:Ljava/lang/String;

    const-string v4, "ThreadUtils already initialized"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v1, "initializeLatch":Ljava/util/concurrent/CountDownLatch;
    .local v2, "initialized":Z
    :cond_0
    return-void

    .line 45
    .end local v1    # "initializeLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "initialized":Z
    :cond_1
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/millennialmedia/internal/utils/ThreadUtils;->uiHandler:Landroid/os/Handler;

    .line 47
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 49
    .restart local v1    # "initializeLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/millennialmedia/internal/utils/ThreadUtils$1;

    invoke-direct {v3, v1}, Lcom/millennialmedia/internal/utils/ThreadUtils$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 62
    invoke-virtual {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils$1;->start()V

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lcom/millennialmedia/internal/utils/ThreadUtils;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 66
    const/4 v2, 0x0

    .line 68
    .restart local v2    # "initialized":Z
    const-wide/16 v4, 0x1388

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 73
    :goto_0
    if-nez v2, :cond_0

    .line 75
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to initialize ThreadUtils"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isUiThread()Z
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static runOffUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 106
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 89
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static runOnUiThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 141
    new-instance v0, Lcom/millennialmedia/internal/utils/ThreadUtils$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ThreadUtils$2;-><init>(Ljava/lang/Runnable;)V

    .line 157
    .local v0, "runnableWrapper":Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    sget-object v1, Lcom/millennialmedia/internal/utils/ThreadUtils;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-object v0
.end method

.method public static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 127
    sget-object v0, Lcom/millennialmedia/internal/utils/ThreadUtils;->workerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public static runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 173
    new-instance v0, Lcom/millennialmedia/internal/utils/ThreadUtils$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/utils/ThreadUtils$3;-><init>(Ljava/lang/Runnable;)V

    .line 189
    .local v0, "runnableWrapper":Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    sget-object v1, Lcom/millennialmedia/internal/utils/ThreadUtils;->workerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-object v0
.end method
