.class Lcom/millennialmedia/internal/adcontrollers/WebController$6;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;->createWebView(Landroid/content/Context;ZZLcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field final synthetic val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isInterstitial:Z

.field final synthetic val$isTwoPart:Z

.field final synthetic val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;ZLcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;ZLandroid/content/Context;Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$isTwoPart:Z

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    iput-boolean p4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$isInterstitial:Z

    iput-object p5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/SizableStateManager;->close()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setBackgroundColor(I)V

    .line 321
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 9
    .param p1, "expandParams"    # Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v8

    .line 329
    .local v8, "sizableStateManager":Lcom/millennialmedia/internal/SizableStateManager;
    const/4 v7, 0x0

    .line 331
    .local v7, "savePosition":Z
    iget-object v0, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    iget-boolean v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$isInterstitial:Z

    if-nez v0, :cond_1

    move v7, v3

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v6

    .line 345
    .local v6, "expandWebView":Lcom/millennialmedia/internal/MMWebView;
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v6, v2}, Lcom/millennialmedia/internal/MMWebView;->setBackgroundColor(I)V

    .line 347
    iput-boolean v3, p1, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->transparent:Z

    .line 350
    :cond_0
    invoke-virtual {v8, v6, p1, v7}, Lcom/millennialmedia/internal/SizableStateManager;->expand(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Z)Z

    move-result v0

    return v0

    .end local v6    # "expandWebView":Lcom/millennialmedia/internal/MMWebView;
    :cond_1
    move v7, v2

    .line 332
    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    iget-object v5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController;->createWebView(Landroid/content/Context;ZZLcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v6

    .line 336
    .restart local v6    # "expandWebView":Lcom/millennialmedia/internal/MMWebView;
    invoke-virtual {v6}, Lcom/millennialmedia/internal/MMWebView;->setTwoPartExpand()V

    .line 337
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/millennialmedia/internal/MMWebView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v0, v6, p1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->loadTwoPartContentAsync(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    goto :goto_1
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onAdLeftApplication()V

    .line 308
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->onClicked()V

    .line 301
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$isTwoPart:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->initFailed()V

    .line 294
    :cond_0
    return-void
.end method

.method public onLoaded()V
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$isTwoPart:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->initSucceeded()V

    .line 277
    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 2
    .param p1, "resizeParams"    # Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    .prologue
    .line 357
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    .line 359
    .local v0, "sizableStateManager":Lcom/millennialmedia/internal/SizableStateManager;
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/internal/SizableStateManager;->resize(Landroid/view/View;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z

    move-result v1

    return v1
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager;->setOrientation(I)V

    .line 378
    :cond_0
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/SizableStateManager;->showCloseIndicator(Z)V

    .line 369
    :cond_0
    return-void
.end method
