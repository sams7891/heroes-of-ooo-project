.class final Lcom/millennialmedia/internal/utils/TimedMemoryCache$1;
.super Ljava/lang/Object;
.source "TimedMemoryCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/TimedMemoryCache;->startCleaner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 138
    .local v0, "cacheId":I
    :cond_0
    const-wide/16 v6, 0x2710

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 146
    .local v2, "currentTime":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$100()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 147
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$100()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 149
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$200(I)Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;

    move-result-object v1

    .line 150
    .local v1, "cachedItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    if-nez v1, :cond_3

    .line 151
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to remove CacheItem with ID <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> but item was null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "cachedItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    .end local v2    # "currentTime":J
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error occurred while cleaner was sleeping"

    invoke-static {v6, v7, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Stopping cleaner"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    return-void

    .line 158
    .restart local v1    # "cachedItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    .restart local v2    # "currentTime":J
    .restart local v5    # "i":I
    :cond_3
    iget-wide v6, v1, Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;->itemTimeout:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 159
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed CacheItem\n\t:Checked time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\tID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\tItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$100()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 170
    .end local v1    # "cachedItem":Lcom/millennialmedia/internal/utils/TimedMemoryCache$CacheItem;
    :cond_5
    invoke-static {}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->access$100()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-gtz v6, :cond_0

    goto :goto_2
.end method
