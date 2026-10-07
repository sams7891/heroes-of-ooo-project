.class Lcom/millennialmedia/internal/video/LightboxView$13;
.super Landroid/view/animation/Animation;
.source "LightboxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field heightDelta:I

.field originalHeight:I

.field final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field final synthetic val$displaySize:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1039
    cmpl-float v8, p1, v11

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v3, v8, Landroid/graphics/Point;->y:I

    .line 1043
    .local v3, "newHeight":I
    :goto_0
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v10}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 1044
    .local v1, "heightRatio":F
    cmpl-float v8, p1, v11

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v5, v8, Landroid/graphics/Point;->x:I

    .line 1047
    .local v5, "newWidth":I
    :goto_1
    cmpl-float v8, p1, v11

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1048
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1300(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v4

    .line 1050
    .local v4, "newVideoTopMargin":I
    :goto_2
    cmpl-float v8, p1, v11

    if-nez v8, :cond_5

    move v2, v7

    .line 1053
    .local v2, "newFullscreenContainerTopMargin":I
    :goto_3
    cmpl-float v8, p1, v11

    if-nez v8, :cond_6

    move v6, v7

    .line 1056
    .local v6, "newX":I
    :goto_4
    cmpl-float v8, p1, v11

    if-nez v8, :cond_7

    .line 1059
    .local v7, "newY":I
    :goto_5
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-ge v5, v8, :cond_0

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-ge v3, v8, :cond_0

    if-lez v6, :cond_0

    if-gtz v7, :cond_1

    .line 1062
    :cond_0
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v5, v8, Landroid/graphics/Point;->x:I

    .line 1063
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v3, v8, Landroid/graphics/Point;->y:I

    .line 1064
    const/4 v2, 0x0

    .line 1065
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1300(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v4

    .line 1066
    const/4 v7, 0x0

    .line 1067
    const/4 v6, 0x0

    .line 1070
    :cond_1
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1071
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1073
    .local v0, "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1074
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8, v3}, Lcom/millennialmedia/internal/video/LightboxView;->access$1800(Lcom/millennialmedia/internal/video/LightboxView;I)V

    .line 1075
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1076
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1077
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 1078
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 1079
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/LightboxView;->requestLayout()V

    .line 1080
    return-void

    .line 1039
    .end local v0    # "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "heightRatio":F
    .end local v2    # "newFullscreenContainerTopMargin":I
    .end local v3    # "newHeight":I
    .end local v4    # "newVideoTopMargin":I
    .end local v5    # "newWidth":I
    .end local v6    # "newX":I
    .end local v7    # "newY":I
    :cond_2
    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->originalHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->heightDelta:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    add-float/2addr v8, v9

    float-to-int v3, v8

    goto/16 :goto_0

    .line 1044
    .restart local v1    # "heightRatio":F
    .restart local v3    # "newHeight":I
    :cond_3
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1045
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v10}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v5, v8

    goto/16 :goto_1

    .line 1048
    .restart local v5    # "newWidth":I
    :cond_4
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1300(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v4, v8

    goto/16 :goto_2

    .line 1050
    .restart local v4    # "newVideoTopMargin":I
    :cond_5
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1051
    invoke-static {v9}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    sub-int v2, v8, v9

    goto/16 :goto_3

    .line 1053
    .restart local v2    # "newFullscreenContainerTopMargin":I
    :cond_6
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v5

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1054
    invoke-static {v9}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v9

    iget-object v10, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v10}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 1053
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_4

    .line 1056
    .restart local v6    # "newX":I
    :cond_7
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$displaySize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 1057
    invoke-static {v9}, Lcom/millennialmedia/internal/video/LightboxView;->access$1600(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v9

    iget-object v10, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v10}, Lcom/millennialmedia/internal/video/LightboxView;->access$1600(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    .line 1056
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto/16 :goto_5
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 1031
    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->originalHeight:I

    .line 1032
    sub-int v0, p4, p2

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->heightDelta:I

    .line 1033
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x1

    return v0
.end method
