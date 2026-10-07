.class public final Lcom/fyber/b/i;
.super Lcom/fyber/b/c;
.source "InterstitialAdsProcessorOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/c",
        "<",
        "Lcom/fyber/ads/interstitials/a;",
        "Ljava/lang/Void;",
        "Lcom/fyber/ads/interstitials/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fyber/b/c;-><init>(Ljava/util/List;)V

    .line 33
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/i;

    invoke-direct {v1, p0}, Lcom/fyber/b/i;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 29
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/fyber/ads/a/b;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/fyber/ads/interstitials/a;

    .line 2047
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, p2}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;)V

    .line 2048
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "InterstitialAdsProcessorOperation"

    return-object v0
.end method

.method protected final synthetic a(Lcom/fyber/ads/a/b;)Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 22
    check-cast p1, Lcom/fyber/ads/interstitials/a;

    .line 1053
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, p1}, Lcom/fyber/ads/interstitials/c;->b(Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/j;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/j;-><init>(Lcom/fyber/b/i;Lcom/fyber/ads/interstitials/a;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1061
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_0
.end method

.method protected final a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 68
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/a;)V

    .line 43
    return-void
.end method

.method protected final c()I
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 73
    sget v0, Lcom/fyber/mediation/a;->b:I

    return v0
.end method
