.class public final Lcom/fyber/b/f;
.super Ljava/lang/Object;
.source "BannerFetchOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/fyber/requesters/AdRequestCallback;

.field private final b:Lcom/fyber/utils/t;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/b/f$a;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/fyber/b/f$a;->a(Lcom/fyber/b/f$a;)Lcom/fyber/requesters/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/f;->a:Lcom/fyber/requesters/AdRequestCallback;

    .line 47
    invoke-static {p1}, Lcom/fyber/b/f$a;->b(Lcom/fyber/b/f$a;)Lcom/fyber/utils/t;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/f;->b:Lcom/fyber/utils/t;

    .line 48
    invoke-static {p1}, Lcom/fyber/b/f$a;->c(Lcom/fyber/b/f$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/f;->d:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/b/f;->c:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 59
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcom/fyber/b/f;->b:Lcom/fyber/utils/t;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/t;->a(Ljava/lang/String;)Lcom/fyber/utils/t;

    .line 61
    iget-object v0, p0, Lcom/fyber/b/f;->b:Lcom/fyber/utils/t;

    invoke-static {v0, v1}, Lcom/fyber/b/g;->a(Lcom/fyber/utils/t;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 64
    const-wide/16 v2, 0xa

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 66
    new-instance v2, Lcom/fyber/b/d$a;

    iget-object v3, p0, Lcom/fyber/b/f;->d:Ljava/util/List;

    invoke-direct {v2, v0, v3}, Lcom/fyber/b/d$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/fyber/b/d$a;->a()Lcom/fyber/b/d;

    move-result-object v0

    iget-object v2, p0, Lcom/fyber/b/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v2}, Lcom/fyber/b/d;->a(Ljava/lang/ref/WeakReference;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 69
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/banners/BannerAd;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    sget-object v2, Lcom/fyber/ads/a/a;->b:Lcom/fyber/ads/a/a;

    invoke-static {v1, v2}, Lcom/fyber/b/e;->a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 72
    sget-object v2, Lcom/fyber/ads/banners/a/b;->c:Lcom/fyber/ads/banners/a/b;

    invoke-static {v2}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/banners/a/b;)Z

    .line 73
    iget-object v2, p0, Lcom/fyber/b/f;->a:Lcom/fyber/requesters/AdRequestCallback;

    invoke-interface {v2, v0}, Lcom/fyber/requesters/AdRequestCallback;->onAdAvailable(Lcom/fyber/ads/Ad;)V

    .line 90
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/fyber/ads/a/a;->c:Lcom/fyber/ads/a/a;

    invoke-static {v1, v0}, Lcom/fyber/b/e;->a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 76
    sget-object v0, Lcom/fyber/ads/banners/a/b;->a:Lcom/fyber/ads/banners/a/b;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/banners/a/b;)Z

    .line 77
    iget-object v0, p0, Lcom/fyber/b/f;->a:Lcom/fyber/requesters/AdRequestCallback;

    sget-object v2, Lcom/fyber/ads/AdFormat;->BANNER:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v2}, Lcom/fyber/requesters/AdRequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    :goto_1
    const-string v2, "BannerFetchOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred while retrieving a banner ad - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/fyber/ads/a/a;->d:Lcom/fyber/ads/a/a;

    invoke-static {v1, v0}, Lcom/fyber/b/e;->a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 82
    iget-object v0, p0, Lcom/fyber/b/f;->a:Lcom/fyber/requesters/AdRequestCallback;

    sget-object v1, Lcom/fyber/requesters/RequestError;->UNKNOWN_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 83
    sget-object v0, Lcom/fyber/ads/banners/a/b;->a:Lcom/fyber/ads/banners/a/b;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/banners/a/b;)Z

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    const-string v0, "BannerFetchOperation"

    const-string v2, "A timeout occurred while retrieving a banner ad"

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/fyber/ads/a/a;->e:Lcom/fyber/ads/a/a;

    invoke-static {v1, v0}, Lcom/fyber/b/e;->a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 87
    iget-object v0, p0, Lcom/fyber/b/f;->a:Lcom/fyber/requesters/AdRequestCallback;

    sget-object v1, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 88
    sget-object v0, Lcom/fyber/ads/banners/a/b;->a:Lcom/fyber/ads/banners/a/b;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/banners/a/b;)Z

    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    goto :goto_1
.end method
