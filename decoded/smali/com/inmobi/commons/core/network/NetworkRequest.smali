.class public Lcom/inmobi/commons/core/network/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

.field private f:Ljava/lang/String;

.field private g:Lcom/inmobi/commons/core/utilities/uid/d;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:[B

.field private m:[B

.field private n:Z

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 3

    .prologue
    const v2, 0xea60

    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    .line 33
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    .line 34
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    .line 35
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    .line 41
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    .line 49
    iput-object p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    .line 50
    iput-object p2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Z

    .line 52
    iput-object p4, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 55
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 191
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v3

    .line 192
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    .line 193
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a/b;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    .line 194
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 196
    new-instance v7, Lcom/inmobi/commons/core/configs/f;

    invoke-direct {v7}, Lcom/inmobi/commons/core/configs/f;-><init>()V

    .line 197
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 199
    iget-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->e()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/core/utilities/a/b;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string v1, "sm"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "sn"

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "&"

    invoke-static {v6, v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/a;->a()Lcom/inmobi/commons/core/utilities/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 179
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 181
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/d;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/d;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    .line 60
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    .line 72
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    .line 162
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    .line 150
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    .line 166
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method protected e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 209
    :cond_0
    const-string v0, ""

    .line 219
    :cond_1
    :goto_0
    return-object v0

    .line 212
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    iget-object v3, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/a/b;->a([B[B[B)[B

    move-result-object v1

    .line 216
    if-eqz v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    return-wide v0
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 92
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->k()Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_2
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 125
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 133
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post body url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypted post body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    return v0
.end method

.method public n()Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Z

    return v0
.end method
