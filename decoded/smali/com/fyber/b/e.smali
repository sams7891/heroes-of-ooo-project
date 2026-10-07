.class public final Lcom/fyber/b/e;
.super Lcom/fyber/b/a;
.source "BannerEventNetworkOperation.java"


# direct methods
.method private constructor <init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
    .locals 0
    .param p1    # Lcom/fyber/ads/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fyber/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/a;-><init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/ads/a/b;",
            "Lcom/fyber/ads/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/a;-><init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 51
    iput-object p3, p0, Lcom/fyber/b/e;->a:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/fyber/ads/a/a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fyber/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/a;-><init>(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 56
    return-void
.end method

.method public static a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
    .locals 2
    .param p0    # Lcom/fyber/ads/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/fyber/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/e;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/e;-><init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v0, "BannerEventNetworkOperation"

    const-string v1, "It appears that Fyber SDK has not been started yet."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;Ljava/util/Map;)V
    .locals 2
    .param p0    # Lcom/fyber/ads/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/fyber/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/ads/a/b;",
            "Lcom/fyber/ads/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/fyber/b/e;-><init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "BannerEventNetworkOperation"

    const-string v1, "It appears that Fyber SDK has not been started yet."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/fyber/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/e;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/e;-><init>(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, "BannerEventNetworkOperation"

    const-string v1, "It appears that Fyber SDK has not been started yet."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    const-string v0, "0"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 69
    const-string v0, "banner"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "banner_tracking"

    invoke-static {v0}, Lcom/fyber/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "BannerEventNetworkOperation"

    return-object v0
.end method
