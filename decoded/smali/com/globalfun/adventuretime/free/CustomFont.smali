.class public final Lcom/globalfun/adventuretime/free/CustomFont;
.super Ljava/lang/Object;
.source "CustomFont.java"

# interfaces
.implements Lcom/globalfun/adventuretime/free/DeviceConfig;


# static fields
.field private static final ALIGN_REQUIRED:I = 0x2b

.field public static final MONOSPACE_CENTER:I = 0x2

.field public static final MONOSPACE_LEFT:I = 0x1

.field public static final MONOSPACE_OFF:I = 0x0

.field public static final MONOSPACE_RIGHT:I = 0x3


# instance fields
.field public cellHeight:I

.field public cellWidth:I

.field public charSpacing:I

.field private chars:[C

.field private hashMask:S

.field private height:[B

.field private image:Lcom/globalfun/adventuretime/free/Image;

.field public lineSpacing:I

.field public monoSpaced:I

.field public monoSpacedChars:[C

.field public monoSpacedWidth:I

.field private numChars:I

.field private width:[B

.field public wordSpacing:I

.field private x:[S

.field private y:[S

.field private yOffset:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpaced:I

    .line 36
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    .line 48
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    sget-object v4, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v4, p1}, Lcom/globalfun/adventuretime/free/Main;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v2, "in":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    .line 54
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->charSpacing:I

    .line 55
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->wordSpacing:I

    .line 56
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    .line 58
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->cellWidth:I

    .line 59
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->cellHeight:I

    .line 61
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->cellWidth:I

    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    .line 65
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->chars:[C

    .line 66
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    iput-short v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->hashMask:S

    .line 68
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->chars:[C

    array-length v4, v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    .line 72
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    new-array v4, v4, [S

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->x:[S

    .line 73
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    new-array v4, v4, [S

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->y:[S

    .line 75
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->width:[B

    .line 76
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->height:[B

    .line 78
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->yOffset:[B

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    if-lt v0, v4, :cond_0

    .line 91
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    .line 93
    .local v3, "size":I
    new-array v1, v3, [B

    .line 94
    .local v1, "img":[B
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 95
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v5}, Lcom/globalfun/adventuretime/free/Image;->createImage([BII)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v4

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->image:Lcom/globalfun/adventuretime/free/Image;

    .line 97
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 101
    .end local v0    # "i":I
    .end local v1    # "img":[B
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "size":I
    :goto_1
    return-void

    .line 82
    .restart local v0    # "i":I
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :cond_0
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->x:[S

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    aput-short v5, v4, v0

    .line 83
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->y:[S

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    aput-short v5, v4, v0

    .line 85
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->width:[B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v4, v0

    .line 86
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->height:[B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v4, v0

    .line 88
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->yOffset:[B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private getIndex(I)I
    .locals 3
    .param p1, "aChar"    # I

    .prologue
    .line 185
    iget-short v2, p0, Lcom/globalfun/adventuretime/free/CustomFont;->hashMask:S

    and-int v1, p1, v2

    .line 187
    .local v1, "index":I
    iget v0, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    .line 189
    .local v0, "c":I
    :goto_0
    iget v2, p0, Lcom/globalfun/adventuretime/free/CustomFont;->numChars:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/CustomFont;->chars:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 204
    :goto_1
    return v1

    .line 193
    :cond_1
    if-nez v0, :cond_2

    .line 195
    const/4 v1, -0x1

    .line 196
    goto :goto_1

    .line 199
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public charWidth(C)I
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 150
    iget v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->wordSpacing:I

    .line 152
    .local v3, "width":I
    const/16 v4, 0x20

    if-eq p1, v4, :cond_2

    .line 154
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/CustomFont;->getIndex(I)I

    move-result v0

    .line 156
    .local v0, "index":I
    if-gez v0, :cond_3

    .line 157
    iget v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    .line 161
    :goto_0
    iget v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpaced:I

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 163
    .local v2, "monoSpace":Z
    :goto_1
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    if-eqz v4, :cond_1

    .line 165
    const/4 v2, 0x0

    .line 167
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    array-length v1, v4

    .local v1, "j":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_5

    .line 176
    .end local v1    # "j":I
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 177
    iget v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    .line 180
    .end local v0    # "index":I
    .end local v2    # "monoSpace":Z
    :cond_2
    return v3

    .line 159
    .restart local v0    # "index":I
    :cond_3
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->width:[B

    aget-byte v3, v4, v0

    goto :goto_0

    .line 161
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 169
    .restart local v1    # "j":I
    .restart local v2    # "monoSpace":Z
    :cond_5
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    aget-char v4, v4, v1

    if-ne v4, p1, :cond_0

    .line 170
    const/4 v2, 0x1

    .line 171
    goto :goto_2
.end method

.method public charsHeight([CII)I
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "height":I
    move v2, p3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    .line 145
    return v1

    .line 134
    :cond_0
    aget-char v4, p1, p2

    invoke-direct {p0, v4}, Lcom/globalfun/adventuretime/free/CustomFont;->getIndex(I)I

    move-result v3

    .line 136
    .local v3, "index":I
    if-ltz v3, :cond_1

    .line 138
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/CustomFont;->height:[B

    aget-byte v4, v4, v3

    iget-object v5, p0, Lcom/globalfun/adventuretime/free/CustomFont;->yOffset:[B

    aget-byte v5, v5, v3

    add-int v0, v4, v5

    .line 140
    .local v0, "charHeight":I
    if-le v0, v1, :cond_1

    .line 141
    move v1, v0

    .line 132
    .end local v0    # "charHeight":I
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public charsWidth([CII)I
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "width":I
    move v0, p3

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 125
    return v1

    .line 119
    :cond_0
    aget-char v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/CustomFont;->charWidth(C)I

    move-result v2

    add-int/2addr v1, v2

    .line 121
    if-eqz v0, :cond_1

    .line 122
    iget v2, p0, Lcom/globalfun/adventuretime/free/CustomFont;->charSpacing:I

    add-int/2addr v1, v2

    .line 117
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public drawChar(Lcom/globalfun/adventuretime/free/Graphics;CII)I
    .locals 15
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "c"    # C
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 264
    const/16 v1, 0x20

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 266
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->wordSpacing:I

    add-int p3, p3, v1

    .line 338
    :goto_0
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->charSpacing:I

    add-int p3, p3, v1

    .line 340
    return p3

    .line 270
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/globalfun/adventuretime/free/CustomFont;->getIndex(I)I

    move-result v11

    .line 272
    .local v11, "index":I
    if-gez v11, :cond_1

    .line 274
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    add-int p3, p3, v1

    .line 276
    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->width:[B

    aget-byte v5, v1, v11

    .line 282
    .local v5, "width":I
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpaced:I

    if-eqz v1, :cond_5

    const/4 v13, 0x1

    .line 284
    .local v13, "monoSpace":Z
    :goto_1
    if-eqz v13, :cond_3

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    if-eqz v1, :cond_3

    .line 286
    const/4 v13, 0x0

    .line 288
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    array-length v12, v1

    .local v12, "j":I
    :cond_2
    add-int/lit8 v12, v12, -0x1

    if-gez v12, :cond_6

    .line 299
    .end local v12    # "j":I
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->height:[B

    aget-byte v6, v1, v11

    .line 301
    .local v6, "fHeight":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->x:[S

    aget-short v3, v1, v11

    .line 302
    .local v3, "fx":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->y:[S

    aget-short v4, v1, v11

    .line 306
    .local v4, "fy":I
    move/from16 v8, p3

    .line 307
    .local v8, "px":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->yOffset:[B

    aget-byte v1, v1, v11

    add-int p4, p4, v1

    .line 309
    if-eqz v13, :cond_4

    .line 311
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    sub-int v14, v1, v5

    .line 313
    .local v14, "space":I
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpaced:I

    packed-switch v1, :pswitch_data_0

    .line 327
    .end local v14    # "space":I
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/CustomFont;->image:Lcom/globalfun/adventuretime/free/Image;

    const/4 v7, 0x0

    const/16 v10, 0x14

    move-object/from16 v1, p1

    move/from16 v9, p4

    invoke-virtual/range {v1 .. v10}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    .line 331
    if-eqz v13, :cond_7

    .line 332
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    add-int p3, p3, v1

    goto :goto_0

    .line 282
    .end local v3    # "fx":I
    .end local v4    # "fy":I
    .end local v6    # "fHeight":I
    .end local v8    # "px":I
    .end local v13    # "monoSpace":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 290
    .restart local v12    # "j":I
    .restart local v13    # "monoSpace":Z
    :cond_6
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    aget-char v1, v1, v12

    move/from16 v0, p2

    if-ne v1, v0, :cond_2

    .line 291
    const/4 v13, 0x1

    .line 292
    goto :goto_2

    .line 316
    .end local v12    # "j":I
    .restart local v3    # "fx":I
    .restart local v4    # "fy":I
    .restart local v6    # "fHeight":I
    .restart local v8    # "px":I
    .restart local v14    # "space":I
    :pswitch_0
    add-int/lit8 v1, v14, 0x1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v8, v1

    .line 317
    goto :goto_3

    .line 320
    :pswitch_1
    add-int/2addr v8, v14

    goto :goto_3

    .line 334
    .end local v14    # "space":I
    :cond_7
    add-int p3, p3, v5

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawChars(Lcom/globalfun/adventuretime/free/Graphics;[CII)V
    .locals 3
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "chars"    # [C
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 251
    array-length v1, p2

    .line 253
    .local v1, "charLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 258
    return-void

    .line 255
    :cond_0
    aget-char v0, p2, v2

    .line 256
    .local v0, "c":C
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/globalfun/adventuretime/free/CustomFont;->drawChar(Lcom/globalfun/adventuretime/free/Graphics;CII)I

    move-result p3

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public drawChars(Lcom/globalfun/adventuretime/free/Graphics;[CIII)V
    .locals 3
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "chars"    # [C
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "align"    # I

    .prologue
    .line 231
    and-int/lit8 v1, p5, 0x2b

    if-lez v1, :cond_1

    .line 233
    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {p0, p2, v1, v2}, Lcom/globalfun/adventuretime/free/CustomFont;->charsWidth([CII)I

    move-result v0

    .line 235
    .local v0, "width":I
    and-int/lit8 v1, p5, 0x8

    if-lez v1, :cond_2

    .line 236
    sub-int/2addr p3, v0

    .line 240
    :cond_0
    :goto_0
    and-int/lit8 v1, p5, 0x20

    if-lez v1, :cond_3

    .line 241
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->cellHeight:I

    sub-int/2addr p4, v1

    .line 246
    .end local v0    # "width":I
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/globalfun/adventuretime/free/CustomFont;->drawChars(Lcom/globalfun/adventuretime/free/Graphics;[CII)V

    .line 247
    return-void

    .line 237
    .restart local v0    # "width":I
    :cond_2
    and-int/lit8 v1, p5, 0x1

    if-lez v1, :cond_0

    .line 238
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p3, v1

    goto :goto_0

    .line 242
    :cond_3
    and-int/lit8 v1, p5, 0x2

    if-lez v1, :cond_1

    .line 243
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->cellHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    goto :goto_1
.end method

.method public drawString(Lcom/globalfun/adventuretime/free/Graphics;IIII)V
    .locals 6
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "i"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "align"    # I

    .prologue
    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/globalfun/adventuretime/free/CustomFont;->drawChars(Lcom/globalfun/adventuretime/free/Graphics;[CIII)V

    .line 221
    return-void
.end method

.method public drawString(Lcom/globalfun/adventuretime/free/Graphics;Ljava/lang/String;III)V
    .locals 6
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "align"    # I

    .prologue
    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/globalfun/adventuretime/free/CustomFont;->drawChars(Lcom/globalfun/adventuretime/free/Graphics;[CIII)V

    .line 210
    return-void
.end method

.method public drawStrings(Lcom/globalfun/adventuretime/free/Graphics;[Ljava/lang/String;III)V
    .locals 7
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "align"    # I

    .prologue
    .line 214
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p2

    if-lt v6, v0, :cond_0

    .line 216
    return-void

    .line 215
    :cond_0
    aget-object v0, p2, v6

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/globalfun/adventuretime/free/CustomFont;->drawChars(Lcom/globalfun/adventuretime/free/Graphics;[CIII)V

    .line 214
    add-int/lit8 v6, v6, 0x1

    iget v0, p0, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    add-int/2addr p4, v0

    goto :goto_0
.end method

.method public drawSubstring(Lcom/globalfun/adventuretime/free/Graphics;Ljava/lang/String;IIIII)V
    .locals 6
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "align"    # I

    .prologue
    .line 225
    add-int v0, p3, p4

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .local v2, "chars":[C
    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/globalfun/adventuretime/free/CustomFont;->drawChars(Lcom/globalfun/adventuretime/free/Graphics;[CIII)V

    .line 227
    return-void
.end method

.method public getLinesHeight(I)I
    .locals 3
    .param p1, "numLines"    # I

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, "height":I
    if-lez p1, :cond_0

    .line 375
    iget v0, p0, Lcom/globalfun/adventuretime/free/CustomFont;->cellHeight:I

    .line 377
    :cond_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 378
    iget v1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 380
    :cond_1
    return v0
.end method

.method public setMonoSpacing([C)V
    .locals 4
    .param p1, "chs"    # [C

    .prologue
    .line 345
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    .line 347
    if-nez p1, :cond_1

    .line 348
    iget v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->cellWidth:I

    iput v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    .line 368
    :cond_0
    return-void

    .line 352
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedChars:[C

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 356
    aget-char v3, p1, v0

    invoke-direct {p0, v3}, Lcom/globalfun/adventuretime/free/CustomFont;->getIndex(I)I

    move-result v1

    .line 358
    .local v1, "index":I
    if-gez v1, :cond_3

    .line 354
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_3
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->width:[B

    aget-byte v2, v3, v1

    .line 363
    .local v2, "w":I
    iget v3, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    if-le v2, v3, :cond_2

    .line 364
    iput v2, p0, Lcom/globalfun/adventuretime/free/CustomFont;->monoSpacedWidth:I

    goto :goto_1
.end method

.method public stringHeight(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/globalfun/adventuretime/free/CustomFont;->charsHeight([CII)I

    move-result v0

    return v0
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/globalfun/adventuretime/free/CustomFont;->charsWidth([CII)I

    move-result v0

    return v0
.end method
