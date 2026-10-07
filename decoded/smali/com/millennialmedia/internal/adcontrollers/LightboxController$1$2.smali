.class Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;
.super Ljava/lang/Object;
.source "LightboxController.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1
    .param p1, "expandParams"    # Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onAdLeftApplication()V

    .line 311
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onClicked()V

    .line 304
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->initFailed()V

    .line 291
    return-void
.end method

.method public onLoaded()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->initSucceeded()V

    .line 284
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1
    .param p1, "resizeParams"    # Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 343
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 337
    return-void
.end method
