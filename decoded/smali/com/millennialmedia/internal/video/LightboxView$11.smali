.class Lcom/millennialmedia/internal/video/LightboxView$11;
.super Landroid/view/animation/Animation;
.source "LightboxView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field heightDelta:I

.field originalHeight:I

.field originalWidth:I

.field final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field final synthetic val$defaultPosition:Landroid/graphics/Point;

.field final synthetic val$displaySize:Landroid/graphics/Point;

.field widthDelta:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$displaySize:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 895
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 896
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v3

    .line 899
    .local v3, "newHeight":I
    :goto_0
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    sub-int v8, v3, v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v10}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 900
    .local v1, "heightRatio":F
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 901
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v5

    .line 903
    .local v5, "newWidth":I
    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_4

    const/4 v4, 0x0

    .line 905
    .local v4, "newVideoTopMargin":I
    :goto_2
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v2

    .line 908
    .local v2, "newFullscreenContainerTopMargin":I
    :goto_3
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v6, v8, Landroid/graphics/Point;->x:I

    .line 911
    .local v6, "newX":I
    :goto_4
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->y:I

    .line 914
    .local v7, "newY":I
    :goto_5
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    if-le v5, v8, :cond_0

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    if-le v3, v8, :cond_0

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    if-ge v6, v8, :cond_0

    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    if-lt v7, v8, :cond_1

    .line 917
    :cond_0
    const/4 v4, 0x0

    .line 918
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v2

    .line 919
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v5

    .line 920
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v3

    .line 921
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->y:I

    .line 922
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v6, v8, Landroid/graphics/Point;->x:I

    .line 923
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 927
    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_8

    .line 928
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 929
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$defaultPosition:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 930
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/LightboxView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v9}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 931
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 932
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 934
    .local v0, "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 935
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8, v3}, Lcom/millennialmedia/internal/video/LightboxView;->access$1800(Lcom/millennialmedia/internal/video/LightboxView;I)V

    .line 936
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 937
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    .line 938
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v9, -0x1

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 939
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v9, -0x1

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 953
    :goto_6
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/LightboxView;->requestLayout()V

    .line 954
    return-void

    .line 896
    .end local v0    # "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "heightRatio":F
    .end local v2    # "newFullscreenContainerTopMargin":I
    .end local v3    # "newHeight":I
    .end local v4    # "newVideoTopMargin":I
    .end local v5    # "newWidth":I
    .end local v6    # "newX":I
    .end local v7    # "newY":I
    :cond_2
    iget v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->originalHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->heightDelta:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    sub-float/2addr v8, v9

    float-to-int v3, v8

    goto/16 :goto_0

    .line 901
    .restart local v1    # "heightRatio":F
    .restart local v3    # "newHeight":I
    :cond_3
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->widthDelta:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v5, v8

    goto/16 :goto_1

    .line 903
    .restart local v5    # "newWidth":I
    :cond_4
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1300(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v4, v8

    goto/16 :goto_2

    .line 905
    .restart local v4    # "newVideoTopMargin":I
    :cond_5
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 906
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v8

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v9}, Lcom/millennialmedia/internal/video/LightboxView;->access$1400(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    sub-int v2, v8, v9

    goto/16 :goto_3

    .line 908
    .restart local v2    # "newFullscreenContainerTopMargin":I
    :cond_6
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v5

    iget-object v10, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 909
    invoke-static {v10}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v10

    iget-object v11, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v11}, Lcom/millennialmedia/internal/video/LightboxView;->access$1500(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    float-to-int v11, v11

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    .line 908
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_4

    .line 911
    .restart local v6    # "newX":I
    :cond_7
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v3

    iget-object v10, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 912
    invoke-static {v10}, Lcom/millennialmedia/internal/video/LightboxView;->access$1600(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v10

    iget-object v11, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v11}, Lcom/millennialmedia/internal/video/LightboxView;->access$1600(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    float-to-int v11, v11

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    .line 911
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto/16 :goto_5

    .line 942
    .restart local v7    # "newY":I
    :cond_8
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    .line 943
    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$1700(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 945
    .restart local v0    # "fullscreenContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 946
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8, v3}, Lcom/millennialmedia/internal/video/LightboxView;->access$1800(Lcom/millennialmedia/internal/video/LightboxView;I)V

    .line 947
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 948
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/millennialmedia/internal/video/MMVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 949
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 950
    iget-object v8, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v8}, Lcom/millennialmedia/internal/video/LightboxView;->access$300(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v8

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Lcom/millennialmedia/internal/video/MMVideoView;->setTranslationX(F)V

    goto/16 :goto_6
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 885
    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->originalHeight:I

    .line 886
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->heightDelta:I

    .line 887
    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->originalWidth:I

    .line 888
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1200(Lcom/millennialmedia/internal/video/LightboxView;)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->widthDelta:I

    .line 889
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x1

    return v0
.end method
