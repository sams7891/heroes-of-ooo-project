.class Lcom/millennialmedia/internal/JSBridge$3;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;->setScrolledPosition(Lcom/millennialmedia/internal/MMWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2164
    const-wide/16 v2, 0x0

    .line 2168
    .local v2, "lastTimeout":J
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v4}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 2176
    .local v1, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-nez v1, :cond_1

    .line 2192
    .end local v1    # "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v4}, Lcom/millennialmedia/internal/JSBridge;->access$800(Lcom/millennialmedia/internal/JSBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2193
    return-void

    .line 2169
    :catch_0
    move-exception v0

    .line 2171
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 2185
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v4}, Lcom/millennialmedia/internal/JSBridge;->access$700(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 2186
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v4}, Lcom/millennialmedia/internal/JSBridge;->access$700(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v2

    .line 2187
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v4, v1}, Lcom/millennialmedia/internal/JSBridge;->setCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)V

    .line 2190
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/millennialmedia/internal/JSBridge$3;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v6}, Lcom/millennialmedia/internal/JSBridge;->access$700(Lcom/millennialmedia/internal/JSBridge;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    goto :goto_0
.end method
