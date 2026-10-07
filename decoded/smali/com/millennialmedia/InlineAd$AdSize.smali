.class public Lcom/millennialmedia/InlineAd$AdSize;
.super Ljava/lang/Object;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdSize"
.end annotation


# static fields
.field public static final AUTO_HEIGHT:I

.field public static final AUTO_WIDTH:I

.field public static final BANNER:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final FULL_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final LARGE_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final LEADERBOARD:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final MEDIUM_RECTANGLE:Lcom/millennialmedia/InlineAd$AdSize;

.field public static final SMART_BANNER:Lcom/millennialmedia/InlineAd$AdSize;


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x140

    const/4 v3, 0x0

    .line 348
    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x32

    invoke-direct {v0, v4, v1}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    .line 353
    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->FULL_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    .line 358
    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x64

    invoke-direct {v0, v4, v1}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->LARGE_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    .line 363
    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->LEADERBOARD:Lcom/millennialmedia/InlineAd$AdSize;

    .line 368
    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->MEDIUM_RECTANGLE:Lcom/millennialmedia/InlineAd$AdSize;

    .line 373
    new-instance v0, Lcom/millennialmedia/InlineAd$AdSize;

    invoke-direct {v0, v3, v3}, Lcom/millennialmedia/InlineAd$AdSize;-><init>(II)V

    sput-object v0, Lcom/millennialmedia/InlineAd$AdSize;->SMART_BANNER:Lcom/millennialmedia/InlineAd$AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    if-lez p1, :cond_0

    .end local p1    # "width":I
    :goto_0
    iput p1, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    .line 385
    if-lez p2, :cond_1

    .end local p2    # "height":I
    :goto_1
    iput p2, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    .line 386
    return-void

    .restart local p1    # "width":I
    .restart local p2    # "height":I
    :cond_0
    move p1, v0

    .line 384
    goto :goto_0

    .end local p1    # "width":I
    :cond_1
    move p2, v0

    .line 385
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    if-ne p0, p1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 396
    goto :goto_0

    .line 399
    :cond_3
    instance-of v3, p1, Lcom/millennialmedia/InlineAd$AdSize;

    if-nez v3, :cond_4

    move v1, v2

    .line 400
    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 402
    check-cast v0, Lcom/millennialmedia/InlineAd$AdSize;

    .line 404
    .local v0, "adSize":Lcom/millennialmedia/InlineAd$AdSize;
    iget v3, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    iget v4, v0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    iget v4, v0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-eq v3, v4, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inline ad of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
