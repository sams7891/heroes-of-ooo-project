.class public Lcom/millennialmedia/internal/utils/TimedMemoryCache;
.super Ljava/lang/Object;
.source "TimedMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    }
.end annotation


# static fields
.field private static final CACHE_TIMEOUT:J = 0xea60L

.field private static final CLEANER_DELAY:J = 0x2710L

.field private static final TAG:Ljava/lang/String;

.field private static cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private static cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static lastCacheId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->lastCacheId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(I)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 21
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->getCachedItem(I)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static add(Ljava/lang/Object;Ljava/lang/Long;)I
    .locals 5
    .param p0, "objectToCache"    # Ljava/lang/Object;
    .param p1, "timeout"    # Ljava/lang/Long;

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    sget-object v2, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    const-string v3, "Nothing to cache, object provided is null"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 73
    :cond_0
    sget-object v2, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->lastCacheId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 75
    .local v0, "cacheId":I
    new-instance v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;-><init>(Ljava/lang/Object;Ljava/lang/Long;)V

    .line 76
    .local v1, "cacheItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    sget-object v2, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheItem added.\n\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    sget-object v2, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->startCleaner()V

    goto :goto_0
.end method

.method public static get(I)Ljava/lang/Object;
    .locals 4
    .param p0, "cacheId"    # I

    .prologue
    .line 91
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->getCachedItem(I)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    move-result-object v0

    .line 92
    .local v0, "cachedItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    if-nez v0, :cond_0

    .line 93
    sget-object v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cached item for cache ID <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    .line 100
    :goto_0
    return-object v1

    .line 98
    :cond_0
    sget-object v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 100
    iget-object v1, v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->cachedObject:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getCachedItem(I)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    .locals 4
    .param p0, "cacheId"    # I

    .prologue
    .line 106
    sget-object v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    .line 107
    .local v0, "cachedItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    if-nez v0, :cond_0

    .line 108
    sget-object v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to get cached object for cache id <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, stored object is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and will be removed from cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 113
    const/4 v0, 0x0

    .line 116
    .end local v0    # "cachedItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    :cond_0
    return-object v0
.end method

.method private static startCleaner()V
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->cleanerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->TAG:Ljava/lang/String;

    const-string v1, "Cleaner already running"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
