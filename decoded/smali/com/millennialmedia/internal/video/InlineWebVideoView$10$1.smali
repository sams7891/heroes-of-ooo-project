.class Lcom/millennialmedia/internal/video/InlineWebVideoView$10$1;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$10;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10$1;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1140
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10$1;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$10;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$10;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->setVisibility(I)V

    .line 1134
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1146
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1127
    return-void
.end method
