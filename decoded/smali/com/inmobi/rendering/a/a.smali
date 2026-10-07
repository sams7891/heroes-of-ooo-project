.class final Lcom/inmobi/rendering/a/a;
.super Ljava/lang/Object;
.source "Click.java"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:J

.field d:I

.field e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZIJ)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/inmobi/rendering/a/a;->a:I

    .line 24
    iput-object p2, p0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    .line 25
    iput-wide p6, p0, Lcom/inmobi/rendering/a/a;->c:J

    .line 26
    iput p5, p0, Lcom/inmobi/rendering/a/a;->d:I

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    iput-boolean p3, p0, Lcom/inmobi/rendering/a/a;->g:Z

    .line 29
    iput-boolean p4, p0, Lcom/inmobi/rendering/a/a;->f:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 8

    .prologue
    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/rendering/a/a;-><init>(ILjava/lang/String;ZZIJ)V

    .line 20
    return-void
.end method
