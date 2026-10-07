.class public Lcom/globalfun/adventuretime/free/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field public static final BASELINE:I = 0x40

.field public static final BOTTOM:I = 0x20

.field public static final DOTTED:I = 0x1

.field private static final FORCE_OPAQUE_COLORS:Z = true

.field public static final HCENTER:I = 0x1

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final SOLID:I = 0x0

.field public static final TOP:I = 0x10

.field public static final TRANS_MIRROR:B = 0x2t

.field public static final TRANS_MIRROR_ROT180:B = 0x1t

.field public static final TRANS_MIRROR_ROT270:B = 0x4t

.field public static final TRANS_MIRROR_ROT90:B = 0x7t

.field public static final TRANS_NONE:B = 0x0t

.field public static final TRANS_ROT180:B = 0x3t

.field public static final TRANS_ROT270:B = 0x6t

.field public static final TRANS_ROT90:B = 0x5t

.field public static final VCENTER:I = 0x2


# instance fields
.field EFFECT_DOTTED_STROKE:Landroid/graphics/PathEffect;

.field private TranslateX:I

.field private TranslateY:I

.field private cc:Landroid/graphics/Canvas;

.field private font:Lcom/globalfun/adventuretime/free/Font;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintOutline:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "currentCanvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    .line 48
    iput v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    .line 50
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->EFFECT_DOTTED_STROKE:Landroid/graphics/PathEffect;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->matrix:Landroid/graphics/Matrix;

    .line 56
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v3, v0, v3, v1}, Lcom/globalfun/adventuretime/free/Font;->getFont(IIII)Lcom/globalfun/adventuretime/free/Font;

    move-result-object v0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    .line 59
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    .line 61
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 63
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    return-void

    .line 50
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40800000    # 4.0f
    .end array-data
.end method


# virtual methods
.method public clipRect(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p2

    add-int v3, p1, p3

    iget v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v3, v4

    add-int v4, p2, p4

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 321
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    add-int v4, p1, p3

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-int v5, p2, p4

    iget v6, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public drawChar(CIII)V
    .locals 5
    .param p1, "character"    # C
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Graphics;->getFont()Lcom/globalfun/adventuretime/free/Font;

    move-result-object v1

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Font;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 482
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->style:I

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 483
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 485
    packed-switch p4, :pswitch_data_0

    .line 494
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    invoke-virtual {v4}, Lcom/globalfun/adventuretime/free/Font;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 495
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 497
    return-void

    .line 487
    :pswitch_1
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public drawChars([CIIIII)V
    .locals 7
    .param p1, "data"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Graphics;->getFont()Lcom/globalfun/adventuretime/free/Font;

    move-result-object v1

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Font;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 503
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->style:I

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 504
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 508
    packed-switch p6, :pswitch_data_0

    .line 517
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p4

    int-to-float v4, v1

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v1, p5

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    invoke-virtual {v2}, Lcom/globalfun/adventuretime/free/Font;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v6, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 518
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 521
    return-void

    .line 510
    :pswitch_1
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 513
    :pswitch_2
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public drawImage(Lcom/globalfun/adventuretime/free/Image;III)V
    .locals 5
    .param p1, "img"    # Lcom/globalfun/adventuretime/free/Image;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 264
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 268
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    .line 272
    :cond_1
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 276
    :cond_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v3, p3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 281
    return-void
.end method

.method public drawLine(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method public drawRGB([IIIIIIIZ)V
    .locals 10
    .param p1, "rgbData"    # [I
    .param p2, "offset"    # I
    .param p3, "scanlength"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "processAlpha"    # Z

    .prologue
    .line 449
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int v4, p4, v1

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int v5, p5, v1

    iget-object v9, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 450
    return-void
.end method

.method public drawRGB([IIIIIIIZFF)V
    .locals 12
    .param p1, "rgbData"    # [I
    .param p2, "offset"    # I
    .param p3, "scanlength"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "processAlpha"    # Z
    .param p9, "scaleX"    # F
    .param p10, "scaleY"    # F

    .prologue
    .line 454
    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int p4, p4, v2

    .line 455
    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int p5, p5, v2

    .line 456
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 458
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    move/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 460
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    move/from16 v0, p4

    int-to-float v3, v0

    div-float v3, v3, p9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v0, p5

    int-to-float v3, v0

    div-float v3, v3, p10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v11, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 462
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 463
    return-void
.end method

.method public drawRect(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    add-int v3, p1, p3

    iget v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int v4, p2, p4

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    return-void
.end method

.method public drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V
    .locals 6
    .param p1, "src"    # Lcom/globalfun/adventuretime/free/Image;
    .param p2, "x_src"    # I
    .param p3, "y_src"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "transform"    # I
    .param p7, "x_dest"    # I
    .param p8, "y_dest"    # I
    .param p9, "anchor"    # I

    .prologue
    .line 362
    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr p7, v3

    .line 363
    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr p8, v3

    .line 364
    and-int/lit8 v3, p9, 0x1

    if-eqz v3, :cond_8

    .line 366
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p2, v3

    .line 380
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "degree":F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 383
    .local v1, "matrix":Landroid/graphics/Matrix;
    const/4 v3, 0x3

    if-ne p6, v3, :cond_1

    .line 385
    const/high16 v0, 0x43340000    # 180.0f

    .line 386
    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v3, p4

    neg-int v3, v3

    int-to-float v3, v3

    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v4, p5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 388
    :cond_1
    const/4 v3, 0x5

    if-ne p6, v3, :cond_2

    .line 390
    const/high16 v0, 0x42b40000    # 90.0f

    .line 391
    sub-int v3, p2, p3

    neg-int v3, v3

    int-to-float v3, v3

    add-int v4, p2, p5

    add-int/2addr v4, p3

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 392
    move v2, p4

    .line 393
    .local v2, "temp":I
    move p4, p5

    .line 394
    move p5, v2

    .line 397
    .end local v2    # "temp":I
    :cond_2
    const/4 v3, 0x6

    if-ne p6, v3, :cond_3

    .line 399
    const/high16 v0, 0x43870000    # 270.0f

    .line 400
    add-int v3, p2, p4

    add-int/2addr v3, p3

    neg-int v3, v3

    int-to-float v3, v3

    sub-int v4, p2, p3

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 401
    move v2, p4

    .line 402
    .restart local v2    # "temp":I
    move p4, p5

    .line 403
    move p5, v2

    .line 405
    .end local v2    # "temp":I
    :cond_3
    const/4 v3, 0x1

    if-ne p6, v3, :cond_4

    .line 407
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 408
    const/4 v3, 0x0

    mul-int/lit8 v4, p3, 0x2

    add-int/2addr v4, p5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 410
    :cond_4
    const/4 v3, 0x2

    if-ne p6, v3, :cond_5

    .line 412
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 413
    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v3, p4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 415
    :cond_5
    const/4 v3, 0x4

    if-ne p6, v3, :cond_6

    .line 417
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 418
    add-int v3, p2, p3

    add-int/2addr v3, p4

    int-to-float v3, v3

    sub-int v4, p2, p3

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 419
    const/high16 v0, 0x43870000    # 270.0f

    .line 420
    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v3, p4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 421
    move v2, p4

    .line 422
    .restart local v2    # "temp":I
    move p4, p5

    .line 423
    move p5, v2

    .line 425
    .end local v2    # "temp":I
    :cond_6
    const/4 v3, 0x7

    if-ne p6, v3, :cond_7

    .line 427
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 429
    sub-int v3, p2, p3

    int-to-float v3, v3

    add-int v4, p2, p3

    add-int/2addr v4, p5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 430
    const/high16 v0, 0x42b40000    # 90.0f

    .line 431
    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v3, p4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 432
    move v2, p4

    .line 433
    .restart local v2    # "temp":I
    move p4, p5

    .line 434
    move p5, v2

    .line 436
    .end local v2    # "temp":I
    :cond_7
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 437
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    add-int v4, p7, p4

    add-int v5, p8, p5

    invoke-virtual {v3, p7, p8, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 439
    sub-int v3, p7, p2

    int-to-float v3, v3

    sub-int v4, p8, p3

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 442
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 443
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 444
    return-void

    .line 368
    .end local v0    # "degree":F
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :cond_8
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_9

    .line 370
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p3, v3

    .line 371
    goto/16 :goto_0

    .line 372
    :cond_9
    and-int/lit8 v3, p9, 0x20

    if-eqz v3, :cond_a

    .line 374
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getHeight()I

    move-result v3

    sub-int/2addr p3, v3

    .line 375
    goto/16 :goto_0

    .line 376
    :cond_a
    and-int/lit8 v3, p9, 0x8

    if-eqz v3, :cond_0

    .line 378
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getWidth()I

    move-result v3

    sub-int/2addr p2, v3

    goto/16 :goto_0
.end method

.method public drawRoundRect(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    add-int v4, p1, p3

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-int v5, p2, p4

    iget v6, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 125
    return-void
.end method

.method public drawString(Ljava/lang/String;III)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Graphics;->getFont()Lcom/globalfun/adventuretime/free/Font;

    move-result-object v1

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Font;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->style:I

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    packed-switch p4, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 150
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public drawSubstring(Ljava/lang/String;IIIII)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "anchor"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Graphics;->getFont()Lcom/globalfun/adventuretime/free/Font;

    move-result-object v1

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Font;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 164
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    iget v1, v1, Lcom/globalfun/adventuretime/free/Font;->style:I

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 165
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    packed-switch p6, :pswitch_data_0

    .line 178
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    add-int v3, p2, p3

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p4

    int-to-float v4, v1

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v1, p5

    int-to-float v5, v1

    iget-object v6, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    return-void

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public fillAlphaRect(IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "argb"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 210
    .local v6, "oldColor":I
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    add-int v3, p1, p3

    iget v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int v4, p2, p4

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    return-void
.end method

.method public fillAlphaRoundRect(IIIIIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I
    .param p7, "argb"    # I

    .prologue
    .line 224
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 225
    .local v0, "oldColor":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p7}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    add-int v5, p1, p3

    iget v6, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-int v6, p2, p4

    iget v7, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v3, p5

    int-to-float v4, p6

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 227
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    add-int v4, p1, p3

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-int v5, p2, p4

    iget v6, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 192
    return-void
.end method

.method public fillRect(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    add-int v3, p1, p3

    iget v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int v4, p2, p4

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 201
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v3, p2

    int-to-float v3, v3

    add-int v4, p1, p3

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-int v5, p2, p4

    iget v6, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 238
    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 3
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I

    .prologue
    .line 291
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 292
    .local v0, "p":Landroid/graphics/Path;
    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 293
    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 294
    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p5

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 295
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 296
    return-void
.end method

.method public getClipHeight()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getClipWidth()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getClipX()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getClipY()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFont()Lcom/globalfun/adventuretime/free/Font;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    return-object v0
.end method

.method public getTranslateX()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    return v0
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    .line 72
    return-void
.end method

.method public setClip(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v2, p2

    int-to-float v2, v2

    add-int v3, p1, p3

    iget v4, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int v4, p2, p4

    iget v5, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 307
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->cc:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 308
    .local v6, "clip":Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    add-int v1, p1, p3

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v1, p2

    if-ne v0, v1, :cond_0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    add-int v1, p2, p4

    iget v2, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    .line 310
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clip is not as expected! x,y,w,h: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  clip rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "RGB"    # I

    .prologue
    .line 252
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 254
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    return-void
.end method

.method public setColor(III)V
    .locals 2
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaintOutline:Landroid/graphics/Paint;

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    return-void
.end method

.method public setFont(Lcom/globalfun/adventuretime/free/Font;)V
    .locals 0
    .param p1, "font"    # Lcom/globalfun/adventuretime/free/Font;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Graphics;->font:Lcom/globalfun/adventuretime/free/Font;

    .line 470
    return-void
.end method

.method public setStrokeStyle(I)V
    .locals 2
    .param p1, "Style"    # I

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Graphics;->EFFECT_DOTTED_STROKE:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0
.end method

.method public translate(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 324
    iget v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateX:I

    .line 325
    iget v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/globalfun/adventuretime/free/Graphics;->TranslateY:I

    .line 326
    return-void
.end method
