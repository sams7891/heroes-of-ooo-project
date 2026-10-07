.class Lcom/globalfun/adventuretime/free/Main$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/globalfun/adventuretime/free/Main;->displayInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->requestCallback:Lcom/fyber/requesters/RequestCallback;

    invoke-static {v0}, Lcom/fyber/requesters/InterstitialRequester;->create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/InterstitialRequester;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/InterstitialRequester;->request(Landroid/content/Context;)V

    .line 163
    return-void
.end method
