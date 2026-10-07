.class Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

.field final synthetic val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController$7;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 405
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$twoPartWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 406
    .local v1, "twoPartWebView":Lcom/millennialmedia/internal/MMWebView;
    if-nez v1, :cond_1

    .line 407
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expanded web view is no longer valid"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$sizableStateManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/SizableStateManager;

    .line 415
    .local v0, "sizableStateManager":Lcom/millennialmedia/internal/SizableStateManager;
    if-nez v0, :cond_2

    .line 416
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sizing container is no longer valid"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 424
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sizing container has been collapsed"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    iget-object v2, v2, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$expandParams:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/SizableStateManager;->hideLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    .line 433
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 434
    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    .line 440
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/MMWebView;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to retrieve expanded content"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/millennialmedia/internal/SizableStateManager;->showCloseIndicator(Z)V

    goto :goto_1
.end method
