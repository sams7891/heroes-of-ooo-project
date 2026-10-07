.class public final Lcom/fyber/b/l;
.super Lcom/fyber/b/b;
.source "InterstitialRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b",
        "<",
        "Lcom/fyber/ads/interstitials/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/utils/t;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/b;-><init>(Lcom/fyber/utils/t;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/l;->a:Z

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    const-string v0, "interstitial"

    invoke-static {v0}, Lcom/fyber/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/fyber/utils/t;->a(Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lcom/fyber/utils/t;->b(Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p2}, Lcom/fyber/utils/t;->a(Ljava/util/Map;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/fyber/utils/t;->a()Lcom/fyber/utils/t;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/fyber/utils/t;->b()Lcom/fyber/utils/t;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    new-instance v2, Lcom/fyber/b/l;

    invoke-direct {v2, v0, p1}, Lcom/fyber/b/l;-><init>(Lcom/fyber/utils/t;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 26
    .line 1075
    new-instance v0, Lcom/fyber/ads/interstitials/a;

    iget-object v1, p0, Lcom/fyber/b/l;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/fyber/ads/interstitials/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-object v0
.end method

.method protected final synthetic a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2056
    const-string v0, "InterstitialRequesterNetworkOperation"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2058
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v1, Lcom/fyber/requesters/RequestError;->CONNECTION_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/requesters/RequestError;)V

    .line 2059
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 1
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
    .line 69
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    invoke-virtual {v0, p1}, Lcom/fyber/ads/interstitials/c;->a(Ljava/util/List;)V

    .line 70
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    sget-object v1, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/requesters/RequestError;)V

    .line 52
    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "InterstitialRequesterNetworkOperation"

    return-object v0
.end method
