.class Lcom/millennialmedia/internal/video/LightboxView$7;
.super Landroid/view/animation/Animation;
.source "LightboxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field distanceToOffscreen:F

.field final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field translateX:F

.field width:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 742
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->width:I

    mul-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    .line 745
    .local v0, "newX":F
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 746
    return-void

    .line 742
    .end local v0    # "newX":F
    :cond_0
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->translateX:F

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->distanceToOffscreen:F

    mul-float/2addr v2, p1

    sub-float v0, v1, v2

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 733
    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->width:I

    .line 734
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/LightboxView;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->translateX:F

    .line 735
    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->translateX:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$7;->distanceToOffscreen:F

    .line 736
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x0

    return v0
.end method
