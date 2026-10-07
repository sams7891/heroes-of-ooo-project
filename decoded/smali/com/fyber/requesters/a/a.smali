.class public final Lcom/fyber/requesters/a/a;
.super Ljava/lang/Object;
.source "DispatchableCallback.java"

# interfaces
.implements Lcom/fyber/requesters/AdRequestCallback;


# instance fields
.field private final a:Lcom/fyber/requesters/AdRequestCallback;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fyber/requesters/AdRequestCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fyber/requesters/a/a;->a:Lcom/fyber/requesters/AdRequestCallback;

    .line 23
    iput-object p2, p0, Lcom/fyber/requesters/a/a;->b:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/fyber/requesters/a/a;)Lcom/fyber/requesters/AdRequestCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fyber/requesters/a/a;->a:Lcom/fyber/requesters/AdRequestCallback;

    return-object v0
.end method

.method private a(Lcom/fyber/utils/c;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fyber/requesters/a/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/fyber/requesters/a/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    invoke-static {p1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/c;)V

    goto :goto_0
.end method


# virtual methods
.method public final onAdAvailable(Lcom/fyber/ads/Ad;)V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/fyber/requesters/a/b;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/b;-><init>(Lcom/fyber/requesters/a/a;Lcom/fyber/ads/Ad;)V

    invoke-direct {p0, v0}, Lcom/fyber/requesters/a/a;->a(Lcom/fyber/utils/c;)V

    .line 34
    return-void
.end method

.method public final onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/fyber/requesters/a/c;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/c;-><init>(Lcom/fyber/requesters/a/a;Lcom/fyber/ads/AdFormat;)V

    invoke-direct {p0, v0}, Lcom/fyber/requesters/a/a;->a(Lcom/fyber/utils/c;)V

    .line 45
    return-void
.end method

.method public final onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/fyber/requesters/a/d;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/d;-><init>(Lcom/fyber/requesters/a/a;Lcom/fyber/requesters/RequestError;)V

    invoke-direct {p0, v0}, Lcom/fyber/requesters/a/a;->a(Lcom/fyber/utils/c;)V

    .line 56
    return-void
.end method
