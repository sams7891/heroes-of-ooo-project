.class final Lcom/fyber/b/v;
.super Lcom/fyber/utils/c;
.source "VirtualCurrencyNetworkOperation.java"


# instance fields
.field final synthetic a:Lcom/fyber/currency/VirtualCurrencyResponse;

.field final synthetic b:Lcom/fyber/b/r;


# direct methods
.method constructor <init>(Lcom/fyber/b/r;Lcom/fyber/currency/VirtualCurrencyResponse;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/fyber/b/v;->b:Lcom/fyber/b/r;

    iput-object p2, p0, Lcom/fyber/b/v;->a:Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/fyber/b/v;->b:Lcom/fyber/b/r;

    invoke-static {v0}, Lcom/fyber/b/r;->a(Lcom/fyber/b/r;)Lcom/fyber/requesters/VirtualCurrencyCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/v;->a:Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyCallback;->onSuccess(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    .line 339
    return-void
.end method
