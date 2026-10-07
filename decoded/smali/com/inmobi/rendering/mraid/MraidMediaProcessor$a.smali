.class public final Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[I

.field private static f:D


# instance fields
.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;

.field private e:Landroid/media/AudioRecord;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-class v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a:Ljava/lang/String;

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->b:[I

    .line 99
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->f:D

    return-void

    .line 95
    nop

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->g:Ljava/util/List;

    return-void
.end method

.method public static a()D
    .locals 2

    .prologue
    .line 104
    sget-wide v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->f:D

    return-wide v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a:Ljava/lang/String;

    const-string v2, "Start sampling audio levels ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "audioSampler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:Landroid/os/HandlerThread;

    .line 124
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;-><init>(Landroid/os/Looper;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;

    .line 126
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->d()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    .line 128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 129
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 134
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a:Ljava/lang/String;

    const-string v2, "Stop sampling audio levels ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 136
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->h:Z

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->h:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$b;->removeMessages(I)V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 143
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 149
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:Landroid/os/HandlerThread;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:Landroid/os/HandlerThread;

    .line 153
    :cond_1
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid recorder state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Landroid/media/AudioRecord;
    .locals 15

    .prologue
    .line 156
    sget-object v9, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->b:[I

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_3

    aget v2, v9, v8

    .line 157
    const/4 v0, 0x2

    new-array v11, v0, [S

    fill-array-data v11, :array_0

    array-length v12, v11

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v12, :cond_2

    aget-short v4, v11, v7

    .line 158
    const/4 v0, 0x2

    new-array v13, v0, [S

    fill-array-data v13, :array_1

    array-length v14, v13

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-ge v6, v14, :cond_1

    aget-short v3, v13, v6

    .line 159
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 161
    const/4 v0, -0x2

    if-eq v5, v0, :cond_0

    .line 162
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 165
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 172
    :goto_3
    return-object v0

    .line 158
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 157
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 156
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 172
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 157
    :array_0
    .array-data 2
        0x3s
        0x2s
    .end array-data

    .line 158
    :array_1
    .array-data 2
        0x10s
        0xcs
    .end array-data
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    const/16 v0, 0x200

    .line 177
    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-eq v6, v3, :cond_1

    .line 210
    :cond_0
    return-void

    .line 181
    :cond_1
    new-array v4, v0, [S

    .line 183
    new-array v5, v9, [F

    .line 185
    iput-boolean v6, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->h:Z

    .line 186
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 190
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->e:Landroid/media/AudioRecord;

    array-length v3, v4

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v6

    move v3, v1

    move v0, v2

    .line 192
    :goto_0
    if-ge v3, v6, :cond_3

    .line 193
    aget-short v7, v4, v3

    add-int/lit8 v8, v3, 0x1

    aget-short v8, v4, v8

    or-int/2addr v7, v8

    int-to-short v7, v7

    .line 194
    if-eqz v7, :cond_2

    .line 195
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/2addr v7, v6

    int-to-float v7, v7

    add-float/2addr v0, v7

    .line 192
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 199
    :cond_3
    aput v0, v5, v1

    move v0, v1

    move v1, v2

    .line 201
    :goto_1
    if-ge v0, v9, :cond_4

    .line 202
    aget v2, v5, v0

    add-float/2addr v1, v2

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_4
    int-to-float v0, v6

    div-float v0, v1, v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    sput-wide v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->f:D

    .line 205
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;

    .line 206
    if-eqz v0, :cond_5

    .line 207
    sget-wide v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->f:D

    invoke-interface {v0, v2, v3}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;->a(D)V

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->b()V

    .line 112
    :cond_0
    return-void
.end method

.method public b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c()V

    .line 119
    :cond_0
    return-void
.end method
