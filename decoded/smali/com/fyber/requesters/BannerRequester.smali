.class public Lcom/fyber/requesters/BannerRequester;
.super Lcom/fyber/requesters/Requester;
.source "BannerRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/BannerRequester;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/Callback;)V
    .locals 1
    .param p1    # Lcom/fyber/requesters/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method public static create(Lcom/fyber/requesters/AdRequestCallback;)Lcom/fyber/requesters/BannerRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/AdRequestCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    new-instance v0, Lcom/fyber/requesters/BannerRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/BannerRequester;-><init>(Lcom/fyber/requesters/Callback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/BannerRequester;
    .locals 1
    .param p0    # Lcom/fyber/requesters/Requester;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    new-instance v0, Lcom/fyber/requesters/BannerRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/BannerRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fyber/requesters/BannerRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/AdRequestCallback;

    return v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 25
    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/fyber/requesters/BannerRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/fyber/ads/banners/a/a;->a()Lcom/fyber/ads/banners/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/fyber/ads/banners/a/b;->b:Lcom/fyber/ads/banners/a/b;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/banners/a/b;)Z

    .line 71
    const-string v0, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/BannerRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 72
    const-string v0, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/BannerRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v3, Lcom/fyber/requesters/a/a;

    iget-object v0, p0, Lcom/fyber/requesters/BannerRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    iget-object v4, p0, Lcom/fyber/requesters/BannerRequester;->c:Landroid/os/Handler;

    invoke-direct {v3, v0, v4}, Lcom/fyber/requesters/a/a;-><init>(Lcom/fyber/requesters/AdRequestCallback;Landroid/os/Handler;)V

    .line 76
    new-instance v0, Lcom/fyber/b/f$a;

    invoke-direct {v0}, Lcom/fyber/b/f$a;-><init>()V

    .line 77
    invoke-virtual {v0, v3}, Lcom/fyber/b/f$a;->a(Lcom/fyber/requesters/a/a;)Lcom/fyber/b/f$a;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lcom/fyber/b/f$a;->a(Ljava/util/Map;)Lcom/fyber/b/f$a;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v2}, Lcom/fyber/b/f$a;->a(Ljava/lang/String;)Lcom/fyber/b/f$a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/HashMap;

    .line 80
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/fyber/b/f$a;->a(Ljava/util/ArrayList;)Lcom/fyber/b/f$a;

    move-result-object v0

    .line 1114
    new-instance v1, Lcom/fyber/b/f;

    invoke-direct {v1, v0}, Lcom/fyber/b/f;-><init>(Lcom/fyber/b/f$a;)V

    .line 83
    invoke-virtual {v1, p1}, Lcom/fyber/b/f;->a(Landroid/content/Context;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-object v0, Lcom/fyber/requesters/RequestError;->UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/BannerRequester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0
.end method

.method public withNetworkSize(Lcom/fyber/ads/banners/NetworkBannerSize;)Lcom/fyber/requesters/BannerRequester;
    .locals 3
    .param p1    # Lcom/fyber/ads/banners/NetworkBannerSize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fyber/ads/banners/NetworkBannerSize;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fyber/ads/banners/NetworkBannerSize;->getSize()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object p0
.end method
