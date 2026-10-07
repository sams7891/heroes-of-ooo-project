.class public final Lcom/fyber/b/g;
.super Lcom/fyber/b/b;
.source "BannerRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b",
        "<",
        "Lcom/fyber/ads/banners/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/utils/t;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/b;-><init>(Lcom/fyber/utils/t;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/b/g;->c:Z

    .line 32
    return-void
.end method

.method public static a(Lcom/fyber/utils/t;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/t;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/g;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/g;-><init>(Lcom/fyber/utils/t;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 20
    .line 1048
    new-instance v0, Lcom/fyber/ads/banners/a/c;

    iget-object v1, p0, Lcom/fyber/b/g;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/fyber/ads/banners/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "BannerRequesterNetworkOperation"

    return-object v0
.end method
