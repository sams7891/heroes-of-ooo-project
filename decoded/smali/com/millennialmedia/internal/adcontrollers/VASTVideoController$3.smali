.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->attach(Lcom/millennialmedia/internal/MMActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

.field final synthetic val$adContainer:Lcom/millennialmedia/internal/AdContainer;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Lcom/millennialmedia/internal/AdContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->val$adContainer:Lcom/millennialmedia/internal/AdContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 206
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTVideoView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VASTVideoView instance is null, unable to attach"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$600(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachFailed()V

    .line 223
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 216
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTVideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->val$adContainer:Lcom/millennialmedia/internal/AdContainer;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTVideoView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->updateLayout()V

    .line 222
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$600(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachSucceeded()V

    goto :goto_0
.end method
