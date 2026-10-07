.class Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;
.super Ljava/lang/Object;
.source "LightboxController.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;


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
    .line 210
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onAdLeftApplication()V

    .line 276
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onClicked()V

    .line 269
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onCollapsed()V

    .line 262
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->onExpanded()V

    .line 255
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lightbox prepared."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public onReadyToStart()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lightbox is ready to start playback"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$000(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/video/LightboxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/LightboxView;->start()V

    .line 240
    return-void
.end method
