.class Lcom/millennialmedia/internal/adcontrollers/WebController$4;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field final synthetic val$activityConfig:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->val$activityConfig:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 162
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/adcontrollers/WebController;->getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v1

    .line 164
    .local v1, "sizableStateManager":Lcom/millennialmedia/internal/SizableStateManager;
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-direct {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;-><init>()V

    .line 165
    .local v0, "expandParams":Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;
    iput v3, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    .line 166
    iput v3, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    .line 167
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showCloseIndicator:Z

    .line 168
    iput v3, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->orientation:I

    .line 174
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->val$activityConfig:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-virtual {v1, v2, v0, v3}, Lcom/millennialmedia/internal/SizableStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    .line 177
    :cond_0
    return-void
.end method
