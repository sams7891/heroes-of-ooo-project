.class public Lcom/globalfun/adventuretime/free/Image;
.super Ljava/lang/Object;
.source "Image.java"


# static fields
.field public static final TRANS_MIRROR:B = 0x2t

.field public static final TRANS_MIRROR_ROT180:B = 0x1t

.field public static final TRANS_MIRROR_ROT270:B = 0x4t

.field public static final TRANS_MIRROR_ROT90:B = 0x7t

.field public static final TRANS_NONE:B = 0x0t

.field public static final TRANS_ROT180:B = 0x3t

.field public static final TRANS_ROT270:B = 0x6t

.field public static final TRANS_ROT90:B = 0x5t


# instance fields
.field private TranslateX:I

.field private TranslateY:I

.field private bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/globalfun/adventuretime/free/Image;->TranslateX:I

    .line 30
    iput v0, p0, Lcom/globalfun/adventuretime/free/Image;->TranslateY:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method

.method public static createImage(II)Lcom/globalfun/adventuretime/free/Image;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/globalfun/adventuretime/free/Image;->createImage(IIZ)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(IIZ)Lcom/globalfun/adventuretime/free/Image;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "supportAlpha"    # Z

    .prologue
    .line 168
    new-instance v1, Lcom/globalfun/adventuretime/free/Image;

    if-eqz p2, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/globalfun/adventuretime/free/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static createImage(Lcom/globalfun/adventuretime/free/Image;IIIII)Lcom/globalfun/adventuretime/free/Image;
    .locals 2
    .param p0, "srcImage"    # Lcom/globalfun/adventuretime/free/Image;
    .param p1, "srcXOffset"    # I
    .param p2, "srcYOffset"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "transform"    # I

    .prologue
    .line 185
    new-instance v0, Lcom/globalfun/adventuretime/free/Image;

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static createImage(Ljava/lang/String;)Lcom/globalfun/adventuretime/free/Image;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v6, p0}, Lcom/globalfun/adventuretime/free/Main;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 99
    :goto_0
    const/4 v3, 0x0

    .line 100
    .local v3, "read":I
    const/16 v6, 0x7e8

    new-array v0, v6, [B

    .line 101
    .local v0, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v4, "temp":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-gtz v3, :cond_0

    .line 111
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 112
    .local v5, "temp_arr":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v5, v7, v6}, Lcom/globalfun/adventuretime/free/Image;->createImage([BII)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v6

    return-object v6

    .line 95
    .end local v0    # "buffer":[B
    .end local v3    # "read":I
    .end local v4    # "temp":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "temp_arr":[B
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v3    # "read":I
    .restart local v4    # "temp":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static createImage([BII)Lcom/globalfun/adventuretime/free/Image;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/globalfun/adventuretime/free/Image;

    invoke-direct {v1, v0}, Lcom/globalfun/adventuretime/free/Image;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v1

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createRGBImage([IIIZ)Lcom/globalfun/adventuretime/free/Image;
    .locals 2
    .param p0, "rgb"    # [I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "processAlpha"    # Z

    .prologue
    .line 173
    new-instance v0, Lcom/globalfun/adventuretime/free/Image;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static loadBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "sprite"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 60
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 61
    .local v2, "height":I
    invoke-static {v3, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    return-object v0
.end method

.method public static loadImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)Lcom/globalfun/adventuretime/free/Image;
    .locals 2
    .param p0, "sprite"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmapConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 51
    new-instance v0, Lcom/globalfun/adventuretime/free/Image;

    invoke-static {p0, p1}, Lcom/globalfun/adventuretime/free/Image;->loadBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static loadImage([BII)Lcom/globalfun/adventuretime/free/Image;
    .locals 1
    .param p0, "imageData"    # [B
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Image;->createImage([BII)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertToBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    .local v0, "newBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldnt convert bitmap to config: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 210
    .end local v0    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Lcom/globalfun/adventuretime/free/Graphics;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    new-instance v0, Lcom/globalfun/adventuretime/free/Graphics;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Graphics;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRGB([IIIIIII)V
    .locals 8
    .param p1, "rgbData"    # [I
    .param p2, "offset"    # I
    .param p3, "scanlength"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 48
    return-void
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public paint(Lcom/globalfun/adventuretime/free/Graphics;)V
    .locals 3
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;

    .prologue
    .line 86
    iget v0, p0, Lcom/globalfun/adventuretime/free/Image;->TranslateX:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Image;->TranslateY:I

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/globalfun/adventuretime/free/Graphics;->drawImage(Lcom/globalfun/adventuretime/free/Image;III)V

    .line 88
    return-void
.end method

.method public setRefPixelPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/globalfun/adventuretime/free/Image;->TranslateX:I

    .line 81
    iput p2, p0, Lcom/globalfun/adventuretime/free/Image;->TranslateY:I

    .line 82
    return-void
.end method

.method public setTransform(I)V
    .locals 8
    .param p1, "rot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 118
    const/4 v7, 0x0

    .line 119
    .local v7, "degree":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 120
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 122
    const/high16 v7, 0x43340000    # 180.0f

    .line 124
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 126
    const/high16 v7, 0x42b40000    # 90.0f

    .line 128
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 130
    const/high16 v7, 0x43870000    # 270.0f

    .line 132
    :cond_2
    if-ne p1, v6, :cond_3

    .line 134
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 135
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 136
    const/high16 v7, 0x43340000    # 180.0f

    .line 138
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 140
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 141
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 145
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 146
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    const/high16 v7, 0x43870000    # 270.0f

    .line 149
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 151
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 152
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 153
    const/high16 v7, 0x42b40000    # 90.0f

    .line 155
    :cond_6
    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 156
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 157
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 156
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Image;->bitmap:Landroid/graphics/Bitmap;

    .line 158
    return-void
.end method
