.class public abstract Lcom/fyber/b/c;
.super Ljava/lang/Object;
.source "AdsProcessorOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/fyber/ads/a/b",
        "<TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TU;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/fyber/b/c;->b:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lcom/fyber/ads/a/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)TU;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Lcom/fyber/ads/a/b;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/ref/WeakReference;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fyber/b/c;->a:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/fyber/b/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/a/b;

    .line 42
    invoke-virtual {p0}, Lcom/fyber/b/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Processing ad from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    invoke-virtual {v0}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fyber/b/c;->c()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/fyber/mediation/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/fyber/b/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is available, proceeding..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/fyber/ads/a/a;->a:Lcom/fyber/ads/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 49
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/a/b;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    :goto_1
    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/fyber/b/c;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ad is available from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v4, Lcom/fyber/ads/a/a;->b:Lcom/fyber/ads/a/a;

    invoke-virtual {p0, v0, v4}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/fyber/b/c;->a(Ljava/lang/Object;Lcom/fyber/ads/a/b;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    :goto_2
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/b/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No ad available from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/fyber/ads/a/a;->c:Lcom/fyber/ads/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 67
    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    sget-object v1, Lcom/fyber/ads/a/a;->e:Lcom/fyber/ads/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    goto/16 :goto_0

    .line 70
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/fyber/b/c;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error requesting ads - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/fyber/ads/a/a;->d:Lcom/fyber/ads/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    goto/16 :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/b/c;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not integrated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/fyber/ads/a/a;->k:Lcom/fyber/ads/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    goto/16 :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/fyber/b/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There are no ads available currently."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/fyber/b/c;->b()V

    move-object v0, v2

    .line 83
    goto/16 :goto_2

    .line 67
    :catch_2
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    goto/16 :goto_1
.end method
