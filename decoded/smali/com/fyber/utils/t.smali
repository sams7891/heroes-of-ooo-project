.class public final Lcom/fyber/utils/t;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fyber/utils/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/fyber/a/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2007
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 2008
    const/4 v1, 0x6

    new-instance v2, Lcom/fyber/utils/h;

    invoke-direct {v2}, Lcom/fyber/utils/h;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2009
    const/4 v1, 0x3

    new-instance v2, Lcom/fyber/utils/i$e;

    invoke-direct {v2}, Lcom/fyber/utils/i$e;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2010
    const/4 v1, 0x4

    new-instance v2, Lcom/fyber/utils/i$d;

    invoke-direct {v2}, Lcom/fyber/utils/i$d;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2011
    const/4 v1, 0x5

    new-instance v2, Lcom/fyber/utils/i$c;

    invoke-direct {v2}, Lcom/fyber/utils/i$c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2012
    const/4 v1, 0x2

    new-instance v2, Lcom/fyber/utils/i$b;

    invoke-direct {v2}, Lcom/fyber/utils/i$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2013
    const/4 v1, 0x1

    new-instance v2, Lcom/fyber/utils/i$a;

    invoke-direct {v2}, Lcom/fyber/utils/i$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2014
    const/4 v1, 0x0

    new-instance v2, Lcom/fyber/utils/p;

    invoke-direct {v2}, Lcom/fyber/utils/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sput-object v0, Lcom/fyber/utils/t;->a:Landroid/util/SparseArray;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/fyber/a/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/fyber/utils/t;->g:Z

    .line 57
    iput-boolean v1, p0, Lcom/fyber/utils/t;->h:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/t;->i:Z

    .line 60
    iput-boolean v1, p0, Lcom/fyber/utils/t;->j:Z

    .line 61
    iput-boolean v1, p0, Lcom/fyber/utils/t;->k:Z

    .line 63
    iput-boolean v1, p0, Lcom/fyber/utils/t;->l:Z

    .line 64
    iput-boolean v1, p0, Lcom/fyber/utils/t;->m:Z

    .line 67
    iput-object p1, p0, Lcom/fyber/utils/t;->b:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/fyber/utils/t;->c:Lcom/fyber/a/a;

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/t;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/fyber/utils/t;

    invoke-direct {v0, p0, p1}, Lcom/fyber/utils/t;-><init>(Ljava/lang/String;Lcom/fyber/a/a;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 213
    sget-object v0, Lcom/fyber/utils/t;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/o;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/fyber/utils/o;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 217
    :cond_0
    return-void
.end method

.method private g()Ljava/util/Map;
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
    .line 220
    iget-object v0, p0, Lcom/fyber/utils/t;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/t;->f:Ljava/util/Map;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/t;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/fyber/utils/t;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/t;->g:Z

    .line 87
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/utils/t;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fyber/utils/t;->d:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/t;
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/fyber/utils/t;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/fyber/utils/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/utils/t;"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/fyber/utils/t;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 75
    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/fyber/utils/t;
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/fyber/utils/t;->i:Z

    .line 97
    return-object p0
.end method

.method public final b()Lcom/fyber/utils/t;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/t;->h:Z

    .line 92
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/fyber/utils/t;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fyber/utils/t;->e:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final c()Lcom/fyber/utils/t;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/fyber/utils/t;->k:Z

    .line 108
    iput-boolean v0, p0, Lcom/fyber/utils/t;->j:Z

    .line 109
    return-object p0
.end method

.method public final d()Lcom/fyber/utils/t;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/t;->l:Z

    .line 114
    return-object p0
.end method

.method public final e()Lcom/fyber/utils/t;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/t;->m:Z

    .line 129
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 8

    .prologue
    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/util/Map;I)V

    .line 146
    iget-object v0, p0, Lcom/fyber/utils/t;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/n;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/fyber/utils/t;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    :cond_0
    const-string v0, "appid"

    iget-object v1, p0, Lcom/fyber/utils/t;->c:Lcom/fyber/a/a;

    invoke-virtual {v1}, Lcom/fyber/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-boolean v0, p0, Lcom/fyber/utils/t;->i:Z

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "uid"

    iget-object v1, p0, Lcom/fyber/utils/t;->c:Lcom/fyber/a/a;

    invoke-virtual {v1}, Lcom/fyber/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/util/Map;I)V

    .line 158
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/util/Map;I)V

    .line 160
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/util/Map;I)V

    .line 162
    iget-object v0, p0, Lcom/fyber/utils/t;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "placement_id"

    iget-object v1, p0, Lcom/fyber/utils/t;->e:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_2
    iget-boolean v0, p0, Lcom/fyber/utils/t;->g:Z

    if-eqz v0, :cond_3

    .line 167
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/util/Map;I)V

    .line 170
    :cond_3
    iget-boolean v0, p0, Lcom/fyber/utils/t;->h:Z

    if-eqz v0, :cond_4

    .line 171
    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/util/Map;I)V

    .line 174
    :cond_4
    iget-boolean v0, p0, Lcom/fyber/utils/t;->j:Z

    if-eqz v0, :cond_5

    .line 175
    const-string v0, "timestamp"

    .line 1232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_5
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/fyber/utils/t;->a(Ljava/util/Map;I)V

    .line 180
    iget-object v0, p0, Lcom/fyber/utils/t;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/fyber/utils/t;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/t;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 189
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 182
    :cond_7
    iget-boolean v0, p0, Lcom/fyber/utils/t;->l:Z

    if-eqz v0, :cond_6

    .line 183
    const-string v0, "request_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_8
    const-string v0, ""

    goto :goto_2

    .line 193
    :cond_9
    iget-boolean v0, p0, Lcom/fyber/utils/t;->k:Z

    if-eqz v0, :cond_a

    .line 194
    iget-object v0, p0, Lcom/fyber/utils/t;->c:Lcom/fyber/a/a;

    invoke-virtual {v0}, Lcom/fyber/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 196
    const-string v1, "signature"

    .line 197
    invoke-static {v2, v0}, Lcom/fyber/utils/r;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    :cond_a
    :goto_3
    iget-boolean v0, p0, Lcom/fyber/utils/t;->m:Z

    if-eqz v0, :cond_b

    .line 204
    const-string v0, "http"

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 207
    :cond_b
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_c
    const-string v0, "UrlBuilder"

    const-string v1, "It was impossible to add the signature, the SecretKey has not been provided"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
