.class final Lcom/fyber/requesters/a/d;
.super Lcom/fyber/utils/c;
.source "DispatchableCallback.java"


# instance fields
.field final synthetic a:Lcom/fyber/requesters/RequestError;

.field final synthetic b:Lcom/fyber/requesters/a/a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/a/a;Lcom/fyber/requesters/RequestError;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fyber/requesters/a/d;->b:Lcom/fyber/requesters/a/a;

    iput-object p2, p0, Lcom/fyber/requesters/a/d;->a:Lcom/fyber/requesters/RequestError;

    invoke-direct {p0}, Lcom/fyber/utils/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/requesters/a/d;->b:Lcom/fyber/requesters/a/a;

    invoke-static {v0}, Lcom/fyber/requesters/a/a;->a(Lcom/fyber/requesters/a/a;)Lcom/fyber/requesters/AdRequestCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/requesters/a/d;->a:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 54
    return-void
.end method
