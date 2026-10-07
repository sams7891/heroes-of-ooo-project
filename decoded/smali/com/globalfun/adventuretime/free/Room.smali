.class public final Lcom/globalfun/adventuretime/free/Room;
.super Ljava/lang/Object;
.source "Room.java"


# static fields
.field private static final ACTION_APPEAR:I = 0x1

.field private static final ACTION_FALL:I = 0x2

.field private static final ACTION_NULL:I = 0x0

.field private static final ADIR_X:[I

.field private static final ADIR_Y:[I

.field private static final COLOR_BG:[I

.field private static final COMMANDS_OBJECT:[B

.field private static final COMMANDS_TRIGGERED:[B

.field private static final COMMAND_ACTION:I = 0x3

.field private static final COMMAND_FLAG:I = 0x4

.field private static final COMMAND_LENGTH:I = 0x5

.field private static final COMMAND_OBJECT:[B

.field private static final COMMAND_TX:I = 0x1

.field private static final COMMAND_TY:I = 0x2

.field private static final COMMAND_TYPE:I = 0x0

.field private static final COM_TYPE_BOMB:I = 0xe

.field private static final COM_TYPE_BOSS_KEY:I = 0xd

.field private static final COM_TYPE_BOW:I = 0xf

.field private static final COM_TYPE_CHEST:I = 0x7

.field private static final COM_TYPE_DOORS:I = 0x0

.field private static final COM_TYPE_ENTRANCE:I = 0x12

.field private static final COM_TYPE_FLOOR:I = 0x14

.field private static final COM_TYPE_GEM:I = 0x8

.field private static final COM_TYPE_HAMMER:I = 0xc

.field private static final COM_TYPE_HEART:I = 0xa

.field private static final COM_TYPE_KEY:I = 0x9

.field private static final COM_TYPE_MAP:I = 0xb

.field private static final COM_TYPE_MONSTER:I = 0x6

.field private static final COM_TYPE_START:I = 0x13

.field private static final COM_TYPE_SUPER_GEM:I = 0x11

.field private static final COM_TYPE_SWITCH:I = 0x2

.field private static final COM_TYPE_TALK:I = 0x1

.field private static final COM_TYPE_TILE:I = 0x5

.field private static final COM_TYPE_TRIGGER_H:I = 0x3

.field private static final COM_TYPE_TRIGGER_V:I = 0x4

.field private static final COM_TYPE_WAND:I = 0x10

.field private static final DIR_EAST:I = 0x2

.field private static final DIR_NONE:I = -0x1

.field private static final DIR_NORTH:I = 0x0

.field private static final DIR_SOUTH:I = 0x1

.field static final DIR_WEST:I = 0x3

.field private static final DIR_X:[I

.field private static final DIR_Y:[I

.field private static final DOORS:[B

.field private static final DOORS_CLOSED:[B

.field private static final DOORS_LOCKED:[B

.field private static final DOOR_BOSS:B = 0x14t

.field private static final DOOR_EAST:B = 0x11t

.field private static final DOOR_ENTRANCE:B = 0x13t

.field private static final DOOR_GATE:B = 0x1dt

.field public static final DOOR_MAX:I = 0x24

.field public static final DOOR_MIN:I = 0xc

.field private static final DOOR_NORTH:B = 0xft

.field private static final DOOR_SOUTH:B = 0x10t

.field private static final DOOR_WEST:B = 0x12t

.field public static final DOOR_WIDTH:I = 0x18

.field private static final DUNGEON_KEYS:[I

.field public static final EXIT_NORTH:I = 0x14

.field private static final FLAGS_UNLOCK:[I

.field private static final FLAG_CLEARED:I = 0x3e

.field private static final HEIGHT:I = 0x7

.field public static final INSIDE_NORTH:I = 0x8

.field private static final LEDGE_EAST:I = 0x2

.field private static final LEDGE_NORTH:I = 0x1

.field private static final LEDGE_WEST:I = 0x4

.field public static final LOGIC_HEIGHT:I = 0x150

.field public static final LOGIC_WIDTH:I = 0x150

.field public static final MONSTER_GRID:I = 0x6

.field private static final MONSTER_OX:I = 0x10

.field private static final MONSTER_OY:I = 0x28

.field private static final NUM_DIRS:I = 0x4

.field public static final NUM_MONSTERS:I = 0x8

.field public static final NUM_NPCS:I = 0x3

.field private static final NUM_ROOM_SWAPS:I = 0xa

.field private static final NUM_TALK_SLOTS:I = 0x7

.field public static final NUM_TRAPS:I = 0x3

.field public static final OBJECTS_AREA:I = 0x310

.field private static final OBJECT_COLS:I = 0x1c

.field public static final OBJECT_GRID:I = 0xc

.field private static final OBJECT_ROWS:I = 0x1c

.field private static final OVERWORLD_COMPLETE:I = 0x15

.field private static final OVERWORLD_LOCKED:I = 0x14

.field public static final PIXEL_HEIGHT:I

.field public static final PIXEL_WIDTH:I

.field private static final PRINCESSES:[B

.field private static final ROOM_ABYSS:I = 0x2

.field public static final ROOM_AREA:I = 0x31

.field public static final ROOM_GRID:I = 0x30

.field private static final ROOM_SWAP_X:[I

.field private static final ROOM_SWAP_Y:[I

.field private static final SHADOW_N:I = 0x1

.field private static final SHADOW_NW:I = 0x4

.field private static final SHADOW_W:I = 0x2

.field public static final TALK_BOSS:I = 0x5

.field public static final TALK_ENTER:I = 0x0

.field public static final TALK_GOSSIP:I = 0x3

.field public static final TALK_HEALER:I = 0x1

.field public static final TALK_PRINCESS:I = 0x6

.field public static final TALK_SAVED:I = 0x4

.field public static final TALK_SHOP:I = 0x2

.field private static final TALK_TYPES:[B

.field public static final TILES_AREA:I = 0xc4

.field private static final TILE_ABYSS:I = 0x0

.field private static final TILE_COLS:I = 0xe

.field public static final TILE_GRID:I = 0x18

.field private static final TILE_ROWS:I = 0xe

.field public static final VIEW_HEIGHT:I

.field public static final VIEW_WIDTH:I

.field private static final WIDTH:I = 0x7


.field private renderValid:Z
.field private renderPrevviewX:I
.field private renderPrevviewY:I

# instance fields
.field private commands:[B

.field private doorsClosed:Z

.field private doorsClosedDir:I

.field private dungeon:I

.field private engine:Lcom/globalfun/adventuretime/free/Engine;

.field private entranceId:I

.field private entranceX:I

.field private entranceY:I

.field private focusHeight:I

.field private focusWidth:I

.field private focusX:I

.field private focusY:I

.field private isOverworld:Z

.field private mapAbyss:[B

.field private mapObjects:[B

.field private mapRoom:[B

.field private mapShadows:[B

.field private mapTiles:[B

.field private talkAction:I

.field private talkPending:I

.field private talkSlots:[I

.field public talkSpeaker:I

.field private tempFlags:I

.field private triggerFlag:I

.field private triggerH:I

.field private triggerV:I

.field private viewHeight:I

.field private viewMaxX:I

.field private viewMaxY:I

.field private viewMinX:I

.field private viewMinY:I

.field private viewWidth:I

.field private viewX:I

.field private viewY:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 35
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    mul-int/lit8 v0, v0, 0x7

    sput v0, Lcom/globalfun/adventuretime/free/Room;->PIXEL_WIDTH:I

    .line 36
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    mul-int/lit8 v0, v0, 0x7

    sput v0, Lcom/globalfun/adventuretime/free/Room;->PIXEL_HEIGHT:I

    .line 38
    sget v0, Lcom/globalfun/adventuretime/free/Room;->PIXEL_WIDTH:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v1, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/globalfun/adventuretime/free/Room;->VIEW_WIDTH:I

    .line 39
    sget v0, Lcom/globalfun/adventuretime/free/Room;->PIXEL_HEIGHT:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v1, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/globalfun/adventuretime/free/Room;->VIEW_HEIGHT:I

    .line 64
    sget-object v0, Lcom/globalfun/adventuretime/free/Actor;->DIR_X:[I

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->DIR_X:[I

    .line 65
    sget-object v0, Lcom/globalfun/adventuretime/free/Actor;->DIR_Y:[I

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->DIR_Y:[I

    .line 67
    sget-object v0, Lcom/globalfun/adventuretime/free/Actor;->ADIR_X:[I

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->ADIR_X:[I

    .line 68
    sget-object v0, Lcom/globalfun/adventuretime/free/Actor;->ADIR_Y:[I

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->ADIR_Y:[I

    .line 71
    const/16 v0, 0xc

    new-array v0, v0, [I

    aput v3, v0, v3

    const/4 v1, -0x1

    aput v1, v0, v4

    aput v3, v0, v5

    aput v4, v0, v6

    const/4 v1, -0x1

    aput v1, v0, v7

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->ROOM_SWAP_X:[I

    .line 72
    const/16 v0, 0xc

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, -0x1

    aput v1, v0, v3

    aput v3, v0, v7

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v4, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->ROOM_SWAP_Y:[I

    .line 86
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    .line 88
    new-array v0, v5, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->DOORS_LOCKED:[B

    .line 89
    new-array v0, v5, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->DOORS_CLOSED:[B

    .line 91
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->FLAGS_UNLOCK:[I

    .line 138
    new-array v0, v7, [B

    aput-byte v6, v0, v3

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v1, v0, v5

    const/16 v1, 0x14

    aput-byte v1, v0, v6

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->COMMANDS_TRIGGERED:[B

    .line 140
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->COMMANDS_OBJECT:[B

    .line 155
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->COMMAND_OBJECT:[B

    .line 170
    sget-object v0, Lcom/globalfun/adventuretime/free/UI;->DUNGEON_KEYS:[I

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->DUNGEON_KEYS:[I

    .line 191
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x3

    aput-byte v1, v0, v3

    aput-byte v4, v0, v4

    const/4 v1, 0x3

    aput-byte v5, v0, v1

    aput-byte v6, v0, v5

    aput-byte v7, v0, v6

    const/4 v1, 0x7

    aput-byte v1, v0, v7

    const/4 v1, 0x7

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->TALK_TYPES:[B

    .line 195
    new-array v0, v5, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->PRINCESSES:[B

    .line 211
    new-array v0, v6, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/globalfun/adventuretime/free/Room;->COLOR_BG:[I

    return-void

    .line 86
    :array_0
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
    .end array-data

    .line 88
    nop

    :array_1
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
    .end array-data

    .line 89
    :array_2
    .array-data 1
        0x19t
        0x1at
        0x1bt
        0x1ct
    .end array-data

    .line 91
    :array_3
    .array-data 4
        0x1d
        0x1c
        0x1b
        0x1a
    .end array-data

    .line 140
    :array_4
    .array-data 1
        0x7t
        0x8t
        0x11t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data

    .line 155
    :array_5
    .array-data 1
        0x1bt
        0x25t
        0x24t
        0x26t
        0x23t
        0x29t
        0x2bt
        0x33t
        0x2ct
        0x2et
        0x2ft
    .end array-data

    .line 195
    :array_6
    .array-data 1
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data

    .line 211
    :array_7
    .array-data 4
        -0xa9cbb9
        -0xd3c7c6
        -0xdee1e3
        -0xbec6b5
        -0x1000000
    .end array-data
.end method

.method public constructor <init>(Lcom/globalfun/adventuretime/free/Engine;)V
    .locals 2
    .param p1, "engine"    # Lcom/globalfun/adventuretime/free/Engine;

    .prologue
    const/16 v1, 0xc4

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/16 v0, 0x31

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    .line 221
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->mapTiles:[B

    .line 222
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    .line 223
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->mapAbyss:[B

    .line 225
    const/16 v0, 0x310

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    .line 243
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->talkSlots:[I

    .line 249
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    .line 250
    return-void
.end method

.method private checkFlag(I)Z
    .locals 3
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x1

    .line 1274
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0, p1}, Lcom/globalfun/adventuretime/free/Engine;->checkFlag(I)Z

    move-result v0

    .line 1277
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/globalfun/adventuretime/free/Room;->tempFlags:I

    add-int/lit8 v2, p1, -0x20

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeAllDoors()V
    .locals 4

    .prologue
    .line 1552
    const/16 v1, 0x31

    .local v1, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    .line 1562
    return-void

    .line 1554
    :cond_1
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v2, v2, v1

    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    invoke-virtual {p0, v2, v3}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v0

    .line 1556
    .local v0, "door":I
    iget v2, p0, Lcom/globalfun/adventuretime/free/Room;->doorsClosedDir:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    iget v3, p0, Lcom/globalfun/adventuretime/free/Room;->doorsClosedDir:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 1559
    :cond_2
    if-ltz v0, :cond_0

    sget-object v2, Lcom/globalfun/adventuretime/free/Room;->DOORS_CLOSED:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1560
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->DOORS_CLOSED:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method private getDifference(III)I
    .locals 2
    .param p1, "centre"    # I
    .param p2, "focus"    # I
    .param p3, "length"    # I

    .prologue
    .line 1778
    sub-int v0, p2, p1

    .line 1779
    .local v0, "d":I
    shr-int/lit8 p3, p3, 0x1

    .line 1781
    neg-int v1, v0

    if-lt v1, p3, :cond_0

    .line 1782
    add-int/2addr v0, p3

    .line 1788
    :goto_0
    return v0

    .line 1783
    :cond_0
    if-lt v0, p3, :cond_1

    .line 1784
    sub-int/2addr v0, p3

    goto :goto_0

    .line 1786
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAbyss(II)Z
    .locals 8
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .prologue
    const/16 v6, 0xe

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 501
    if-ltz p1, :cond_0

    if-ge p1, v6, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, v6, :cond_2

    :cond_0
    move v4, v5

    .line 521
    :cond_1
    :goto_0
    return v4

    .line 504
    :cond_2
    mul-int/lit8 v6, p2, 0xe

    add-int v3, p1, v6

    .line 506
    .local v3, "tileIndex":I
    iget-object v6, p0, Lcom/globalfun/adventuretime/free/Room;->mapTiles:[B

    aget-byte v6, v6, v3

    if-eqz v6, :cond_1

    .line 511
    shr-int/lit8 v1, p1, 0x1

    .line 512
    .local v1, "roomX":I
    shr-int/lit8 v2, p2, 0x1

    .line 514
    .local v2, "roomY":I
    mul-int/lit8 v6, v2, 0x7

    add-int v0, v1, v6

    .line 516
    .local v0, "roomIndex":I
    iget-object v6, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v6, v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    move v4, v5

    .line 521
    goto :goto_0
.end method

.method private openAllDoors()V
    .locals 4

    .prologue
    .line 1532
    const/16 v1, 0x31

    .local v1, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    .line 1539
    return-void

    .line 1534
    :cond_1
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v2, v2, v1

    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->DOORS_CLOSED:[B

    invoke-virtual {p0, v2, v3}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v0

    .line 1536
    .local v0, "closed":I
    if-ltz v0, :cond_0

    .line 1537
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method private openGate()V
    .locals 3

    .prologue
    .line 1543
    const/16 v0, 0x31

    .local v0, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 1548
    return-void

    .line 1545
    :cond_1
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    .line 1546
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    const/16 v2, 0xf

    aput-byte v2, v1, v0

    goto :goto_0
.end method

.method private processObject(IIIIZ)V
    .locals 6
    .param p1, "com"    # I
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "type"    # I
    .param p5, "loading"    # Z

    .prologue
    .line 1496
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v4, p3, 0x1

    aget-byte v1, v3, v4

    .line 1497
    .local v1, "tx":I
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v4, p3, 0x2

    aget-byte v2, v3, v4

    .line 1499
    .local v2, "ty":I
    const/16 v3, 0x1b

    if-ne p4, v3, :cond_0

    .line 1500
    invoke-virtual {p0, v1, v2, p1}, Lcom/globalfun/adventuretime/free/Room;->getCommand(III)I

    move-result p1

    .line 1502
    :cond_0
    invoke-static {p4, v1, v2}, Lcom/globalfun/adventuretime/free/Actor;->addObject(III)Lcom/globalfun/adventuretime/free/Actor;

    move-result-object v0

    .line 1503
    .local v0, "object":Lcom/globalfun/adventuretime/free/Actor;
    invoke-virtual {v0, p1}, Lcom/globalfun/adventuretime/free/Actor;->setCommand(I)V

    .line 1505
    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v4, p3, 0x0

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    .line 1507
    if-eqz p5, :cond_1

    .line 1526
    :goto_0
    return-void

    .line 1512
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 1525
    :goto_1
    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Actor;->add()V

    goto :goto_0

    .line 1516
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/globalfun/adventuretime/free/Actor;->addEffect(I)Lcom/globalfun/adventuretime/free/Actor;

    goto :goto_1

    .line 1521
    :pswitch_1
    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Actor;->fall()V

    goto :goto_1

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAbyss(II)V
    .locals 4
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I

    .prologue
    const/16 v3, 0xe

    .line 526
    if-ltz p1, :cond_0

    if-ge p1, v3, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, v3, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    mul-int/lit8 v2, p2, 0xe

    add-int v1, p1, v2

    .line 533
    .local v1, "tileIndex":I
    invoke-direct {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Room;->isAbyss(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 535
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->mapAbyss:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    goto :goto_0

    .line 541
    :cond_2
    const/4 v0, 0x0

    .line 543
    .local v0, "abyss":I
    if-lez p2, :cond_3

    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/globalfun/adventuretime/free/Room;->isAbyss(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 545
    or-int/lit8 v0, v0, 0x1

    .line 548
    :cond_3
    if-lez p1, :cond_4

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2, p2}, Lcom/globalfun/adventuretime/free/Room;->isAbyss(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 550
    or-int/lit8 v0, v0, 0x4

    .line 553
    :cond_4
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2, p2}, Lcom/globalfun/adventuretime/free/Room;->isAbyss(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 555
    or-int/lit8 v0, v0, 0x2

    .line 558
    :cond_5
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->mapAbyss:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method private setShadow(II)V
    .locals 9
    .param p1, "roomX"    # I
    .param p2, "roomY"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 563
    mul-int/lit8 v5, p2, 0x7

    add-int v2, p1, v5

    .line 565
    .local v2, "roomIndex":I
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v5, v5, v2

    if-eqz v5, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    shl-int/lit8 v5, p1, 0x1

    mul-int/lit8 v6, p2, 0x7

    shl-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 572
    .local v3, "tileIndex":I
    if-gtz p2, :cond_5

    move v0, v1

    .line 574
    .local v0, "n":I
    :goto_1
    if-le v0, v8, :cond_2

    .line 576
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    aget-byte v6, v5, v3

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 577
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, v5, v6

    or-int/lit8 v7, v7, 0x5

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 579
    if-nez p1, :cond_2

    .line 580
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    aget-byte v6, v5, v3

    or-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 583
    :cond_2
    if-gtz p1, :cond_6

    move v4, v1

    .line 585
    .local v4, "w":I
    :goto_2
    if-le v4, v8, :cond_3

    .line 587
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    aget-byte v6, v5, v3

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 588
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    add-int/lit8 v6, v3, 0xe

    aget-byte v7, v5, v6

    or-int/lit8 v7, v7, 0x6

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 591
    :cond_3
    if-lez p1, :cond_4

    if-gtz p2, :cond_7

    .line 593
    .local v1, "nw":I
    :cond_4
    :goto_3
    if-le v1, v8, :cond_0

    .line 595
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    aget-byte v6, v5, v3

    or-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    goto :goto_0

    .line 572
    .end local v0    # "n":I
    .end local v1    # "nw":I
    .end local v4    # "w":I
    :cond_5
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    add-int/lit8 v6, v2, -0x7

    aget-byte v0, v5, v6

    goto :goto_1

    .line 583
    .restart local v0    # "n":I
    :cond_6
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    add-int/lit8 v6, v2, -0x1

    aget-byte v4, v5, v6

    goto :goto_2

    .line 591
    .restart local v4    # "w":I
    :cond_7
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    add-int/lit8 v6, v2, -0x8

    aget-byte v1, v5, v6

    goto :goto_3
.end method

.method private setTempFlag(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 1282
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->tempFlags:I

    const/4 v1, 0x1

    add-int/lit8 v2, p1, -0x20

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->tempFlags:I

    .line 1283
    return-void
.end method


# virtual methods
.method public canMoveTo(IIZZ)Z
    .locals 19
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allowDoor"    # Z
    .param p4, "isProjectile"    # Z

    .prologue
    .line 884
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/globalfun/adventuretime/free/Room;->isOutside(IIZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 958
    .end local p3    # "allowDoor":Z
    :goto_0
    return p3

    .line 891
    .restart local p3    # "allowDoor":Z
    :cond_0
    div-int/lit8 v7, p1, 0xc

    .line 892
    .local v7, "objX":I
    div-int/lit8 v8, p2, 0xc

    .line 894
    .local v8, "objY":I
    if-nez p4, :cond_1

    .line 896
    mul-int/lit8 v18, v8, 0x1c

    add-int v6, v7, v18

    .line 897
    .local v6, "objIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    move-object/from16 v18, v0

    aget-byte v5, v18, v6

    .line 899
    .local v5, "obj":I
    if-ltz v5, :cond_1

    .line 900
    const/16 p3, 0x0

    goto :goto_0

    .line 905
    .end local v5    # "obj":I
    .end local v6    # "objIndex":I
    :cond_1
    shr-int/lit8 v16, v7, 0x1

    .line 906
    .local v16, "tileX":I
    shr-int/lit8 v17, v8, 0x1

    .line 908
    .local v17, "tileY":I
    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/globalfun/adventuretime/free/Room;->isOverworld:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 910
    mul-int/lit8 v18, v17, 0xe

    add-int v15, v16, v18

    .line 911
    .local v15, "tileIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapTiles:[B

    move-object/from16 v18, v0

    aget-byte v14, v18, v15

    .line 913
    .local v14, "tile":I
    if-nez v14, :cond_2

    .line 914
    const/16 p3, 0x0

    goto :goto_0

    .line 919
    .end local v14    # "tile":I
    .end local v15    # "tileIndex":I
    :cond_2
    shr-int/lit8 v12, v16, 0x1

    .line 920
    .local v12, "roomX":I
    shr-int/lit8 v13, v17, 0x1

    .line 922
    .local v13, "roomY":I
    mul-int/lit8 v18, v13, 0x7

    add-int v11, v12, v18

    .line 923
    .local v11, "roomIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    move-object/from16 v18, v0

    aget-byte v10, v18, v11

    .line 925
    .local v10, "room":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/globalfun/adventuretime/free/Room;->isOverworld:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 927
    const/16 v18, 0x3

    move/from16 v0, v18

    if-le v10, v0, :cond_8

    const/16 v18, 0x15

    move/from16 v0, v18

    if-eq v10, v0, :cond_8

    .line 928
    const/16 p3, 0x0

    goto :goto_0

    .line 930
    :cond_3
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_4

    move/from16 p3, p4

    .line 932
    goto :goto_0

    .line 934
    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-le v10, v0, :cond_8

    .line 936
    sget-object v18, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/globalfun/adventuretime/free/Room;->isType(I[B)Z

    move-result v4

    .line 938
    .local v4, "isDoor":Z
    if-eqz v4, :cond_7

    if-eqz p3, :cond_7

    .line 942
    const/16 v18, 0xf

    move/from16 v0, v18

    if-eq v10, v0, :cond_5

    const/16 v18, 0x10

    move/from16 v0, v18

    if-eq v10, v0, :cond_5

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    .line 944
    :cond_5
    mul-int/lit8 v18, v12, 0x30

    sub-int v9, p1, v18

    .line 951
    .local v9, "offset":I
    :goto_1
    const/16 v18, 0xc

    move/from16 v0, v18

    if-lt v9, v0, :cond_7

    const/16 v18, 0x24

    move/from16 v0, v18

    if-gt v9, v0, :cond_7

    .line 952
    const/16 p3, 0x1

    goto/16 :goto_0

    .line 948
    .end local v9    # "offset":I
    :cond_6
    mul-int/lit8 v18, v13, 0x30

    sub-int v9, p2, v18

    .restart local v9    # "offset":I
    goto :goto_1

    .line 955
    .end local v9    # "offset":I
    :cond_7
    const/16 p3, 0x0

    goto/16 :goto_0

    .line 958
    .end local v4    # "isDoor":Z
    :cond_8
    const/16 p3, 0x1

    goto/16 :goto_0
.end method

.method public canMoveToTile(II)Z
    .locals 12
    .param p1, "objX"    # I
    .param p2, "objY"    # I

    .prologue
    const/16 v11, 0x1c

    const/4 v10, 0x0

    .line 844
    if-ltz p1, :cond_0

    if-ge p1, v11, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, v11, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v10

    .line 847
    :cond_1
    mul-int/lit8 v11, p2, 0x1c

    add-int v1, p1, v11

    .line 848
    .local v1, "objIndex":I
    iget-object v11, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    aget-byte v0, v11, v1

    .line 850
    .local v0, "obj":I
    if-gez v0, :cond_0

    .line 855
    shr-int/lit8 v8, p1, 0x1

    .line 856
    .local v8, "tileX":I
    shr-int/lit8 v9, p2, 0x1

    .line 858
    .local v9, "tileY":I
    mul-int/lit8 v11, v9, 0xe

    add-int v7, v8, v11

    .line 859
    .local v7, "tileIndex":I
    iget-object v11, p0, Lcom/globalfun/adventuretime/free/Room;->mapTiles:[B

    aget-byte v6, v11, v7

    .line 861
    .local v6, "tile":I
    if-nez v6, :cond_2

    iget-boolean v11, p0, Lcom/globalfun/adventuretime/free/Room;->isOverworld:Z

    if-eqz v11, :cond_0

    .line 866
    :cond_2
    shr-int/lit8 v4, v8, 0x1

    .line 867
    .local v4, "roomX":I
    shr-int/lit8 v5, v9, 0x1

    .line 869
    .local v5, "roomY":I
    mul-int/lit8 v11, v5, 0x7

    add-int v3, v4, v11

    .line 870
    .local v3, "roomIndex":I
    iget-object v11, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v2, v11, v3

    .line 872
    .local v2, "room":I
    const/4 v11, 0x2

    if-ge v2, v11, :cond_0

    .line 877
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public enter(IIZZ)V
    .locals 16
    .param p1, "dir"    # I
    .param p2, "position"    # I
    .param p3, "atDoor"    # Z
    .param p4, "isOverworld"    # Z

    .prologue
    .line 600
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/globalfun/adventuretime/free/Actor;->addActor(I)Lcom/globalfun/adventuretime/free/Actor;

    move-result-object v2

    .line 604
    .local v2, "finn":Lcom/globalfun/adventuretime/free/Actor;
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    .line 606
    move-object/from16 v0, p0

    iget v13, v0, Lcom/globalfun/adventuretime/free/Room;->entranceX:I

    mul-int/lit8 v11, v13, 0x18

    .line 607
    .local v11, "x":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/globalfun/adventuretime/free/Room;->entranceY:I

    mul-int/lit8 v12, v13, 0x18

    .line 609
    .local v12, "y":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/globalfun/adventuretime/free/Room;->entranceId:I

    if-gez v13, :cond_2

    .line 611
    add-int/lit8 v11, v11, 0xc

    .line 612
    add-int/lit8 v12, v12, 0xc

    .line 620
    :goto_0
    invoke-virtual {v2, v11, v12}, Lcom/globalfun/adventuretime/free/Actor;->enterRoom(II)V

    .line 722
    :goto_1
    iget v13, v2, Lcom/globalfun/adventuretime/free/Actor;->px:I

    iget v14, v2, Lcom/globalfun/adventuretime/free/Actor;->py:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/globalfun/adventuretime/free/Room;->focus(IIZ)V

    .line 724
    if-eqz p4, :cond_1

    .line 726
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    const/16 p1, 0x1

    .line 728
    :cond_0
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/globalfun/adventuretime/free/Actor;->addJake(I)V

    .line 730
    :cond_1
    return-void

    .line 616
    :cond_2
    add-int/lit8 v11, v11, 0x18

    .line 617
    add-int/lit8 v12, v12, 0x48

    goto :goto_0

    .line 624
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_3
    if-gez p2, :cond_5

    .line 626
    const/16 p2, 0x18

    .line 628
    const/4 v4, 0x0

    .local v4, "index":I
    const/4 v10, 0x0

    .line 630
    .local v10, "step":I
    packed-switch p1, :pswitch_data_0

    .line 656
    :goto_2
    move v3, v4

    .line 658
    .local v3, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v6, v13, v3

    .line 660
    .local v6, "room":B
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    const/16 v13, 0x14

    if-ne v6, v13, :cond_4

    .line 664
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    const/16 v6, 0xf

    aput-byte v6, v13, v3

    .line 667
    :cond_4
    sget-object v13, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/globalfun/adventuretime/free/Room;->isType(I[B)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 672
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v6    # "room":B
    .end local v10    # "step":I
    :cond_5
    move/from16 v11, p2

    .line 673
    .restart local v11    # "x":I
    move/from16 v12, p2

    .line 675
    .restart local v12    # "y":I
    packed-switch p1, :pswitch_data_1

    .line 699
    :goto_4
    div-int/lit8 v8, v11, 0x30

    .line 700
    .local v8, "roomX":I
    div-int/lit8 v9, v12, 0x30

    .line 702
    .local v9, "roomY":I
    mul-int/lit8 v13, v9, 0x7

    add-int v7, v8, v13

    .line 703
    .local v7, "roomIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v6, v13, v7

    .line 705
    .local v6, "room":I
    sget-object v13, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/globalfun/adventuretime/free/Room;->isType(I[B)Z

    move-result v5

    .line 709
    .local v5, "isDoor":Z
    if-eqz v5, :cond_7

    .line 711
    mul-int/lit8 v13, v8, 0x30

    add-int/lit8 v11, v13, 0x18

    .line 712
    mul-int/lit8 v13, v9, 0x30

    add-int/lit8 v12, v13, 0x18

    .line 714
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v2, v0, v11, v12, v1}, Lcom/globalfun/adventuretime/free/Actor;->enterDoor(IIIZ)V

    goto :goto_1

    .line 634
    .end local v5    # "isDoor":Z
    .end local v6    # "room":I
    .end local v7    # "roomIndex":I
    .end local v8    # "roomX":I
    .end local v9    # "roomY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .restart local v4    # "index":I
    .restart local v10    # "step":I
    :pswitch_0
    const/16 v4, 0x2a

    .line 635
    const/4 v10, 0x1

    .line 636
    goto :goto_2

    .line 640
    :pswitch_1
    const/4 v4, 0x0

    .line 641
    const/4 v10, 0x1

    .line 642
    goto :goto_2

    .line 646
    :pswitch_2
    const/4 v4, 0x0

    .line 647
    const/4 v10, 0x7

    .line 648
    goto :goto_2

    .line 652
    :pswitch_3
    const/4 v4, 0x6

    .line 653
    const/4 v10, 0x7

    goto :goto_2

    .line 656
    .restart local v3    # "i":I
    .local v6, "room":B
    :cond_6
    add-int/2addr v3, v10

    add-int/lit8 p2, p2, 0x30

    goto :goto_3

    .line 679
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v6    # "room":B
    .end local v10    # "step":I
    .restart local v11    # "x":I
    .restart local v12    # "y":I
    :pswitch_4
    const/16 v12, 0x14f

    .line 680
    goto :goto_4

    .line 684
    :pswitch_5
    const/4 v12, 0x0

    .line 685
    goto :goto_4

    .line 689
    :pswitch_6
    const/4 v11, 0x0

    .line 690
    goto :goto_4

    .line 693
    :pswitch_7
    const/16 v11, 0x14f

    goto :goto_4

    .line 718
    .restart local v5    # "isDoor":Z
    .local v6, "room":I
    .restart local v7    # "roomIndex":I
    .restart local v8    # "roomX":I
    .restart local v9    # "roomY":I
    :cond_7
    move/from16 v0, p1

    invoke-virtual {v2, v0, v11, v12}, Lcom/globalfun/adventuretime/free/Actor;->enterRoom(III)V

    goto/16 :goto_1

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 675
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public enteredRoom()V
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Room;->doorsClosed:Z

    if-eqz v0, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->closeAllDoors()V

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Room;->talk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Engine;->playBGM()V

    .line 1016
    :cond_1
    return-void
.end method

.method public exit(III)V
    .locals 4
    .param p1, "dir"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 736
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v2}, Lcom/globalfun/adventuretime/free/Engine;->isInBossRoom()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 738
    .local v0, "complete":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 740
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v2}, Lcom/globalfun/adventuretime/free/Engine;->completeDungeon()V

    .line 751
    :goto_1
    return-void

    .line 736
    .end local v0    # "complete":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 742
    .restart local v0    # "complete":Z
    :cond_1
    const/4 v2, 0x4

    if-ge p1, v2, :cond_2

    .line 744
    sget-object v2, Lcom/globalfun/adventuretime/free/Room;->ADIR_X:[I

    aget v2, v2, p1

    mul-int/2addr v2, p3

    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->ADIR_Y:[I

    aget v3, v3, p1

    mul-int/2addr v3, p2

    add-int v1, v2, v3

    .line 745
    .local v1, "position":I
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v2, p1, v1}, Lcom/globalfun/adventuretime/free/Engine;->exitRoom(II)V

    goto :goto_1

    .line 749
    .end local v1    # "position":I
    :cond_2
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v2}, Lcom/globalfun/adventuretime/free/Engine;->exitDungeon()V

    goto :goto_1
.end method

.method public exitToDungeon()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Room;->entranceId:I

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->exitOverworld(I)V

    .line 756
    return-void
.end method

.method public focus(IIZ)V
    .locals 6
    .param p1, "px"    # I
    .param p2, "py"    # I
    .param p3, "quick"    # Z

    .prologue
    .line 1748
    if-eqz p3, :cond_2

    .line 1750
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->focusX:I

    sub-int v4, p1, v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    .line 1751
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->focusY:I

    sub-int v4, p2, v4

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    .line 1765
    :goto_0
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->viewMinX:I

    if-ge v4, v5, :cond_3

    .line 1766
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewMinX:I

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    .line 1770
    :cond_0
    :goto_1
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->viewMinY:I

    if-ge v4, v5, :cond_4

    .line 1771
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewMinY:I

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    .line 1774
    :cond_1
    :goto_2
    if-eqz p3, :render_done
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Room;->renderValid:Z
    :render_done
    return-void

    .line 1755
    :cond_2
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->focusX:I

    add-int v2, v4, v5

    .line 1756
    .local v2, "cx":I
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->focusY:I

    add-int v3, v4, v5

    .line 1758
    .local v3, "cy":I
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->focusWidth:I

    invoke-direct {p0, v2, p1, v4}, Lcom/globalfun/adventuretime/free/Room;->getDifference(III)I

    move-result v0

    .line 1759
    .local v0, "camDx":I
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->focusHeight:I

    invoke-direct {p0, v3, p2, v4}, Lcom/globalfun/adventuretime/free/Room;->getDifference(III)I

    move-result v1

    .line 1761
    .local v1, "camDy":I
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    .line 1762
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    goto :goto_0

    .line 1767
    .end local v0    # "camDx":I
    .end local v1    # "camDy":I
    .end local v2    # "cx":I
    .end local v3    # "cy":I
    :cond_3
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->viewMaxX:I

    if-le v4, v5, :cond_0

    .line 1768
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewMaxX:I

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    goto :goto_1

    .line 1772
    :cond_4
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->viewMaxY:I

    if-le v4, v5, :cond_1

    .line 1773
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewMaxY:I

    iput v4, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    goto :goto_2
.end method

.method public getCommand(III)I
    .locals 7
    .param p1, "tx"    # I
    .param p2, "ty"    # I
    .param p3, "exclude"    # I

    .prologue
    .line 1295
    const/4 v1, -0x1

    .line 1297
    .local v1, "command":I
    const/4 v0, 0x0

    .local v0, "c":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 1309
    :goto_1
    return v1

    .line 1299
    :cond_0
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v2, v5, v6

    .line 1300
    .local v2, "cx":I
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v6, v4, 0x2

    aget-byte v3, v5, v6

    .line 1302
    .local v3, "cy":I
    if-ne v2, p1, :cond_1

    if-ne v3, p2, :cond_1

    if-eq v0, p3, :cond_1

    .line 1304
    move v1, v0

    .line 1305
    goto :goto_1

    .line 1297
    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x5

    goto :goto_0
.end method

.method public getIndex(I[B)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "types"    # [B

    .prologue
    .line 993
    array-length v0, p2

    .local v0, "index":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 997
    :goto_0
    return v0

    .line 994
    :cond_1
    aget-byte v1, p2, v0

    if-ne p1, v1, :cond_0

    goto :goto_0
.end method

.method public heroMoved(IIII)V
    .locals 9
    .param p1, "prevX"    # I
    .param p2, "prevY"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/16 v8, 0x1f

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1020
    sub-int v0, p3, p1

    .line 1021
    .local v0, "dx":I
    sub-int v1, p4, p2

    .line 1023
    .local v1, "dy":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    if-eqz v0, :cond_4

    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerV:I

    if-ltz v4, :cond_4

    .line 1028
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerV:I

    sub-int v2, p3, v4

    .line 1030
    .local v2, "ox":I
    if-ltz v2, :cond_2

    sub-int v4, v2, v0

    if-ltz v4, :cond_3

    :cond_2
    if-gtz v2, :cond_4

    sub-int v4, v2, v0

    if-lez v4, :cond_4

    .line 1032
    :cond_3
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    if-gt v4, v8, :cond_7

    .line 1033
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    invoke-virtual {v4, v5}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1037
    :goto_1
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Room;->processCommands(Z)V

    .line 1038
    iput v6, p0, Lcom/globalfun/adventuretime/free/Room;->triggerV:I

    .line 1043
    .end local v2    # "ox":I
    :cond_4
    if-eqz v1, :cond_0

    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerH:I

    if-ltz v4, :cond_0

    .line 1045
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerH:I

    sub-int v3, p4, v4

    .line 1047
    .local v3, "oy":I
    if-ltz v3, :cond_5

    sub-int v4, v3, v1

    if-ltz v4, :cond_6

    :cond_5
    if-gtz v3, :cond_0

    sub-int v4, v3, v1

    if-lez v4, :cond_0

    .line 1049
    :cond_6
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    if-gt v4, v8, :cond_8

    .line 1050
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    invoke-virtual {v4, v5}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1054
    :goto_2
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Room;->processCommands(Z)V

    .line 1055
    iput v6, p0, Lcom/globalfun/adventuretime/free/Room;->triggerH:I

    goto :goto_0

    .line 1035
    .end local v3    # "oy":I
    .restart local v2    # "ox":I
    :cond_7
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    invoke-direct {p0, v4}, Lcom/globalfun/adventuretime/free/Room;->setTempFlag(I)V

    goto :goto_1

    .line 1052
    .end local v2    # "ox":I
    .restart local v3    # "oy":I
    :cond_8
    iget v4, p0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    invoke-direct {p0, v4}, Lcom/globalfun/adventuretime/free/Room;->setTempFlag(I)V

    goto :goto_2
.end method

.method public insideX(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 798
    const/4 v0, 0x0

    .line 800
    .local v0, "dx":I
    if-gez p1, :cond_1

    .line 801
    neg-int v0, p1

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 802
    :cond_1
    const/16 v1, 0x150

    if-lt p1, v1, :cond_0

    .line 803
    add-int/lit8 v1, p1, 0x1

    rsub-int v0, v1, 0x150

    goto :goto_0
.end method

.method public insideY(I)I
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 812
    .local v0, "dy":I
    if-gez p1, :cond_1

    .line 813
    neg-int v0, p1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 814
    :cond_1
    const/16 v1, 0x150

    if-lt p1, v1, :cond_0

    .line 815
    add-int/lit8 v1, p1, 0x1

    rsub-int v0, v1, 0x150

    goto :goto_0
.end method

.method public isAtDoor(IIII)I
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/16 v8, 0x30

    .line 822
    div-int/lit8 v5, p1, 0x30

    .line 823
    .local v5, "roomX":I
    div-int/lit8 v6, p2, 0x30

    .line 825
    .local v6, "roomY":I
    mul-int/lit8 v7, v6, 0x7

    add-int v4, v5, v7

    .line 826
    .local v4, "roomIndex":I
    iget-object v7, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v3, v7, v4

    .line 828
    .local v3, "room":I
    sget-object v7, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    invoke-virtual {p0, v3, v7}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v0

    .line 830
    .local v0, "doorDir":I
    if-ltz v0, :cond_1

    .line 832
    mul-int/lit8 v7, v5, 0x30

    sub-int v1, p1, v7

    .line 833
    .local v1, "ox":I
    mul-int/lit8 v7, v6, 0x30

    sub-int v2, p2, v7

    .line 835
    .local v2, "oy":I
    if-lt v1, p3, :cond_0

    add-int v7, v1, p3

    if-ge v7, v8, :cond_0

    if-lt v2, p4, :cond_0

    add-int v7, v2, p4

    if-lt v7, v8, :cond_1

    .line 836
    :cond_0
    const/4 v0, -0x1

    .line 839
    .end local v1    # "ox":I
    .end local v2    # "oy":I
    :cond_1
    return v0
.end method

.method public isOutside(IIZ)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "checkExit"    # Z

    .prologue
    const/16 v1, 0x150

    .line 793
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-eqz p3, :cond_0

    const/16 v0, 0x14

    if-lt p2, v0, :cond_1

    :cond_0
    if-ge p1, v1, :cond_1

    if-ge p2, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isType(I[B)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "types"    # [B

    .prologue
    .line 1002
    invoke-virtual {p0, p1, p2}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lift(II)V
    .locals 4
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    const/4 v3, -0x1

    .line 770
    mul-int/lit8 v1, p2, 0x1c

    add-int v0, p1, v1

    .line 772
    .local v0, "ti":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    aput-byte v3, v1, v0

    .line 773
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v3, v1, v2

    .line 774
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    add-int/lit8 v2, v0, 0x1c

    aput-byte v3, v1, v2

    .line 775
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    add-int/lit8 v2, v0, 0x1c

    add-int/lit8 v2, v2, 0x1

    aput-byte v3, v1, v2

    .line 776
    return-void
.end method

.method public load(Lcom/globalfun/adventuretime/free/GameCanvas;IZ)V
    .locals 31
    .param p1, "parent"    # Lcom/globalfun/adventuretime/free/GameCanvas;
    .param p2, "dungeon"    # I
    .param p3, "isOverworld"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->dungeon:I

    .line 255
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/globalfun/adventuretime/free/Room;->isOverworld:Z

    .line 261
    const/16 v8, 0xc4

    .local v8, "i":I
    :goto_0
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_4

    .line 267
    const/16 v8, 0x310

    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_5

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/globalfun/adventuretime/free/Actor;->start(Lcom/globalfun/adventuretime/free/Room;)V

    .line 272
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->tempFlags:I

    .line 274
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->entranceId:I

    .line 276
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->triggerH:I

    .line 277
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->triggerV:I

    .line 279
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/globalfun/adventuretime/free/Room;->doorsClosed:Z

    .line 280
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->doorsClosedDir:I

    .line 282
    const/4 v8, 0x7

    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_6

    .line 285
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->talkPending:I

    .line 286
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->talkAction:I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/GameCanvas;->readFully([B)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullInt()I

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapTiles:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/GameCanvas;->readFully([B)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullByteArray()[B

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    .line 304
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Room;->processCommands(Z)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullInt()I

    move-result v6

    .line 310
    .local v6, "datalen":I
    const/4 v8, 0x0

    :goto_3
    if-lt v8, v6, :cond_7

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullInt()I

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pull()I

    move-result v12

    .line 354
    .local v12, "num":I
    const/4 v9, 0x0

    .local v9, "id":I
    :goto_4
    if-lt v9, v12, :cond_a

    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->closeStream()V

    .line 378
    if-nez p3, :cond_1

    .line 380
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 382
    const/16 v24, 0x0

    .local v24, "ty":I
    :goto_5
    const/16 v29, 0xe

    move/from16 v0, v24

    move/from16 v1, v29

    if-lt v0, v1, :cond_c

    .line 387
    .end local v24    # "ty":I
    :cond_0
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/globalfun/adventuretime/free/Resources;->HAS_ROOM_SHADOWS:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 389
    const/16 v22, 0x0

    .local v22, "ry":I
    :goto_6
    const/16 v29, 0x7

    move/from16 v0, v22

    move/from16 v1, v29

    if-lt v0, v1, :cond_e

    .line 397
    .end local v22    # "ry":I
    :cond_1
    sget v16, Lcom/globalfun/adventuretime/free/Room;->PIXEL_WIDTH:I

    .line 398
    .local v16, "roomX0":I
    sget v18, Lcom/globalfun/adventuretime/free/Room;->PIXEL_HEIGHT:I

    .line 399
    .local v18, "roomY0":I
    const/16 v17, 0x0

    .line 400
    .local v17, "roomX1":I
    const/16 v19, 0x0

    .line 402
    .local v19, "roomY1":I
    const/4 v8, 0x0

    const/16 v20, 0x0

    .local v20, "row":I
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_7
    const/16 v29, 0x31

    move/from16 v0, v29

    if-lt v8, v0, :cond_10

    .line 477
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMinX:I

    .line 478
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMinY:I

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewWidth:I

    move/from16 v29, v0

    sub-int v29, v17, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMaxX:I

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewHeight:I

    move/from16 v29, v0

    sub-int v29, v19, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMaxY:I

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMaxX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMinX:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMaxX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMinX:I

    move/from16 v30, v0

    add-int v29, v29, v30

    shr-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMaxX:I

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMaxX:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMinX:I

    .line 488
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMaxY:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMinY:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMaxY:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMinY:I

    move/from16 v30, v0

    add-int v29, v29, v30

    shr-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMaxY:I

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/globalfun/adventuretime/free/Room;->viewMaxY:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->viewMinY:I

    .line 496
    :cond_3
    invoke-static {}, Lcom/globalfun/adventuretime/free/Actor;->addAll()V

    .line 497
    return-void

    .line 263
    .end local v4    # "col":I
    .end local v6    # "datalen":I
    .end local v9    # "id":I
    .end local v12    # "num":I
    .end local v16    # "roomX0":I
    .end local v17    # "roomX1":I
    .end local v18    # "roomY0":I
    .end local v19    # "roomY1":I
    .end local v20    # "row":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-byte v30, v29, v8

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapAbyss:[B

    move-object/from16 v29, v0

    const/16 v30, -0x1

    aput-byte v30, v29, v8

    goto/16 :goto_0

    .line 268
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    move-object/from16 v29, v0

    const/16 v30, -0x1

    aput-byte v30, v29, v8

    goto/16 :goto_1

    .line 283
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->talkSlots:[I

    move-object/from16 v29, v0

    const/16 v30, -0x1

    aput v30, v29, v8

    goto/16 :goto_2

    .line 312
    .restart local v6    # "datalen":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pull()I

    move-result v25

    .line 313
    .local v25, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pull()I

    move-result v23

    .line 314
    .local v23, "tx":I
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pull()I

    move-result v24

    .line 316
    .restart local v24    # "ty":I
    mul-int/lit8 v29, v23, 0x6

    add-int/lit8 v27, v29, 0x10

    .line 317
    .local v27, "x":I
    mul-int/lit8 v29, v24, 0x6

    add-int/lit8 v28, v29, 0x28

    .line 319
    .local v28, "y":I
    const/4 v7, 0x1

    .line 321
    .local v7, "dir":I
    const/16 v29, 0x7

    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    .line 323
    add-int/lit8 v25, v25, 0x2

    .line 335
    :goto_8
    sget-object v29, Lcom/globalfun/adventuretime/free/Room;->PRINCESSES:[B

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v14

    .line 337
    .local v14, "princess":I
    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lcom/globalfun/adventuretime/free/Engine;->isPrincessRescued(I)Z

    move-result v29

    if-nez v29, :cond_9

    .line 310
    :goto_9
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_3

    .line 327
    .end local v14    # "princess":I
    :cond_8
    add-int/lit8 v25, v25, -0x7

    .line 329
    rem-int/lit8 v7, v25, 0x4

    .line 330
    div-int/lit8 v29, v25, 0x4

    add-int/lit8 v25, v29, 0x9

    goto :goto_8

    .line 342
    .restart local v14    # "princess":I
    :cond_9
    invoke-static/range {v25 .. v25}, Lcom/globalfun/adventuretime/free/Actor;->addActor(I)Lcom/globalfun/adventuretime/free/Actor;

    move-result-object v11

    .line 344
    .local v11, "monster":Lcom/globalfun/adventuretime/free/Actor;
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/globalfun/adventuretime/free/Actor;->setLocation(II)V

    .line 345
    invoke-virtual {v11, v7}, Lcom/globalfun/adventuretime/free/Actor;->setDirection(I)V

    goto :goto_9

    .line 356
    .end local v7    # "dir":I
    .end local v11    # "monster":Lcom/globalfun/adventuretime/free/Actor;
    .end local v14    # "princess":I
    .end local v23    # "tx":I
    .end local v24    # "ty":I
    .end local v25    # "type":I
    .end local v27    # "x":I
    .end local v28    # "y":I
    .restart local v9    # "id":I
    .restart local v12    # "num":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pull()I

    move-result v23

    .line 357
    .restart local v23    # "tx":I
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pull()I

    move-result v24

    .line 358
    .restart local v24    # "ty":I
    invoke-virtual/range {p1 .. p1}, Lcom/globalfun/adventuretime/free/GameCanvas;->pull()I

    move-result v25

    .line 360
    .restart local v25    # "type":I
    add-int/lit8 v29, v25, 0x18

    move/from16 v0, v29

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/globalfun/adventuretime/free/Actor;->addObject(III)Lcom/globalfun/adventuretime/free/Actor;

    move-result-object v13

    .line 364
    .local v13, "object":Lcom/globalfun/adventuretime/free/Actor;
    const/16 v29, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/globalfun/adventuretime/free/Room;->getCommand(III)I

    move-result v5

    .line 366
    .local v5, "com":I
    if-ltz v5, :cond_b

    .line 367
    invoke-virtual {v13, v5}, Lcom/globalfun/adventuretime/free/Actor;->setCommand(I)V

    .line 354
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 383
    .end local v5    # "com":I
    .end local v13    # "object":Lcom/globalfun/adventuretime/free/Actor;
    .end local v23    # "tx":I
    .end local v25    # "type":I
    :cond_c
    const/16 v23, 0x0

    .restart local v23    # "tx":I
    :goto_a
    const/16 v29, 0xe

    move/from16 v0, v23

    move/from16 v1, v29

    if-lt v0, v1, :cond_d

    .line 382
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 384
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/globalfun/adventuretime/free/Room;->setAbyss(II)V

    .line 383
    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    .line 390
    .end local v23    # "tx":I
    .end local v24    # "ty":I
    .restart local v22    # "ry":I
    :cond_e
    const/16 v21, 0x0

    .local v21, "rx":I
    :goto_b
    const/16 v29, 0x7

    move/from16 v0, v21

    move/from16 v1, v29

    if-lt v0, v1, :cond_f

    .line 389
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 391
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/globalfun/adventuretime/free/Room;->setShadow(II)V

    .line 390
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 404
    .end local v21    # "rx":I
    .end local v22    # "ry":I
    .restart local v4    # "col":I
    .restart local v16    # "roomX0":I
    .restart local v17    # "roomX1":I
    .restart local v18    # "roomY0":I
    .restart local v19    # "roomY1":I
    .restart local v20    # "row":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    move-object/from16 v29, v0

    aget-byte v15, v29, v8

    .line 408
    .local v15, "room":I
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    mul-int v27, v4, v29

    .line 409
    .restart local v27    # "x":I
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    mul-int v28, v20, v29

    .line 411
    .restart local v28    # "y":I
    if-eqz v15, :cond_11

    if-eqz p3, :cond_19

    .line 413
    :cond_11
    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 414
    move/from16 v16, v27

    .line 416
    :cond_12
    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    .line 417
    move/from16 v18, v28

    .line 419
    :cond_13
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v29, v29, v27

    move/from16 v0, v29

    move/from16 v1, v17

    if-le v0, v1, :cond_14

    .line 420
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v17, v27, v29

    .line 422
    :cond_14
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v29, v29, v28

    move/from16 v0, v29

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 423
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v19, v28, v29

    .line 442
    :cond_15
    :goto_c
    const/16 v29, 0x14

    move/from16 v0, v29

    if-ne v15, v0, :cond_1d

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    move-object/from16 v29, v0

    const/16 v30, 0x1d

    invoke-virtual/range {v29 .. v30}, Lcom/globalfun/adventuretime/free/Engine;->checkFlag(I)Z

    move-result v26

    .line 446
    .local v26, "unlocked":Z
    if-eqz v26, :cond_16

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    move-object/from16 v29, v0

    const/16 v30, 0xf

    aput-byte v30, v29, v8

    .line 459
    .end local v26    # "unlocked":Z
    :cond_16
    :goto_d
    sget-object v29, Lcom/globalfun/adventuretime/free/Room;->DOORS_LOCKED:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v15, v1}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v10

    .line 461
    .local v10, "locked":I
    if-ltz v10, :cond_17

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    move-object/from16 v29, v0

    sget-object v30, Lcom/globalfun/adventuretime/free/Room;->FLAGS_UNLOCK:[I

    aget v30, v30, v10

    invoke-virtual/range {v29 .. v30}, Lcom/globalfun/adventuretime/free/Engine;->checkFlag(I)Z

    move-result v26

    .line 465
    .restart local v26    # "unlocked":Z
    if-eqz v26, :cond_17

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    move-object/from16 v29, v0

    sget-object v30, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    aget-byte v30, v30, v10

    aput-byte v30, v29, v8

    .line 471
    .end local v26    # "unlocked":Z
    :cond_17
    add-int/lit8 v4, v4, 0x1

    const/16 v29, 0x7

    move/from16 v0, v29

    if-lt v4, v0, :cond_18

    .line 473
    const/4 v4, 0x0

    add-int/lit8 v20, v20, 0x1

    .line 402
    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 425
    .end local v10    # "locked":I
    :cond_19
    if-lez v15, :cond_15

    .line 427
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    add-int v29, v29, v27

    move/from16 v0, v29

    move/from16 v1, v16

    if-ge v0, v1, :cond_1a

    .line 428
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    add-int v16, v27, v29

    .line 430
    :cond_1a
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    add-int v29, v29, v28

    move/from16 v0, v29

    move/from16 v1, v18

    if-ge v0, v1, :cond_1b

    .line 431
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    add-int v18, v28, v29

    .line 433
    :cond_1b
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v29, v29, v27

    sget-object v30, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v30, v0

    sget v30, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    sub-int v29, v29, v30

    move/from16 v0, v29

    move/from16 v1, v17

    if-le v0, v1, :cond_1c

    .line 434
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v29, v29, v27

    sget-object v30, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v30, v0

    sget v30, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    sub-int v17, v29, v30

    .line 436
    :cond_1c
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v29, v29, v28

    sget-object v30, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v30, v0

    sget v30, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    sub-int v29, v29, v30

    move/from16 v0, v29

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 437
    sget-object v29, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v29, v0

    sget v29, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int v29, v29, v28

    sget-object v30, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    move-object/from16 v30, v0

    sget v30, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_BORDER:I

    sub-int v19, v29, v30

    goto/16 :goto_c

    .line 449
    :cond_1d
    const/16 v29, 0x1d

    move/from16 v0, v29

    if-ne v15, v0, :cond_16

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    move-object/from16 v29, v0

    const/16 v30, 0x1e

    invoke-virtual/range {v29 .. v30}, Lcom/globalfun/adventuretime/free/Engine;->checkFlag(I)Z

    move-result v26

    .line 453
    .restart local v26    # "unlocked":Z
    if-eqz v26, :cond_16

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    move-object/from16 v29, v0

    const/16 v30, 0xf

    aput-byte v30, v29, v8

    goto/16 :goto_d
.end method

.method public onEntrance(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v6, 0x18

    const/4 v4, 0x0

    .line 1062
    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->entranceId:I

    if-ltz v5, :cond_0

    .line 1064
    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->entranceX:I

    mul-int/lit8 v5, v5, 0x18

    add-int/lit8 v5, v5, 0x18

    sub-int v2, v5, p1

    .line 1065
    .local v2, "dx":I
    iget v5, p0, Lcom/globalfun/adventuretime/free/Room;->entranceY:I

    mul-int/lit8 v5, v5, 0x18

    add-int/lit8 v5, v5, 0x18

    sub-int v3, v5, p2

    .line 1067
    .local v3, "dy":I
    if-gez v2, :cond_1

    neg-int v0, v2

    .line 1068
    .local v0, "adx":I
    :goto_0
    if-gez v3, :cond_2

    neg-int v1, v3

    .line 1070
    .local v1, "ady":I
    :goto_1
    if-ge v0, v6, :cond_0

    if-ge v1, v6, :cond_0

    const/4 v4, 0x1

    .line 1073
    .end local v0    # "adx":I
    .end local v1    # "ady":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_0
    return v4

    .restart local v2    # "dx":I
    .restart local v3    # "dy":I
    :cond_1
    move v0, v2

    .line 1067
    goto :goto_0

    .restart local v0    # "adx":I
    :cond_2
    move v1, v3

    .line 1068
    goto :goto_1
.end method

.method public openChest(Lcom/globalfun/adventuretime/free/Actor;I)V
    .locals 7
    .param p1, "chest"    # Lcom/globalfun/adventuretime/free/Actor;
    .param p2, "command"    # I

    .prologue
    .line 1214
    mul-int/lit8 v0, p2, 0x5

    .line 1216
    .local v0, "comIndex":I
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v6, v0, 0x0

    aget-byte v4, v5, v6

    .line 1217
    .local v4, "type":I
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v6, v0, 0x4

    aget-byte v3, v5, v6

    .line 1223
    .local v3, "talk":I
    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 1225
    sget-object v5, Lcom/globalfun/adventuretime/free/Room;->DUNGEON_KEYS:[I

    iget v6, p0, Lcom/globalfun/adventuretime/free/Room;->dungeon:I

    aget v1, v5, v6

    .line 1234
    .local v1, "item":I
    :goto_0
    invoke-static {v1}, Lcom/globalfun/adventuretime/free/Actor;->addActor(I)Lcom/globalfun/adventuretime/free/Actor;

    move-result-object v2

    .line 1236
    .local v2, "pickup":Lcom/globalfun/adventuretime/free/Actor;
    invoke-virtual {v2, p1}, Lcom/globalfun/adventuretime/free/Actor;->setLocation(Lcom/globalfun/adventuretime/free/Actor;)V

    .line 1237
    invoke-virtual {v2}, Lcom/globalfun/adventuretime/free/Actor;->found()V

    .line 1241
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v5, p2}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1242
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1246
    if-lez v3, :cond_0

    .line 1247
    iput v3, p0, Lcom/globalfun/adventuretime/free/Room;->talkPending:I

    .line 1249
    :cond_0
    invoke-static {}, Lcom/globalfun/adventuretime/free/Actor;->lock()V

    .line 1250
    return-void

    .line 1229
    .end local v1    # "item":I
    .end local v2    # "pickup":Lcom/globalfun/adventuretime/free/Actor;
    :cond_1
    sget-object v5, Lcom/globalfun/adventuretime/free/Room;->COMMAND_OBJECT:[B

    sget-object v6, Lcom/globalfun/adventuretime/free/Room;->COMMANDS_OBJECT:[B

    invoke-virtual {p0, v4, v6}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v6

    aget-byte v1, v5, v6

    .restart local v1    # "item":I
    goto :goto_0
.end method

.method public paint(Lcom/globalfun/adventuretime/free/Graphics;)V
    .locals 14
    .param p1, "g"    # Lcom/globalfun/adventuretime/free/Graphics;

    .prologue
    .line 1572
    sget-object v12, Lcom/globalfun/adventuretime/free/Room;->COLOR_BG:[I

    iget v13, p0, Lcom/globalfun/adventuretime/free/Room;->dungeon:I

    aget v12, v12, v13

    invoke-virtual {p1, v12}, Lcom/globalfun/adventuretime/free/Graphics;->setColor(I)V

    .line 1576
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewX()I
    move-result v12

    sget-object v13, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v13, v13, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v13, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    div-int v8, v12, v13

    .line 1577
    .local v8, "tx":I
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewY()I
    move-result v12

    sget-object v13, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v13, v13, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v13, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    div-int v9, v12, v13

    .line 1579
    .local v9, "ty":I
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewX()I
    move-result v12

    if-gez v12, :cond_0

    add-int/lit8 v8, v8, -0x1

    .line 1580
    :cond_0
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewY()I
    move-result v12

    if-gez v12, :cond_1

    add-int/lit8 v9, v9, -0x1

    .line 1582
    :cond_1
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    mul-int/2addr v12, v8

    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewX()I
    move-result v13

    sub-int v3, v12, v13

    .line 1583
    .local v3, "ox":I
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    mul-int/2addr v12, v9

    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewY()I
    move-result v13

    sub-int v4, v12, v13

    .line 1588
    .local v4, "oy":I
    move v10, v3

    .local v10, "x":I
    move v11, v4

    .local v11, "y":I
    const/4 v1, 0x0

    .local v1, "otx":I
    const/4 v2, 0x0

    .local v2, "oty":I
    mul-int/lit8 v12, v9, 0x7

    add-int v6, v8, v12

    .line 1590
    .local v6, "ti":I
    :goto_0
    iget v12, p0, Lcom/globalfun/adventuretime/free/Room;->viewWidth:I

    if-lt v10, v12, :cond_5

    .line 1592
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int/2addr v11, v12

    .line 1594
    iget v12, p0, Lcom/globalfun/adventuretime/free/Room;->viewHeight:I

    if-lt v11, v12, :cond_4

    .line 1628
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewX()I
    move-result v12

    sget-object v13, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v13, v13, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v13, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    div-int v8, v12, v13

    .line 1629
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewY()I
    move-result v12

    sget-object v13, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v13, v13, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v13, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    div-int v9, v12, v13

    .line 1631
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewX()I
    move-result v12

    if-gez v12, :cond_2

    add-int/lit8 v8, v8, -0x1

    .line 1632
    :cond_2
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewY()I
    move-result v12

    if-gez v12, :cond_3

    add-int/lit8 v9, v9, -0x1

    .line 1634
    :cond_3
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    mul-int/2addr v12, v8

    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewX()I
    move-result v13

    sub-int v3, v12, v13

    .line 1635
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    mul-int/2addr v12, v9

    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewY()I
    move-result v13

    sub-int v4, v12, v13

    .line 1637
    move v10, v3

    move v11, v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    mul-int/lit8 v12, v9, 0xe

    add-int v6, v8, v12

    .line 1639
    :goto_1
    iget v12, p0, Lcom/globalfun/adventuretime/free/Room;->viewWidth:I

    if-lt v10, v12, :cond_a

    .line 1641
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    add-int/2addr v11, v12

    .line 1643
    iget v12, p0, Lcom/globalfun/adventuretime/free/Room;->viewHeight:I

    if-lt v11, v12, :cond_9

    .line 1703
    invoke-static {}, Lcom/globalfun/adventuretime/free/Actor;->paintReady()V

    .line 1705
    invoke-static {p1}, Lcom/globalfun/adventuretime/free/Actor;->paintShadows(Lcom/globalfun/adventuretime/free/Graphics;)V

    .line 1706
    invoke-static {p1}, Lcom/globalfun/adventuretime/free/Actor;->paintActors(Lcom/globalfun/adventuretime/free/Graphics;)V

    .line 1707
    return-void

    .line 1597
    :cond_4
    move v10, v3

    .line 1599
    const/4 v1, 0x0

    .line 1600
    add-int/lit8 v2, v2, 0x1

    .line 1602
    add-int/lit8 v6, v6, 0x7

    .line 1605
    :cond_5
    const/4 v7, -0x1

    .line 1607
    .local v7, "tile":I
    add-int v12, v8, v1

    if-ltz v12, :cond_6

    add-int v12, v9, v2

    if-ltz v12, :cond_6

    add-int v12, v8, v1

    const/4 v13, 0x7

    if-ge v12, v13, :cond_6

    add-int v12, v9, v2

    const/4 v13, 0x7

    if-ge v12, v13, :cond_6

    .line 1609
    iget-object v12, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    add-int v13, v6, v1

    aget-byte v7, v12, v13

    .line 1612
    :cond_6
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v12, v12, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    if-eqz v12, :cond_7

    const/4 v12, 0x2

    if-ne v7, v12, :cond_7

    iget-boolean v12, p0, Lcom/globalfun/adventuretime/free/Room;->isOverworld:Z

    if-nez v12, :cond_7

    .line 1588
    :goto_2
    add-int/lit8 v1, v1, 0x1

    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    add-int/2addr v10, v12

    goto/16 :goto_0

    .line 1617
    :cond_7
    if-gez v7, :cond_8

    .line 1619
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    sget-object v13, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v13, v13, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v13, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    invoke-virtual {p1, v10, v11, v12, v13}, Lcom/globalfun/adventuretime/free/Graphics;->fillRect(IIII)V

    goto :goto_2

    .line 1623
    :cond_8
    iget-boolean v12, p0, Lcom/globalfun/adventuretime/free/Room;->isOverworld:Z

    invoke-static {p1, v10, v11, v7, v12}, Lcom/globalfun/adventuretime/free/Dungeon;->paintRoom(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V

    goto :goto_2

    .line 1646
    .end local v7    # "tile":I
    :cond_9
    move v10, v3

    .line 1648
    const/4 v1, 0x0

    .line 1649
    add-int/lit8 v2, v2, 0x1

    .line 1651
    add-int/lit8 v6, v6, 0xe

    .line 1654
    :cond_a
    add-int v12, v8, v1

    if-ltz v12, :cond_b

    add-int v12, v9, v2

    if-ltz v12, :cond_b

    add-int v12, v8, v1

    const/16 v13, 0xe

    if-ge v12, v13, :cond_b

    add-int v12, v9, v2

    const/16 v13, 0xe

    if-lt v12, v13, :cond_c

    .line 1637
    :cond_b
    :goto_3
    add-int/lit8 v1, v1, 0x1

    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v12, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    add-int/2addr v10, v12

    goto/16 :goto_1

    .line 1659
    :cond_c
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v12, v12, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    if-eqz v12, :cond_d

    .line 1661
    iget-object v12, p0, Lcom/globalfun/adventuretime/free/Room;->mapAbyss:[B

    add-int v13, v6, v1

    aget-byte v0, v12, v13

    .line 1663
    .local v0, "abyss":I
    if-ltz v0, :cond_d

    .line 1665
    iget-object v12, p0, Lcom/globalfun/adventuretime/free/Room;->mapAbyss:[B

    add-int v13, v6, v1

    aget-byte v12, v12, v13

    invoke-static {p1, v10, v11, v12}, Lcom/globalfun/adventuretime/free/Dungeon;->paintAbyss(Lcom/globalfun/adventuretime/free/Graphics;III)V

    goto :goto_3

    .line 1670
    .end local v0    # "abyss":I
    :cond_d
    iget-object v12, p0, Lcom/globalfun/adventuretime/free/Room;->mapTiles:[B

    add-int v13, v6, v1

    aget-byte v7, v12, v13

    .line 1672
    .restart local v7    # "tile":I
    if-ltz v7, :cond_10

    .line 1674
    iget-boolean v12, p0, Lcom/globalfun/adventuretime/free/Room;->isOverworld:Z

    if-eqz v12, :cond_e

    .line 1676
    const/4 v12, 0x1

    invoke-static {p1, v10, v11, v7, v12}, Lcom/globalfun/adventuretime/free/Dungeon;->paintTile(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V

    goto :goto_3

    .line 1678
    :cond_e
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v12, v12, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    if-eqz v12, :cond_f

    .line 1680
    add-int/lit8 v12, v7, -0x1

    const/4 v13, 0x0

    invoke-static {p1, v10, v11, v12, v13}, Lcom/globalfun/adventuretime/free/Dungeon;->paintTile(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V

    goto :goto_3

    .line 1684
    :cond_f
    const/4 v12, 0x0

    invoke-static {p1, v10, v11, v7, v12}, Lcom/globalfun/adventuretime/free/Dungeon;->paintTile(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V

    goto :goto_3

    .line 1690
    :cond_10
    sget-object v12, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v12, v12, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v12, v12, Lcom/globalfun/adventuretime/free/Resources;->HAS_ROOM_SHADOWS:Z

    if-eqz v12, :cond_b

    .line 1692
    iget-object v12, p0, Lcom/globalfun/adventuretime/free/Room;->mapShadows:[B

    add-int v13, v6, v1

    aget-byte v5, v12, v13

    .line 1694
    .local v5, "shadow":I
    if-lez v5, :cond_b

    .line 1696
    invoke-static {p1, v10, v11, v5}, Lcom/globalfun/adventuretime/free/Dungeon;->paintShadow(Lcom/globalfun/adventuretime/free/Graphics;III)V

    goto :goto_3
.end method

.method public place(II)V
    .locals 4
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    const/4 v3, 0x0

    .line 760
    mul-int/lit8 v1, p2, 0x1c

    add-int v0, p1, v1

    .line 762
    .local v0, "ti":I
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    aput-byte v3, v1, v0

    .line 763
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v3, v1, v2

    .line 764
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    add-int/lit8 v2, v0, 0x1c

    aput-byte v3, v1, v2

    .line 765
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->mapObjects:[B

    add-int/lit8 v2, v0, 0x1c

    add-int/lit8 v2, v2, 0x1

    aput-byte v3, v1, v2

    .line 766
    return-void
.end method

.method public pressSwitch(I)V
    .locals 4
    .param p1, "command"    # I

    .prologue
    .line 1256
    mul-int/lit8 v0, p1, 0x5

    .line 1257
    .local v0, "comIndex":I
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v3, v0, 0x4

    aget-byte v1, v2, v3

    .line 1259
    .local v1, "flag":I
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v2, p1}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1262
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v2, v1}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1269
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Room;->processCommands(Z)V

    .line 1270
    return-void

    .line 1266
    :cond_0
    invoke-direct {p0, v1}, Lcom/globalfun/adventuretime/free/Room;->setTempFlag(I)V

    goto :goto_0
.end method

.method public processCommands(Z)V
    .locals 21
    .param p1, "loading"    # Z

    .prologue
    .line 1314
    const/4 v4, 0x0

    .local v4, "com":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    array-length v3, v3

    if-lt v6, v3, :cond_0

    .line 1489
    return-void

    .line 1316
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v7, v6, 0x0

    aget-byte v20, v3, v7

    .line 1318
    .local v20, "type":I
    if-gez v20, :cond_2

    .line 1314
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x5

    goto :goto_0

    .line 1321
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v7, v6, 0x3

    aget-byte v5, v3, v7

    .line 1322
    .local v5, "action":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v7, v6, 0x4

    aget-byte v3, v3, v7

    and-int/lit16 v10, v3, 0xff

    .line 1326
    .local v10, "flag":I
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_3

    .line 1328
    if-eqz p1, :cond_1

    .line 1330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->talkSlots:[I

    aput v10, v3, v5

    .line 1332
    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v3}, Lcom/globalfun/adventuretime/free/Engine;->isFirstVisit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1334
    move-object/from16 v0, p0

    iput v10, v0, Lcom/globalfun/adventuretime/free/Room;->talkPending:I

    goto :goto_1

    .line 1343
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/globalfun/adventuretime/free/Room;->checkFlag(I)Z

    move-result v11

    .line 1345
    .local v11, "flagged":Z
    if-eqz v11, :cond_7

    .line 1347
    if-eqz v5, :cond_6

    const/4 v12, 0x1

    .line 1349
    .local v12, "hasAction":Z
    :goto_2
    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->COMMANDS_TRIGGERED:[B

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/globalfun/adventuretime/free/Room;->isType(I[B)Z

    move-result v14

    .line 1350
    .local v14, "isTriggered":Z
    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->COMMANDS_OBJECT:[B

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v13

    .line 1352
    .local v13, "isObject":I
    if-eqz v14, :cond_5

    if-eqz p1, :cond_5

    const/16 v3, 0x1e

    if-ne v10, v3, :cond_5

    if-ltz v13, :cond_4

    if-eqz v12, :cond_5

    .line 1354
    :cond_4
    const/4 v3, 0x1

    sput-boolean v3, Lcom/globalfun/adventuretime/free/Actor;->noMonsters:Z

    .line 1357
    :cond_5
    if-ltz v13, :cond_7

    if-eqz v12, :cond_7

    .line 1359
    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->COMMAND_OBJECT:[B

    aget-byte v7, v3, v13

    move-object/from16 v3, p0

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/globalfun/adventuretime/free/Room;->processObject(IIIIZ)V

    goto :goto_1

    .line 1347
    .end local v12    # "hasAction":Z
    .end local v13    # "isObject":I
    .end local v14    # "isTriggered":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 1366
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v7

    shr-int/lit8 v18, v3, 0x1

    .line 1367
    .local v18, "tx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v7, v6, 0x2

    aget-byte v3, v3, v7

    shr-int/lit8 v19, v3, 0x1

    .line 1369
    .local v19, "ty":I
    sparse-switch v20, :sswitch_data_0

    goto/16 :goto_1

    .line 1373
    :sswitch_0
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/globalfun/adventuretime/free/Room;->doorsClosed:Z

    if-eqz v3, :cond_8

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/globalfun/adventuretime/free/Room;->openAllDoors()V

    .line 1376
    :cond_8
    if-eqz v11, :cond_9

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/globalfun/adventuretime/free/Room;->doorsClosed:Z

    .line 1377
    move-object/from16 v0, p0

    iput v5, v0, Lcom/globalfun/adventuretime/free/Room;->doorsClosedDir:I

    .line 1379
    if-eqz p1, :cond_1

    if-nez v11, :cond_1

    const/16 v3, 0x19

    if-ne v10, v3, :cond_1

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/globalfun/adventuretime/free/Room;->closeAllDoors()V

    goto/16 :goto_1

    .line 1376
    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    .line 1387
    :sswitch_1
    if-eqz p1, :cond_1

    .line 1389
    mul-int/lit8 v3, v19, 0x18

    add-int/lit8 v3, v3, 0xc

    move-object/from16 v0, p0

    iput v3, v0, Lcom/globalfun/adventuretime/free/Room;->triggerH:I

    .line 1390
    move-object/from16 v0, p0

    iput v10, v0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    goto/16 :goto_1

    .line 1396
    :sswitch_2
    if-eqz p1, :cond_1

    .line 1398
    mul-int/lit8 v3, v18, 0x18

    add-int/lit8 v3, v3, 0xc

    move-object/from16 v0, p0

    iput v3, v0, Lcom/globalfun/adventuretime/free/Room;->triggerV:I

    .line 1399
    move-object/from16 v0, p0

    iput v10, v0, Lcom/globalfun/adventuretime/free/Room;->triggerFlag:I

    goto/16 :goto_1

    .line 1405
    :sswitch_3
    if-eqz v11, :cond_1

    .line 1407
    mul-int/lit8 v3, v19, 0xe

    add-int v17, v18, v3

    .line 1408
    .local v17, "tileIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->mapTiles:[B

    const/4 v7, -0x1

    aput-byte v7, v3, v17

    .line 1410
    if-nez p1, :cond_a

    .line 1412
    sget-object v3, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v3, v3, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v3, v3, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    if-eqz v3, :cond_a

    .line 1414
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/globalfun/adventuretime/free/Room;->setAbyss(II)V

    .line 1416
    const/4 v9, 0x4

    .local v9, "d":I
    :goto_4
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_b

    .line 1421
    .end local v9    # "d":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v7, v6, 0x0

    const/4 v8, -0x1

    aput-byte v8, v3, v7

    goto/16 :goto_1

    .line 1417
    .restart local v9    # "d":I
    :cond_b
    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->DIR_X:[I

    aget v3, v3, v9

    add-int v3, v3, v18

    sget-object v7, Lcom/globalfun/adventuretime/free/Room;->DIR_Y:[I

    aget v7, v7, v9

    add-int v7, v7, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/globalfun/adventuretime/free/Room;->setAbyss(II)V

    goto :goto_4

    .line 1428
    .end local v9    # "d":I
    .end local v17    # "tileIndex":I
    :sswitch_4
    if-eqz v11, :cond_1

    .line 1430
    shr-int/lit8 v3, v18, 0x1

    shr-int/lit8 v7, v19, 0x1

    mul-int/lit8 v7, v7, 0x7

    add-int v15, v3, v7

    .line 1431
    .local v15, "roomIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    const/4 v7, 0x0

    aput-byte v7, v3, v15

    .line 1433
    if-nez p1, :cond_d

    .line 1435
    sget-object v3, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v3, v3, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v3, v3, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    if-eqz v3, :cond_c

    .line 1437
    const/16 v16, 0xa

    .local v16, "s":I
    :goto_5
    add-int/lit8 v16, v16, -0x1

    if-gez v16, :cond_e

    .line 1441
    .end local v16    # "s":I
    :cond_c
    sget-object v3, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v3, v3, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v3, v3, Lcom/globalfun/adventuretime/free/Resources;->HAS_ROOM_SHADOWS:Z

    if-eqz v3, :cond_d

    .line 1443
    shr-int/lit8 v3, v18, 0x1

    shr-int/lit8 v7, v19, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/globalfun/adventuretime/free/Room;->setShadow(II)V

    .line 1447
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->commands:[B

    add-int/lit8 v7, v6, 0x0

    const/4 v8, -0x1

    aput-byte v8, v3, v7

    goto/16 :goto_1

    .line 1438
    .restart local v16    # "s":I
    :cond_e
    sget-object v3, Lcom/globalfun/adventuretime/free/Room;->ROOM_SWAP_X:[I

    aget v3, v3, v16

    add-int v3, v3, v18

    sget-object v7, Lcom/globalfun/adventuretime/free/Room;->ROOM_SWAP_Y:[I

    aget v7, v7, v16

    add-int v7, v7, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Lcom/globalfun/adventuretime/free/Room;->setAbyss(II)V

    goto :goto_5

    .line 1453
    .end local v15    # "roomIndex":I
    .end local v16    # "s":I
    :sswitch_5
    if-eqz v11, :cond_f

    const/4 v3, 0x0

    :goto_6
    sput-boolean v3, Lcom/globalfun/adventuretime/free/Actor;->hiddenMonsters:Z

    goto/16 :goto_1

    :cond_f
    const/4 v3, 0x1

    goto :goto_6

    .line 1458
    :sswitch_6
    if-eqz p1, :cond_1

    .line 1460
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->entranceX:I

    .line 1461
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->entranceY:I

    goto/16 :goto_1

    .line 1467
    :sswitch_7
    if-eqz p1, :cond_1

    .line 1469
    shr-int/lit8 v3, v18, 0x1

    shr-int/lit8 v7, v19, 0x1

    mul-int/lit8 v7, v7, 0x7

    add-int v15, v3, v7

    .line 1471
    .restart local v15    # "roomIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v3, v5}, Lcom/globalfun/adventuretime/free/Engine;->isPrincessRescued(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    const/16 v7, 0x15

    aput-byte v7, v3, v15

    .line 1476
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v3, v5}, Lcom/globalfun/adventuretime/free/Engine;->isDungeonOpen(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    const/16 v7, 0x14

    aput-byte v7, v3, v15

    .line 1481
    :cond_11
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->entranceX:I

    .line 1482
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/globalfun/adventuretime/free/Room;->entranceY:I

    .line 1483
    move-object/from16 v0, p0

    iput v5, v0, Lcom/globalfun/adventuretime/free/Room;->entranceId:I

    goto/16 :goto_1

    .line 1369
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_4
    .end sparse-switch
.end method

.method public projectX(I)I
    .locals 1
    .param p1, "px"    # I

    .prologue
    .line 1738
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I

    sub-int v0, p1, v0

    return v0
.end method

.method public projectY(I)I
    .locals 1
    .param p1, "py"    # I

    .prologue
    .line 1743
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I

    sub-int v0, p1, v0

    return v0
.end method

.method public push(II)V
    .locals 7
    .param p1, "pushX"    # I
    .param p2, "pushY"    # I

    .prologue
    .line 963
    div-int/lit8 v3, p1, 0x30

    .line 964
    .local v3, "roomX":I
    div-int/lit8 v4, p2, 0x30

    .line 966
    .local v4, "roomY":I
    mul-int/lit8 v5, v4, 0x7

    add-int v2, v3, v5

    .line 967
    .local v2, "roomIndex":I
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    aget-byte v1, v5, v2

    .line 969
    .local v1, "room":I
    sget-object v5, Lcom/globalfun/adventuretime/free/Room;->DOORS_LOCKED:[B

    invoke-virtual {p0, v1, v5}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v0

    .line 971
    .local v0, "locked":I
    if-ltz v0, :cond_0

    .line 973
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    sget-object v6, Lcom/globalfun/adventuretime/free/Room;->FLAGS_UNLOCK:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Lcom/globalfun/adventuretime/free/Engine;->useKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 975
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    sget-object v6, Lcom/globalfun/adventuretime/free/Room;->DOORS:[B

    aget-byte v6, v6, v0

    aput-byte v6, v5, v2

    .line 979
    :cond_0
    const/16 v5, 0x14

    if-ne v1, v5, :cond_1

    .line 981
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/globalfun/adventuretime/free/Engine;->hasObject(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 983
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->mapRoom:[B

    const/16 v6, 0xf

    aput-byte v6, v5, v2

    .line 984
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/globalfun/adventuretime/free/Engine;->unlock(I)V

    .line 987
    :cond_1
    return-void
.end method

.method public roomCleared(Z)V
    .locals 4
    .param p1, "isBossFight"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 1155
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1156
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/globalfun/adventuretime/free/Room;->setTempFlag(I)V

    .line 1158
    if-eqz p1, :cond_0

    .line 1160
    iput v3, p0, Lcom/globalfun/adventuretime/free/Room;->talkAction:I

    .line 1161
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->talkSlots:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->openTalk(I)V

    .line 1163
    iput-boolean v2, p0, Lcom/globalfun/adventuretime/free/Room;->doorsClosed:Z

    .line 1174
    :goto_0
    return-void

    .line 1168
    :cond_0
    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Room;->processCommands(Z)V

    goto :goto_0
.end method

.method public roomLit()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 1181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Room;->processCommands(Z)V

    .line 1182
    return-void
.end method

.method public setTalking(I)V
    .locals 1
    .param p1, "portrait"    # I

    .prologue
    .line 1101
    if-ltz p1, :cond_0

    sget-object v0, Lcom/globalfun/adventuretime/free/Room;->TALK_TYPES:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1103
    sget-object v0, Lcom/globalfun/adventuretime/free/Room;->TALK_TYPES:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Actor;->setTalking(I)V

    .line 1109
    :goto_0
    return-void

    .line 1107
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Actor;->setTalking(I)V

    goto :goto_0
.end method

.method public setViewport(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1724
    iput p1, p0, Lcom/globalfun/adventuretime/free/Room;->viewWidth:I

    .line 1725
    iput p2, p0, Lcom/globalfun/adventuretime/free/Room;->viewHeight:I

    .line 1729
    shr-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->focusX:I

    .line 1730
    shr-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->focusY:I

    .line 1732
    shr-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->focusWidth:I

    .line 1733
    shr-int/lit8 v0, p2, 0x3

    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->focusHeight:I

    .line 1734
    return-void
.end method

.method public talk()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1078
    iget v2, p0, Lcom/globalfun/adventuretime/free/Room;->talkPending:I

    if-ltz v2, :cond_1

    move v0, v1

    .line 1080
    .local v0, "hasTalk":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1082
    invoke-static {v1}, Lcom/globalfun/adventuretime/free/Actor;->setTalking(Z)V

    .line 1084
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget v2, p0, Lcom/globalfun/adventuretime/free/Room;->talkPending:I

    invoke-virtual {v1, v2}, Lcom/globalfun/adventuretime/free/Engine;->openTalk(I)V

    .line 1085
    const/4 v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Room;->talkPending:I

    .line 1088
    :cond_0
    return v0

    .line 1078
    .end local v0    # "hasTalk":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public talkComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1115
    iget v1, p0, Lcom/globalfun/adventuretime/free/Room;->talkAction:I

    packed-switch v1, :pswitch_data_0

    .line 1145
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Engine;->backToGame()V

    .line 1148
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Room;->talkAction:I

    .line 1149
    return-void

    .line 1119
    :pswitch_1
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Engine;->openHealer()V

    goto :goto_1

    .line 1124
    :pswitch_2
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Engine;->openShop()V

    goto :goto_1

    .line 1129
    :pswitch_3
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->openGate()V

    .line 1133
    sget-object v1, Lcom/globalfun/adventuretime/free/Room;->PRINCESSES:[B

    iget v2, p0, Lcom/globalfun/adventuretime/free/Room;->dungeon:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/globalfun/adventuretime/free/Actor;->addActor(I)Lcom/globalfun/adventuretime/free/Actor;

    move-result-object v0

    .line 1134
    .local v0, "princess":Lcom/globalfun/adventuretime/free/Actor;
    const/16 v1, 0xa8

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Lcom/globalfun/adventuretime/free/Actor;->enterPrincess(II)V

    .line 1138
    iput v3, p0, Lcom/globalfun/adventuretime/free/Room;->talkAction:I

    .line 1139
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->talkSlots:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/globalfun/adventuretime/free/Room;->talkPending:I

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public talkToNPC(II)V
    .locals 3
    .param p1, "superType"    # I
    .param p2, "type"    # I

    .prologue
    .line 1093
    sget-object v0, Lcom/globalfun/adventuretime/free/Room;->TALK_TYPES:[B

    invoke-virtual {p0, p2, v0}, Lcom/globalfun/adventuretime/free/Room;->getIndex(I[B)I

    move-result v0

    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->talkSpeaker:I

    .line 1094
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->talkAction:I

    .line 1096
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Room;->engine:Lcom/globalfun/adventuretime/free/Engine;

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Room;->talkSlots:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Room;->talkAction:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->openTalk(I)V

    .line 1097
    return-void

    .line 1094
    :cond_0
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->talkSpeaker:I

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 786
    invoke-static {}, Lcom/globalfun/adventuretime/free/Actor;->updateActors()V

    .line 789
    return-void
.end method

.method private renderviewX()I
    .locals 3
    iget v1, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I
    iget-boolean v2, p0, Lcom/globalfun/adventuretime/free/Room;->renderValid:Z
    if-eqz v2, :done
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->renderPrevviewX:I
    invoke-static {v0, v1}, Lcom/globalfun/adventuretime/free/RenderClock;->blend(II)I
    move-result v1
    :done
    return v1
.end method

.method private renderviewY()I
    .locals 3
    iget v1, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I
    iget-boolean v2, p0, Lcom/globalfun/adventuretime/free/Room;->renderValid:Z
    if-eqz v2, :done
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->renderPrevviewY:I
    invoke-static {v0, v1}, Lcom/globalfun/adventuretime/free/RenderClock;->blend(II)I
    move-result v1
    :done
    return v1
.end method

.method public snapshotRender()V
    .locals 1
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->viewX:I
    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->renderPrevviewX:I
    iget v0, p0, Lcom/globalfun/adventuretime/free/Room;->viewY:I
    iput v0, p0, Lcom/globalfun/adventuretime/free/Room;->renderPrevviewY:I
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Room;->renderValid:Z
    return-void
.end method

.method public renderProjectX(I)I
    .locals 1
    .param p1, "px"    # I

    .prologue
    .line 1738
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewX()I
    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public renderProjectY(I)I
    .locals 1
    .param p1, "py"    # I

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Room;->renderviewY()I
    move-result v0

    sub-int v0, p1, v0

    return v0
.end method
