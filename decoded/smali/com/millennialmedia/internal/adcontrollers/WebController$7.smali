.class Lcom/millennialmedia/internal/adcontrollers/WebController$7;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->loadTwoPartContentAsync(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field final synthetic val$expandParams:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

.field final synthetic val$sizableStateManagerRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$twoPartWebViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$expandParams:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$twoPartWebViewRef:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$sizableStateManagerRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$expandParams:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/SizableStateManager;->showLoadingSpinner(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    .line 399
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$7;->val$expandParams:Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    iget-object v1, v1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 401
    .local v0, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$7$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController$7;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method
