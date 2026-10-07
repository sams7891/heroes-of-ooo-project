.class Lcom/millennialmedia/internal/video/LightboxView$9;
.super Landroid/view/animation/Animation;
.source "LightboxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToDefault(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field distanceToDefault:F

.field final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field translateX:F

.field final synthetic val$defaultPosition:Landroid/graphics/Point;

.field width:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->val$defaultPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 815
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->val$defaultPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v1

    .line 818
    .local v0, "newX":F
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 819
    return-void

    .line 815
    .end local v0    # "newX":F
    :cond_0
    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->translateX:F

    iget v2, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->distanceToDefault:F

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 806
    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->width:I

    .line 807
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/LightboxView;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->translateX:F

    .line 808
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->val$defaultPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->translateX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$9;->distanceToDefault:F

    .line 809
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method
