.class Lcom/millennialmedia/internal/adcontrollers/WebController$5;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Lcom/millennialmedia/internal/SizableStateManager$SizableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCollapsed()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateCollapsed()V

    .line 244
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onCollapsed()V

    .line 245
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$302(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager;

    .line 246
    return-void
.end method

.method public onCollapsing()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 237
    return-void
.end method

.method public onExpandFailed()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    .line 253
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateExpanded()V

    .line 229
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onExpanded()V

    .line 230
    return-void
.end method

.method public onExpanding()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 222
    return-void
.end method

.method public onResized(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResized()V

    .line 198
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onResized(IIZ)V

    .line 199
    return-void
.end method

.method public onResizing(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 190
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onResize(II)V

    .line 191
    return-void
.end method

.method public onUnresized(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateUnresized()V

    .line 213
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onResized(IIZ)V

    .line 214
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$302(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager;

    .line 215
    return-void
.end method

.method public onUnresizing(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$5;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMWebView;->setStateResizing()V

    .line 206
    return-void
.end method
