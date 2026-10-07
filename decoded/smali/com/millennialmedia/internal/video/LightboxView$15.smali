.class Lcom/millennialmedia/internal/video/LightboxView$15;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1155
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$600(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const-wide/16 v2, 0x9c4

    const-wide/16 v4, 0x1f4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/millennialmedia/internal/video/LightboxView;->access$500(Lcom/millennialmedia/internal/video/LightboxView;JJ)V

    .line 1148
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$15;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1002(Lcom/millennialmedia/internal/video/LightboxView;Z)Z

    .line 1149
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1161
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1139
    return-void
.end method
