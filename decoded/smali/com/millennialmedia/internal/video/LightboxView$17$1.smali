.class Lcom/millennialmedia/internal/video/LightboxView$17$1;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/LightboxView$17;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/LightboxView$17;

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$17$1;->this$1:Lcom/millennialmedia/internal/video/LightboxView$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1283
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$17$1;->this$1:Lcom/millennialmedia/internal/video/LightboxView$17;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/LightboxView$17;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->access$2202(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1277
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1289
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1270
    return-void
.end method
