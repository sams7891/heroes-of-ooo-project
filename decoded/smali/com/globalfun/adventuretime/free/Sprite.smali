.class public final Lcom/globalfun/adventuretime/free/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"

# interfaces
.implements Lcom/globalfun/adventuretime/free/DeviceConfig;


# static fields
.field public static final TRANSFORM:[I


# instance fields
.field private height:I

.field private image:Lcom/globalfun/adventuretime/free/Image;

.field private numFrames:I

.field public refPixelX:I

.field public refPixelY:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 7
    new-array v0, v4, [I

    const/4 v1, 0x1

    .line 10
    aput v3, v0, v1

    .line 11
    aput v4, v0, v2

    .line 12
    const/4 v1, 0x6

    aput v1, v0, v3

    const/4 v1, 0x4

    .line 13
    aput v2, v0, v1

    .line 7
    sput-object v0, Lcom/globalfun/adventuretime/free/Sprite;->TRANSFORM:[I

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/globalfun/adventuretime/free/Image;II)V
    .locals 1
    .param p1, "image"    # Lcom/globalfun/adventuretime/free/Image;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Sprite;->image:Lcom/globalfun/adventuretime/free/Image;

    .line 28
    iput p2, p0, Lcom/globalfun/adventuretime/free/Sprite;->width:I

    .line 29
    iput p3, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    .line 31
    invoke-virtual {p1}, Lcom/globalfun/adventuretime/free/Image;->getHeight()I

    move-result v0

    div-int/2addr v0, p3

    iput v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->numFrames:I

    .line 32
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    return v0
.end method

.method public getRawFrameCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->numFrames:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->width:I

    return v0
.end method

.method public paint(Lcom/globalfun/adventuretime/free/Graphics;III)V
    .locals 6
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "frame"    # I

    .prologue
    .line 57
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/globalfun/adventuretime/free/Sprite;->paint(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V

    .line 58
    return-void
.end method

.method public paint(Lcom/globalfun/adventuretime/free/Graphics;IIII)V
    .locals 6
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "frame"    # I
    .param p5, "align"    # I

    .prologue
    .line 62
    and-int/lit8 v0, p5, 0x8

    if-lez v0, :cond_2

    .line 63
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->width:I

    sub-int/2addr p2, v0

    .line 67
    :cond_0
    :goto_0
    and-int/lit8 v0, p5, 0x20

    if-lez v0, :cond_3

    .line 68
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    sub-int/2addr p3, v0

    .line 72
    :cond_1
    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/globalfun/adventuretime/free/Sprite;->paint(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V

    .line 73
    return-void

    .line 64
    :cond_2
    and-int/lit8 v0, p5, 0x1

    if-lez v0, :cond_0

    .line 65
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->width:I

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    goto :goto_0

    .line 69
    :cond_3
    and-int/lit8 v0, p5, 0x2

    if-lez v0, :cond_1

    .line 70
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p3, v0

    goto :goto_1
.end method

.method public paint(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V
    .locals 10
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "frame"    # I
    .param p5, "hFlip"    # Z

    .prologue
    .line 77
    if-ltz p4, :cond_0

    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->numFrames:I

    if-lt p4, v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    if-eqz p5, :cond_3

    .line 83
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->refPixelX:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Sprite;->width:I

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 87
    :goto_1
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->refPixelY:I

    sub-int/2addr p3, v0

    .line 91
    const/4 v6, 0x0

    .line 93
    .local v6, "transform":I
    if-eqz p5, :cond_2

    .line 95
    const/4 v6, 0x2

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Sprite;->image:Lcom/globalfun/adventuretime/free/Image;

    const/4 v2, 0x0

    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    mul-int v3, p4, v0

    iget v4, p0, Lcom/globalfun/adventuretime/free/Sprite;->width:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    const/16 v9, 0x14

    move-object v0, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    goto :goto_0

    .line 85
    .end local v6    # "transform":I
    :cond_3
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->refPixelX:I

    sub-int/2addr p2, v0

    goto :goto_1
.end method

.method public paintTransformed(Lcom/globalfun/adventuretime/free/Graphics;IIII)V
    .locals 10
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "frame"    # I
    .param p5, "dir"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->refPixelX:I

    sub-int/2addr p2, v0

    .line 106
    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->refPixelY:I

    sub-int/2addr p3, v0

    .line 110
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Sprite;->image:Lcom/globalfun/adventuretime/free/Image;

    const/4 v2, 0x0

    iget v0, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    mul-int v3, p4, v0

    iget v4, p0, Lcom/globalfun/adventuretime/free/Sprite;->width:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Sprite;->height:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Sprite;->TRANSFORM:[I

    aget v6, v0, p5

    const/16 v9, 0x14

    move-object v0, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    .line 111
    return-void
.end method

.method public setRefPixelPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/globalfun/adventuretime/free/Sprite;->refPixelX:I

    .line 52
    iput p2, p0, Lcom/globalfun/adventuretime/free/Sprite;->refPixelY:I

    .line 53
    return-void
.end method
