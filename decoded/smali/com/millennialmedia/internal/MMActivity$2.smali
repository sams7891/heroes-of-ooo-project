.class Lcom/millennialmedia/internal/MMActivity$2;
.super Ljava/lang/Object;
.source "MMActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/MMActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity$2;->this$0:Lcom/millennialmedia/internal/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 309
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity$2;->this$0:Lcom/millennialmedia/internal/MMActivity;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity;->access$600(Lcom/millennialmedia/internal/MMActivity;)V

    .line 312
    :cond_0
    return-void
.end method
