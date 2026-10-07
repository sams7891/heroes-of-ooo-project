.class Lcom/globalfun/adventuretime/free/Main$7;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/globalfun/adventuretime/free/Main;->showErrorDialog(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Main$7;->this$0:Lcom/globalfun/adventuretime/free/Main;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Main$7;->this$0:Lcom/globalfun/adventuretime/free/Main;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Main;->showDialog(I)V

    .line 484
    return-void
.end method
