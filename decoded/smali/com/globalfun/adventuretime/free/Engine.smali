.class public final Lcom/globalfun/adventuretime/free/Engine;
.super Lcom/globalfun/adventuretime/free/UI;
.source "Engine.java"


# static fields
.field private static final CHEATS_MAX_SELECT:[I

.field private static final CHEAT_ID_BOSS:I = 0x2

.field private static final CHEAT_ID_DUNGEON:I = 0x1

.field private static final CHEAT_ID_INVULNERABLE:I = 0x3

.field private static final CHEAT_ID_SOUND:I = 0x0

.field static CurrentPointX:I = 0x0

.field static CurrentPointY:I = 0x0

.field public static final FLAG_CHEST_OPENED:I = 0x18

.field public static final FLAG_CLEARED:I = 0x1e

.field public static final FLAG_KEY_TAKEN:I = 0x17

.field public static final FLAG_LANTERNS:I = 0x19

.field public static final FLAG_UNLOCK_E:I = 0x1b

.field public static final FLAG_UNLOCK_N:I = 0x1d

.field public static final FLAG_UNLOCK_S:I = 0x1c

.field public static final FLAG_UNLOCK_W:I = 0x1a

.field public static final FLAG_VISITED:I = 0x1f

.field public static Lang:I = 0x0

.field static StatingPointX:I = 0x0

.field static StatingPointY:I = 0x0

.field private static final TIME_VIBRATE:I = 0x64

.field private static final TIME_VIBRATE_BIG:I = 0x12c

.field private static final TRANSITION_ENTER:I = 0x0

.field private static final TRANSITION_EXIT:I = 0x1

.field private static final TRANSITION_GOTO:I = 0x2

.field private static final TRANSITION_OUTRO:I = 0x4

.field private static final TRANSITION_RESTART:I = 0x3

.field static TouchisDown:Z = false

.field static TouchisDown1:Z = false

.field private static final VALUE_GEM:I = 0x1

.field private static final VALUE_LARGE_GEM:I = 0x19

.field private static final VALUE_SUPER_GEM:I = 0x32

.field static touchImage:Lcom/globalfun/adventuretime/free/Image;

.field static touchJoy:Lcom/globalfun/adventuretime/free/Image;


.field private renderDeadline:J

# instance fields
.field private cheatSelection:[I

.field milli:J

.field private moreGamesURL:Ljava/lang/String;

.field public pointerDragged:[I

.field public pointerPressed:[I

.field public pointerPressedLeft:[I

.field public pointerReleased:[I

.field public pointerReleasedLeft:[I

.field public pointerReleasedRight:[I

.field private rmsFailed:Z

.field private running:Z

.field private transitionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/16 v0, -0x12c

    .line 15
    sput v0, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointX:I

    .line 16
    sput v0, Lcom/globalfun/adventuretime/free/Engine;->CurrentPointY:I

    .line 17
    sput v0, Lcom/globalfun/adventuretime/free/Engine;->StatingPointX:I

    .line 18
    sput v0, Lcom/globalfun/adventuretime/free/Engine;->StatingPointY:I

    .line 19
    sput-boolean v2, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown:Z

    .line 20
    sput-boolean v2, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown1:Z

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    .line 33
    new-array v0, v3, [I

    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v1, v1, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v1, Lcom/globalfun/adventuretime/free/Resources;->NUM_SOUNDS:I

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v3, v0, v1

    aput v3, v0, v4

    const/4 v1, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/globalfun/adventuretime/free/Engine;->CHEATS_MAX_SELECT:[I

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/globalfun/adventuretime/free/Main;)V
    .locals 2
    .param p1, "parent"    # Lcom/globalfun/adventuretime/free/Main;

    .prologue
    const/4 v1, 0x2

    .line 86
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/UI;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->moreGamesURL:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->rmsFailed:Z

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    .line 118
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    .line 119
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged:[I

    .line 120
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 124
    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    .line 128
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 130
    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    .line 135
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    .line 137
    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    .line 89
    const-string v0, "/touchJoy.png"

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Image;->createImage(Ljava/lang/String;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v0

    sput-object v0, Lcom/globalfun/adventuretime/free/Engine;->touchJoy:Lcom/globalfun/adventuretime/free/Image;

    .line 90
    const-string v0, "/touchImage.png"

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Image;->createImage(Ljava/lang/String;)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v0

    sput-object v0, Lcom/globalfun/adventuretime/free/Engine;->touchImage:Lcom/globalfun/adventuretime/free/Image;

    .line 91
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->resetGame()V

    .line 93
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->rmsRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->rmsWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->rmsFailed:Z

    .line 98
    :cond_0
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->setState(I)V

    .line 99
    return-void

    .line 122
    :array_0
    .array-data 4
        -0x96
        -0x96
    .end array-data

    .line 128
    :array_1
    .array-data 4
        -0x96
        -0x96
    .end array-data

    .line 135
    :array_2
    .array-data 4
        -0x96
        -0x96
    .end array-data
.end method

.method private continueGame()V
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    if-gez v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->startDungeon()V

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadDungeon()V

    .line 509
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->enterRoom()V

    .line 510
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->inGame:Z

    .line 513
    return-void
.end method

.method private loadDungeon()V
    .locals 2

    .prologue
    .line 636
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 681
    :goto_0
    return-void

    .line 641
    :cond_0
    :try_start_0
    const-string v0, "/dungeon.bin"

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 643
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    invoke-static {p0, v0}, Lcom/globalfun/adventuretime/free/Dungeon;->loadDungeon(Lcom/globalfun/adventuretime/free/GameCanvas;I)V

    .line 645
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->closeStream()V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/boss"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 651
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Actor;->loadBossGfx(I)V

    .line 653
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->closeStream()V

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/dungeon"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_map.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 664
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->dungeonMap:[B

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->readFully([B)V

    .line 666
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->closeStream()V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/dungeon"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ids.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 672
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->dungeonRooms:[B

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->readFully([B)V

    .line 674
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->closeStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadRoom()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 583
    iget v7, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    if-ltz v7, :cond_0

    move v0, v5

    .line 592
    .local v0, "hasId":Z
    :goto_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/dungeon"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 596
    :goto_1
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->pullInt()I

    .line 598
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->pullShort()I

    move-result v1

    .line 599
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->pullShort()I

    move-result v3

    .line 600
    .local v3, "x":I
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->pullShort()I

    move-result v4

    .line 602
    .local v4, "y":I
    if-eqz v0, :cond_2

    iget v7, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    if-ne v7, v1, :cond_1

    move v2, v5

    .line 604
    .local v2, "match":Z
    :goto_2
    if-eqz v2, :cond_6

    .line 606
    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    .line 608
    iput v3, p0, Lcom/globalfun/adventuretime/free/Engine;->locationX:I

    .line 609
    iput v4, p0, Lcom/globalfun/adventuretime/free/Engine;->locationY:I

    .line 613
    const/16 v7, 0x1f

    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->checkFlag(I)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v6

    :goto_3
    iput-boolean v7, p0, Lcom/globalfun/adventuretime/free/Engine;->firstVisit:Z

    .line 614
    const/16 v7, 0x1f

    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 618
    iget-object v7, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    iget v8, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    iget v9, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    if-ne v9, v10, :cond_5

    :goto_4
    invoke-virtual {v7, p0, v8, v5}, Lcom/globalfun/adventuretime/free/Room;->load(Lcom/globalfun/adventuretime/free/GameCanvas;IZ)V

    .line 630
    .end local v1    # "id":I
    .end local v2    # "match":Z
    .end local v3    # "x":I
    .end local v4    # "y":I
    :goto_5
    return-void

    .end local v0    # "hasId":Z
    :cond_0
    move v0, v6

    .line 583
    goto :goto_0

    .restart local v0    # "hasId":Z
    .restart local v1    # "id":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_1
    move v2, v6

    .line 602
    goto :goto_2

    :cond_2
    iget v7, p0, Lcom/globalfun/adventuretime/free/Engine;->locationX:I

    if-ne v3, v7, :cond_3

    iget v7, p0, Lcom/globalfun/adventuretime/free/Engine;->locationY:I

    if-ne v4, v7, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_2

    .restart local v2    # "match":Z
    :cond_4
    move v7, v5

    .line 613
    goto :goto_3

    :cond_5
    move v5, v6

    .line 618
    goto :goto_4

    .line 622
    :cond_6
    const/16 v7, 0x31

    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->skipData(I)V

    .line 623
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->skipResources(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 626
    .end local v1    # "id":I
    .end local v2    # "match":Z
    .end local v3    # "x":I
    .end local v4    # "y":I
    :catch_0
    move-exception v5

    goto :goto_5
.end method

.method private newGame(I)V
    .locals 1
    .param p1, "dungeon"    # I

    .prologue
    .line 490
    iput p1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    .line 492
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->startDungeon()V

    .line 494
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadDungeon()V

    .line 495
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->enterRoom()V

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->inGame:Z

    .line 500
    return-void
.end method

.method private resetGame()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 465
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->numRescued:I

    .line 466
    const/4 v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 474
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 477
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    .line 478
    iput v3, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 479
    iput v3, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    .line 481
    const/4 v1, 0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 482
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->purchased:I

    .line 483
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    .line 485
    iput-boolean v2, p0, Lcom/globalfun/adventuretime/free/Engine;->inGame:Z

    .line 486
    return-void

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonKeys:[I

    aput v2, v1, v0

    .line 471
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    aput v2, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomFlags:[I

    aput v2, v1, v0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private restartBoss()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 556
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 560
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->DUNGEON_BOSS_X:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v0, v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationX:I

    .line 561
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->DUNGEON_BOSS_Y:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationY:I

    .line 563
    iput v3, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    .line 564
    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    .line 565
    iput v3, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    .line 567
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadRoom()V

    .line 571
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/globalfun/adventuretime/free/Room;->enter(IIZZ)V

    .line 575
    iput v4, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 576
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    invoke-virtual {p0, v3, v0}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 578
    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    .line 579
    return-void
.end method

.method private restartGame()V
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 527
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->startDungeon()V

    .line 529
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->enterRoom()V

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    .line 531
    return-void
.end method

.method private resumeGame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 517
    invoke-virtual {p0, v1}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    .line 519
    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 520
    invoke-virtual {p0, v0, v0}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 521
    return-void
.end method

.method private skipToBoss(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 543
    iput p1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    .line 544
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadDungeon()V

    .line 548
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Engine;->BOSS_WEAPONS:[I

    aget v1, v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 549
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->restartBoss()V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->inGame:Z

    .line 552
    return-void
.end method

.method private skipToDungeon(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 538
    invoke-direct {p0, p1}, Lcom/globalfun/adventuretime/free/Engine;->newGame(I)V

    .line 539
    return-void

    .line 536
    :cond_0
    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    sget-object v2, Lcom/globalfun/adventuretime/free/Engine;->BOSS_WEAPONS:[I

    aget v2, v2, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private switchToWeapon(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 1168
    const/4 v0, 0x0

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    :goto_0
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->WEAPONS:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 1169
    return-void

    .line 1168
    :cond_0
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    goto :goto_0
.end method

.method private switchWeapon()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1144
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    and-int/lit16 v5, v5, 0xdc

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    sget-object v6, Lcom/globalfun/adventuretime/free/Engine;->WEAPONS:[I

    iget v7, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    aget v6, v6, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    move v0, v4

    .line 1146
    .local v0, "canSwitch":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1164
    :goto_1
    return-void

    .end local v0    # "canSwitch":Z
    :cond_0
    move v0, v3

    .line 1144
    goto :goto_0

    .line 1149
    .restart local v0    # "canSwitch":Z
    :cond_1
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    and-int/lit8 v5, v5, 0x40

    if-lez v5, :cond_5

    move v1, v3

    .line 1153
    .local v1, "hasSuperSword":Z
    :cond_2
    :goto_2
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    sget-object v6, Lcom/globalfun/adventuretime/free/Engine;->WEAPONS:[I

    array-length v6, v6

    if-lt v5, v6, :cond_3

    .line 1154
    iput v4, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    .line 1156
    :cond_3
    sget-object v5, Lcom/globalfun/adventuretime/free/Engine;->WEAPONS:[I

    iget v6, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    aget v2, v5, v6

    .line 1158
    .local v2, "item":I
    if-ne v2, v3, :cond_4

    if-nez v1, :cond_2

    .line 1161
    :cond_4
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    and-int/2addr v5, v2

    if-lez v5, :cond_2

    goto :goto_1

    .end local v1    # "hasSuperSword":Z
    .end local v2    # "item":I
    :cond_5
    move v1, v4

    .line 1149
    goto :goto_2
.end method

.method private updateLoad()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 356
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->loadState:I

    packed-switch v2, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->loadState:I

    add-int/lit8 v2, v2, 0x1

    .line 439
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->loadState:I

    .line 446
    invoke-static {}, Lcom/globalfun/adventuretime/free/Engine;->garbageCollect()V

    .line 448
    iget-boolean v2, p0, Lcom/globalfun/adventuretime/free/Engine;->loaded:Z

    if-eqz v2, :cond_1

    .line 450
    iput-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->firstMenu:Z

    .line 451
    invoke-virtual {p0, v6}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    .line 453
    :cond_1
    :goto_1
    return-void

    .line 360
    :pswitch_0
    const-string v2, "/locales.bin"

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Engine;->pullStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLocales:[Ljava/lang/String;

    .line 361
    const-string v2, "/langs.bin"

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Engine;->pullStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLanguages:[Ljava/lang/String;

    .line 363
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->preloadUI()V

    .line 365
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->locale:Ljava/lang/String;

    if-nez v2, :cond_2

    sget v2, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    if-ne v2, v4, :cond_2

    .line 367
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->parent:Lcom/globalfun/adventuretime/free/Main;

    const-string v3, "default-lang"

    invoke-virtual {v2, v3}, Lcom/globalfun/adventuretime/free/Main;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 370
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, "loc":I
    sput v0, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    .line 372
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLocales:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->locale:Ljava/lang/String;

    .line 376
    .end local v0    # "loc":I
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLanguages:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 377
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLocales:[Ljava/lang/String;

    sget v3, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->locale:Ljava/lang/String;

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->locale:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLanguages:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLocales:[Ljava/lang/String;

    aget-object v2, v2, v6

    iput-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->locale:Ljava/lang/String;

    .line 382
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLanguages:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v5, :cond_0

    .line 383
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadText()V

    goto :goto_0

    .line 397
    :pswitch_2
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->openLogo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->loadState:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->loadState:I

    goto :goto_1

    .line 407
    :pswitch_3
    iput-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->preloaded:Z

    .line 408
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Engine;->setState(I)V

    goto/16 :goto_0

    .line 413
    :pswitch_4
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadUI()V

    .line 415
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/Actor;->initActors(Lcom/globalfun/adventuretime/free/Engine;)V

    .line 417
    new-instance v2, Lcom/globalfun/adventuretime/free/Room;

    invoke-direct {v2, p0}, Lcom/globalfun/adventuretime/free/Room;-><init>(Lcom/globalfun/adventuretime/free/Engine;)V

    iput-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    .line 418
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->screenWidth:I

    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->screenHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/globalfun/adventuretime/free/Room;->setViewport(II)V

    goto/16 :goto_0

    .line 426
    :pswitch_5
    sget-object v2, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v2, v2, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    iget-object v2, v2, Lcom/globalfun/adventuretime/free/Resources;->FILENAMES_RES:[Ljava/lang/String;

    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->loadState:I

    add-int/lit8 v3, v3, -0x5

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Engine;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 428
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->loadState:I

    invoke-static {v2}, Lcom/globalfun/adventuretime/free/Actor;->loadGfx(I)V

    .line 430
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->closeStream()V

    goto/16 :goto_0

    .line 435
    :pswitch_6
    iput-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->loaded:Z

    goto/16 :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateTime()V
    .locals 8
    # Monotonic clock and a fixed deadline preserve 70 ms simulation steps.
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v0
    iget-wide v2, p0, Lcom/globalfun/adventuretime/free/Engine;->renderDeadline:J
    const-wide/16 v4, 0x0
    cmp-long v6, v2, v4
    if-eqz v6, :reset
    sub-long v4, v0, v2
    const-wide/16 v6, 0x118
    cmp-long v6, v4, v6
    if-gtz v6, :reset
    iget-boolean v6, p0, Lcom/globalfun/adventuretime/free/Engine;->isHidden:Z
    if-nez v6, :reset
    iget-boolean v6, p0, Lcom/globalfun/adventuretime/free/Engine;->isRotated:Z
    if-eqz v6, :render
    :reset
    const-wide/16 v4, 0x46
    add-long v2, v0, v4
    :render
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v0
    sub-long v4, v2, v0
    const-wide/16 v6, 0x0
    cmp-long v6, v4, v6
    if-lez v6, :tick
    long-to-int v6, v4
    rsub-int/lit8 v6, v6, 0x46
    const/4 v7, 0x0
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I
    move-result v6
    sput v6, Lcom/globalfun/adventuretime/free/RenderClock;->elapsed:I
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->paint()V
    # Recompute remaining time after drawing to avoid oversleeping a tick.
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    move-result-wide v0
    sub-long v4, v2, v0
    const-wide/16 v6, 0x10
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    move-result-wide v4
    const-wide/16 v6, 0x0
    cmp-long v6, v4, v6
    if-lez v6, :render
    :sleep_start
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :sleep_end
    .catch Ljava/lang/InterruptedException; {:sleep_start .. :sleep_end} :interrupted
    goto :render
    :interrupted
    move-exception v6
    goto :render
    :tick
    const-wide/16 v4, 0x46
    add-long/2addr v2, v4
    iput-wide v2, p0, Lcom/globalfun/adventuretime/free/Engine;->renderDeadline:J
    const/16 v6, 0x46
    iput v6, p0, Lcom/globalfun/adventuretime/free/Engine;->frameRate:I
    iput v6, p0, Lcom/globalfun/adventuretime/free/Engine;->frameTime:I
    invoke-static {}, Lcom/globalfun/adventuretime/free/Actor;->snapshotRender()V
    return-void
.end method


# virtual methods
.method public actionEvents(II)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "selection"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1288
    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->title:I

    .line 1290
    .local v3, "prevTitle":I
    sparse-switch p1, :sswitch_data_0

    .line 1652
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1294
    :sswitch_1
    iput-boolean v8, p0, Lcom/globalfun/adventuretime/free/Engine;->hasCheats:Z

    .line 1295
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto :goto_0

    .line 1300
    :sswitch_2
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1304
    :pswitch_0
    sget v4, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-ne v4, v9, :cond_1

    .line 1305
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->heal()V

    goto :goto_0

    .line 1306
    :cond_1
    sget v4, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-ne v4, v11, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->purchase()V

    goto :goto_0

    .line 1313
    :pswitch_1
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->isInBossRoom()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1314
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->restartBoss()V

    goto :goto_0

    .line 1316
    :cond_2
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->restartGame()V

    goto :goto_0

    .line 1323
    :pswitch_2
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->backToGame()V

    goto :goto_0

    .line 1327
    :pswitch_3
    sget-boolean v4, Lcom/globalfun/adventuretime/free/Main;->PREMIUM:Z

    if-nez v4, :cond_3

    .line 1328
    invoke-static {}, Lcom/globalfun/adventuretime/free/Main;->displayInterstitial()V

    .line 1329
    :cond_3
    invoke-virtual {p0, v8}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto :goto_0

    .line 1334
    :pswitch_4
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->skip()V

    goto :goto_0

    .line 1339
    :pswitch_5
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->talkAdvance()V

    goto :goto_0

    .line 1347
    :sswitch_3
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    if-ne v4, v10, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    goto :goto_0

    .line 1359
    :sswitch_4
    if-ltz p2, :cond_0

    .line 1362
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    if-ne v4, v10, :cond_0

    .line 1364
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    aget v5, v4, p2

    add-int/lit8 v0, v5, -0x1

    aput v0, v4, p2

    .line 1366
    .local v0, "index":I
    if-gez v0, :cond_4

    .line 1367
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    aput v7, v4, p2

    .line 1369
    :cond_4
    if-nez p2, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    goto :goto_0

    .line 1377
    .end local v0    # "index":I
    :sswitch_5
    if-ltz p2, :cond_0

    .line 1380
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    if-ne v4, v10, :cond_0

    .line 1382
    sget-object v4, Lcom/globalfun/adventuretime/free/Engine;->CHEATS_MAX_SELECT:[I

    aget v4, v4, p2

    add-int/lit8 v2, v4, -0x1

    .line 1383
    .local v2, "max":I
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    aget v5, v4, p2

    add-int/lit8 v0, v5, 0x1

    aput v0, v4, p2

    .line 1385
    .restart local v0    # "index":I
    if-le v0, v2, :cond_5

    .line 1386
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    aput v2, v4, p2

    .line 1388
    :cond_5
    if-nez p2, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    goto/16 :goto_0

    .line 1395
    .end local v0    # "index":I
    .end local v2    # "max":I
    :sswitch_6
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->exitInput()V

    .line 1399
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuItems:[I

    aget v1, v4, p2

    .line 1400
    .local v1, "item":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AZA action "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1401
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 1405
    :pswitch_6
    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 1414
    :pswitch_7
    const/16 v4, 0x3c

    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    goto/16 :goto_0

    .line 1418
    :pswitch_8
    sget-boolean v4, Lcom/globalfun/adventuretime/free/Main;->PREMIUM:Z

    if-nez v4, :cond_6

    .line 1420
    const-string v4, "ContinueGame"

    invoke-static {v4}, Lcom/globalfun/adventuretime/free/UtilsAndroid;->sendFlurry(Ljava/lang/String;)V

    .line 1422
    invoke-static {}, Lcom/globalfun/adventuretime/free/Main;->displayInterstitial()V

    .line 1424
    :cond_6
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->continueGame()V

    goto/16 :goto_0

    .line 1429
    :pswitch_9
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->resumeGame()V

    goto/16 :goto_0

    .line 1433
    :pswitch_a
    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Engine;->openHelp(I)V

    goto/16 :goto_0

    .line 1437
    :pswitch_b
    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1441
    :pswitch_c
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openHelp(I)V

    goto/16 :goto_0

    .line 1446
    :pswitch_d
    invoke-virtual {p0, v10}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1451
    :pswitch_e
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1458
    :pswitch_f
    packed-switch v1, :pswitch_data_3

    .line 1473
    :goto_1
    :pswitch_10
    packed-switch v1, :pswitch_data_4

    goto/16 :goto_0

    .line 1476
    :pswitch_11
    invoke-virtual {p0, v11}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1462
    :pswitch_12
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->resumeGame()V

    goto :goto_1

    .line 1467
    :pswitch_13
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto :goto_1

    .line 1480
    :pswitch_14
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1485
    :pswitch_15
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1489
    :pswitch_16
    invoke-virtual {p0, v8}, Lcom/globalfun/adventuretime/free/Engine;->openHelp(I)V

    goto/16 :goto_0

    .line 1496
    :pswitch_17
    packed-switch v1, :pswitch_data_5

    goto/16 :goto_0

    .line 1500
    :pswitch_18
    iput v7, p0, Lcom/globalfun/adventuretime/free/Engine;->sound:I

    .line 1501
    iput-boolean v7, p0, Lcom/globalfun/adventuretime/free/Engine;->Sound_on_off:Z

    .line 1502
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    .line 1504
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuCursor:I

    const/16 v5, 0x10

    invoke-virtual {p0, v4, v5}, Lcom/globalfun/adventuretime/free/Engine;->menuSwap(II)V

    goto/16 :goto_0

    .line 1509
    :pswitch_19
    const/16 v4, 0x64

    iput v4, p0, Lcom/globalfun/adventuretime/free/Engine;->sound:I

    .line 1510
    iput-boolean v8, p0, Lcom/globalfun/adventuretime/free/Engine;->Sound_on_off:Z

    .line 1511
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuCursor:I

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5}, Lcom/globalfun/adventuretime/free/Engine;->menuSwap(II)V

    goto/16 :goto_0

    .line 1516
    :pswitch_1a
    iput-boolean v7, p0, Lcom/globalfun/adventuretime/free/Engine;->vibrate:Z

    .line 1517
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuCursor:I

    const/16 v5, 0x12

    invoke-virtual {p0, v4, v5}, Lcom/globalfun/adventuretime/free/Engine;->menuSwap(II)V

    goto/16 :goto_0

    .line 1522
    :pswitch_1b
    iput-boolean v8, p0, Lcom/globalfun/adventuretime/free/Engine;->vibrate:Z

    .line 1523
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->vibrate(Z)V

    .line 1525
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuCursor:I

    const/16 v5, 0x11

    invoke-virtual {p0, v4, v5}, Lcom/globalfun/adventuretime/free/Engine;->menuSwap(II)V

    goto/16 :goto_0

    .line 1533
    :pswitch_1c
    packed-switch v1, :pswitch_data_6

    goto/16 :goto_0

    .line 1536
    :pswitch_1d
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->exit()V

    goto/16 :goto_0

    .line 1540
    :pswitch_1e
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1548
    :pswitch_1f
    packed-switch v1, :pswitch_data_7

    goto/16 :goto_0

    .line 1552
    :pswitch_20
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->resetGame()V

    .line 1553
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1558
    :pswitch_21
    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    .line 1559
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->menuSetCursor(I)V

    goto/16 :goto_0

    .line 1567
    :pswitch_22
    packed-switch v1, :pswitch_data_8

    .line 1578
    :goto_2
    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->setState(I)V

    goto/16 :goto_0

    .line 1570
    :pswitch_23
    const/16 v4, 0x64

    iput v4, p0, Lcom/globalfun/adventuretime/free/Engine;->sound:I

    goto :goto_2

    .line 1574
    :pswitch_24
    iput v7, p0, Lcom/globalfun/adventuretime/free/Engine;->sound:I

    goto :goto_2

    .line 1583
    :pswitch_25
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    aget p2, v4, p2

    .line 1585
    packed-switch v1, :pswitch_data_9

    .line 1603
    :goto_3
    iput v8, p0, Lcom/globalfun/adventuretime/free/Engine;->inputState:I

    goto/16 :goto_0

    .line 1589
    :pswitch_26
    invoke-virtual {p0, p2, v8}, Lcom/globalfun/adventuretime/free/Engine;->playSound(II)V

    goto :goto_3

    .line 1594
    :pswitch_27
    invoke-direct {p0, p2}, Lcom/globalfun/adventuretime/free/Engine;->skipToDungeon(I)V

    goto/16 :goto_0

    .line 1599
    :pswitch_28
    invoke-direct {p0, p2}, Lcom/globalfun/adventuretime/free/Engine;->skipToBoss(I)V

    goto/16 :goto_0

    .line 1607
    :pswitch_29
    iget-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->textLocales:[Ljava/lang/String;

    aget-object v4, v4, p2

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/Engine;->locale:Ljava/lang/String;

    .line 1608
    sput p2, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    .line 1609
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->rmsWrite()Z

    .line 1610
    iget-boolean v4, p0, Lcom/globalfun/adventuretime/free/Engine;->loaded:Z

    if-eqz v4, :cond_7

    .line 1612
    :try_start_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadText()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :goto_4
    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 1616
    :cond_7
    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->setState(I)V

    goto/16 :goto_0

    .line 1625
    .end local v1    # "item":I
    :sswitch_7
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    if-ne v4, v11, :cond_8

    .line 1627
    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    .line 1634
    :goto_5
    invoke-virtual {p0, v3}, Lcom/globalfun/adventuretime/free/Engine;->menuSetCursor(I)V

    goto/16 :goto_0

    .line 1631
    :cond_8
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto :goto_5

    .line 1639
    :sswitch_8
    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->textAreaId:I

    if-ne v4, v8, :cond_9

    .line 1641
    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    .line 1648
    :goto_6
    invoke-virtual {p0, v3}, Lcom/globalfun/adventuretime/free/Engine;->menuSetCursor(I)V

    goto/16 :goto_0

    .line 1645
    :cond_9
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto :goto_6

    .line 1613
    .restart local v1    # "item":I
    :catch_0
    move-exception v4

    goto :goto_4

    .line 1290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_0
        0x5 -> :sswitch_6
        0x7 -> :sswitch_7
        0xc -> :sswitch_8
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    .line 1300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1401
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_10
        :pswitch_17
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_29
    .end packed-switch

    .line 1405
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_9
    .end packed-switch

    .line 1458
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 1473
    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 1496
    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 1533
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 1548
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 1567
    :pswitch_data_8
    .packed-switch 0xf
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 1585
    :pswitch_data_9
    .packed-switch 0x13
        :pswitch_26
        :pswitch_27
        :pswitch_28
    .end packed-switch
.end method

.method public backToGame()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1120
    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Actor;->setTalking(Z)V

    .line 1121
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->setState(I)V

    .line 1122
    return-void
.end method

.method public bossKilled()V
    .locals 1

    .prologue
    .line 1049
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->SOUND_SFX_BOSS_DEFEAT:I

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->playSfx(I)V

    .line 1051
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->vibrate(Z)V

    .line 1053
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->numRescued:I

    .line 1054
    return-void
.end method

.method public checkFlag(I)Z
    .locals 3
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x1

    .line 827
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomFlags:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    aget v1, v1, v2

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFlag(II)Z
    .locals 3
    .param p1, "roomId"    # I
    .param p2, "flag"    # I

    .prologue
    const/4 v0, 0x1

    .line 832
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomFlags:[I

    aget v1, v1, p1

    shl-int v2, v0, p2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkLever()Z
    .locals 3

    .prologue
    .line 900
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v0, v1, v2

    .line 902
    .local v0, "objects":I
    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public completeDungeon()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 802
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    .line 804
    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 806
    .local v0, "finalDungeon":Z
    :goto_0
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    .line 807
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->startDungeon()V

    .line 809
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/globalfun/adventuretime/free/Engine;->gameComplete:Z

    if-nez v3, :cond_2

    :goto_1
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 811
    if-eqz v0, :cond_0

    .line 813
    iput-boolean v1, p0, Lcom/globalfun/adventuretime/free/Engine;->gameComplete:Z

    .line 816
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 817
    return-void

    .line 804
    .end local v0    # "finalDungeon":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 809
    .restart local v0    # "finalDungeon":Z
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public enterRoom()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 737
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadRoom()V

    .line 738
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadOverworld()V

    .line 740
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    iget v4, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/globalfun/adventuretime/free/Room;->enter(IIZZ)V

    .line 744
    sget-boolean v0, Lcom/globalfun/adventuretime/free/Actor;->isBossFight:Z

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    .line 749
    :cond_0
    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 750
    const/4 v0, -0x1

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 751
    return-void

    :cond_1
    move v0, v1

    .line 740
    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->running:Z

    .line 116
    return-void
.end method

.method public exitDungeon()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 785
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    .line 787
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->DUNGEON_ENTRANCE:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v0, v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    .line 788
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    .line 789
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    .line 791
    const/4 v0, 0x4

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    .line 795
    const/4 v0, 0x2

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 797
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 798
    return-void
.end method

.method public exitOverworld(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->stopSound()V

    .line 773
    iput p1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    .line 774
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->startDungeon()V

    .line 776
    const/4 v0, 0x2

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 778
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 779
    return-void
.end method

.method public exitRoom(II)V
    .locals 3
    .param p1, "dir"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 757
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationX:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Engine;->DIR_X:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationX:I

    .line 758
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationY:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Engine;->DIR_Y:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationY:I

    .line 760
    const/4 v0, -0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    .line 761
    iput p1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    .line 762
    iput p2, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    .line 764
    iput v2, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 766
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    invoke-virtual {p0, v2, v0}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 767
    return-void
.end method

.method public getCurrentWeapon()I
    .locals 2

    .prologue
    .line 1139
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->WEAPONS_TYPES:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    aget v0, v0, v1

    return v0
.end method

.method public getMenuItem(I)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I

    .prologue
    .line 1655
    const-string v0, ""

    .line 1656
    .local v0, "menuItem":Ljava/lang/String;
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 1657
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textLanguages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Engine;->menuItems:[I

    aget v3, v3, p1

    aget-object v0, v2, v3

    .line 1661
    :goto_0
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->menuId:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 1663
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    aget v1, v2, p1

    .line 1665
    .local v1, "selection":I
    const-string v2, "%n%"

    invoke-static {v0, v2, v1}, Lcom/globalfun/adventuretime/free/Engine;->replace(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1667
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1668
    const-string v2, "%b%"

    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Engine;->textMenu:[Ljava/lang/String;

    sget-object v4, Lcom/globalfun/adventuretime/free/Engine;->TEXT_MENU_BOOLEAN:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    invoke-static {v0, v2, v3}, Lcom/globalfun/adventuretime/free/Engine;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    .end local v1    # "selection":I
    :cond_0
    return-object v0

    .line 1659
    :cond_1
    iget-object v2, p0, Lcom/globalfun/adventuretime/free/Engine;->textMenu:[Ljava/lang/String;

    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Engine;->menuItems:[I

    aget v3, v3, p1

    aget-object v0, v2, v3

    goto :goto_0
.end method

.method public handleKey(I)V
    .locals 3
    .param p1, "key"    # I

    .prologue
    const/16 v2, 0x4000

    const/4 v1, 0x1

    .line 1187
    sget v0, Lcom/globalfun/adventuretime/free/Engine;->state:I

    sparse-switch v0, :sswitch_data_0

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1191
    :sswitch_0
    if-ne p1, v2, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->skipTitle()V

    goto :goto_0

    .line 1198
    :sswitch_1
    if-ne p1, v2, :cond_1

    .line 1199
    const/4 v0, 0x2

    invoke-static {v0, v1}, Lcom/globalfun/adventuretime/free/Actor;->setControls(II)V

    .line 1201
    :cond_1
    if-ne p1, v1, :cond_0

    .line 1202
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->switchWeapon()V

    goto :goto_0

    .line 1208
    :sswitch_2
    if-ne p1, v2, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->talkAdvance()V

    goto :goto_0

    .line 1215
    :sswitch_3
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_2

    .line 1216
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->moveCursor(I)V

    goto :goto_0

    .line 1217
    :cond_2
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    .line 1218
    invoke-virtual {p0, v1}, Lcom/globalfun/adventuretime/free/Engine;->moveCursor(I)V

    goto :goto_0

    .line 1187
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleKeys()V
    .locals 3

    .prologue
    .line 1226
    sget v2, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v2, :cond_6

    .line 1228
    const/4 v0, -0x1

    .line 1229
    .local v0, "ctrlsH":I
    const/4 v1, -0x1

    .line 1231
    .local v1, "ctrlsV":I
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit16 v2, v2, 0x400

    if-lez v2, :cond_7

    .line 1233
    const/4 v1, 0x0

    .line 1240
    :cond_0
    :goto_0
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit16 v2, v2, 0x1000

    if-lez v2, :cond_8

    .line 1242
    const/4 v0, 0x3

    .line 1249
    :cond_1
    :goto_1
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_2

    .line 1251
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1254
    :cond_2
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_3

    .line 1256
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1259
    :cond_3
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit16 v2, v2, 0x80

    if-lez v2, :cond_4

    .line 1261
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1264
    :cond_4
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit16 v2, v2, 0x200

    if-lez v2, :cond_5

    .line 1266
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1269
    :cond_5
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/globalfun/adventuretime/free/Actor;->setControls(II)V

    .line 1270
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/globalfun/adventuretime/free/Actor;->setControls(II)V

    .line 1272
    .end local v0    # "ctrlsH":I
    .end local v1    # "ctrlsV":I
    :cond_6
    return-void

    .line 1235
    .restart local v0    # "ctrlsH":I
    .restart local v1    # "ctrlsV":I
    :cond_7
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit16 v2, v2, 0x800

    if-lez v2, :cond_0

    .line 1237
    const/4 v1, 0x1

    goto :goto_0

    .line 1244
    :cond_8
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->keyPressed:I

    and-int/lit16 v2, v2, 0x2000

    if-lez v2, :cond_1

    .line 1246
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public hasItem(I)Z
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 917
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMultiWeapons()Z
    .locals 1

    .prologue
    .line 1134
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    and-int/lit16 v0, v0, 0xdc

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObject(I)Z
    .locals 2
    .param p1, "object"    # I

    .prologue
    .line 922
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v0, v0, v1

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public heal()V
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    .line 1088
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 1090
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->backToGame()V

    .line 1091
    return-void
.end method

.method public heroIsDead()V
    .locals 2

    .prologue
    .line 1110
    const/4 v0, 0x3

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    .line 1111
    sget-boolean v0, Lcom/globalfun/adventuretime/free/Main;->PREMIUM:Z

    if-nez v0, :cond_0

    .line 1112
    const-string v0, "PlayerDead"

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/UtilsAndroid;->sendFlurry(Ljava/lang/String;)V

    .line 1113
    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->openTransition(II)V

    .line 1114
    return-void
.end method

.method public heroIsDieing()V
    .locals 1

    .prologue
    .line 1105
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    iget-object v0, v0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    sget v0, Lcom/globalfun/adventuretime/free/Resources;->SOUND_SFX_KILLED:I

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->playSfx(I)V

    .line 1106
    return-void
.end method

.method public hide()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1276
    sget v1, Lcom/globalfun/adventuretime/free/Engine;->state:I

    if-nez v1, :cond_0

    .line 1278
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    .line 1281
    :cond_0
    sget v1, Lcom/globalfun/adventuretime/free/Engine;->state:I

    const/16 v2, 0x5a

    if-ge v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hurt(I)Z
    .locals 5
    .param p1, "damage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1068
    iget-boolean v3, p0, Lcom/globalfun/adventuretime/free/Engine;->hasCheats:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/globalfun/adventuretime/free/Engine;->cheatSelection:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    if-lez v3, :cond_1

    move v0, v2

    .line 1070
    .local v0, "invulnerable":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1081
    :cond_0
    :goto_1
    return v1

    .end local v0    # "invulnerable":Z
    :cond_1
    move v0, v1

    .line 1068
    goto :goto_0

    .line 1073
    .restart local v0    # "invulnerable":Z
    :cond_2
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lcom/globalfun/adventuretime/free/Engine;->hasItem(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1074
    shr-int/lit8 p1, p1, 0x1

    .line 1076
    :cond_3
    invoke-virtual {p0, v1}, Lcom/globalfun/adventuretime/free/Engine;->vibrate(Z)V

    .line 1078
    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 1079
    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    if-gez v3, :cond_4

    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 1081
    :cond_4
    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method public isDungeonOpen(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1058
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->numRescued:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstVisit()Z
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->firstVisit:Z

    return v0
.end method

.method public isInBossRoom()Z
    .locals 3

    .prologue
    .line 932
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationX:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Engine;->DUNGEON_BOSS_X:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationY:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Engine;->DUNGEON_BOSS_Y:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrincessRescued(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1063
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->numRescued:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadOverworld()V
    .locals 4

    .prologue
    .line 685
    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 713
    :goto_0
    return-void

    .line 688
    :cond_0
    const/4 v1, 0x0

    .line 690
    .local v1, "location":I
    sget-object v2, Lcom/globalfun/adventuretime/free/Engine;->OVERWORLD_ROOMS:[I

    array-length v0, v2

    .local v0, "i":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    .line 699
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/globalfun/adventuretime/free/Actor;->unloadBossGfx()V

    .line 703
    const-string v2, "/overworld.bin"

    invoke-virtual {p0, v2}, Lcom/globalfun/adventuretime/free/Engine;->createStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    .line 705
    invoke-static {p0, v1}, Lcom/globalfun/adventuretime/free/Dungeon;->loadOverworld(Lcom/globalfun/adventuretime/free/GameCanvas;I)V

    .line 707
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->closeStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v2

    goto :goto_0

    .line 691
    :cond_2
    sget-object v2, Lcom/globalfun/adventuretime/free/Engine;->OVERWORLD_ROOMS:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    if-ne v2, v3, :cond_1

    .line 693
    sget-object v2, Lcom/globalfun/adventuretime/free/Engine;->OVERWORLD_LOCATIONS:[I

    aget v1, v2, v0

    .line 694
    goto :goto_1
.end method

.method public pickup(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 952
    packed-switch p1, :pswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 956
    :pswitch_1
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 958
    invoke-static {}, Lcom/globalfun/adventuretime/free/Actor;->celebrate()V

    goto :goto_0

    .line 963
    :pswitch_2
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    add-int/lit8 v0, v0, 0x32

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    goto :goto_0

    .line 968
    :pswitch_3
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    add-int/lit8 v0, v0, 0x19

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    goto :goto_0

    .line 973
    :pswitch_4
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonKeys:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 975
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    goto :goto_0

    .line 980
    :pswitch_5
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    goto :goto_0

    .line 985
    :pswitch_6
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 990
    :pswitch_7
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    if-le v0, v1, :cond_0

    .line 991
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    goto :goto_0

    .line 996
    :pswitch_8
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    goto :goto_0

    .line 1004
    :pswitch_9
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v2, v0, v1

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    goto :goto_0

    .line 1009
    :pswitch_a
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 1011
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->switchToWeapon(I)V

    goto :goto_0

    .line 1016
    :pswitch_b
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 1018
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->switchToWeapon(I)V

    goto :goto_0

    .line 1023
    :pswitch_c
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 1025
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->switchToWeapon(I)V

    goto :goto_0

    .line 1030
    :pswitch_d
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    goto/16 :goto_0

    .line 1035
    :pswitch_e
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    goto/16 :goto_0

    .line 1040
    :pswitch_f
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 1042
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->switchToWeapon(I)V

    goto/16 :goto_0

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public playerUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 1803
    return-void
.end method

.method public purchase()V
    .locals 3

    .prologue
    .line 1095
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    sget-object v1, Lcom/globalfun/adventuretime/free/Engine;->SHOP_COSTS:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->cursor:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    .line 1097
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->purchased:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->cursor:I

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->purchased:I

    .line 1098
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->SHOP_TYPES:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->cursor:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->pickup(I)V

    .line 1100
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->refreshState()V

    .line 1101
    return-void
.end method

.method public rmsRead()Z
    .locals 7

    .prologue
    .line 1682
    const/4 v4, 0x0

    .line 1683
    .local v4, "read":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/globalfun/adventuretime/free/Engine;->rmsRead(I)[B

    move-result-object v1

    .line 1685
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 1687
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1688
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1692
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->numRescued:I

    .line 1693
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    .line 1695
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x5

    if-lt v3, v5, :cond_1

    .line 1703
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    .line 1704
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    .line 1705
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    .line 1707
    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x64

    if-lt v3, v5, :cond_2

    .line 1712
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    .line 1713
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 1714
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    .line 1716
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 1717
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->purchased:I

    .line 1718
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    .line 1720
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->gameComplete:Z

    .line 1724
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/globalfun/adventuretime/free/Engine;->sound:I

    .line 1725
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->vibrate:Z

    .line 1726
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    sput v5, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    .line 1727
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->Sound_on_off:Z

    .line 1730
    const/4 v4, 0x1

    .line 1735
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "i":I
    :cond_0
    :goto_2
    return v4

    .line 1697
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonKeys:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v3

    .line 1698
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v3

    .line 1695
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1708
    :cond_2
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomFlags:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1732
    .end local v3    # "i":I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public rmsWrite()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1739
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return v4

    .line 1741
    :cond_1
    iget-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->rmsFailed:Z

    if-nez v5, :cond_0

    .line 1744
    const/4 v1, 0x0

    .line 1746
    .local v1, "data":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1747
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1751
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->numRescued:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1752
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1754
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v5, 0x5

    if-lt v3, v5, :cond_2

    .line 1762
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1763
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1764
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1766
    const/4 v3, 0x0

    :goto_2
    const/16 v5, 0x64

    if-lt v3, v5, :cond_3

    .line 1769
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->gems:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1770
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1771
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1773
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1774
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->purchased:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1776
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1778
    iget-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->gameComplete:Z

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1782
    iget v5, p0, Lcom/globalfun/adventuretime/free/Engine;->sound:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1783
    iget-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->vibrate:Z

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1784
    sget v5, Lcom/globalfun/adventuretime/free/Engine;->Lang:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1785
    iget-boolean v5, p0, Lcom/globalfun/adventuretime/free/Engine;->Sound_on_off:Z

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1789
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1790
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    .end local v3    # "i":I
    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/globalfun/adventuretime/free/Engine;->rmsWrite(I[B)Z

    move-result v4

    goto :goto_0

    .line 1756
    .restart local v3    # "i":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonKeys:[I

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1757
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1754
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1767
    :cond_3
    iget-object v5, p0, Lcom/globalfun/adventuretime/free/Engine;->roomFlags:[I

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1766
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1792
    .end local v3    # "i":I
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const-wide/16 v8, -0x2

    const/4 v6, 0x1

    const/16 v5, -0x96

    const/4 v4, 0x0

    .line 144
    iput-boolean v6, p0, Lcom/globalfun/adventuretime/free/Engine;->running:Z

    .line 148
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->running:Z

    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->rmsWrite()Z

    .line 312
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->parent:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Main;->exitApplication()V

    .line 313
    return-void

    .line 149
    :cond_1
    iget-wide v0, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_2

    .line 151
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p0, v0, v4}, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed(II)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    .line 154
    :cond_2
    iget-wide v0, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_3

    .line 156
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {p0, v0, v4}, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight(II)V

    .line 157
    iput-wide v8, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aget v0, v0, v4

    if-eq v0, v5, :cond_5

    .line 161
    :cond_4
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/globalfun/adventuretime/free/Engine;->milli:J

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aget v0, v0, v4

    if-eq v0, v5, :cond_b

    .line 165
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aget v1, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed(II)V

    .line 166
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressed:[I

    aput v5, v0, v4

    .line 178
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aget v0, v0, v4

    if-eq v0, v5, :cond_7

    .line 180
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aget v1, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->LeftPointerPressed(II)V

    .line 181
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerPressedLeft:[I

    aput v5, v0, v4

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aget v0, v0, v4

    if-eq v0, v5, :cond_8

    .line 185
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aget v1, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight(II)V

    .line 186
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedRight:[I

    aput v5, v0, v4

    .line 188
    :cond_8
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aget v0, v0, v4

    if-eq v0, v5, :cond_9

    .line 190
    sput-boolean v4, Lcom/globalfun/adventuretime/free/Engine;->TouchisDown:Z

    .line 191
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->releaseKeys()V

    .line 192
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleasedLeft:[I

    aput v5, v0, v4

    .line 194
    :cond_9
    # Rendering is paced independently inside updateTime.

    .line 195
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->updateTime()V

    .line 199
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->delay:I

    if-lez v0, :cond_a

    .line 200
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->delay:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->frameRate:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->delay:I

    .line 204
    :cond_a
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->handleEvents()V

    .line 206
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->isHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->isRotated:Z

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->handleKeys()V

    .line 212
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->handleTouch()V

    .line 216
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->updateUI()V

    .line 220
    sget v0, Lcom/globalfun/adventuretime/free/Engine;->state:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 229
    :sswitch_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionComplete:Z

    if-eqz v0, :cond_d

    .line 235
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->transitionId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 239
    :pswitch_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->playBGM()V

    goto/16 :goto_0

    .line 168
    :cond_b
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged:[I

    aget v0, v0, v4

    if-eq v0, v5, :cond_c

    .line 170
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged:[I

    aget v1, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged(II)V

    .line 171
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerDragged:[I

    aput v5, v0, v4

    goto/16 :goto_1

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aget v0, v0, v4

    if-eq v0, v5, :cond_6

    .line 175
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aget v1, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased(II)V

    .line 176
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->pointerReleased:[I

    aput v5, v0, v4

    goto/16 :goto_1

    .line 224
    :sswitch_1
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->updateLoad()V

    goto/16 :goto_0

    .line 244
    :pswitch_1
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->enterRoom()V

    goto/16 :goto_0

    .line 249
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    goto/16 :goto_0

    .line 254
    :pswitch_3
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->loadDungeon()V

    .line 255
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->enterRoom()V

    goto/16 :goto_0

    .line 260
    :pswitch_4
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->openUI(I)V

    goto/16 :goto_0

    .line 266
    :cond_d
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Room;->update()V

    goto/16 :goto_0

    .line 273
    :sswitch_2
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Room;->update()V

    .line 275
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->complete:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Room;->talkComplete()V

    goto/16 :goto_0

    .line 282
    :sswitch_3
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->room:Lcom/globalfun/adventuretime/free/Room;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Room;->update()V

    goto/16 :goto_0

    .line 287
    :sswitch_4
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->complete:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0, v7}, Lcom/globalfun/adventuretime/free/Engine;->newGame(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_5
    iget-boolean v0, p0, Lcom/globalfun/adventuretime/free/Engine;->complete:Z

    if-eqz v0, :cond_0

    .line 298
    iput-boolean v4, p0, Lcom/globalfun/adventuretime/free/Engine;->inGame:Z

    .line 299
    invoke-virtual {p0, v4}, Lcom/globalfun/adventuretime/free/Engine;->openMenu(I)V

    goto/16 :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3c -> :sswitch_4
        0x3d -> :sswitch_5
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setFlag(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 837
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomFlags:[I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    aget v2, v0, v1

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 838
    return-void
.end method

.method public setFlag(II)V
    .locals 3
    .param p1, "roomId"    # I
    .param p2, "flag"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomFlags:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 843
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public startDungeon()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 726
    sget-object v0, Lcom/globalfun/adventuretime/free/Engine;->DUNGEON_START:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v0, v0, v2

    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomId:I

    .line 727
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/globalfun/adventuretime/free/Engine;->roomDir:I

    .line 730
    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->roomPosition:I

    .line 731
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchLever()V
    .locals 4

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Engine;->checkLever()Z

    move-result v0

    .line 909
    .local v0, "on":Z
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x5

    aput v3, v1, v2

    .line 911
    if-nez v0, :cond_0

    .line 912
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonObjects:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v3, v1, v2

    or-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    .line 913
    :cond_0
    return-void
.end method

.method public switchWeaponIfEmpty()V
    .locals 4

    .prologue
    .line 1173
    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    sget-object v2, Lcom/globalfun/adventuretime/free/Engine;->WEAPONS:[I

    iget v3, p0, Lcom/globalfun/adventuretime/free/Engine;->weapon:I

    aget v2, v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1175
    .local v0, "empty":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1176
    invoke-direct {p0}, Lcom/globalfun/adventuretime/free/Engine;->switchWeapon()V

    .line 1177
    :cond_0
    return-void

    .line 1173
    .end local v0    # "empty":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlock(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 864
    iget v0, p0, Lcom/globalfun/adventuretime/free/Engine;->locationX:I

    .line 865
    .local v0, "adjX":I
    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->locationY:I

    .line 867
    .local v1, "adjY":I
    packed-switch p1, :pswitch_data_0

    .line 894
    :goto_0
    sget-object v3, Lcom/globalfun/adventuretime/free/Engine;->dungeonRooms:[B

    mul-int/lit8 v4, v1, 0x7

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 895
    .local v2, "id":I
    invoke-virtual {p0, v2, p1}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(II)V

    .line 896
    return-void

    .line 871
    .end local v2    # "id":I
    :pswitch_0
    const/16 p1, 0x1c

    .line 872
    add-int/lit8 v1, v1, -0x1

    .line 873
    goto :goto_0

    .line 877
    :pswitch_1
    const/16 p1, 0x1d

    .line 878
    add-int/lit8 v1, v1, 0x1

    .line 879
    goto :goto_0

    .line 883
    :pswitch_2
    const/16 p1, 0x1a

    .line 884
    add-int/lit8 v0, v0, 0x1

    .line 885
    goto :goto_0

    .line 889
    :pswitch_3
    const/16 p1, 0x1b

    .line 890
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public useKey(I)Z
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 847
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonKeys:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v1, v1, v2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 849
    .local v0, "hasKey":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/Engine;->setFlag(I)V

    .line 852
    invoke-virtual {p0, p1}, Lcom/globalfun/adventuretime/free/Engine;->unlock(I)V

    .line 854
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeonKeys:[I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->dungeon:I

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    .line 857
    :cond_0
    return v0

    .line 847
    .end local v0    # "hasKey":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usePotion()Z
    .locals 3

    .prologue
    .line 937
    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 939
    .local v0, "used":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 941
    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->lifeMax:I

    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->life:I

    .line 942
    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->items:I

    .line 944
    iget v1, p0, Lcom/globalfun/adventuretime/free/Engine;->purchased:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/globalfun/adventuretime/free/Engine;->purchased:I

    .line 947
    :cond_0
    return v0

    .line 937
    .end local v0    # "used":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public vibrate(Z)V
    .locals 1
    .param p1, "big"    # Z

    .prologue
    .line 1126
    if-eqz p1, :cond_0

    const/16 v0, 0x12c

    .line 1127
    .local v0, "duration":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Engine;->vibrate(I)V

    .line 1128
    return-void

    .line 1126
    .end local v0    # "duration":I
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method
