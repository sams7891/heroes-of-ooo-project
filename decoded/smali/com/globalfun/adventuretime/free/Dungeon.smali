.class public final Lcom/globalfun/adventuretime/free/Dungeon;
.super Ljava/lang/Object;
.source "Dungeon.java"

# interfaces
.implements Lcom/globalfun/adventuretime/free/DeviceConfig;


# static fields
.field private static final COLORS_LOCATIONS:[I

.field private static final COLORS_LOCATIONS_HI:[I

.field private static final NUM_DUNGEONS:I = 0x4

.field private static final NUM_LOCATIONS:I = 0x5

.field private static final NUM_SHADOWS:I = 0x2

.field public static final SHADOW_MEDIUM:I = 0x0

.field public static final SHADOW_ROCK:I = 0x2

.field public static final SHADOW_SMALL:I = 0x1

.field private static imgAbyss:Lcom/globalfun/adventuretime/free/Image;

.field private static imgObjects:Lcom/globalfun/adventuretime/free/Image;

.field private static imgRoom:Lcom/globalfun/adventuretime/free/Image;

.field private static imgShadows:Lcom/globalfun/adventuretime/free/Image;

.field private static imgTiles:Lcom/globalfun/adventuretime/free/Image;

.field private static imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

.field private static location:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/globalfun/adventuretime/free/Dungeon;->COLORS_LOCATIONS:[I

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/globalfun/adventuretime/free/Dungeon;->COLORS_LOCATIONS_HI:[I

    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/globalfun/adventuretime/free/Dungeon;->location:I

    .line 33
    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        -0x2f0490
        -0xd007c
        -0x9081a3
        -0x19427f
        -0xd0007
    .end array-data

    .line 14
    :array_1
    .array-data 4
        -0x2f0490
        -0x210485
        -0x542591
        -0x252988
        -0xd0007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDungeon(Lcom/globalfun/adventuretime/free/GameCanvas;I)V
    .locals 9
    .param p0, "parent"    # Lcom/globalfun/adventuretime/free/GameCanvas;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 37
    invoke-static {}, Lcom/globalfun/adventuretime/free/Dungeon;->unload()V

    .line 40
    sget-boolean v5, Lcom/globalfun/adventuretime/free/Main;->HIGH:Z

    if-eqz v5, :cond_3

    .line 42
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-lt v2, v6, :cond_1

    .line 130
    .end local v2    # "p":I
    :cond_0
    :goto_1
    return-void

    .line 44
    .restart local v2    # "p":I
    :cond_1
    if-eq v2, p1, :cond_2

    .line 45
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 46
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 47
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 48
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 49
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 50
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgRoom:Lcom/globalfun/adventuretime/free/Image;

    .line 54
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgTiles:Lcom/globalfun/adventuretime/free/Image;

    .line 55
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgShadows:Lcom/globalfun/adventuretime/free/Image;

    .line 56
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgAbyss:Lcom/globalfun/adventuretime/free/Image;

    .line 57
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgObjects:Lcom/globalfun/adventuretime/free/Image;

    .line 58
    new-array v5, v7, [Lcom/globalfun/adventuretime/free/Image;

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    .line 59
    sget-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v6

    aput-object v6, v5, v8

    .line 60
    sget-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    const/4 v6, 0x1

    sget-object v7, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    goto :goto_1

    .line 66
    .end local v2    # "p":I
    :cond_3
    const/4 v1, 0x6

    .line 68
    .local v1, "numPalettes":I
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v5, v5, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v5, v5, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    if-nez v5, :cond_4

    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 73
    :cond_4
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v5, v5, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v5, v5, Lcom/globalfun/adventuretime/free/Resources;->HAS_ROOM_SHADOWS:Z

    if-nez v5, :cond_5

    .line 75
    add-int/lit8 v1, v1, -0x1

    .line 78
    :cond_5
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v5, v5, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v5, v5, Lcom/globalfun/adventuretime/free/Resources;->HAS_ACTOR_SHADOWS:Z

    if-nez v5, :cond_6

    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 83
    :cond_6
    new-array v4, v1, [[B

    .line 85
    .local v4, "palettes":[[B
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v5, v5, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v5, v5, Lcom/globalfun/adventuretime/free/Resources;->USES_PALETTES:Z

    if-eqz v5, :cond_7

    .line 87
    const/4 v2, 0x1

    .restart local v2    # "p":I
    :goto_2
    if-lt v2, v6, :cond_a

    .line 102
    .end local v2    # "p":I
    :cond_7
    const/4 v2, 0x0

    .line 104
    .restart local v2    # "p":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p":I
    .local v3, "p":I
    aget-object v5, v4, v2

    invoke-static {p0, v5}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgRoom:Lcom/globalfun/adventuretime/free/Image;

    .line 105
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    aget-object v5, v4, v3

    invoke-static {p0, v5}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgTiles:Lcom/globalfun/adventuretime/free/Image;

    .line 107
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v5, v5, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v5, v5, Lcom/globalfun/adventuretime/free/Resources;->HAS_ROOM_SHADOWS:Z

    if-eqz v5, :cond_8

    .line 109
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p":I
    .restart local v3    # "p":I
    aget-object v5, v4, v2

    invoke-static {p0, v5}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgShadows:Lcom/globalfun/adventuretime/free/Image;

    move v2, v3

    .line 112
    .end local v3    # "p":I
    .restart local v2    # "p":I
    :cond_8
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v5, v5, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v5, v5, Lcom/globalfun/adventuretime/free/Resources;->HAS_DETAILED_ABYSS:Z

    if-eqz v5, :cond_9

    .line 114
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p":I
    .restart local v3    # "p":I
    aget-object v5, v4, v2

    invoke-static {p0, v5}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgAbyss:Lcom/globalfun/adventuretime/free/Image;

    move v2, v3

    .line 117
    .end local v3    # "p":I
    .restart local v2    # "p":I
    :cond_9
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p":I
    .restart local v3    # "p":I
    aget-object v5, v4, v2

    invoke-static {p0, v5}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v5

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgObjects:Lcom/globalfun/adventuretime/free/Image;

    .line 121
    sget-object v5, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v5, v5, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v5, v5, Lcom/globalfun/adventuretime/free/Resources;->HAS_ACTOR_SHADOWS:Z

    if-eqz v5, :cond_0

    .line 123
    new-array v5, v7, [Lcom/globalfun/adventuretime/free/Image;

    sput-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v7, :cond_0

    .line 126
    sget-object v5, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    aget-object v6, v4, v3

    invoke-static {p0, v6}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v6

    aput-object v6, v5, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 89
    .end local v0    # "i":I
    .end local v3    # "p":I
    .restart local v2    # "p":I
    :cond_a
    if-eq v2, p1, :cond_c

    .line 91
    invoke-virtual {p0, v1}, Lcom/globalfun/adventuretime/free/GameCanvas;->skipResources(I)V

    .line 87
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 95
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v1, :cond_b

    .line 97
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullByteArray()[B

    move-result-object v5

    aput-object v5, v4, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static loadOverworld(Lcom/globalfun/adventuretime/free/GameCanvas;I)V
    .locals 4
    .param p0, "parent"    # Lcom/globalfun/adventuretime/free/GameCanvas;
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    .line 141
    sget v2, Lcom/globalfun/adventuretime/free/Dungeon;->location:I

    if-ne v2, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Lcom/globalfun/adventuretime/free/Dungeon;->unload()V

    .line 150
    sput p1, Lcom/globalfun/adventuretime/free/Dungeon;->location:I

    .line 153
    sget-boolean v2, Lcom/globalfun/adventuretime/free/Main;->HIGH:Z

    if-eqz v2, :cond_3

    .line 156
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 158
    if-eq v0, p1, :cond_2

    .line 159
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 160
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_2
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v2

    sput-object v2, Lcom/globalfun/adventuretime/free/Dungeon;->imgRoom:Lcom/globalfun/adventuretime/free/Image;

    .line 164
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v2

    sput-object v2, Lcom/globalfun/adventuretime/free/Dungeon;->imgTiles:Lcom/globalfun/adventuretime/free/Image;

    goto :goto_0

    .line 170
    .end local v0    # "p":I
    :cond_3
    const/4 v1, 0x0

    .line 172
    .local v1, "palette":[B
    sget-object v2, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v2, v2, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v2, v2, Lcom/globalfun/adventuretime/free/Resources;->USES_PALETTES:Z

    if-eqz v2, :cond_4

    .line 174
    const/4 v0, 0x0

    .restart local v0    # "p":I
    :goto_2
    if-lt v0, v3, :cond_5

    .line 188
    .end local v0    # "p":I
    :cond_4
    invoke-static {p0, v1}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v2

    sput-object v2, Lcom/globalfun/adventuretime/free/Dungeon;->imgRoom:Lcom/globalfun/adventuretime/free/Image;

    .line 189
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/globalfun/adventuretime/free/Dungeon;->pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v2

    sput-object v2, Lcom/globalfun/adventuretime/free/Dungeon;->imgTiles:Lcom/globalfun/adventuretime/free/Image;

    goto :goto_0

    .line 176
    .restart local v0    # "p":I
    :cond_5
    if-eq v0, p1, :cond_6

    .line 178
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/GameCanvas;->skipResources(I)V

    .line 174
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 182
    :cond_6
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullByteArray()[B

    move-result-object v1

    goto :goto_3
.end method

.method public static paintAbyss(Lcom/globalfun/adventuretime/free/Graphics;III)V
    .locals 10
    .param p0, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 287
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    mul-int v3, p3, v0

    .line 288
    .local v3, "fy":I
    sget-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgAbyss:Lcom/globalfun/adventuretime/free/Image;

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v4, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v5, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    const/16 v9, 0x14

    move-object v0, p0

    move v6, v2

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    .line 289
    return-void
.end method

.method public static paintActorShadow(Lcom/globalfun/adventuretime/free/Graphics;III)V
    .locals 2
    .param p0, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    .line 305
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-boolean v0, v0, Lcom/globalfun/adventuretime/free/Resources;->HAS_ACTOR_SHADOWS:Z

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget-object v0, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    aget-object v0, v0, p3

    const/4 v1, 0x3

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/globalfun/adventuretime/free/Graphics;->drawImage(Lcom/globalfun/adventuretime/free/Image;III)V

    goto :goto_0
.end method

.method public static paintObject(Lcom/globalfun/adventuretime/free/Graphics;III)V
    .locals 10
    .param p0, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 293
    sget-object v0, Lcom/globalfun/adventuretime/free/Dungeon;->imgObjects:Lcom/globalfun/adventuretime/free/Image;

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 297
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    shr-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 299
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    mul-int v3, p3, v0

    .line 300
    .local v3, "fy":I
    sget-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgObjects:Lcom/globalfun/adventuretime/free/Image;

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v4, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v5, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    const/16 v9, 0x14

    move-object v0, p0

    move v6, v2

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    goto :goto_0
.end method

.method public static paintRoom(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V
    .locals 11
    .param p0, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I
    .param p4, "isOverworld"    # Z

    .prologue
    .line 228
    const/4 v10, 0x0

    .line 230
    .local v10, "dir":I
    if-eqz p4, :cond_1

    .line 232
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget-object v0, Lcom/globalfun/adventuretime/free/Resources;->OVERWORLD_TILE:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 234
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget-object v0, Lcom/globalfun/adventuretime/free/Resources;->OVERWORLD_TRANSFORM:[I

    aget v10, v0, p3

    .line 235
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget-object v0, Lcom/globalfun/adventuretime/free/Resources;->OVERWORLD_TILE:[I

    aget p3, v0, p3

    .line 247
    :cond_0
    :goto_0
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    mul-int v3, p3, v0

    .line 248
    .local v3, "fy":I
    sget-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgRoom:Lcom/globalfun/adventuretime/free/Image;

    const/4 v2, 0x0

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v4, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v5, Lcom/globalfun/adventuretime/free/Resources;->GFX_ROOM_SIZE:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Sprite;->TRANSFORM:[I

    aget v6, v0, v10

    const/16 v9, 0x14

    move-object v0, p0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    .line 249
    return-void

    .line 240
    .end local v3    # "fy":I
    :cond_1
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget-object v0, Lcom/globalfun/adventuretime/free/Resources;->DUNGEON_TILE:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 242
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget-object v0, Lcom/globalfun/adventuretime/free/Resources;->DUNGEON_TRANSFORM:[I

    aget v10, v0, p3

    .line 243
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget-object v0, Lcom/globalfun/adventuretime/free/Resources;->DUNGEON_TILE:[I

    aget p3, v0, p3

    goto :goto_0
.end method

.method public static paintShadow(Lcom/globalfun/adventuretime/free/Graphics;III)V
    .locals 10
    .param p0, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 281
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    mul-int v3, p3, v0

    .line 282
    .local v3, "fy":I
    sget-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgShadows:Lcom/globalfun/adventuretime/free/Image;

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v4, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v5, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    const/16 v9, 0x14

    move-object v0, p0

    move v6, v2

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    .line 283
    return-void
.end method

.method public static paintTile(Lcom/globalfun/adventuretime/free/Graphics;IIIZ)V
    .locals 10
    .param p0, "g"    # Lcom/globalfun/adventuretime/free/Graphics;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "id"    # I
    .param p4, "isOverworld"    # Z

    .prologue
    const/16 v9, 0x14

    const/4 v2, 0x0

    .line 253
    if-eqz p4, :cond_2

    .line 255
    if-nez p3, :cond_1

    .line 258
    sget-boolean v0, Lcom/globalfun/adventuretime/free/Main;->HIGH:Z

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/globalfun/adventuretime/free/Dungeon;->COLORS_LOCATIONS_HI:[I

    sget v1, Lcom/globalfun/adventuretime/free/Dungeon;->location:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Graphics;->setColor(I)V

    .line 262
    :goto_0
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v1, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/globalfun/adventuretime/free/Graphics;->fillRect(IIII)V

    .line 277
    :goto_1
    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/globalfun/adventuretime/free/Dungeon;->COLORS_LOCATIONS:[I

    sget v1, Lcom/globalfun/adventuretime/free/Dungeon;->location:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Graphics;->setColor(I)V

    goto :goto_0

    .line 267
    :cond_1
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    mul-int v3, p3, v0

    .line 268
    .local v3, "fy":I
    sget-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgTiles:Lcom/globalfun/adventuretime/free/Image;

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v4, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v5, Lcom/globalfun/adventuretime/free/Resources;->GFX_OBJECT_SIZE:I

    move-object v0, p0

    move v6, v2

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    goto :goto_1

    .line 273
    .end local v3    # "fy":I
    :cond_2
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->GFX_TILE_SIZE:I

    mul-int v3, p3, v0

    .line 275
    .restart local v3    # "fy":I
    sget-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgTiles:Lcom/globalfun/adventuretime/free/Image;

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v4, Lcom/globalfun/adventuretime/free/Resources;->GFX_TILE_SIZE:I

    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v5, Lcom/globalfun/adventuretime/free/Resources;->GFX_TILE_SIZE:I

    move-object v0, p0

    move v6, v2

    move v7, p1

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/globalfun/adventuretime/free/Graphics;->drawRegion(Lcom/globalfun/adventuretime/free/Image;IIIIIIII)V

    goto :goto_1
.end method

.method public static pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;)Lcom/globalfun/adventuretime/free/Image;
    .locals 3
    .param p0, "parent"    # Lcom/globalfun/adventuretime/free/GameCanvas;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullByteArray()[B

    move-result-object v0

    .line 135
    .local v0, "data":[B
    array-length v1, v0

    .line 136
    .local v1, "len":I
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/globalfun/adventuretime/free/Image;->createImage([BII)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v2

    return-object v2
.end method

.method private static pullImage(Lcom/globalfun/adventuretime/free/GameCanvas;[B)Lcom/globalfun/adventuretime/free/Image;
    .locals 3
    .param p0, "parent"    # Lcom/globalfun/adventuretime/free/GameCanvas;
    .param p1, "palette"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/GameCanvas;->pullByteArray()[B

    move-result-object v0

    .line 197
    .local v0, "imgData":[B
    if-eqz p1, :cond_0

    .line 198
    const-string v1, "PLTE"

    invoke-static {v1, v0, p1}, Lcom/globalfun/adventuretime/free/Main;->setChunk(Ljava/lang/String;[B[B)[B

    .line 200
    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/globalfun/adventuretime/free/Image;->createImage([BII)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v1

    return-object v1
.end method

.method private static unload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    const/4 v0, -0x1

    sput v0, Lcom/globalfun/adventuretime/free/Dungeon;->location:I

    .line 209
    sput-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgRoom:Lcom/globalfun/adventuretime/free/Image;

    .line 210
    sput-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgTiles:Lcom/globalfun/adventuretime/free/Image;

    .line 211
    sput-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgShadows:Lcom/globalfun/adventuretime/free/Image;

    .line 212
    sput-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgAbyss:Lcom/globalfun/adventuretime/free/Image;

    .line 213
    sput-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgObjects:Lcom/globalfun/adventuretime/free/Image;

    .line 215
    sput-object v1, Lcom/globalfun/adventuretime/free/Dungeon;->imgsShadow:[Lcom/globalfun/adventuretime/free/Image;

    .line 217
    invoke-static {}, Lcom/globalfun/adventuretime/free/GameCanvas;->garbageCollect()V

    .line 218
    return-void
.end method
