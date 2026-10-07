.class Lcom/globalfun/adventuretime/free/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/fyber/requesters/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/globalfun/adventuretime/free/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/globalfun/adventuretime/free/Main;


# direct methods
.method constructor <init>(Lcom/globalfun/adventuretime/free/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Main$1;->this$0:Lcom/globalfun/adventuretime/free/Main;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-static {v0, p1}, Lcom/globalfun/adventuretime/free/Main;->access$0(Lcom/globalfun/adventuretime/free/Main;Landroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Main$1;->this$0:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Main;->showAds()V

    .line 119
    return-void
.end method

.method public onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 2
    .param p1, "adFormat"    # Lcom/fyber/ads/AdFormat;

    .prologue
    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AZA onAdNotAvailable"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 2
    .param p1, "requestError"    # Lcom/fyber/requesters/RequestError;

    .prologue
    .line 112
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AZA onRequestError"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method
