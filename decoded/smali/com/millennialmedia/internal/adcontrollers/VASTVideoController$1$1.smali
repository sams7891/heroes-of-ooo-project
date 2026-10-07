.class Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;
.super Ljava/lang/Object;
.source "VASTVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView;

    new-instance v2, Landroid/content/MutableContextWrapper;

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v3, v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v3, v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$100(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;->this$1:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    iget-object v4, v4, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v4}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;

    invoke-direct {v5, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1$1;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/millennialmedia/internal/video/VASTVideoView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$InLineAd;Ljava/util/List;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->access$502(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 141
    return-void
.end method
