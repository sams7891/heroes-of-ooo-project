.class public abstract Lcom/fyber/b/a;
.super Lcom/fyber/b/n;
.source "AdEventNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/n",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
    .locals 5
    .param p1    # Lcom/fyber/ads/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fyber/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/b/n;-><init>(Lcom/fyber/utils/t;)V

    .line 46
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/fyber/ads/a/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/fyber/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lcom/fyber/utils/t;->a(Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v2, "event"

    .line 52
    invoke-virtual {p2}, Lcom/fyber/ads/a/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v2, "ad_format"

    .line 53
    invoke-virtual {p0}, Lcom/fyber/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v2, "rewarded"

    .line 54
    invoke-virtual {p0}, Lcom/fyber/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/fyber/utils/t;->a()Lcom/fyber/utils/t;

    move-result-object v0

    const-string v2, "ad_id"

    .line 56
    invoke-virtual {p1}, Lcom/fyber/ads/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v2, "provider_type"

    .line 57
    invoke-virtual {p1}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/fyber/ads/a/b;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fyber/utils/t;->a(Ljava/util/Map;)Lcom/fyber/utils/t;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/a;->d:Lcom/fyber/utils/t;

    .line 60
    invoke-virtual {p0}, Lcom/fyber/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Notifying tracker of event=%s with request_id=%s for ad_id=%s and provider_type=%s "

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    .line 62
    invoke-virtual {p1}, Lcom/fyber/ads/a/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/fyber/ads/a/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 60
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/fyber/ads/a/a;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fyber/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/b/n;-><init>(Lcom/fyber/utils/t;)V

    .line 31
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/fyber/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/fyber/utils/t;->a(Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v1, "event"

    .line 34
    invoke-virtual {p2}, Lcom/fyber/ads/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v1, "ad_format"

    .line 35
    invoke-virtual {p0}, Lcom/fyber/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    const-string v1, "rewarded"

    .line 36
    invoke-virtual {p0}, Lcom/fyber/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/fyber/utils/t;->a()Lcom/fyber/utils/t;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/a;->d:Lcom/fyber/utils/t;

    .line 39
    invoke-virtual {p0}, Lcom/fyber/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifying tracker of event=%s with request_id=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/fyber/utils/k;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    .line 1091
    invoke-virtual {p0}, Lcom/fyber/b/a;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Event communication successful - "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/utils/k;->b()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/4 v0, 0x0

    .line 23
    return-object v0

    .line 1091
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 23
    .line 2085
    invoke-virtual {p0}, Lcom/fyber/b/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An exception occurred when trying to send the tracking event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method protected final a()Z
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fyber/b/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/fyber/b/a;->d:Lcom/fyber/utils/t;

    iget-object v1, p0, Lcom/fyber/b/a;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/t;->a(Ljava/util/Map;)Lcom/fyber/utils/t;

    .line 69
    invoke-virtual {p0}, Lcom/fyber/b/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Additional parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    iget-object v3, p0, Lcom/fyber/b/a;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract c()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract d()Ljava/lang/String;
.end method
