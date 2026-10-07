.class public final Lcom/fyber/b/k;
.super Lcom/fyber/b/a;
.source "InterstitialEventNetworkOperation.java"


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
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/a;-><init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 45
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
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/a;-><init>(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 41
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
    .line 24
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/k;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/k;-><init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "InterstitialEventNetworkOperation"

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
    .line 32
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/k;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/k;-><init>(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v0, "InterstitialEventNetworkOperation"

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
    .line 59
    const-string v0, "0"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    const-string v0, "interstitial"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "tracker"

    invoke-static {v0}, Lcom/fyber/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "InterstitialEventNetworkOperation"

    return-object v0
.end method
