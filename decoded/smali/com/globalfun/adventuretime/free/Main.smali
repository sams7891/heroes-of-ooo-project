.class public final Lcom/globalfun/adventuretime/free/Main;
.super Landroid/app/Activity;
.source "Main.java"


# static fields
.field private static final DIALOG_ERROR:I = 0x1

.field static HIGH:Z = false

.field static final INTERSTITIAL_REQUEST_CODE:I = 0x4b0

.field static LOW:Z = false

.field static MEDIUM:Z = false

.field private static final PNG_CHK_TYPE_LENGTH:I = 0x4

.field private static final PNG_CRC_POLYNOMIAL:I = -0x12477ce0

.field private static final PNG_CRC_REGISTER:I = -0x1

.field private static final PNG_CRC_TABLE_SIZE:I = 0x100

.field private static final PNG_HEADER_LENGTH:I = 0x8

.field static PREMIUM:Z = false

.field static final REWARDED_VIDEO_REQUEST_CODE:I = 0x44c

.field static final TEMPORARY_DEFAULT_COLOR:I = 0xaaaaaa

.field static final TEMPORARY_ERROR_FIXER:I = 0x1

.field static final TEMPORARY_ERROR_FIXER_2:I = 0x777777

.field private static crcTable:[I

.field static engine:Lcom/globalfun/adventuretime/free/Engine;

.field static gameThread:Lcom/globalfun/adventuretime/free/GameThread;

.field static gmgIcon:Lcom/globalfun/adventuretime/free/Image;

.field static volatile handler:Landroid/os/Handler;

.field public static midlet:Lcom/globalfun/adventuretime/free/Main;

.field static requestCallbackVideo:Lcom/fyber/requesters/RequestCallback;

.field static size:I

.field public static sync:Ljava/lang/Object;


# instance fields
.field azaGmg:Lcom/lklab/azagmglib/AzaGmg;

.field private errorMessage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIntentVideo:Landroid/content/Intent;

.field requestCallback:Lcom/fyber/requesters/RequestCallback;

.field res:Lcom/globalfun/adventuretime/free/Resources;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 48
    sput-boolean v1, Lcom/globalfun/adventuretime/free/Main;->PREMIUM:Z

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/globalfun/adventuretime/free/Main;->sync:Ljava/lang/Object;

    .line 61
    sput-object v2, Lcom/globalfun/adventuretime/free/Main;->gmgIcon:Lcom/globalfun/adventuretime/free/Image;

    .line 127
    new-instance v0, Lcom/globalfun/adventuretime/free/Main$2;

    invoke-direct {v0}, Lcom/globalfun/adventuretime/free/Main$2;-><init>()V

    sput-object v0, Lcom/globalfun/adventuretime/free/Main;->requestCallbackVideo:Lcom/fyber/requesters/RequestCallback;

    .line 244
    const/4 v0, 0x1

    sput v0, Lcom/globalfun/adventuretime/free/Main;->size:I

    .line 245
    sput-boolean v1, Lcom/globalfun/adventuretime/free/Main;->MEDIUM:Z

    .line 246
    sput-boolean v1, Lcom/globalfun/adventuretime/free/Main;->LOW:Z

    .line 247
    sput-boolean v1, Lcom/globalfun/adventuretime/free/Main;->HIGH:Z

    .line 248
    sput-object v2, Lcom/globalfun/adventuretime/free/Main;->handler:Landroid/os/Handler;

    .line 598
    sput-object v2, Lcom/globalfun/adventuretime/free/Main;->crcTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Lcom/globalfun/adventuretime/free/Main$1;

    invoke-direct {v0, p0}, Lcom/globalfun/adventuretime/free/Main$1;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->requestCallback:Lcom/fyber/requesters/RequestCallback;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/globalfun/adventuretime/free/Main;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Main;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$1(Lcom/globalfun/adventuretime/free/Main;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Main;->mIntentVideo:Landroid/content/Intent;

    return-void
.end method

.method private static copyInt([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "value"    # I

    .prologue
    .line 513
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 514
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 515
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 516
    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 517
    return-void
.end method

.method private static crc(I[BII)I
    .locals 9
    .param p0, "register"    # I
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 604
    sget-object v7, Lcom/globalfun/adventuretime/free/Main;->crcTable:[I

    if-nez v7, :cond_0

    .line 606
    const/16 v7, 0x100

    new-array v7, v7, [I

    sput-object v7, Lcom/globalfun/adventuretime/free/Main;->crcTable:[I

    .line 608
    const/16 v2, 0x100

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    .line 623
    .end local v2    # "i":I
    :cond_0
    move v2, p2

    .restart local v2    # "i":I
    move v4, p3

    .local v4, "j":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_5

    .line 631
    return p0

    .line 610
    .end local v4    # "j":I
    :cond_1
    move v1, v2

    .line 612
    .local v1, "c":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    const/16 v7, 0x8

    if-lt v5, v7, :cond_2

    .line 619
    sget-object v7, Lcom/globalfun/adventuretime/free/Main;->crcTable:[I

    aput v1, v7, v2

    goto :goto_0

    .line 614
    :cond_2
    and-int/lit8 v7, v1, 0x1

    if-lez v7, :cond_4

    const/4 v6, 0x1

    .line 615
    .local v6, "xor":Z
    :goto_3
    ushr-int/lit8 v1, v1, 0x1

    .line 616
    if-eqz v6, :cond_3

    const v7, -0x12477ce0

    xor-int/2addr v1, v7

    .line 612
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 614
    .end local v6    # "xor":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 625
    .end local v1    # "c":I
    .end local v5    # "k":I
    .restart local v4    # "j":I
    :cond_5
    aget-byte v0, p1, v2

    .line 627
    .local v0, "b":B
    xor-int v7, p0, v0

    and-int/lit16 v3, v7, 0xff

    .line 628
    .local v3, "index":I
    sget-object v7, Lcom/globalfun/adventuretime/free/Main;->crcTable:[I

    aget v7, v7, v3

    ushr-int/lit8 v8, p0, 0x8

    xor-int p0, v7, v8

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static createMatte([BI)Lcom/globalfun/adventuretime/free/Image;
    .locals 7
    .param p0, "imgData"    # [B
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x0

    .line 636
    const-string v4, "PLTE"

    const/4 v5, 0x0

    invoke-static {v4, p0, v5}, Lcom/globalfun/adventuretime/free/Main;->setChunk(Ljava/lang/String;[B[B)[B

    move-result-object v2

    .line 637
    .local v2, "palette":[B
    const/4 v4, 0x3

    new-array v3, v4, [B

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    const/4 v4, 0x1

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 639
    .local v3, "rgb":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    .line 647
    const-string v4, "PLTE"

    invoke-static {v4, p0, v2}, Lcom/globalfun/adventuretime/free/Main;->setChunk(Ljava/lang/String;[B[B)[B

    .line 649
    array-length v4, p0

    invoke-static {p0, v6, v4}, Lcom/globalfun/adventuretime/free/Image;->createImage([BII)Lcom/globalfun/adventuretime/free/Image;

    move-result-object v4

    return-object v4

    .line 641
    :cond_0
    aget-byte v4, v3, v1

    aput-byte v4, v2, v0

    .line 643
    add-int/lit8 v1, v1, 0x1

    array-length v4, v3

    if-lt v1, v4, :cond_1

    .line 644
    const/4 v1, 0x0

    .line 639
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static displayInterstitial()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/globalfun/adventuretime/free/Main$3;

    invoke-direct {v1}, Lcom/globalfun/adventuretime/free/Main$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public static getLogMessages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public static logMessage(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 237
    return-void
.end method

.method private static parseInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "off"    # I

    .prologue
    .line 508
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static setChunk(Ljava/lang/String;[B[B)[B
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "set"    # [B

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x4

    .line 521
    const/4 v1, 0x0

    .line 523
    .local v1, "chunk":[B
    const/16 v5, 0x8

    .local v5, "i":I
    :goto_0
    array-length v10, p1

    if-lt v5, v10, :cond_0

    .line 587
    return-object v1

    .line 529
    :cond_0
    move v7, v5

    .line 530
    .local v7, "indexLength":I
    invoke-static {p1, v5}, Lcom/globalfun/adventuretime/free/Main;->parseInt([BI)I

    move-result v3

    .line 532
    .local v3, "chunkLen":I
    add-int/lit8 v5, v5, 0x4

    .line 538
    move v8, v5

    .line 540
    .local v8, "indexType":I
    new-array v2, v11, [C

    .line 542
    .local v2, "chunkChars":[C
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-lt v9, v11, :cond_2

    .line 545
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 551
    .local v4, "chunkName":Ljava/lang/String;
    move v6, v5

    .line 553
    .local v6, "indexData":I
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 555
    if-nez p2, :cond_3

    .line 556
    new-array v1, v3, [B

    .line 557
    invoke-static {p1, v6, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    :cond_1
    :goto_2
    add-int/2addr v5, v3

    .line 572
    invoke-static {p1, v7, v3}, Lcom/globalfun/adventuretime/free/Main;->copyInt([BII)V

    .line 574
    const/4 v0, -0x1

    .line 576
    .local v0, "calculatedCrc":I
    invoke-static {v0, p1, v8, v11}, Lcom/globalfun/adventuretime/free/Main;->crc(I[BII)I

    move-result v0

    .line 577
    invoke-static {v0, p1, v6, v3}, Lcom/globalfun/adventuretime/free/Main;->crc(I[BII)I

    move-result v0

    .line 578
    xor-int/lit8 v0, v0, -0x1

    .line 580
    invoke-static {p1, v5, v0}, Lcom/globalfun/adventuretime/free/Main;->copyInt([BII)V

    .line 584
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 543
    .end local v0    # "calculatedCrc":I
    .end local v4    # "chunkName":Ljava/lang/String;
    .end local v6    # "indexData":I
    :cond_2
    aget-byte v10, p1, v5

    int-to-char v10, v10

    aput-char v10, v2, v9

    .line 542
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 560
    .restart local v4    # "chunkName":Ljava/lang/String;
    .restart local v6    # "indexData":I
    :cond_3
    array-length v10, p2

    invoke-static {p2, v12, p1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method static showMoreApps()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method


# virtual methods
.method public destroyApp(Z)V
    .locals 1
    .param p1, "unconditional"    # Z

    .prologue
    .line 492
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Engine;->exit()V

    .line 493
    return-void
.end method

.method public exitApplication()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->finish()V

    .line 69
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Engine;->exit()V

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 71
    return-void
.end method

.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Main;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 425
    :cond_0
    sget-boolean v0, Lcom/globalfun/adventuretime/free/Main;->HIGH:Z

    if-eqz v0, :cond_1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "high/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    :goto_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "medium/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 397
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 399
    :catch_0
    move-exception v1

    .line 403
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    sget-object v9, Lcom/globalfun/adventuretime/free/Main;->handler:Landroid/os/Handler;

    if-nez v9, :cond_0

    .line 254
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    sput-object v9, Lcom/globalfun/adventuretime/free/Main;->handler:Landroid/os/Handler;

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 257
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Main;->setRequestedOrientation(I)V

    .line 258
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 260
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    sget v10, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int/2addr v9, v10

    sput v9, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    .line 261
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    sget v10, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int/2addr v9, v10

    sput v9, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    .line 263
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 264
    .local v7, "trueW":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 265
    .local v6, "trueH":I
    const/16 v9, 0x21c

    if-le v6, v9, :cond_1

    .line 267
    int-to-float v9, v6

    const/high16 v10, 0x43f00000    # 480.0f

    div-float v8, v9, v10

    .line 268
    .local v8, "w":F
    int-to-double v10, v6

    const-wide/high16 v12, 0x407e000000000000L    # 480.0

    rem-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-nez v9, :cond_3

    float-to-int v9, v8

    :goto_0
    sput v9, Lcom/globalfun/adventuretime/free/Main;->size:I

    .line 269
    sget v9, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int v9, v7, v9

    sput v9, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    .line 270
    sget v9, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int v9, v6, v9

    sput v9, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    .line 277
    .end local v8    # "w":F
    :cond_1
    sget v9, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    const/16 v10, 0x15e

    if-le v9, v10, :cond_4

    .line 279
    const/4 v9, 0x1

    sput-boolean v9, Lcom/globalfun/adventuretime/free/Main;->HIGH:Z

    .line 280
    new-instance v9, Lcom/globalfun/adventuretime/free/Resources480;

    invoke-direct {v9}, Lcom/globalfun/adventuretime/free/Resources480;-><init>()V

    iput-object v9, p0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    .line 287
    :goto_1
    sget-object v9, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    if-nez v9, :cond_2

    .line 288
    sput-object p0, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    .line 289
    new-instance v9, Lcom/globalfun/adventuretime/free/Engine;

    invoke-direct {v9, p0}, Lcom/globalfun/adventuretime/free/Engine;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    sput-object v9, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    .line 294
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/globalfun/adventuretime/free/Main;->requestWindowFeature(I)Z

    .line 295
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x400

    const/16 v11, 0x400

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 298
    sget-object v9, Lcom/globalfun/adventuretime/free/Main;->gameThread:Lcom/globalfun/adventuretime/free/GameThread;

    if-nez v9, :cond_5

    .line 300
    new-instance v9, Lcom/globalfun/adventuretime/free/GameThread;

    invoke-direct {v9, p0}, Lcom/globalfun/adventuretime/free/GameThread;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    sput-object v9, Lcom/globalfun/adventuretime/free/Main;->gameThread:Lcom/globalfun/adventuretime/free/GameThread;

    .line 309
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    .line 310
    .local v3, "pack":Ljava/lang/Package;
    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 313
    const/16 v10, 0x40

    .line 311
    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 314
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v10, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v11, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :goto_3
    if-lt v9, v11, :cond_6

    .line 328
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pack":Ljava/lang/Package;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_4
    new-instance v9, Lcom/lklab/azagmglib/AzaGmg;

    const-string v10, "ooo.json"

    new-instance v11, Lcom/globalfun/adventuretime/free/Main$4;

    invoke-direct {v11, p0}, Lcom/globalfun/adventuretime/free/Main$4;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    invoke-direct {v9, p0, v10, v11}, Lcom/lklab/azagmglib/AzaGmg;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/lklab/azagmglib/AzaGmg$GmgListener;)V

    iput-object v9, p0, Lcom/globalfun/adventuretime/free/Main;->azaGmg:Lcom/lklab/azagmglib/AzaGmg;

    .line 381
    return-void

    .line 268
    .restart local v8    # "w":F
    :cond_3
    float-to-int v9, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 284
    .end local v8    # "w":F
    :cond_4
    const/4 v9, 0x1

    sput-boolean v9, Lcom/globalfun/adventuretime/free/Main;->MEDIUM:Z

    .line 285
    new-instance v9, Lcom/globalfun/adventuretime/free/Resources320;

    invoke-direct {v9}, Lcom/globalfun/adventuretime/free/Resources320;-><init>()V

    iput-object v9, p0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    goto :goto_1

    .line 304
    :cond_5
    sget-object v9, Lcom/globalfun/adventuretime/free/Main;->gameThread:Lcom/globalfun/adventuretime/free/GameThread;

    invoke-virtual {v9, p0}, Lcom/globalfun/adventuretime/free/GameThread;->recreateView(Lcom/globalfun/adventuretime/free/Main;)V

    goto :goto_2

    .line 314
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pack":Ljava/lang/Package;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_6
    :try_start_1
    aget-object v5, v10, v9

    .line 316
    .local v5, "signature":Landroid/content/pm/Signature;
    const-string v12, "SHA"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 317
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 318
    const-string v12, "KeyHash:"

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 324
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "pack":Ljava/lang/Package;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v9

    goto :goto_4

    .line 321
    :catch_1
    move-exception v9

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 444
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 445
    const-string v2, "Oh Noes"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 446
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 447
    const-string v2, "Ok"

    new-instance v3, Lcom/globalfun/adventuretime/free/Main$5;

    invoke-direct {v3, p0}, Lcom/globalfun/adventuretime/free/Main$5;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 453
    const-string v2, "Meh"

    new-instance v3, Lcom/globalfun/adventuretime/free/Main$6;

    invoke-direct {v3, p0}, Lcom/globalfun/adventuretime/free/Main$6;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 461
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 84
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 85
    :cond_0
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Engine;->hideNotify()V

    .line 89
    :cond_1
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 469
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 470
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 472
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->errorMessage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 176
    sget-object v4, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    if-eqz v4, :cond_0

    .line 178
    sget-object v4, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v4}, Lcom/globalfun/adventuretime/free/Engine;->show()V

    .line 180
    :cond_0
    const-string v4, "Main.onRestart()"

    invoke-static {v4}, Lcom/globalfun/adventuretime/free/Main;->logMessage(Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 183
    invoke-virtual {p0}, Lcom/globalfun/adventuretime/free/Main;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 184
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget v5, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int/2addr v4, v5

    sput v4, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    .line 185
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sget v5, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int/2addr v4, v5

    sput v4, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    .line 187
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 188
    .local v2, "trueW":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 189
    .local v1, "trueH":I
    const/16 v4, 0x21c

    if-le v1, v4, :cond_1

    .line 191
    int-to-float v4, v1

    const/high16 v5, 0x43f00000    # 480.0f

    div-float v3, v4, v5

    .line 192
    .local v3, "w":F
    int-to-double v4, v1

    const-wide/high16 v6, 0x407e000000000000L    # 480.0

    rem-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    float-to-int v4, v3

    :goto_0
    sput v4, Lcom/globalfun/adventuretime/free/Main;->size:I

    .line 193
    sget v4, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int v4, v2, v4

    sput v4, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenWidth:I

    .line 194
    sget v4, Lcom/globalfun/adventuretime/free/Main;->size:I

    div-int v4, v1, v4

    sput v4, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    .line 201
    .end local v3    # "w":F
    :cond_1
    sget v4, Lcom/globalfun/adventuretime/free/GameCanvas;->trueScreenHeight:I

    const/16 v5, 0x15e

    if-le v4, v5, :cond_3

    .line 203
    sput-boolean v8, Lcom/globalfun/adventuretime/free/Main;->HIGH:Z

    .line 204
    new-instance v4, Lcom/globalfun/adventuretime/free/Resources480;

    invoke-direct {v4}, Lcom/globalfun/adventuretime/free/Resources480;-><init>()V

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    .line 211
    :goto_1
    return-void

    .line 192
    .restart local v3    # "w":F
    :cond_2
    float-to-int v4, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "w":F
    :cond_3
    sput-boolean v8, Lcom/globalfun/adventuretime/free/Main;->MEDIUM:Z

    .line 209
    new-instance v4, Lcom/globalfun/adventuretime/free/Resources320;

    invoke-direct {v4}, Lcom/globalfun/adventuretime/free/Resources320;-><init>()V

    iput-object v4, p0, Lcom/globalfun/adventuretime/free/Main;->res:Lcom/globalfun/adventuretime/free/Resources;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v1}, Lcom/globalfun/adventuretime/free/Engine;->show()V

    .line 103
    :cond_0
    const-string v1, "61229"

    invoke-static {v1, p0}, Lcom/fyber/Fyber;->with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;

    move-result-object v1

    .line 104
    const-string v2, "5ea967eb42e73fd912f15894012b0990"

    invoke-virtual {v1, v2}, Lcom/fyber/Fyber;->withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/fyber/Fyber;->start()Lcom/fyber/Fyber$Settings;

    move-result-object v0

    .line 106
    .local v0, "settings":Lcom/fyber/Fyber$Settings;
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 107
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "Main.onStart()"

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Main;->logMessage(Ljava/lang/String;)V

    .line 218
    const-string v0, "7B83ZP9ZNZYZPXN3RTV8"

    invoke-static {p0, v0}, Lcom/globalfun/adventuretime/free/UtilsAndroid;->onStartSessionFlurry(Landroid/app/Activity;Ljava/lang/String;)V

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 220
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 225
    const-string v0, "Main.onStop()"

    invoke-static {v0}, Lcom/globalfun/adventuretime/free/Main;->logMessage(Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Engine;->rmsWrite()Z

    .line 227
    invoke-static {p0}, Lcom/globalfun/adventuretime/free/UtilsAndroid;->onEndSessionFlurry(Landroid/app/Activity;)V

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 230
    return-void
.end method

.method public pauseApp()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public platformRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public showAds()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/globalfun/adventuretime/free/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->mIntent:Landroid/content/Intent;

    .line 152
    :cond_0
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Main;->errorMessage:Ljava/lang/String;

    .line 479
    new-instance v0, Lcom/globalfun/adventuretime/free/Main$7;

    invoke-direct {v0, p0}, Lcom/globalfun/adventuretime/free/Main$7;-><init>(Lcom/globalfun/adventuretime/free/Main;)V

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 487
    return-void
.end method

.method public startApp()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/globalfun/adventuretime/free/Main;->engine:Lcom/globalfun/adventuretime/free/Engine;

    invoke-virtual {v0}, Lcom/globalfun/adventuretime/free/Engine;->start()V

    .line 170
    return-void
.end method

.method public vibrate(I)Z
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 416
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/globalfun/adventuretime/free/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->vibrator:Landroid/os/Vibrator;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Main;->vibrator:Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 419
    const/4 v0, 0x1

    return v0
.end method
