.class public Lcom/globalfun/adventuretime/free/Animator;
.super Ljava/lang/Object;
.source "Animator.java"


# instance fields
.field public complete:Z

.field public frame:I

.field public frameDelay:I

.field public frameHit:I

.field public frameIndex:I

.field public frameRate:I

.field public frames:[B

.field public loops:I

.field public numFrames:I

.field public targetLoops:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate()V
    .locals 3

    .prologue
    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameHit:I

    .line 73
    iget-boolean v1, p0, Lcom/globalfun/adventuretime/free/Animator;->complete:Z

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget v0, p0, Lcom/globalfun/adventuretime/free/Animator;->frame:I

    .line 78
    .local v0, "prev":I
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameDelay:I

    if-lez v1, :cond_2

    .line 79
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameDelay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameDelay:I

    .line 81
    :cond_2
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameDelay:I

    if-gtz v1, :cond_0

    .line 83
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    .line 85
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Animator;->numFrames:I

    if-ne v1, v2, :cond_4

    .line 87
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->loops:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->loops:I

    .line 89
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->loops:I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Animator;->targetLoops:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->targetLoops:I

    if-nez v1, :cond_5

    .line 90
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    .line 97
    :cond_4
    :goto_1
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameDelay:I

    iget v2, p0, Lcom/globalfun/adventuretime/free/Animator;->frameRate:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameDelay:I

    .line 99
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frames:[B

    if-nez v1, :cond_6

    .line 100
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frame:I

    .line 104
    :goto_2
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frame:I

    if-eq v1, v0, :cond_0

    .line 105
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frame:I

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameHit:I

    goto :goto_0

    .line 92
    :cond_5
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/globalfun/adventuretime/free/Animator;->complete:Z

    goto :goto_1

    .line 102
    :cond_6
    iget-object v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frames:[B

    iget v2, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    aget-byte v1, v1, v2

    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frame:I

    goto :goto_2
.end method

.method public getFrameCount()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/globalfun/adventuretime/free/Animator;->targetLoops:I

    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->numFrames:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameRate:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public reset(I)V
    .locals 1
    .param p1, "numFrames"    # I

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/globalfun/adventuretime/free/Animator;->reset(II)V

    .line 20
    return-void
.end method

.method public reset(II)V
    .locals 1
    .param p1, "numFrames"    # I
    .param p2, "frameRate"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/globalfun/adventuretime/free/Animator;->frames:[B

    .line 30
    iput p1, p0, Lcom/globalfun/adventuretime/free/Animator;->numFrames:I

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/globalfun/adventuretime/free/Animator;->start(II)V

    .line 33
    return-void
.end method

.method public reset([B)V
    .locals 1
    .param p1, "frames"    # [B

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/globalfun/adventuretime/free/Animator;->reset([BI)V

    .line 25
    return-void
.end method

.method public reset([BI)V
    .locals 2
    .param p1, "frames"    # [B
    .param p2, "frameRate"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Animator;->frames:[B

    .line 38
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/globalfun/adventuretime/free/Animator;->numFrames:I

    .line 40
    invoke-virtual {p0, p2, v1}, Lcom/globalfun/adventuretime/free/Animator;->start(II)V

    .line 41
    return-void

    .line 38
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public setLoops(I)V
    .locals 2
    .param p1, "l"    # I

    .prologue
    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/globalfun/adventuretime/free/Animator;->loops:I

    .line 64
    iput p1, p0, Lcom/globalfun/adventuretime/free/Animator;->targetLoops:I

    .line 66
    iget v1, p0, Lcom/globalfun/adventuretime/free/Animator;->numFrames:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/globalfun/adventuretime/free/Animator;->complete:Z

    .line 67
    return-void
.end method

.method public start(II)V
    .locals 2
    .param p1, "frameRate"    # I
    .param p2, "numLoops"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    iput p1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameRate:I

    .line 47
    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Animator;->frames:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/globalfun/adventuretime/free/Animator;->frames:[B

    aget-byte v0, v0, v1

    :goto_0
    iput v0, p0, Lcom/globalfun/adventuretime/free/Animator;->frame:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/globalfun/adventuretime/free/Animator;->frameHit:I

    .line 50
    iput v1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameIndex:I

    .line 51
    iput p1, p0, Lcom/globalfun/adventuretime/free/Animator;->frameDelay:I

    .line 53
    invoke-virtual {p0, p2}, Lcom/globalfun/adventuretime/free/Animator;->setLoops(I)V

    .line 54
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method
