.class Lcom/globalfun/adventuretime/free/Main$6;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/globalfun/adventuretime/free/Main;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Main$6;->this$0:Lcom/globalfun/adventuretime/free/Main;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 457
    return-void
.end method
