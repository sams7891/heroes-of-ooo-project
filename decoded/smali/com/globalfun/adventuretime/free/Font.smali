.class public Lcom/globalfun/adventuretime/free/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field public static final FACE_MONOSPACE:I = 0x20

.field public static final FACE_PROPORTIONAL:I = 0x40

.field public static final FACE_SYSTEM:I = 0x0

.field public static final FONT_INPUT_TEXT:I = 0x1

.field public static final FONT_STATIC_TEXT:I = 0x0

.field public static final SIZE_LARGE:I = 0x10

.field public static final SIZE_MEDIUM:I = 0x0

.field public static final SIZE_SMALL:I = 0x8

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_PLAIN:I = 0x0

.field public static final STYLE_UNDERLINED:I = 0x4


# instance fields
.field public color:I

.field private fontHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field public style:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/globalfun/adventuretime/free/Font;->color:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/globalfun/adventuretime/free/Font;->style:I

    .line 27
    const/16 v0, 0xc

    iput v0, p0, Lcom/globalfun/adventuretime/free/Font;->fontHeight:I

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Font;->mPaint:Landroid/graphics/Paint;

    .line 10
    return-void
.end method

.method public static getFont(IIII)Lcom/globalfun/adventuretime/free/Font;
    .locals 2
    .param p0, "face"    # I
    .param p1, "style"    # I
    .param p2, "size"    # I
    .param p3, "color"    # I

    .prologue
    .line 84
    new-instance v0, Lcom/globalfun/adventuretime/free/Font;

    invoke-direct {v0}, Lcom/globalfun/adventuretime/free/Font;-><init>()V

    .line 85
    .local v0, "f":Lcom/globalfun/adventuretime/free/Font;
    iput p3, v0, Lcom/globalfun/adventuretime/free/Font;->color:I

    .line 86
    sparse-switch p2, :sswitch_data_0

    .line 100
    :goto_0
    return-object v0

    .line 88
    :sswitch_0
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Font;->setFontHeight(I)V

    .line 89
    iput p1, v0, Lcom/globalfun/adventuretime/free/Font;->style:I

    goto :goto_0

    .line 92
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Font;->setFontHeight(I)V

    .line 93
    iput p1, v0, Lcom/globalfun/adventuretime/free/Font;->style:I

    goto :goto_0

    .line 96
    :sswitch_2
    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Font;->setFontHeight(I)V

    .line 97
    iput p1, v0, Lcom/globalfun/adventuretime/free/Font;->style:I

    goto :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private setFontHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/globalfun/adventuretime/free/Font;->fontHeight:I

    .line 80
    return-void
.end method


# virtual methods
.method public charWidth(C)I
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public charsWidth([CII)I
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Font;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Font;->fontHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    return v1
.end method

.method public getBaselinePosition()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/globalfun/adventuretime/free/Font;->fontHeight:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/globalfun/adventuretime/free/Font;->fontHeight:I

    return v0
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 5
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Font;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Font;->fontHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Font;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    return v1
.end method

.method public substringWidth(Ljava/lang/String;II)I
    .locals 4
    .param p1, "ch"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 48
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Font;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Font;->fontHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Font;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v3, p2, p3

    invoke-virtual {v1, v2, p2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    return v1
.end method
