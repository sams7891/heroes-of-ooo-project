.class final Lcom/fyber/b/u;
.super Lcom/fyber/utils/c;
.source "VirtualCurrencyNetworkOperation.java"


# instance fields
.field final synthetic a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

.field final synthetic b:Lcom/fyber/b/r;


# direct methods
.method constructor <init>(Lcom/fyber/b/r;Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/fyber/b/u;->b:Lcom/fyber/b/r;

    iput-object p2, p0, Lcom/fyber/b/u;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fyber/b/u;->b:Lcom/fyber/b/r;

    invoke-static {v0}, Lcom/fyber/b/r;->a(Lcom/fyber/b/r;)Lcom/fyber/requesters/VirtualCurrencyCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/u;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyCallback;->onError(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    .line 330
    return-void
.end method
