.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->onClick()V

    .line 139
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    .line 131
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    .line 132
    return-void
.end method

.method public onLoaded()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;->this$2:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initSucceeded()V

    .line 124
    return-void
.end method
