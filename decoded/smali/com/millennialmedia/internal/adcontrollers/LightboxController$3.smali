.class Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;
.super Landroid/view/animation/Animation;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;->attachLightboxView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field final synthetic val$displaySize:Landroid/graphics/Point;

.field final synthetic val$distanceToDefaultPosY:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/graphics/Point;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->val$displaySize:Landroid/graphics/Point;

    iput p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->val$distanceToDefaultPosY:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 467
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->val$displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->val$distanceToDefaultPosY:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 470
    .local v0, "newY":F
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$000(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/video/LightboxView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 471
    return-void

    .line 467
    .end local v0    # "newY":F
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->val$displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;->val$distanceToDefaultPosY:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float v0, v1, v2

    goto :goto_0
.end method
