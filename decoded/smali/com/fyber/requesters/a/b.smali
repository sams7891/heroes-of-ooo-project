.class final Lcom/fyber/requesters/a/b;
.super Lcom/fyber/utils/c;
.source "DispatchableCallback.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/Ad;

.field final synthetic b:Lcom/fyber/requesters/a/a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/a/a;Lcom/fyber/ads/Ad;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fyber/requesters/a/b;->b:Lcom/fyber/requesters/a/a;

    iput-object p2, p0, Lcom/fyber/requesters/a/b;->a:Lcom/fyber/ads/Ad;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/requesters/a/b;->b:Lcom/fyber/requesters/a/a;

    invoke-static {v0}, Lcom/fyber/requesters/a/a;->a(Lcom/fyber/requesters/a/a;)Lcom/fyber/requesters/AdRequestCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/requesters/a/b;->a:Lcom/fyber/ads/Ad;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onAdAvailable(Lcom/fyber/ads/Ad;)V

    .line 32
    return-void
.end method
