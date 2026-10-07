.class public abstract Lcom/globalfun/adventuretime/free/Touch;
.super Lcom/globalfun/adventuretime/free/GameCanvas;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/globalfun/adventuretime/free/Touch$TouchRegion;
    }
.end annotation


# static fields
.field private static final MAX_REGIONS:I = 0x20

.field public static final PI:I = 0xc91

.field public static final PI_34:I = 0x96c

.field public static final PI_DEGREES:I = 0xb4

.field public static final PI_DEGREES_DOUBLE:I = 0x168

.field public static final PI_DEGREES_HALF:I = 0x5a

.field public static final PI_DOUBLE:I = 0x1922

.field public static final PI_Q:I = 0x324

.field public static PRECISION:I = 0x0

.field private static final SINE:[I

.field private static final SINE_COUNT:I = 0x2d

.field public static final TOUCH_TYPE_KEY:I = 0x2

.field public static final TOUCH_TYPE_MENU:I = 0x1

.field public static final TOUCH_TYPE_SOFTKEY:I = 0x0

.field public static final TOUCH_TYPE_USER:I = -0x1

.field public static final TOUCH_VIBRATE:I = 0x64


# instance fields
.field fixedpos:[I

.field private globalPressed:I

.field oldpos:I

.field private pointerX:I

.field private pointerY:I

.field radius:I

.field private touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x24

    const/16 v3, 0xa

    .line 96
    sput v3, Lcom/globalfun/adventuretime/free/Touch;->PRECISION:I

    .line 98
    const/16 v0, 0x2e

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x47

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x6b

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xb2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xd5

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xf8

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x11a

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x13c

    aput v2, v0, v1

    const/16 v1, 0x15e

    aput v1, v0, v3

    const/16 v1, 0xb

    .line 99
    const/16 v2, 0x180

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1a0

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x1c1

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1e1

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x21f

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x23d

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x25a

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x276

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x292

    aput v2, v0, v1

    const/16 v1, 0x15

    .line 100
    const/16 v2, 0x2ad

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x2c7

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x2e1

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x2f9

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x310

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x327

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x33c

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x351

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x364

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x377

    aput v2, v0, v1

    const/16 v1, 0x1f

    .line 101
    const/16 v2, 0x388

    aput v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x398

    aput v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x3a7

    aput v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x3b5

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x3c2

    aput v2, v0, v1

    const/16 v1, 0x3ce

    aput v1, v0, v4

    const/16 v1, 0x25

    const/16 v2, 0x3d8

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x3e2

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x3ea

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x3f0

    aput v2, v0, v1

    const/16 v1, 0x29

    .line 102
    const/16 v2, 0x3f6

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x3fa

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 103
    const/16 v2, 0x3fe

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3ff

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x400

    aput v2, v0, v1

    .line 98
    sput-object v0, Lcom/globalfun/adventuretime/free/Touch;->SINE:[I

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/globalfun/adventuretime/free/Main;)V
    .locals 4
    .param p1, "parent"    # Lcom/globalfun/adventuretime/free/Main;

    .prologue
    const/4 v2, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    .line 19
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerX:I

    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerY:I

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->oldpos:I

    .line 86
    iput v2, p0, Lcom/globalfun/adventuretime/free/Touch;->radius:I

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->fixedpos:[I

    .line 27
    const/16 v1, 0x20

    new-array v1, v1, [Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    iput-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    .line 29
    const/16 v0, 0x20

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    new-instance v2, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;-><init>(Lcom/globalfun/adventuretime/free/Touch;ILcom/globalfun/adventuretime/free/Touch$TouchRegion;)V

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/globalfun/adventuretime/free/Touch;I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    return-void
.end method

.method static synthetic access$1(Lcom/globalfun/adventuretime/free/Touch;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    return v0
.end method

.method public static final atan(II)I
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 153
    move v0, p1

    .line 154
    .local v0, "abs_y":I
    const/4 v1, 0x0

    .line 155
    .local v1, "angle":I
    const/4 v4, 0x0

    .local v4, "r":I
    const/4 v2, 0x0

    .local v2, "p1":I
    const/4 v3, 0x0

    .line 156
    .local v3, "p2":I
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 157
    const/4 v5, 0x0

    .line 179
    :goto_0
    return v5

    .line 158
    :cond_0
    if-gez p1, :cond_1

    .line 159
    neg-int v0, p1

    .line 161
    :cond_1
    if-ltz p0, :cond_2

    .line 163
    sub-int v2, p0, v0

    .line 164
    add-int v3, p0, v0

    .line 165
    sget v5, Lcom/globalfun/adventuretime/free/Touch;->PRECISION:I

    shl-int v5, v2, v5

    div-int v4, v5, v3

    .line 166
    mul-int/lit16 v5, v4, 0x324

    sget v6, Lcom/globalfun/adventuretime/free/Touch;->PRECISION:I

    shr-int/2addr v5, v6

    rsub-int v1, v5, 0x324

    .line 176
    :goto_1
    if-gez p1, :cond_3

    .line 177
    rsub-int v5, v1, 0xc91

    add-int/lit16 v5, v5, 0xc91

    goto :goto_0

    .line 170
    :cond_2
    add-int v2, p0, v0

    .line 171
    sub-int v3, v0, p0

    .line 172
    sget v5, Lcom/globalfun/adventuretime/free/Touch;->PRECISION:I

    shl-int v5, v2, v5

    div-int v4, v5, v3

    .line 173
    mul-int/lit16 v5, v4, 0x324

    sget v6, Lcom/globalfun/adventuretime/free/Touch;->PRECISION:I

    shr-int/2addr v5, v6

    rsub-int v1, v5, 0x96c

    goto :goto_1

    :cond_3
    move v5, v1

    .line 179
    goto :goto_0
.end method

.method public static final cos(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 147
    add-int/lit8 v0, p0, 0x5a

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Touch;->sin(I)I

    move-result v0

    return v0
.end method

.method private getEmptyTouch()I
    .locals 3

    .prologue
    .line 457
    const/4 v1, -0x1

    .line 459
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    .line 465
    :goto_1
    return v1

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$12(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 461
    move v1, v0

    .line 462
    goto :goto_1

    .line 459
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getRegion(IIZ)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "onlyVolatile"    # Z

    .prologue
    .line 401
    const/4 v3, -0x1

    .line 402
    .local v3, "index":I
    const/4 v0, 0x0

    .line 404
    .local v0, "border":I
    const/16 v2, 0x20

    .local v2, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    .line 423
    return v3

    .line 406
    :cond_1
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v4, v5, v2

    .line 408
    .local v4, "region":Lcom/globalfun/adventuretime/free/Touch$TouchRegion;
    if-eqz p3, :cond_2

    invoke-static {v4}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$8(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    :cond_2
    invoke-static {v4, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$9(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)I

    move-result v1

    .line 413
    .local v1, "dist":I
    if-ltz v1, :cond_0

    .line 415
    if-ltz v3, :cond_3

    if-ge v1, v0, :cond_0

    .line 417
    :cond_3
    move v3, v2

    .line 418
    move v0, v1

    goto :goto_0
.end method

.method public static final sin(I)I
    .locals 3
    .param p0, "angle"    # I

    .prologue
    .line 117
    if-gez p0, :cond_0

    .line 119
    neg-int p0, p0

    .line 120
    rem-int/lit16 p0, p0, 0x168

    .line 121
    rsub-int p0, p0, 0x168

    .line 128
    :goto_0
    rem-int/lit8 v1, p0, 0x5a

    shr-int/lit8 v0, v1, 0x1

    .line 130
    .local v0, "ang":I
    const/16 v1, 0x5a

    if-ge p0, v1, :cond_1

    .line 131
    sget-object v1, Lcom/globalfun/adventuretime/free/Touch;->SINE:[I

    aget v1, v1, v0

    .line 137
    :goto_1
    return v1

    .line 125
    .end local v0    # "ang":I
    :cond_0
    rem-int/lit16 p0, p0, 0x168

    goto :goto_0

    .line 132
    .restart local v0    # "ang":I
    :cond_1
    const/16 v1, 0xb4

    if-ge p0, v1, :cond_2

    .line 133
    sget-object v1, Lcom/globalfun/adventuretime/free/Touch;->SINE:[I

    rsub-int/lit8 v2, v0, 0x2d

    aget v1, v1, v2

    goto :goto_1

    .line 134
    :cond_2
    const/16 v1, 0x10e

    if-ge p0, v1, :cond_3

    .line 135
    sget-object v1, Lcom/globalfun/adventuretime/free/Touch;->SINE:[I

    aget v1, v1, v0

    neg-int v1, v1

    goto :goto_1

    .line 137
    :cond_3
    sget-object v1, Lcom/globalfun/adventuretime/free/Touch;->SINE:[I

    rsub-int/lit8 v2, v0, 0x2d

    aget v1, v1, v2

    neg-int v1, v1

    goto :goto_1
.end method


# virtual methods
.method public LeftPointerPressed(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 314
    const/4 v0, 0x1

    sput-boolean v0, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown:Z

    .line 315
    sput p1, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    .line 316
    sput p2, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    .line 317
    sput p1, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointX:I

    .line 318
    sput p2, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointY:I

    .line 319
    return-void
.end method

.method public approx_distance(II)I
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 213
    if-gez p1, :cond_0

    neg-int p1, p1

    .line 214
    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    .line 216
    :cond_1
    if-ge p1, p2, :cond_3

    .line 218
    move v2, p1

    .line 219
    .local v2, "min":I
    move v1, p2

    .line 227
    .local v1, "max":I
    :goto_0
    mul-int/lit16 v3, v1, 0x3ef

    mul-int/lit16 v4, v2, 0x1b9

    add-int v0, v3, v4

    .line 228
    .local v0, "approx":I
    shl-int/lit8 v3, v2, 0x4

    if-ge v1, v3, :cond_2

    .line 229
    mul-int/lit8 v3, v1, 0x28

    sub-int/2addr v0, v3

    .line 232
    :cond_2
    add-int/lit16 v3, v0, 0x200

    shr-int/lit8 v3, v3, 0xa

    return v3

    .line 223
    .end local v0    # "approx":I
    .end local v1    # "max":I
    .end local v2    # "min":I
    :cond_3
    move v2, p2

    .line 224
    .restart local v2    # "min":I
    move v1, p1

    .restart local v1    # "max":I
    goto :goto_0
.end method

.method public clearTouch()V
    .locals 2

    .prologue
    .line 428
    const/16 v0, 0x20

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 431
    const/4 v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    .line 432
    return-void

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$10(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)V

    goto :goto_0
.end method

.method public clearTouchState()V
    .locals 3

    .prologue
    .line 436
    const/16 v0, 0x20

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 439
    const/4 v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    .line 440
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$6(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;Z)V

    goto :goto_0
.end method

.method public getTouch(I)Lcom/globalfun/adventuretime/free/Touch$TouchRegion;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public intersect(IIII)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I
    .param p4, "a"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->fixedpos:[I

    const/4 v1, 0x0

    invoke-static {p4}, Lcom/globalfun/adventuretime/free/Touch;->cos(I)I

    move-result v2

    mul-int/2addr v2, p3

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->fixedpos:[I

    const/4 v1, 0x1

    invoke-static {p4}, Lcom/globalfun/adventuretime/free/Touch;->sin(I)I

    move-result v2

    mul-int/2addr v2, p3

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->fixedpos:[I

    return-object v0
.end method

.method public isTouchPressed(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    return v0
.end method

.method public isTouchReleased(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$2(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v0

    return v0
.end method

.method public paintTouch(Lcom/globalfun/adventuretime/free/Graphics;)V
    .locals 2
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/Touch;->clearClip(Lcom/globalfun/adventuretime/free/Graphics;)V

    .line 451
    const/16 v0, 0x20

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 453
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$11(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;Lcom/globalfun/adventuretime/free/Graphics;)V

    goto :goto_0
.end method

.method public pointerDragged(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x1e

    const/16 v9, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 325
    sget-boolean v7, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown:Z

    if-eqz v7, :cond_d

    iget v7, p0, Lcom/globalfun/adventuretime/free/Touch;->screenWidth:I

    div-int/lit8 v7, v7, 0x2

    if-ge p1, v7, :cond_d

    .line 327
    iget v7, p0, Lcom/globalfun/adventuretime/free/Touch;->radius:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 328
    sget-object v7, Lcom/globalfun/adventuretime/free/Engine;->touchImage:Lcom/globalfun/adventuretime/free/Image;

    invoke-virtual {v7}, Lcom/globalfun/adventuretime/free/Image;->getWidth()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    sget-object v8, Lcom/globalfun/adventuretime/free/Engine;->touchJoy:Lcom/globalfun/adventuretime/free/Image;

    invoke-virtual {v8}, Lcom/globalfun/adventuretime/free/Image;->getWidth()I

    move-result v8

    shr-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/globalfun/adventuretime/free/Touch;->radius:I

    .line 329
    :cond_0
    sput p1, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointX:I

    .line 330
    sput p2, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointY:I

    .line 331
    sget v7, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget v8, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v9, :cond_2

    .line 332
    sget v7, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget v8, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v9, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Touch;->releaseKeys()V

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    sget v7, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    sub-int p2, v7, p2

    .line 339
    sget v7, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    sget v8, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    sub-int v4, v7, v8

    .line 340
    .local v4, "y1":I
    sget v7, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    sub-int/2addr p1, v7

    .line 341
    sub-int/2addr p2, v4

    .line 342
    invoke-static {p1, p2}, Lcom/globalfun/adventuretime/free/Touch;->atan(II)I

    move-result v7

    mul-int/lit16 v7, v7, 0xb4

    div-int/lit16 v7, v7, 0x13a

    mul-int/lit8 v7, v7, 0x64

    shr-int/lit8 v0, v7, 0xa

    .line 343
    .local v0, "a":I
    invoke-virtual {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Touch;->approx_distance(II)I

    move-result v7

    iget v8, p0, Lcom/globalfun/adventuretime/free/Touch;->radius:I

    if-le v7, v8, :cond_3

    .line 345
    iget v7, p0, Lcom/globalfun/adventuretime/free/Touch;->radius:I

    invoke-virtual {p0, p1, p2, v7, v0}, Lcom/globalfun/adventuretime/free/Touch;->intersect(IIII)[I

    move-result-object v7

    iput-object v7, p0, Lcom/globalfun/adventuretime/free/Touch;->fixedpos:[I

    .line 346
    iget-object v7, p0, Lcom/globalfun/adventuretime/free/Touch;->fixedpos:[I

    aget v5, v7, v5

    shr-int/lit8 v5, v5, 0xa

    sget v7, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    add-int/2addr v5, v7

    sput v5, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointX:I

    .line 347
    sget v5, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    iget-object v7, p0, Lcom/globalfun/adventuretime/free/Touch;->fixedpos:[I

    aget v6, v7, v6

    shr-int/lit8 v6, v6, 0xa

    sub-int/2addr v5, v6

    sput v5, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointY:I

    .line 349
    :cond_3
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Touch;->releaseKeys()V

    .line 350
    if-ltz v0, :cond_4

    if-lt v0, v10, :cond_5

    :cond_4
    const/16 v5, 0x14a

    if-le v0, v5, :cond_6

    .line 351
    :cond_5
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto :goto_0

    .line 352
    :cond_6
    if-lt v0, v10, :cond_7

    if-ge v0, v11, :cond_7

    .line 353
    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto :goto_0

    .line 354
    :cond_7
    if-lt v0, v11, :cond_8

    const/16 v5, 0x78

    if-ge v0, v5, :cond_8

    .line 355
    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto :goto_0

    .line 356
    :cond_8
    const/16 v5, 0x78

    if-lt v0, v5, :cond_9

    const/16 v5, 0x96

    if-ge v0, v5, :cond_9

    .line 357
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto :goto_0

    .line 358
    :cond_9
    const/16 v5, 0x96

    if-lt v0, v5, :cond_a

    const/16 v5, 0xd2

    if-ge v0, v5, :cond_a

    .line 359
    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto/16 :goto_0

    .line 360
    :cond_a
    const/16 v5, 0xd2

    if-lt v0, v5, :cond_b

    const/16 v5, 0xf0

    if-ge v0, v5, :cond_b

    .line 361
    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto/16 :goto_0

    .line 362
    :cond_b
    const/16 v5, 0xf0

    if-lt v0, v5, :cond_c

    const/16 v5, 0x12c

    if-ge v0, v5, :cond_c

    .line 363
    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto/16 :goto_0

    .line 364
    :cond_c
    const/16 v5, 0x12c

    if-lt v0, v5, :cond_1

    const/16 v5, 0x14a

    if-ge v0, v5, :cond_1

    .line 365
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Touch;->keyPressed(I)V

    goto/16 :goto_0

    .line 369
    .end local v0    # "a":I
    .end local v4    # "y1":I
    :cond_d
    iput p1, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerX:I

    .line 370
    iput p2, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerY:I

    .line 372
    const/16 v1, 0x20

    .local v1, "i":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_e

    .line 375
    iget v7, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    if-ltz v7, :cond_f

    iget-object v7, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    iget v8, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$8(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v7

    if-nez v7, :cond_f

    move v3, v5

    .line 377
    .local v3, "pressVolatile":Z
    :goto_2
    if-eqz v3, :cond_1

    .line 380
    invoke-direct {p0, p1, p2, v6}, Lcom/globalfun/adventuretime/free/Touch;->getRegion(IIZ)I

    move-result v2

    .line 382
    .local v2, "press":I
    if-ltz v2, :cond_1

    .line 385
    iget v7, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    if-ltz v7, :cond_10

    .line 387
    iget v5, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    if-eq v2, v5, :cond_1

    .line 389
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    iget v7, p0, Lcom/globalfun/adventuretime/free/Touch;->globalPressed:I

    aget-object v5, v5, v7

    invoke-static {v5, v6}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$6(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;Z)V

    goto/16 :goto_0

    .line 373
    .end local v2    # "press":I
    .end local v3    # "pressVolatile":Z
    :cond_e
    iget-object v7, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v7, v7, v1

    invoke-static {v7, p1, p2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$7(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)V

    goto :goto_1

    :cond_f
    move v3, v6

    .line 375
    goto :goto_2

    .line 394
    .restart local v2    # "press":I
    .restart local v3    # "pressVolatile":Z
    :cond_10
    iget-object v6, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v6, v6, v2

    invoke-static {v6, p1, p2, v5}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$5(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;IIZ)V

    goto/16 :goto_0
.end method

.method public pointerPressed(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 238
    iput p1, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerX:I

    .line 239
    iput p2, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerY:I

    .line 245
    sget v1, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v1, :cond_2

    .line 247
    add-int/lit8 v1, p1, -0x1e

    sget v2, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    shr-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    .line 249
    const/4 v1, 0x1

    sput-boolean v1, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown:Z

    .line 250
    sput p1, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    .line 251
    sput p2, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    .line 256
    :cond_2
    iget-boolean v1, p0, Lcom/globalfun/adventuretime/free/Touch;->isHidden:Z

    if-eqz v1, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Touch;->show()V

    goto :goto_0

    .line 262
    :cond_3
    invoke-direct {p0, p1, p2, v4}, Lcom/globalfun/adventuretime/free/Touch;->getRegion(IIZ)I

    move-result v0

    .line 264
    .local v0, "press":I
    if-ltz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2, v4}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$5(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;IIZ)V

    goto :goto_0
.end method

.method public pointerReleased(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/16 v2, -0x12c

    .line 298
    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerX:I

    .line 299
    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerY:I

    .line 300
    sget-boolean v1, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown:Z

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Touch;->releaseKeys()V

    .line 302
    :cond_0
    sput-boolean v3, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown:Z

    .line 303
    sput v2, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointX:I

    .line 304
    sput v2, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    .line 305
    sput v2, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    .line 306
    sput v2, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointY:I

    .line 307
    const/16 v0, 0x20

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 310
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v1, v1, v0

    invoke-static {v1, v3}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$6(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;Z)V

    goto :goto_0
.end method

.method public pointerReleasedRight(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, -0x1

    .line 286
    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerX:I

    .line 287
    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerY:I

    .line 289
    const/16 v0, 0x20

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 292
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$6(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;Z)V

    goto :goto_0
.end method

.method public sqrt(I)I
    .locals 12
    .param p1, "a"    # I

    .prologue
    const/16 v11, 0xa

    .line 185
    new-array v3, v11, [I

    .line 187
    .local v3, "g":[I
    const/4 v0, 0x0

    .local v0, "L":I
    move v1, v0

    .line 188
    .end local v0    # "L":I
    .local v1, "L":I
    :goto_0
    if-gtz p1, :cond_0

    .line 194
    const/4 v5, 0x0

    .local v5, "r":I
    move v6, v5

    .line 195
    .local v6, "x":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "j":I
    :goto_1
    if-gez v4, :cond_1

    .line 206
    return v6

    .line 190
    .end local v4    # "j":I
    .end local v5    # "r":I
    .end local v6    # "x":I
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "L":I
    .restart local v0    # "L":I
    rem-int/lit8 v9, p1, 0x64

    aput v9, v3, v1

    .line 191
    div-int/lit8 p1, p1, 0x64

    move v1, v0

    .end local v0    # "L":I
    .restart local v1    # "L":I
    goto :goto_0

    .line 197
    .restart local v4    # "j":I
    .restart local v5    # "r":I
    .restart local v6    # "x":I
    :cond_1
    mul-int/lit8 v9, v5, 0x64

    aget v10, v3, v4

    add-int v5, v9, v10

    .line 198
    const/4 v7, 0x0

    .line 199
    .local v7, "y":I
    const/4 v2, 0x1

    .local v2, "dp1":I
    :goto_2
    if-lt v2, v11, :cond_3

    .line 204
    :cond_2
    mul-int/lit8 v9, v6, 0xa

    add-int/2addr v9, v2

    add-int/lit8 v6, v9, -0x1

    sub-int/2addr v5, v7

    .line 195
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 201
    :cond_3
    mul-int/lit8 v9, v6, 0x14

    add-int/2addr v9, v2

    mul-int v8, v2, v9

    .line 202
    .local v8, "yn":I
    if-gt v8, v5, :cond_2

    move v7, v8

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public touchEvents()V
    .locals 5

    .prologue
    .line 36
    iget v1, p0, Lcom/globalfun/adventuretime/free/Touch;->menuCursor:I

    .line 38
    .local v1, "prevCursor":I
    const/16 v0, 0x20

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    .line 79
    iget v3, p0, Lcom/globalfun/adventuretime/free/Touch;->menuCursor:I

    if-eq v3, v1, :cond_1

    .line 81
    const/4 v3, 0x4

    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch;->menuCursor:I

    invoke-virtual {p0, v3, v4}, Lcom/globalfun/adventuretime/free/Touch;->inputEvent(II)V

    .line 83
    :cond_1
    return-void

    .line 40
    :cond_2
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v2, v3, v0

    .line 42
    .local v2, "region":Lcom/globalfun/adventuretime/free/Touch$TouchRegion;
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$1(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    if-nez v3, :cond_3

    .line 44
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$2(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$3(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    iput v3, p0, Lcom/globalfun/adventuretime/free/Touch;->softKeyPressed:I

    goto :goto_0

    .line 49
    :cond_3
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$1(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 51
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$2(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$3(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Touch;->menuCursor:I

    .line 55
    const/4 v3, 0x5

    iget v4, p0, Lcom/globalfun/adventuretime/free/Touch;->menuCursor:I

    invoke-virtual {p0, v3, v4}, Lcom/globalfun/adventuretime/free/Touch;->inputEvent(II)V

    goto :goto_0

    .line 57
    :cond_4
    iget-boolean v3, v2, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->isPressed:Z

    if-eqz v3, :cond_5

    .line 59
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$3(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    iput v3, p0, Lcom/globalfun/adventuretime/free/Touch;->menuCursor:I

    goto :goto_0

    .line 61
    :cond_5
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$3(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 63
    const/4 v3, -0x1

    iput v3, p0, Lcom/globalfun/adventuretime/free/Touch;->menuCursor:I

    goto :goto_0

    .line 66
    :cond_6
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$1(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 68
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$4(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 70
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$3(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    invoke-super {p0, v3}, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed(I)V

    goto :goto_0

    .line 72
    :cond_7
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$2(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$3(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v3

    invoke-super {p0, v3}, Lcom/globalfun/adventuretime/free/GameCanvas;->keyReleased(I)V

    goto :goto_0
.end method

.method public touchHDragged(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$17(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v0

    return v0
.end method

.method public touchInitialise(IIII)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Touch;->getEmptyTouch()I

    move-result v0

    .line 472
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$13(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;IIII)V

    .line 477
    :cond_0
    return v0
.end method

.method public touchPressPointer()V
    .locals 2

    .prologue
    .line 444
    iget v0, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerX:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Touch;->pointerY:I

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Touch;->pointerDragged(II)V

    .line 445
    return-void
.end method

.method public touchSetDrag(III)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "hRange"    # I
    .param p3, "vRange"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p3}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$15(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)V

    .line 488
    return-void
.end method

.method public touchSetSystem(III)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "type"    # I
    .param p3, "id"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p3}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$14(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;II)V

    .line 483
    return-void
.end method

.method public touchSetVolatile(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$16(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)V

    .line 493
    return-void
.end method

.method public touchVDragged(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 507
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Touch;->touchRegions:[Lcom/globalfun/adventuretime/free/Touch$TouchRegion;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Touch$TouchRegion;->access$18(Lcom/globalfun/adventuretime/free/Touch$TouchRegion;)I

    move-result v0

    return v0
.end method
