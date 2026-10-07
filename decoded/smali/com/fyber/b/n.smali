.class public abstract Lcom/fyber/b/n;
.super Ljava/lang/Object;
.source "NetworkOperation.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field protected c:Z

.field protected d:Lcom/fyber/utils/t;


# direct methods
.method protected constructor <init>(Lcom/fyber/utils/t;)V
    .locals 1
    .param p1    # Lcom/fyber/utils/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/n;->c:Z

    .line 27
    iput-object p1, p0, Lcom/fyber/b/n;->d:Lcom/fyber/utils/t;

    .line 28
    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/fyber/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fyber/b/n;->d:Lcom/fyber/utils/t;

    invoke-virtual {v0}, Lcom/fyber/utils/t;->f()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/fyber/b/n;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending request to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/fyber/utils/k;->b(Ljava/lang/String;)Lcom/fyber/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/k;->a()Lcom/fyber/utils/a;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/k;

    .line 70
    invoke-virtual {p0, v0}, Lcom/fyber/b/n;->a(Lcom/fyber/utils/k;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/fyber/utils/k;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/k;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a(Ljava/io/IOException;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/IOException;",
            ")TV;"
        }
    .end annotation
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/fyber/b/n;->c:Z

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/fyber/b/n;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {p0}, Lcom/fyber/b/n;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/fyber/b/n;->a(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/fyber/b/n;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method public run()V
    .locals 3

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/fyber/b/n;->b()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {p0}, Lcom/fyber/b/n;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/fyber/b/n;->a(Ljava/io/IOException;)Ljava/lang/Object;

    goto :goto_0
.end method
