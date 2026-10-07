.class Lcom/globalfun/adventuretime/free/Main$2;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAdAvailable(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-static {v0, p1}, Lcom/globalfun/adventuretime/free/Main;->access$1(Lcom/globalfun/adventuretime/free/Main;Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 1
    .param p1, "adFormat"    # Lcom/fyber/ads/AdFormat;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "aza":I
    add-int/lit8 v0, v0, 0x1

    .line 142
    return-void
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 0
    .param p1, "requestError"    # Lcom/fyber/requesters/RequestError;

    .prologue
    .line 130
    return-void
.end method
