.class public abstract Lcom/globalfun/adventuretime/free/GameCanvas;
.super Ljava/lang/Object;
.source "GameCanvas.java"

# interfaces
.implements Lcom/globalfun/adventuretime/free/DeviceConfig;


# static fields
.field public static BOMB:I = 0x0

.field public static BOW:I = 0x0

.field public static final BROWSER_EXIT:Z = false

.field public static final CHECK_NEGATIVE_KEYS:Z = false

.field public static final COLOR_BLACK:I = -0x1000000

.field public static final COLOR_BLUE:I = -0xffff20

.field public static final COLOR_CYAN:I = -0xcf2728

.field public static final COLOR_GRAY1:I = -0xefeff0

.field public static final COLOR_GRAY2:I = -0xdfdfe0

.field public static final COLOR_GRAY4:I = -0xbfbfc0

.field public static final COLOR_GREEN:I = -0xff6000

.field public static final COLOR_MAGENTA:I = -0x1fff20

.field public static final COLOR_ORANGE:I = 0xff7000

.field public static final COLOR_RED:I = -0x10000

.field public static final COLOR_WHITE:I = -0x1

.field public static final COLOR_YELLOW:I = -0x100

.field public static final DIRS_DPAD:[I

.field public static final DIRS_NUMPAD:[I

.field public static final DISPLAY_DOUBLE_BUFFER:Z = false

.field public static final DISPLAY_FULLSCREEN:Z = true

.field public static ENEMYHITTED:I = 0x0

.field private static final FORMAT_COMMAND_BREAK:Ljava/lang/String; = "brk"

.field public static final GBC:I = 0x21

.field public static final GBL:I = 0x24

.field public static final GBR:I = 0x28

.field public static final GCC:I = 0x3

.field public static final GCL:I = 0x6

.field public static final GCR:I = 0xa

.field public static final GTC:I = 0x11

.field public static final GTL:I = 0x14

.field public static final GTR:I = 0x18

.field public static final HARD_KEYS:[I

.field public static final HARD_KEY_DIGITS:[I

.field public static final HARD_KEY_DPAD:[I

.field public static HEROHITTED:I = 0x0

.field public static final HIDES_IN_SHOW:Z = false

.field public static final HK_0:I = 0x7

.field public static final HK_1:I = 0x8

.field public static final HK_2:I = 0x9

.field public static final HK_3:I = 0xa

.field public static final HK_4:I = 0xb

.field public static final HK_5:I = 0xc

.field public static final HK_6:I = 0xd

.field public static final HK_7:I = 0xe

.field public static final HK_8:I = 0xf

.field public static final HK_9:I = 0x10

.field public static final HK_DOWN:I = 0xf

.field public static final HK_FIRE:I = -0x5

.field public static final HK_LEFT:I = 0xb

.field public static final HK_MENUL:I = -0x6

.field public static final HK_MENUR:I = -0x7

.field public static final HK_NONE:I = 0x0

.field public static final HK_RIGHT:I = 0xd

.field public static final HK_UP:I = 0x9

.field public static final INPUT_STATE_GAME:I = 0x0

.field public static final INPUT_STATE_MENU:I = 0x1

.field public static final INPUT_STATE_TEXT:I = 0x2

.field public static final KEYS:[I

.field public static final KEYS_DPAD:I = 0x3c00

.field public static final KEYS_NUMPAD:I = 0x3de

.field public static final KEY_EVENT_SEQUENCE:I = 0x14

.field public static final KEY_EVENT_SOFT:I = 0x1e

.field public static final KEY_SCROLL_DOWN:I = 0x800

.field public static final KEY_SCROLL_LEFT:I = 0x1000

.field public static final KEY_SCROLL_RIGHT:I = 0x2000

.field public static final KEY_SCROLL_UP:I = 0x400

.field public static final KEY_SELECT:I = 0x4000

.field public static final KEY_SEQUENCES:[[I

.field public static final K_0:I = 0x1

.field public static final K_1:I = 0x2

.field public static final K_2:I = 0x4

.field public static final K_3:I = 0x8

.field public static final K_4:I = 0x10

.field public static final K_5:I = 0x20

.field public static final K_6:I = 0x40

.field public static final K_7:I = 0x80

.field public static final K_8:I = 0x100

.field public static final K_9:I = 0x200

.field public static final K_DOWN:I = 0x800

.field public static final K_FIRE:I = 0x4000

.field public static final K_LEFT:I = 0x1000

.field public static final K_MENUL:I = 0x8000

.field public static final K_MENUR:I = 0x10000

.field public static final K_NONE:I = 0x0

.field public static final K_RIGHT:I = 0x2000

.field public static final K_UP:I = 0x400

.field public static final LOCATION_CANCEL:I = 0x1

.field public static final LOCATION_CONFIRM:I = 0x0

.field public static final MAX_SOFTKEYS:I = 0x2

.field public static final MENU_EVENT_CANCEL:I = 0x7

.field public static final MENU_EVENT_CONFIRM:I = 0x6

.field public static final MENU_EVENT_SCROLL_DOWN:I = 0x1

.field public static final MENU_EVENT_SCROLL_LEFT:I = 0x2

.field public static final MENU_EVENT_SCROLL_RIGHT:I = 0x3

.field public static final MENU_EVENT_SCROLL_UP:I = 0x0

.field public static final MENU_EVENT_SELECT:I = 0x5

.field public static final MENU_EVENT_TOUCHED:I = 0x4

.field public static final MENU_LOOP:Z = true

.field public static final NUM_DIR_KEYS:I = 0x8

.field public static final NUM_KEYS:I = 0x11

.field public static final NUM_KEY_SEQUENCES:I = 0x1

.field public static final NUM_SOFTKEYS:I = 0x8

.field public static POTION:I = 0x0

.field private static final RECORDSTORE_NAME:Ljava/lang/String; = "RS"

.field public static final REVERSES_SOFTKEYS:Z = false

.field public static final RMS_REQUIRES_FRESH_STORE:Z = false

.field public static final RMS_USES_MULTIPLE_STORES:Z = false

.field public static final SHOULD_GC:Z = true

.field private static final SOFTKEY_CODES:[I

.field public static final SOFTKEY_ID_BACK:I = 0x4

.field public static final SOFTKEY_ID_CANCEL:I = 0x3

.field public static final SOFTKEY_ID_CONFIRM:I = 0x1

.field public static final SOFTKEY_ID_CONTINUE:I = 0x2

.field public static final SOFTKEY_ID_MENU:I = 0x5

.field public static final SOFTKEY_ID_NEXT:I = 0x7

.field public static final SOFTKEY_ID_SELECT:I = 0x0

.field public static final SOFTKEY_ID_SKIP:I = 0x6

.field private static final SOFTKEY_LOCATIONS:[I

.field public static final SOFTKEY_MASK_CANCEL:I = 0x38

.field public static final SOFTKEY_MASK_CONFIRM:I = 0x2

.field public static final SOFTKEY_MASK_SELECT:I = 0x5

.field public static final SOUND_AVOID_PRELOAD:Z = false

.field public static final SOUND_DEALLOCATES:Z = false

.field public static final SOUND_HANDLES_EVENTS:Z = false

.field public static final SOUND_HAS_MEDIATIME:Z = false

.field public static final SOUND_INTERRUPT_REPLAY:Z = false

.field public static final SOUND_INTERVAL:I = 0x1

.field public static final SOUND_PREFETCH_ON_LOAD:Z = true

.field public static final SOUND_REALIZE_ON_LOAD:Z = true

.field public static final SOUND_RELOADS:Z = false

.field public static final SOUND_SINGLE_PLAYER:Z = false

.field public static final SOUND_STOPS_DEAD:Z = false

.field public static final STREAM_IS_FLAWED:Z = false

.field public static SWORD:I = 0x0

.field public static final TEXT_EVENT_CANCEL:I = 0xc

.field public static final TEXT_EVENT_SCROLL_DOWN:I = 0xb

.field public static final TEXT_EVENT_SCROLL_UP:I = 0xa

.field public static final TEXT_SCROLL_DELAY:I = 0x3

.field public static final TEXT_SCROLL_DOWN:I = 0x1

.field public static final TEXT_SCROLL_SPEED:I = 0x6

.field public static final TEXT_SCROLL_TYPE:I = 0x1

.field public static final TEXT_SCROLL_TYPE_LINE:I = 0x0

.field public static final TEXT_SCROLL_TYPE_PIXEL:I = 0x1

.field public static final TEXT_SCROLL_UP:I = -0x1

.field public static final VIBRATION_IS_ACTIVE:Z = true

.field public static WAND:I

.field static main:Lcom/globalfun/adventuretime/free/GameCanvas;

.field public static midlet:Lcom/globalfun/adventuretime/free/Main;

.field private static random:Ljava/util/Random;

.field public static soundDataSfx:[I

.field private static soundsSfx:[Landroid/media/MediaPlayer;

.field public static trueScreenHeight:I

.field public static trueScreenWidth:I


# instance fields
.field public Sound_on_off:Z

.field private canvas:Landroid/graphics/Canvas;

.field currentPlayer:Landroid/media/MediaPlayer;

.field public currentPlayerId:I

.field public currentPlayerLoops:I

.field private gDb:Lcom/globalfun/adventuretime/free/Graphics;

.field private graphics:Lcom/globalfun/adventuretime/free/Graphics;

.field public hide:Z

.field private imgDb:Lcom/globalfun/adventuretime/free/Image;

.field public inputState:I

.field public isEnabled:Z

.field public isHidden:Z

.field public isRotated:Z

.field public keyPressed:I

.field public keyQueue:I

.field private keySeqIndex:[I

.field public lastSound:I

.field public menuCursor:I

.field public menuId:I

.field public menuItems:[I

.field public menuSize:I

.field public screenHCenter:I

.field public screenHeight:I

.field public screenVCenter:I

.field public screenWidth:I

.field public show:Z

.field public softKeyPressed:I

.field private softkeys:[I

.field private softkeysEnabled:[Z

.field public sound:I

.field private soundInterrupted:Z

.field private soundInterval:I

.field public soundIsPlaying:I

.field public soundType:Ljava/lang/String;

.field private stream:Ljava/io/DataInputStream;

.field private textArea:Ljava/lang/String;

.field private textAreaFont:Lcom/globalfun/adventuretime/free/CustomFont;

.field private textAreaFormat:[I

.field public textAreaHeight:I

.field public textAreaId:I

.field public textAreaWidth:I

.field public textHeight:I

.field private textScrollOffset:I

.field private textScrollTimer:I

.field private textViewY:I

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    sput v3, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    .line 32
    sput v3, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    .line 120
    new-array v0, v4, [I

    const/4 v1, 0x3

    .line 125
    aput v2, v0, v1

    .line 126
    aput v2, v0, v5

    .line 127
    aput v2, v0, v6

    const/4 v1, 0x6

    .line 128
    aput v2, v0, v1

    .line 120
    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_LOCATIONS:[I

    .line 189
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->HARD_KEYS:[I

    .line 203
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->HARD_KEY_DIGITS:[I

    .line 208
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->HARD_KEY_DPAD:[I

    .line 215
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->KEYS:[I

    .line 239
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->DIRS_DPAD:[I

    .line 253
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->DIRS_NUMPAD:[I

    .line 285
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->KEY_SEQUENCES:[[I

    .line 1260
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_CODES:[I

    .line 1349
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundDataSfx:[I

    .line 1350
    sput v3, Lcom/globalfun/adventuretime/free/GameCanvas;->HEROHITTED:I

    .line 1351
    sput v2, Lcom/globalfun/adventuretime/free/GameCanvas;->SWORD:I

    .line 1352
    const/4 v0, 0x2

    sput v0, Lcom/globalfun/adventuretime/free/GameCanvas;->BOMB:I

    .line 1353
    const/4 v0, 0x3

    sput v0, Lcom/globalfun/adventuretime/free/GameCanvas;->BOW:I

    .line 1354
    sput v5, Lcom/globalfun/adventuretime/free/GameCanvas;->WAND:I

    .line 1355
    sput v6, Lcom/globalfun/adventuretime/free/GameCanvas;->POTION:I

    .line 1356
    const/4 v0, 0x6

    sput v0, Lcom/globalfun/adventuretime/free/GameCanvas;->ENEMYHITTED:I

    .line 1821
    return-void

    .line 189
    nop

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x9
        0xf
        0xb
        0xd
        -0x5
        -0x6
        -0x7
    .end array-data

    .line 203
    :array_1
    .array-data 4
        0x9
        0xf
        0xb
        0xd
        0x8
        0xa
        0xe
        0x10
    .end array-data

    .line 208
    :array_2
    .array-data 4
        0x9
        0xf
        0xb
        0xd
        -0x5
    .end array-data

    .line 215
    :array_3
    .array-data 4
        0x1
        0x2
        0x404
        0x8
        0x1010
        0x4020
        0x2040
        0x80
        0x900
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
    .end array-data

    .line 239
    :array_4
    .array-data 4
        0x400
        0x800
        0x1000
        0x2000
        0x1400
        0x2400
        0x1800
        0x2800
    .end array-data

    .line 253
    :array_5
    .array-data 4
        0x4
        0x100
        0x10
        0x40
        0x2
        0x8
        0x80
        0x200
    .end array-data

    .line 285
    :array_6
    .array-data 4
        0x2
        0x200
        0x80
        0x200
    .end array-data

    .line 1260
    :array_7
    .array-data 4
        0x8000
        0x10000
    .end array-data

    .line 1349
    :array_8
    .array-data 4
        0x7f04000b
        0x7f04000e
        0x7f040007
        0x7f04000d
        0x7f040008
        0x7f040009
        0x7f04000c
    .end array-data
.end method

.method public constructor <init>(Lcom/globalfun/adventuretime/free/Main;)V
    .locals 4
    .param p1, "parent"    # Lcom/globalfun/adventuretime/free/Main;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keySeqIndex:[I

    .line 1262
    iput v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 1264
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    .line 1265
    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeysEnabled:[Z

    .line 1336
    iput v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayerId:I

    .line 1339
    iput v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundIsPlaying:I

    .line 1340
    iput v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->lastSound:I

    .line 1342
    const/16 v0, 0x64

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->sound:I

    .line 1343
    iput-boolean v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->vibrate:Z

    .line 1369
    iput-boolean v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->Sound_on_off:Z

    .line 325
    sput-object p1, Lcom/globalfun/adventuretime/free/GameCanvas;->midlet:Lcom/globalfun/adventuretime/free/Main;

    .line 326
    sput-object p0, Lcom/globalfun/adventuretime/free/GameCanvas;->main:Lcom/globalfun/adventuretime/free/GameCanvas;

    .line 327
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->loadSound()V

    .line 328
    return-void

    .line 1264
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 1265
    :array_1
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public static garbageCollect()V
    .locals 0

    .prologue
    .line 1942
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1943
    return-void
.end method

.method public static getDigits(II)[I
    .locals 6
    .param p0, "value"    # I
    .param p1, "numDigits"    # I

    .prologue
    .line 1947
    const/4 v4, 0x1

    .line 1948
    .local v4, "max":I
    move v5, p1

    .local v5, "n":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-gtz v5, :cond_0

    .line 1952
    new-array v1, p1, [I

    .line 1954
    .local v1, "digits":[I
    move v0, v4

    .local v0, "d":I
    const/4 v5, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-gtz v0, :cond_1

    .line 1969
    return-object v1

    .line 1948
    .end local v0    # "d":I
    .end local v1    # "digits":[I
    .end local v3    # "i":I
    :cond_0
    mul-int/lit8 v4, v4, 0xa

    goto :goto_0

    .line 1956
    .restart local v0    # "d":I
    .restart local v1    # "digits":[I
    .restart local v3    # "i":I
    :cond_1
    if-lt p0, v0, :cond_2

    .line 1958
    add-int/lit8 v5, v5, 0x1

    .line 1959
    sub-int/2addr p0, v0

    .line 1960
    goto :goto_1

    .line 1963
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput v5, v1, v3

    .line 1965
    div-int/lit8 v0, v0, 0xa

    .line 1966
    const/4 v5, 0x0

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public static getOccurence(I)Z
    .locals 2
    .param p0, "range"    # I

    .prologue
    const/4 v0, 0x1

    .line 1849
    if-lez p0, :cond_1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->getRandom(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRandom(I)I
    .locals 6
    .param p0, "range"    # I

    .prologue
    .line 1825
    if-nez p0, :cond_1

    .line 1826
    const/4 v2, 0x0

    .line 1839
    :cond_0
    :goto_0
    return v2

    .line 1828
    :cond_1
    sget-object v3, Lcom/globalfun/adventuretime/free/GameCanvas;->random:Ljava/util/Random;

    if-nez v3, :cond_2

    .line 1829
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    sput-object v3, Lcom/globalfun/adventuretime/free/GameCanvas;->random:Ljava/util/Random;

    .line 1831
    :cond_2
    if-gez p0, :cond_4

    neg-int v0, p0

    .line 1833
    .local v0, "r":I
    :goto_1
    sget-object v3, Lcom/globalfun/adventuretime/free/GameCanvas;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 1834
    .local v1, "rand":I
    if-gez v1, :cond_3

    neg-int v1, v1

    .line 1836
    :cond_3
    rem-int v2, v1, v0

    .line 1837
    .local v2, "value":I
    if-gez p0, :cond_0

    neg-int v2, v2

    goto :goto_0

    .end local v0    # "r":I
    .end local v1    # "rand":I
    .end local v2    # "value":I
    :cond_4
    move v0, p0

    .line 1831
    goto :goto_1
.end method

.method public static getRandomBoolean()Z
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->getRandom(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRandomFrequency([I)I
    .locals 6
    .param p0, "frequencies"    # [I

    .prologue
    .line 1855
    const/4 v3, 0x0

    .line 1857
    .local v3, "total":I
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 1862
    invoke-static {v3}, Lcom/globalfun/adventuretime/free/GameCanvas;->getRandom(I)I

    move-result v1

    .line 1863
    .local v1, "r":I
    const/4 v2, 0x0

    .line 1867
    .local v2, "s":I
    :goto_1
    aget v4, p0, v2

    .line 1868
    .local v4, "v":I
    if-ge v1, v4, :cond_1

    .line 1873
    return v2

    .line 1858
    .end local v1    # "r":I
    .end local v2    # "s":I
    .end local v4    # "v":I
    :cond_0
    aget v5, p0, v0

    add-int/2addr v3, v5

    goto :goto_0

    .line 1870
    .restart local v1    # "r":I
    .restart local v2    # "s":I
    .restart local v4    # "v":I
    :cond_1
    sub-int/2addr v1, v4

    .line 1865
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static randomShuffle([I)V
    .locals 2
    .param p0, "set"    # [I

    .prologue
    .line 1878
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/globalfun/adventuretime/free/GameCanvas;->randomShuffle([III)V

    .line 1879
    return-void
.end method

.method public static randomShuffle([III)V
    .locals 6
    .param p0, "set"    # [I
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 1883
    shl-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 1894
    return-void

    .line 1885
    :cond_1
    invoke-static {p2}, Lcom/globalfun/adventuretime/free/GameCanvas;->getRandom(I)I

    move-result v1

    .line 1886
    .local v1, "i1":I
    invoke-static {p2}, Lcom/globalfun/adventuretime/free/GameCanvas;->getRandom(I)I

    move-result v2

    .line 1888
    .local v2, "i2":I
    if-eq v1, v2, :cond_0

    .line 1889
    add-int v4, p1, v1

    aget v3, p0, v4

    .line 1890
    .local v3, "t":I
    add-int v4, p1, v1

    add-int v5, p1, v2

    aget v5, p0, v5

    aput v5, p0, v4

    .line 1891
    add-int v4, p1, v2

    aput v3, p0, v4

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "replace"    # Ljava/lang/String;
    .param p2, "with"    # I

    .prologue
    .line 1696
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "replace"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;

    .prologue
    .line 1703
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1705
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1717
    return-object p0

    .line 1708
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1710
    .local v1, "replaced":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1711
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1712
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1714
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1701
    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;[Ljava/lang/String;[I)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "replace"    # [Ljava/lang/String;
    .param p2, "with"    # [I

    .prologue
    .line 1688
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 1691
    return-object p0

    .line 1689
    :cond_0
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-static {p0, v1, v2}, Lcom/globalfun/adventuretime/free/GameCanvas;->replace(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private translateKey(I)I
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/high16 v1, 0x10000

    const v0, 0x8000

    .line 1160
    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 1161
    const/16 p1, 0xc

    .line 1162
    :cond_0
    const/4 v2, -0x6

    if-ne p1, v2, :cond_1

    .line 1206
    :goto_0
    :sswitch_0
    return v0

    .line 1163
    :cond_1
    const/4 v2, -0x7

    if-ne p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1164
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 1188
    sparse-switch p1, :sswitch_data_0

    .line 1206
    const/4 v0, 0x0

    goto :goto_0

    .line 1167
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1169
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1171
    :pswitch_2
    const/16 v0, 0x404

    goto :goto_0

    .line 1173
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 1175
    :pswitch_4
    const/16 v0, 0x1010

    goto :goto_0

    .line 1177
    :pswitch_5
    const/16 v0, 0x4020

    goto :goto_0

    .line 1179
    :pswitch_6
    const/16 v0, 0x2040

    goto :goto_0

    .line 1181
    :pswitch_7
    const/16 v0, 0x80

    goto :goto_0

    .line 1183
    :pswitch_8
    const/16 v0, 0x900

    goto :goto_0

    .line 1185
    :pswitch_9
    const/16 v0, 0x200

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 1203
    goto :goto_0

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1188
    :sswitch_data_0
    .sparse-switch
        -0xcb -> :sswitch_1
        -0xca -> :sswitch_0
        -0x16 -> :sswitch_1
        -0x15 -> :sswitch_0
        -0x7 -> :sswitch_1
        -0x6 -> :sswitch_0
        -0x4 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0xe001 -> :sswitch_0
        0xe002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addSoftkey(I)V
    .locals 2
    .param p1, "softKey"    # I

    .prologue
    .line 1280
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_LOCATIONS:[I

    aget v0, v1, p1

    .line 1282
    .local v0, "loc":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aput p1, v1, v0

    .line 1283
    return-void
.end method

.method public clearClip(Lcom/globalfun/adventuretime/free/Graphics;)V
    .locals 3
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;

    .prologue
    const/4 v2, 0x0

    .line 364
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenWidth:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/globalfun/adventuretime/free/Graphics;->setClip(IIII)V

    .line 365
    return-void
.end method

.method public clearKeyQueue()V
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x0

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    .line 1243
    const/4 v0, -0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 1244
    return-void
.end method

.method public clearKeyState()V
    .locals 1

    .prologue
    .line 1248
    const/4 v0, 0x0

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    .line 1249
    const/4 v0, -0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 1250
    return-void
.end method

.method public clearSoftkeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1269
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aput v2, v0, v3

    .line 1270
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aput v2, v0, v1

    .line 1272
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeysEnabled:[Z

    aput-boolean v1, v0, v3

    .line 1273
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeysEnabled:[Z

    aput-boolean v1, v0, v1

    .line 1274
    return-void
.end method

.method public abstract clearTouchState()V
.end method

.method public closeStream()V
    .locals 2

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    .line 1471
    :try_start_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    .line 1477
    invoke-static {}, Lcom/globalfun/adventuretime/free/GameCanvas;->garbageCollect()V

    .line 1478
    return-void

    .line 1472
    :catch_0
    move-exception v0

    .line 1473
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public createStream(Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1451
    const/4 v1, 0x0

    .line 1453
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v2, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v2, p1}, Lcom/globalfun/adventuretime/free/Main;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1459
    :goto_0
    if-eqz v1, :cond_0

    .line 1461
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    .line 1464
    :cond_0
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    return-object v2

    .line 1454
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public disableSoftkey(I)V
    .locals 3
    .param p1, "softKey"    # I

    .prologue
    .line 1303
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_LOCATIONS:[I

    aget v0, v1, p1

    .line 1305
    .local v0, "loc":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeysEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1307
    :cond_0
    return-void
.end method

.method public enableSoftkey(I)V
    .locals 3
    .param p1, "softKey"    # I

    .prologue
    .line 1295
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_LOCATIONS:[I

    aget v0, v1, p1

    .line 1297
    .local v0, "loc":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1298
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeysEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1299
    :cond_0
    return-void
.end method

.method public exitInput()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    .line 432
    return-void
.end method

.method public formatText(Lcom/globalfun/adventuretime/free/CustomFont;Ljava/lang/String;I[I)[I
    .locals 24
    .param p1, "font"    # Lcom/globalfun/adventuretime/free/CustomFont;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "format"    # [I

    .prologue
    .line 506
    const/4 v8, 0x2

    .line 508
    .local v8, "formatLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 510
    .local v5, "chars":[C
    const/16 v16, 0x0

    .local v16, "newline":Z
    const/4 v7, 0x0

    .local v7, "eos":Z
    const/16 v18, 0x0

    .line 512
    .local v18, "reset":Z
    const/4 v13, 0x0

    .line 513
    .local v13, "lineIndex":I
    const/16 v17, 0x0

    .line 514
    .local v17, "nlIndex":I
    const/16 v20, 0x0

    .line 515
    .local v20, "wordIndex":I
    const/4 v4, 0x0

    .line 516
    .local v4, "charIndex":I
    const/4 v14, 0x0

    .line 518
    .local v14, "lineWidth":I
    const/4 v12, 0x0

    .line 522
    .local v12, "length":I
    const/16 v19, 0x0

    .line 523
    .local v19, "width":I
    const/4 v10, 0x0

    .line 525
    .local v10, "height":I
    const/16 v21, 0x0

    .line 527
    .local v21, "y":I
    const/4 v11, 0x0

    .local v11, "index":I
    move v9, v8

    .line 529
    .end local v8    # "formatLength":I
    .local v9, "formatLength":I
    :cond_0
    :goto_0
    if-eqz v16, :cond_4

    .line 531
    const/16 v16, 0x0

    .line 533
    move/from16 v0, v20

    if-gt v0, v13, :cond_3

    const/4 v15, 0x1

    .line 535
    .local v15, "longWord":Z
    :goto_1
    if-eqz v15, :cond_1

    .line 537
    add-int/lit8 v20, v11, -0x1

    .line 538
    move/from16 v17, v11

    .line 541
    :cond_1
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "formatLength":I
    .restart local v8    # "formatLength":I
    aput v14, p4, v9

    .line 542
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "formatLength":I
    .restart local v9    # "formatLength":I
    aput v21, p4, v8

    .line 543
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "formatLength":I
    .restart local v8    # "formatLength":I
    aput v13, p4, v9

    .line 544
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "formatLength":I
    .restart local v9    # "formatLength":I
    add-int/lit8 v22, v20, 0x1

    sub-int v22, v22, v13

    aput v22, p4, v8

    .line 546
    move/from16 v13, v17

    .line 548
    move/from16 v0, v19

    if-le v14, v0, :cond_2

    .line 549
    move/from16 v19, v14

    .line 551
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/globalfun/adventuretime/free/CustomFont;->cellHeight:I

    move/from16 v22, v0

    add-int v10, v21, v22

    .line 552
    move-object/from16 v0, p1

    iget v0, v0, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 554
    const/16 v18, 0x1

    .line 555
    goto :goto_0

    .line 533
    .end local v15    # "longWord":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 558
    :cond_4
    if-eqz v18, :cond_5

    .line 560
    const/16 v18, 0x0

    .line 562
    move v11, v13

    .line 563
    const/4 v12, 0x0

    .line 564
    const/4 v14, 0x0

    .line 567
    :cond_5
    if-eqz v7, :cond_6

    .line 634
    const/16 v22, 0x0

    aput v19, p4, v22

    .line 635
    const/16 v22, 0x1

    aput v10, p4, v22

    .line 636
    const/16 v22, -0x1

    aput v22, p4, v9

    .line 638
    return-object p4

    .line 569
    :cond_6
    aget-char v2, v5, v11

    .line 571
    .local v2, "c":C
    if-eq v13, v11, :cond_7

    .line 572
    move-object/from16 v0, p1

    iget v0, v0, Lcom/globalfun/adventuretime/free/CustomFont;->charSpacing:I

    move/from16 v22, v0

    add-int v12, v12, v22

    .line 574
    :cond_7
    const/16 v22, 0x3c

    move/from16 v0, v22

    if-ne v2, v0, :cond_c

    .line 576
    if-ge v13, v11, :cond_8

    .line 578
    const/16 v16, 0x1

    .line 579
    move/from16 v17, v11

    .line 580
    move/from16 v20, v4

    .line 581
    move v14, v12

    .line 582
    goto :goto_0

    .line 585
    :cond_8
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v22, v11, 0x1

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v6, v5, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 587
    .local v6, "cmd":Ljava/lang/String;
    const-string v22, "brk"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 588
    move-object/from16 v0, p1

    iget v0, v0, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 590
    :cond_9
    :goto_2
    aget-char v22, v5, v11

    const/16 v23, 0x3e

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 593
    add-int/lit8 v13, v11, 0x1

    .line 624
    .end local v6    # "cmd":Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 626
    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v11, v0, :cond_0

    .line 627
    const/16 v16, 0x1

    .line 628
    const/4 v7, 0x1

    .line 629
    move/from16 v20, v4

    .line 630
    move v14, v12

    .line 527
    goto/16 :goto_0

    .line 591
    .restart local v6    # "cmd":Ljava/lang/String;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 595
    .end local v6    # "cmd":Ljava/lang/String;
    :cond_c
    const/16 v22, 0x20

    move/from16 v0, v22

    if-ne v2, v0, :cond_f

    .line 597
    move/from16 v0, v20

    if-eq v0, v4, :cond_d

    .line 598
    move/from16 v20, v4

    .line 599
    move-object/from16 v0, p1

    iget v0, v0, Lcom/globalfun/adventuretime/free/CustomFont;->charSpacing:I

    move/from16 v22, v0

    sub-int v14, v12, v22

    .line 602
    :cond_d
    if-ne v13, v11, :cond_e

    .line 603
    add-int/lit8 v13, v13, 0x1

    .line 604
    move/from16 v20, v13

    .line 605
    goto :goto_3

    .line 606
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/globalfun/adventuretime/free/CustomFont;->wordSpacing:I

    move/from16 v22, v0

    add-int v12, v12, v22

    .line 609
    goto :goto_3

    .line 611
    :cond_f
    move v4, v11

    .line 612
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/globalfun/adventuretime/free/CustomFont;->charWidth(C)I

    move-result v3

    .line 613
    .local v3, "cWidth":I
    add-int/2addr v12, v3

    .line 615
    if-lez p3, :cond_a

    move/from16 v0, p3

    if-le v12, v0, :cond_a

    .line 616
    const/16 v16, 0x1

    .line 617
    add-int/lit8 v17, v20, 0x1

    .line 619
    move/from16 v0, v20

    if-gt v0, v13, :cond_0

    sub-int v14, v12, v3

    .line 620
    goto/16 :goto_0
.end method

.method public getCurrentSoftKey(I)I
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDirectional()I
    .locals 4

    .prologue
    .line 1211
    const/4 v1, -0x1

    .line 1213
    .local v1, "directional":I
    const/16 v0, 0x8

    .local v0, "dir":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 1220
    :goto_0
    return v1

    .line 1214
    :cond_1
    iget v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    and-int/lit16 v2, v2, 0x3c00

    sget-object v3, Lcom/globalfun/adventuretime/free/GameCanvas;->DIRS_DPAD:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    and-int/lit16 v2, v2, 0x3de

    sget-object v3, Lcom/globalfun/adventuretime/free/GameCanvas;->DIRS_NUMPAD:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 1216
    :cond_2
    move v1, v0

    .line 1217
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 317
    sget v0, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    return v0
.end method

.method public getHiScorePosition([II)I
    .locals 2
    .param p1, "scores"    # [I
    .param p2, "score"    # I

    .prologue
    .line 1906
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 1909
    :cond_0
    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 1910
    const/4 v0, -0x1

    .line 1912
    :cond_1
    return v0

    .line 1907
    :cond_2
    aget v1, p1, v0

    if-ge p2, v1, :cond_0

    .line 1906
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 312
    sget v0, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    return v0
.end method

.method public handleEvents()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 843
    iget-boolean v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isHidden:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isRotated:Z

    if-eqz v8, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundInterval:I

    if-lez v8, :cond_2

    .line 851
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundInterval:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundInterval:I

    .line 853
    :cond_2
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollTimer:I

    if-ltz v8, :cond_3

    .line 854
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollTimer:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollTimer:I

    .line 862
    :cond_3
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->touchEvents()V

    .line 869
    const/4 v1, -0x1

    .line 870
    .local v1, "eventType":I
    const/4 v0, -0x1

    .line 872
    .local v0, "eventSelection":I
    const/4 v4, 0x1

    .local v4, "key":I
    :goto_1
    if-gtz v4, :cond_b

    .line 987
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    if-ltz v8, :cond_4

    .line 989
    sget-object v8, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_LOCATIONS:[I

    iget v9, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    aget v5, v8, v9

    .line 991
    .local v5, "loc":I
    iget-object v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeysEnabled:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_4

    .line 992
    iput v12, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 995
    .end local v5    # "loc":I
    :cond_4
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    if-ltz v8, :cond_6

    .line 997
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    shl-int v7, v11, v8

    .line 999
    .local v7, "softKeyMask":I
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    if-ne v8, v11, :cond_1a

    .line 1001
    and-int/lit8 v8, v7, 0x5

    if-lez v8, :cond_18

    .line 1003
    const/4 v1, 0x5

    .line 1004
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 1028
    :cond_5
    :goto_2
    iput v10, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    .line 1029
    iput v12, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 1034
    .end local v7    # "softKeyMask":I
    :cond_6
    const/4 v4, 0x1

    :goto_3
    if-gtz v4, :cond_1c

    .line 1077
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    if-lez v8, :cond_8

    .line 1078
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    add-int/lit8 v8, v8, -0x6

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    .line 1079
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    if-gez v8, :cond_7

    iput v10, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    .line 1081
    :cond_7
    const/16 v1, 0xb

    .line 1084
    :cond_8
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    if-gez v8, :cond_a

    .line 1085
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    add-int/lit8 v8, v8, 0x6

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    .line 1086
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    if-lez v8, :cond_9

    iput v10, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    .line 1088
    :cond_9
    const/16 v1, 0xa

    .line 1093
    :cond_a
    if-ltz v1, :cond_0

    .line 1094
    invoke-virtual {p0, v1, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->inputEvent(II)V

    goto :goto_0

    .line 874
    :cond_b
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    and-int/2addr v8, v4

    if-nez v8, :cond_c

    .line 872
    :goto_4
    shl-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 877
    :cond_c
    and-int/lit16 v8, v4, 0x400

    if-lez v8, :cond_d

    .line 879
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    if-ne v8, v11, :cond_d

    .line 881
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 882
    const/4 v1, 0x0

    .line 884
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    if-gez v8, :cond_d

    .line 887
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuSize:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 896
    :cond_d
    and-int/lit16 v8, v4, 0x800

    if-lez v8, :cond_e

    .line 898
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    if-ne v8, v11, :cond_e

    .line 900
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 901
    const/4 v1, 0x1

    .line 903
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    iget v9, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuSize:I

    if-lt v8, v9, :cond_e

    .line 906
    iput v10, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 915
    :cond_e
    and-int/lit16 v8, v4, 0x1000

    if-lez v8, :cond_f

    .line 917
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    if-ne v8, v11, :cond_f

    .line 919
    const/4 v1, 0x2

    .line 920
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 924
    :cond_f
    and-int/lit16 v8, v4, 0x2000

    if-lez v8, :cond_10

    .line 926
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    if-ne v8, v11, :cond_10

    .line 928
    const/4 v1, 0x3

    .line 929
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 935
    :cond_10
    and-int/lit16 v8, v4, 0x4000

    if-lez v8, :cond_11

    .line 937
    iget-object v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aget v8, v8, v10

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 942
    :cond_11
    sget-object v8, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_CODES:[I

    aget v8, v8, v10

    and-int/2addr v8, v4

    if-lez v8, :cond_12

    .line 944
    invoke-virtual {p0, v10}, Lcom/globalfun/adventuretime/free/GameCanvas;->getCurrentSoftKey(I)I

    move-result v8

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 947
    :cond_12
    sget-object v8, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_CODES:[I

    aget v8, v8, v11

    and-int/2addr v8, v4

    if-lez v8, :cond_13

    .line 949
    invoke-virtual {p0, v11}, Lcom/globalfun/adventuretime/free/GameCanvas;->getCurrentSoftKey(I)I

    move-result v8

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    .line 954
    :cond_13
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_5
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    if-eqz v8, :cond_14

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_15

    .line 980
    :cond_14
    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/GameCanvas;->handleKey(I)V

    .line 984
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    xor-int/lit8 v9, v4, -0x1

    and-int/2addr v8, v9

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    goto :goto_4

    .line 956
    :cond_15
    sget-object v8, Lcom/globalfun/adventuretime/free/GameCanvas;->KEY_SEQUENCES:[[I

    aget-object v6, v8, v2

    .line 957
    .local v6, "seq":[I
    iget-object v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keySeqIndex:[I

    aget v3, v8, v2

    .line 959
    .local v3, "index":I
    aget v8, v6, v3

    and-int/2addr v8, v4

    if-lez v8, :cond_17

    .line 961
    add-int/lit8 v3, v3, 0x1

    array-length v8, v6

    if-ne v3, v8, :cond_16

    .line 963
    const/16 v1, 0x14

    .line 964
    move v0, v2

    .line 966
    iget-object v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keySeqIndex:[I

    aput v10, v8, v2

    goto :goto_5

    .line 969
    :cond_16
    iget-object v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keySeqIndex:[I

    aget v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v2

    goto :goto_5

    .line 974
    :cond_17
    iget-object v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keySeqIndex:[I

    aput v10, v8, v2

    goto :goto_5

    .line 1006
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v6    # "seq":[I
    .restart local v7    # "softKeyMask":I
    :cond_18
    and-int/lit8 v8, v7, 0x2

    if-lez v8, :cond_19

    .line 1008
    const/4 v1, 0x6

    .line 1010
    goto/16 :goto_2

    :cond_19
    and-int/lit8 v8, v7, 0x38

    if-lez v8, :cond_5

    .line 1012
    const/4 v1, 0x7

    .line 1015
    goto/16 :goto_2

    :cond_1a
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    if-ne v8, v13, :cond_1b

    .line 1017
    and-int/lit8 v8, v7, 0x38

    if-lez v8, :cond_5

    .line 1019
    const/16 v1, 0xc

    .line 1022
    goto/16 :goto_2

    .line 1024
    :cond_1b
    const/16 v1, 0x1e

    .line 1025
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softKeyPressed:I

    goto/16 :goto_2

    .line 1036
    .end local v7    # "softKeyMask":I
    :cond_1c
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    and-int/2addr v8, v4

    if-nez v8, :cond_1e

    .line 1034
    :cond_1d
    :goto_6
    shl-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 1039
    :cond_1e
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    if-ne v8, v13, :cond_1d

    .line 1042
    and-int/lit16 v8, v4, 0x400

    if-lez v8, :cond_1f

    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollTimer:I

    if-gtz v8, :cond_1f

    invoke-virtual {p0, v12}, Lcom/globalfun/adventuretime/free/GameCanvas;->textCanScroll(I)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1051
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    const/4 v9, -0x6

    if-lt v8, v9, :cond_1f

    .line 1053
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    iget-object v9, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFont:Lcom/globalfun/adventuretime/free/CustomFont;

    iget v9, v9, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    .line 1054
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    iget-object v9, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFont:Lcom/globalfun/adventuretime/free/CustomFont;

    iget v9, v9, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    .line 1058
    :cond_1f
    and-int/lit16 v8, v4, 0x800

    if-lez v8, :cond_1d

    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollTimer:I

    if-gtz v8, :cond_1d

    invoke-virtual {p0, v11}, Lcom/globalfun/adventuretime/free/GameCanvas;->textCanScroll(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1067
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    const/4 v9, 0x6

    if-gt v8, v9, :cond_1d

    .line 1069
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    iget-object v9, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFont:Lcom/globalfun/adventuretime/free/CustomFont;

    iget v9, v9, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    .line 1070
    iget v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    iget-object v9, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFont:Lcom/globalfun/adventuretime/free/CustomFont;

    iget v9, v9, Lcom/globalfun/adventuretime/free/CustomFont;->lineSpacing:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    goto :goto_6
.end method

.method public abstract handleKey(I)V
.end method

.method public hasKeyPressed(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1229
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyQueued()Z
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftkeys()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1326
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aget v2, v2, v0

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aget v2, v2, v1

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasStream()Z
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hide()Z
.end method

.method public hideNotify()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 771
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->hide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->stopSound()V

    .line 773
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundIsPlaying:I

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundInterrupted:Z

    .line 775
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->clearKeyState()V

    .line 779
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->clearTouchState()V

    .line 782
    iput-boolean v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isHidden:Z

    .line 784
    :cond_0
    return-void

    .line 773
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract inputEvent(II)V
.end method

.method public insertHiScore([I[Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "scores"    # [I
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "score"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 1917
    invoke-virtual {p0, p1, p3}, Lcom/globalfun/adventuretime/free/GameCanvas;->getHiScorePosition([II)I

    move-result v1

    .line 1919
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 1921
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gt v0, v1, :cond_1

    .line 1926
    aput p3, p1, v1

    .line 1927
    aput-object p4, p2, v1

    .line 1930
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 1922
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1923
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p2, v2

    aput-object v2, p2, v0

    goto :goto_0
.end method

.method public isKeyPressed(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1234
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoftkeyEnabled(I)Z
    .locals 2
    .param p1, "softKey"    # I

    .prologue
    .line 1319
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_LOCATIONS:[I

    aget v0, v1, p1

    .line 1321
    .local v0, "loc":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeysEnabled:[Z

    aget-boolean v1, v1, v0

    return v1
.end method

.method public keyPressed(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 1109
    const/16 v3, -0x63

    if-ne p1, v3, :cond_0

    .line 1114
    sget-object v3, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v3, v3, Lcom/globalfun/adventuretime/free/Main;->azaGmg:Lcom/lklab/azagmglib/AzaGmg;

    invoke-virtual {v3}, Lcom/lklab/azagmglib/AzaGmg;->onClick()V

    .line 1115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1116
    .local v2, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Url"

    sget-object v4, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v4, v4, Lcom/globalfun/adventuretime/free/Main;->azaGmg:Lcom/lklab/azagmglib/AzaGmg;

    invoke-virtual {v4}, Lcom/lklab/azagmglib/AzaGmg;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string v3, "NewGMG"

    invoke-static {v3, v2}, Lcom/globalfun/adventuretime/free/UtilsAndroid;->sendFlurryParams(Ljava/lang/String;Ljava/util/Map;)V

    .line 1120
    .end local v2    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/16 v3, -0x3e7

    if-ne p1, v3, :cond_1

    .line 1122
    sget-object v3, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v3}, Lcom/globalfun/adventuretime/free/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/globalfun/adventuretime/free/UtilsAndroid;->ShareGeneric(Ljava/lang/String;)V

    .line 1124
    :cond_1
    const/16 v3, -0x270f

    if-ne p1, v3, :cond_2

    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "market://details?id=com.globalfun.adventuretime"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1128
    sget-object v3, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v3, v0}, Lcom/globalfun/adventuretime/free/Main;->startActivity(Landroid/content/Intent;)V

    .line 1130
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->translateKey(I)I

    move-result v1

    .line 1135
    .local v1, "keyBits":I
    iget-boolean v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isHidden:Z

    if-eqz v3, :cond_4

    .line 1137
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->show()V

    .line 1148
    :cond_3
    :goto_0
    return-void

    .line 1141
    :cond_4
    iget-boolean v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isRotated:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isEnabled:Z

    if-eqz v3, :cond_3

    .line 1146
    iget v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    .line 1147
    iget v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyQueue:I

    goto :goto_0
.end method

.method public keyReleased(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1151
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->translateKey(I)I

    move-result v0

    .line 1156
    .local v0, "keyBits":I
    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    .line 1157
    return-void
.end method

.method public loadSound()V
    .locals 4

    .prologue
    .line 1371
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->soundDataSfx:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/media/MediaPlayer;

    sput-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->soundsSfx:[Landroid/media/MediaPlayer;

    .line 1372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->soundDataSfx:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1374
    return-void

    .line 1373
    :cond_0
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->soundsSfx:[Landroid/media/MediaPlayer;

    sget-object v2, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    sget-object v3, Lcom/globalfun/adventuretime/free/GameCanvas;->soundDataSfx:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public menuCall(I[II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "items"    # [I
    .param p3, "size"    # I

    .prologue
    .line 652
    iput p1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuId:I

    .line 653
    iput-object p2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuItems:[I

    .line 655
    iput p3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuSize:I

    .line 656
    const/4 v0, -0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuCursor:I

    .line 658
    const/4 v0, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    .line 659
    return-void
.end method

.method public menuSetCursor(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 671
    return-void
.end method

.method public menuSwap(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "item"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->menuItems:[I

    aput p2, v0, p1

    .line 676
    const/4 v0, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    .line 677
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->canvas:Landroid/graphics/Canvas;

    .line 442
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->graphics:Lcom/globalfun/adventuretime/free/Graphics;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lcom/globalfun/adventuretime/free/Graphics;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Lcom/globalfun/adventuretime/free/Graphics;-><init>(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->graphics:Lcom/globalfun/adventuretime/free/Graphics;

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->graphics:Lcom/globalfun/adventuretime/free/Graphics;

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->paint(Lcom/globalfun/adventuretime/free/Graphics;)V

    .line 451
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->graphics:Lcom/globalfun/adventuretime/free/Graphics;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Graphics;->setCanvas(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public paint()V
    .locals 0

    .prologue
    .line 409
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/GameThread;->requestRepaint(Lcom/globalfun/adventuretime/free/GameCanvas;)V

    .line 410
    invoke-static {}, Lcom/globalfun/adventuretime/free/GameThread;->yield()V

    .line 411
    return-void
.end method

.method public paint(Lcom/globalfun/adventuretime/free/Graphics;)V
    .locals 1
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isRotated:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->paintRotated(Lcom/globalfun/adventuretime/free/Graphics;)V

    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isHidden:Z

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->paintHidden(Lcom/globalfun/adventuretime/free/Graphics;)V

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->paintCanvas(Lcom/globalfun/adventuretime/free/Graphics;)V

    goto :goto_0
.end method

.method public abstract paintCanvas(Lcom/globalfun/adventuretime/free/Graphics;)V
.end method

.method public abstract paintHidden(Lcom/globalfun/adventuretime/free/Graphics;)V
.end method

.method public abstract paintRotated(Lcom/globalfun/adventuretime/free/Graphics;)V
.end method

.method public playSfx(I)V
    .locals 1
    .param p1, "tune"    # I

    .prologue
    .line 1367
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->playSound(II)V

    .line 1368
    return-void
.end method

.method public playSound()V
    .locals 3

    .prologue
    .line 1406
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->lastSound:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundIsPlaying:I

    if-ne v0, v1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    .line 1413
    :cond_2
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->lastSound:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1415
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Resources;->SOUND_BGM_RAW:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->lastSound:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    .line 1416
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->lastSound:I

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundIsPlaying:I

    .line 1417
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public playSound(II)V
    .locals 3
    .param p1, "tune"    # I
    .param p2, "loop"    # I

    .prologue
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 1378
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->Sound_on_off:Z

    if-nez v0, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundIsPlaying:I

    if-eq v0, p1, :cond_0

    .line 1382
    iput p1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundIsPlaying:I

    .line 1383
    iput p1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->lastSound:I

    .line 1384
    if-ltz p1, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1387
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->stopSound()V

    .line 1388
    :cond_2
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Resources;->SOUND_BGM_RAW:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    .line 1389
    if-nez p2, :cond_3

    .line 1390
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1391
    :cond_3
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1392
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public playSoundSfx(I)V
    .locals 2
    .param p1, "tune"    # I

    .prologue
    .line 1359
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->Sound_on_off:Z

    if-nez v0, :cond_0

    .line 1363
    :goto_0
    return-void

    .line 1361
    :cond_0
    sget-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundsSfx:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1362
    sget-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundsSfx:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public abstract playerUpdate(Ljava/lang/String;)V
.end method

.method public pull()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public pullByteArray()[B
    .locals 4

    .prologue
    .line 1604
    const/4 v2, 0x0

    .line 1606
    .local v2, "size":I
    :try_start_0
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1612
    :goto_0
    new-array v0, v2, [B

    .line 1613
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->readFully([B)V

    .line 1615
    return-object v0

    .line 1607
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 1609
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public pullByteArrays(I)[[B
    .locals 5
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1620
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    .line 1622
    new-array v1, p1, [[B

    .line 1624
    .local v1, "arrs":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 1636
    return-object v1

    .line 1626
    :cond_0
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 1628
    .local v3, "len":I
    new-array v0, v3, [B

    .line 1630
    .local v0, "arr":[B
    if-lez v3, :cond_1

    .line 1631
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->readFully([B)V

    .line 1633
    :cond_1
    aput-object v0, v1, v2

    .line 1624
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public pullImage()Lcom/globalfun/adventuretime/free/Image;
    .locals 3

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullByteArray()[B

    move-result-object v0

    .line 1528
    .local v0, "data":[B
    array-length v1, v0

    .line 1530
    .local v1, "len":I
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/globalfun/adventuretime/free/Image;->createImage([BII)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v2

    return-object v2
.end method

.method public pullImageData()[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1535
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1537
    .local v2, "imgSize":I
    new-array v0, v2, [S

    .line 1539
    .local v0, "data":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1542
    return-object v0

    .line 1540
    :cond_0
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v0, v1

    .line 1539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pullInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public pullIntArray()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1582
    .local v2, "size":I
    new-array v0, v2, [I

    .line 1584
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1587
    return-object v0

    .line 1585
    :cond_0
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v0, v1

    .line 1584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pullResource(Ljava/lang/String;)[B
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1500
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 1502
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v1

    .line 1504
    .local v1, "size":I
    new-array v0, v1, [B

    .line 1505
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->readFully([B)V

    .line 1507
    return-object v0
.end method

.method public pullShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public pullShortArray()[S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1592
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    shr-int/lit8 v2, v3, 0x1

    .line 1594
    .local v2, "size":I
    new-array v0, v2, [S

    .line 1596
    .local v0, "data":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1599
    return-object v0

    .line 1597
    :cond_0
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v0, v1

    .line 1596
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pullSprite(II)Lcom/globalfun/adventuretime/free/Sprite;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullImage()Lcom/globalfun/adventuretime/free/Image;

    move-result-object v0

    .line 1549
    .local v0, "imgTemp":Lcom/globalfun/adventuretime/free/Image;
    new-instance v1, Lcom/globalfun/adventuretime/free/Sprite;

    invoke-direct {v1, v0, p1, p2}, Lcom/globalfun/adventuretime/free/Sprite;-><init>(Lcom/globalfun/adventuretime/free/Image;II)V

    return-object v1
.end method

.method public pullStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1556
    const/4 v2, 0x0

    .line 1560
    .local v2, "strings":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 1562
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    if-eqz v3, :cond_0

    .line 1564
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1565
    .local v1, "numStrings":I
    new-array v2, v1, [Ljava/lang/String;

    .line 1567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 1571
    .end local v0    # "i":I
    .end local v1    # "numStrings":I
    :cond_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->closeStream()V

    .line 1575
    :goto_1
    return-object v2

    .line 1568
    .restart local v0    # "i":I
    .restart local v1    # "numStrings":I
    :cond_1
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1573
    .end local v0    # "i":I
    .end local v1    # "numStrings":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 1673
    :try_start_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    :goto_0
    return-void

    .line 1674
    :catch_0
    move-exception v0

    .line 1676
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->stream:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1663
    :goto_0
    return-void

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public releaseKeys()V
    .locals 1

    .prologue
    .line 1238
    const/4 v0, 0x0

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->keyPressed:I

    .line 1239
    return-void
.end method

.method public removeSoftkey(I)V
    .locals 3
    .param p1, "softKey"    # I

    .prologue
    .line 1287
    sget-object v1, Lcom/globalfun/adventuretime/free/GameCanvas;->SOFTKEY_LOCATIONS:[I

    aget v0, v1, p1

    .line 1289
    .local v0, "loc":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->softkeys:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1291
    :cond_0
    return-void
.end method

.method public renderText(Lcom/globalfun/adventuretime/free/Graphics;Lcom/globalfun/adventuretime/free/CustomFont;Ljava/lang/String;[IIIIIZ)V
    .locals 16
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "font"    # Lcom/globalfun/adventuretime/free/CustomFont;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "format"    # [I
    .param p5, "cursor"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I
    .param p8, "hAlign"    # I
    .param p9, "clip"    # Z

    .prologue
    .line 459
    const/4 v14, 0x0

    .local v14, "minY":I
    const/4 v13, 0x0

    .line 461
    .local v13, "maxY":I
    if-eqz p9, :cond_0

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/Graphics;->getClipY()I

    move-result v14

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/Graphics;->getClipHeight()I

    move-result v1

    add-int v13, v14, v1

    .line 467
    :cond_0
    if-gez p5, :cond_1

    .line 468
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result p5

    .line 470
    :cond_1
    const/4 v11, 0x2

    .local v11, "i":I
    move/from16 v10, p5

    .local v10, "c":I
    move v12, v11

    .end local v11    # "i":I
    .local v12, "i":I
    :cond_2
    :goto_0
    if-lez v10, :cond_3

    move-object/from16 v0, p4

    array-length v1, v0

    if-lt v12, v1, :cond_4

    :cond_3
    move v11, v12

    .line 500
    .end local v12    # "i":I
    .restart local v11    # "i":I
    :goto_1
    return-void

    .line 472
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_4
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget v15, p4, v12

    .line 473
    .local v15, "tw":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget v1, p4, v11

    add-int v7, p7, v1

    .line 475
    .local v7, "ty":I
    if-gez v15, :cond_5

    move v11, v12

    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    .line 477
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_5
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    aget v4, p4, v12

    .line 478
    .local v4, "offset":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "i":I
    .restart local v12    # "i":I
    aget v5, p4, v11

    .line 480
    .local v5, "len":I
    if-le v5, v10, :cond_6

    .line 481
    move v5, v10

    .line 483
    :cond_6
    if-eqz p9, :cond_7

    .line 485
    move-object/from16 v0, p2

    iget v1, v0, Lcom/globalfun/adventuretime/free/CustomFont;->cellHeight:I

    add-int v9, v7, v1

    .line 487
    .local v9, "by":I
    if-lt v9, v14, :cond_2

    .line 490
    if-lt v7, v13, :cond_7

    move v11, v12

    .line 491
    .end local v12    # "i":I
    .restart local v11    # "i":I
    goto :goto_1

    .line 494
    .end local v9    # "by":I
    .end local v11    # "i":I
    .restart local v12    # "i":I
    :cond_7
    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_8

    shr-int/lit8 v1, v15, 0x1

    sub-int v6, p6, v1

    .line 496
    .local v6, "tx":I
    :goto_2
    const/16 v8, 0x14

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v8}, Lcom/globalfun/adventuretime/free/CustomFont;->drawSubstring(Lcom/globalfun/adventuretime/free/Graphics;Ljava/lang/String;IIIII)V

    .line 498
    sub-int/2addr v10, v5

    goto :goto_0

    .end local v6    # "tx":I
    :cond_8
    move/from16 v6, p6

    .line 494
    goto :goto_2
.end method

.method public rmsRead(I)[B
    .locals 4
    .param p1, "record"    # I

    .prologue
    .line 1730
    const/4 v0, 0x0

    .line 1731
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 1733
    .local v1, "store":Lcom/globalfun/adventuretime/free/RecordStore;
    const-string v2, "RS"

    .line 1741
    .local v2, "storeName":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3}, Lcom/globalfun/adventuretime/free/RecordStore;->openRecordStore(Ljava/lang/String;Z)Lcom/globalfun/adventuretime/free/RecordStore;

    move-result-object v1

    .line 1743
    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/RecordStore;->getNumRecords()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1744
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/globalfun/adventuretime/free/RecordStore;->getRecord(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1749
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1752
    :try_start_1
    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/RecordStore;->closeRecordStore()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1756
    :cond_1
    :goto_1
    invoke-static {}, Lcom/globalfun/adventuretime/free/GameCanvas;->garbageCollect()V

    .line 1757
    return-object v0

    .line 1753
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1747
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public rmsWrite(I[B)Z
    .locals 6
    .param p1, "record"    # I
    .param p2, "data"    # [B

    .prologue
    .line 1762
    const/4 v2, 0x0

    .line 1763
    .local v2, "written":Z
    const/4 v0, 0x0

    .line 1765
    .local v0, "store":Lcom/globalfun/adventuretime/free/RecordStore;
    const-string v1, "RS"

    .line 1785
    .local v1, "storeName":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1, v3}, Lcom/globalfun/adventuretime/free/RecordStore;->openRecordStore(Ljava/lang/String;Z)Lcom/globalfun/adventuretime/free/RecordStore;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/RecordStore;->getNumRecords()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1791
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v0, v3, p2, v4, v5}, Lcom/globalfun/adventuretime/free/RecordStore;->setRecord(I[BII)V

    .line 1792
    const/4 v2, 0x1

    .line 1796
    :cond_0
    if-nez v2, :cond_1

    .line 1797
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v0, p2, v3, v4}, Lcom/globalfun/adventuretime/free/RecordStore;->addRecord([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1798
    const/4 v2, 0x1

    .line 1803
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1806
    :try_start_1
    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/RecordStore;->closeRecordStore()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1810
    :cond_2
    :goto_1
    invoke-static {}, Lcom/globalfun/adventuretime/free/GameCanvas;->garbageCollect()V

    .line 1812
    return v2

    .line 1807
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1801
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setScreenSize()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->getWidth()I

    move-result v1

    .line 333
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->getHeight()I

    move-result v0

    .line 335
    .local v0, "h":I
    iput v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenWidth:I

    .line 336
    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenHeight:I

    .line 352
    iget v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenWidth:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenHCenter:I

    .line 353
    iget v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenHeight:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->screenVCenter:I

    .line 360
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->playSound()V

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->isHidden:Z

    .line 791
    return-void
.end method

.method protected sizeChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 372
    return-void
.end method

.method public skipData(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1493
    new-array v0, p1, [B

    .line 1495
    .local v0, "skip":[B
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->readFully([B)V

    .line 1496
    return-void
.end method

.method public skipResources(I)V
    .locals 1
    .param p1, "skips"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1487
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 1489
    return-void

    .line 1488
    :cond_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullByteArray()[B

    goto :goto_0
.end method

.method public stopSound()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 1402
    :goto_0
    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->currentPlayer:Landroid/media/MediaPlayer;

    .line 1401
    const/4 v0, -0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->soundIsPlaying:I

    goto :goto_0
.end method

.method public stopVibrate()V
    .locals 1

    .prologue
    .line 1437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/GameCanvas;->vibrate(I)V

    .line 1439
    return-void
.end method

.method public textAreaCall(ILcom/globalfun/adventuretime/free/CustomFont;Ljava/lang/String;[III)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "font"    # Lcom/globalfun/adventuretime/free/CustomFont;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "format"    # [I
    .param p5, "width"    # I
    .param p6, "numLines"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 706
    iput p1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaId:I

    .line 707
    iput-object p2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFont:Lcom/globalfun/adventuretime/free/CustomFont;

    .line 708
    iput-object p3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textArea:Ljava/lang/String;

    .line 710
    invoke-virtual {p0, p2, p3, p5, p4}, Lcom/globalfun/adventuretime/free/GameCanvas;->formatText(Lcom/globalfun/adventuretime/free/CustomFont;Ljava/lang/String;I[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFormat:[I

    .line 712
    iput p5, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaWidth:I

    .line 713
    invoke-virtual {p2, p6}, Lcom/globalfun/adventuretime/free/CustomFont;->getLinesHeight(I)I

    move-result v0

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaHeight:I

    .line 715
    aget v0, p4, v2

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaHeight:I

    if-ge v0, v1, :cond_0

    .line 716
    aget v0, p4, v2

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaHeight:I

    .line 720
    :cond_0
    iput v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    .line 721
    aget v0, p4, v2

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textHeight:I

    .line 723
    iput v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    .line 724
    const/4 v0, 0x2

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->inputState:I

    .line 725
    return-void
.end method

.method public textAreaPaint(Lcom/globalfun/adventuretime/free/Graphics;III)V
    .locals 10
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "hAlign"    # I

    .prologue
    .line 729
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaWidth:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaHeight:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/globalfun/adventuretime/free/Graphics;->setClip(IIII)V

    .line 731
    sparse-switch p4, :sswitch_data_0

    .line 742
    :goto_0
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFont:Lcom/globalfun/adventuretime/free/CustomFont;

    iget-object v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textArea:Ljava/lang/String;

    iget-object v4, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaFormat:[I

    const/4 v5, -0x1

    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    sub-int v7, v0, v1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/GameCanvas;->renderText(Lcom/globalfun/adventuretime/free/Graphics;Lcom/globalfun/adventuretime/free/CustomFont;Ljava/lang/String;[IIIIIZ)V

    .line 743
    return-void

    .line 734
    :sswitch_0
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaWidth:I

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p2, v0

    .line 735
    goto :goto_0

    .line 738
    :sswitch_1
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaWidth:I

    add-int/2addr p2, v0

    goto :goto_0

    .line 731
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public textCanScroll(I)Z
    .locals 4
    .param p1, "dir"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 747
    if-gez p1, :cond_2

    iget v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    iget v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textHeight:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public textGetScrollY()I
    .locals 2

    .prologue
    .line 757
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public textSetScroll(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "range"    # I

    .prologue
    .line 752
    iget v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textHeight:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textAreaHeight:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    div-int/2addr v0, p2

    iget v1, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->textViewY:I

    .line 753
    return-void
.end method

.method public abstract touchEvents()V
.end method

.method public vibrate(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/GameCanvas;->vibrate:Z

    if-eqz v0, :cond_0

    .line 1428
    :try_start_0
    sget-object v0, Lcom/globalfun/adventuretime/free/GameCanvas;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v0, p1}, Lcom/globalfun/adventuretime/free/Main;->vibrate(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1430
    :catch_0
    move-exception v0

    goto :goto_0
.end method
