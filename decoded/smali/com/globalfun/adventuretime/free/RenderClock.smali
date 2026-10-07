.class public final Lcom/globalfun/adventuretime/free/RenderClock;
.super Ljava/lang/Object;
.field public static elapsed:I = 0x46

.method public static blend(II)I
    .locals 2
    sub-int v0, p1, p0
    sget v1, Lcom/globalfun/adventuretime/free/RenderClock;->elapsed:I
    mul-int/2addr v0, v1
    div-int/lit8 v0, v0, 0x46
    add-int/2addr v0, p0
    return v0
.end method
