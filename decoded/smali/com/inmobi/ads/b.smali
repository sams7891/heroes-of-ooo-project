.class public final Lcom/inmobi/ads/b;
.super Lcom/inmobi/commons/core/configs/a;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/b$d;,
        Lcom/inmobi/ads/b$f;,
        Lcom/inmobi/ads/b$c;,
        Lcom/inmobi/ads/b$e;,
        Lcom/inmobi/ads/b$b;,
        Lcom/inmobi/ads/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/inmobi/ads/b$a;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/inmobi/ads/b$b;

.field private k:Lcom/inmobi/ads/b$e;

.field private l:Lcom/inmobi/ads/b$c;

.field private m:Lcom/inmobi/ads/b$f;

.field private n:Lorg/json/JSONObject;

.field private o:Lcom/inmobi/ads/b$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/inmobi/ads/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/b;->a:Ljava/lang/String;

    .line 27
    const-string v0, "production"

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://i.w.inmobi.com/showad.asm"

    :goto_0
    sput-object v0, Lcom/inmobi/ads/b;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/b;->c:Ljava/lang/Object;

    return-void

    .line 27
    :cond_0
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x3c

    .line 75
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 62
    sget-object v0, Lcom/inmobi/ads/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    .line 63
    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/ads/b;->e:I

    .line 64
    iput v1, p0, Lcom/inmobi/ads/b;->f:I

    .line 65
    iput v1, p0, Lcom/inmobi/ads/b;->g:I

    .line 76
    new-instance v0, Lcom/inmobi/ads/b$b;

    invoke-direct {v0}, Lcom/inmobi/ads/b$b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    .line 77
    new-instance v0, Lcom/inmobi/ads/b$e;

    invoke-direct {v0}, Lcom/inmobi/ads/b$e;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    .line 78
    new-instance v0, Lcom/inmobi/ads/b$c;

    invoke-direct {v0}, Lcom/inmobi/ads/b$c;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    .line 79
    new-instance v0, Lcom/inmobi/ads/b$f;

    invoke-direct {v0}, Lcom/inmobi/ads/b$f;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    .line 80
    new-instance v0, Lcom/inmobi/ads/b$d;

    invoke-direct {v0}, Lcom/inmobi/ads/b$d;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/ads/b;->p()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/b;->b(Lorg/json/JSONObject;)V

    .line 84
    invoke-direct {p0}, Lcom/inmobi/ads/b;->q()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/b;->a:Ljava/lang/String;

    const-string v3, "Default config provided for ads is invalid."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/inmobi/ads/b$a;

    invoke-direct {v1}, Lcom/inmobi/ads/b$a;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    .line 159
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    const-string v2, "maxCacheSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$a;->a(Lcom/inmobi/ads/b$a;I)I

    .line 160
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    const-string v2, "fetchLimit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$a;->b(Lcom/inmobi/ads/b$a;I)I

    .line 161
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    const-string v2, "minThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$a;->c(Lcom/inmobi/ads/b$a;I)I

    .line 162
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    const-string v2, "timeToLive"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/ads/b$a;->a(Lcom/inmobi/ads/b$a;J)J

    .line 164
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/b;->i:Ljava/util/Map;

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 168
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 171
    new-instance v5, Lcom/inmobi/ads/b$a;

    invoke-direct {v5}, Lcom/inmobi/ads/b$a;-><init>()V

    .line 173
    const-string v1, "maxCacheSize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "maxCacheSize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-static {v5, v1}, Lcom/inmobi/ads/b$a;->a(Lcom/inmobi/ads/b$a;I)I

    .line 174
    const-string v1, "fetchLimit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fetchLimit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    invoke-static {v5, v1}, Lcom/inmobi/ads/b$a;->b(Lcom/inmobi/ads/b$a;I)I

    .line 175
    const-string v1, "minThreshold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "minThreshold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    invoke-static {v5, v1}, Lcom/inmobi/ads/b$a;->c(Lcom/inmobi/ads/b$a;I)I

    .line 176
    const-string v1, "timeToLive"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "timeToLive"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    :goto_4
    invoke-static {v5, v2, v3}, Lcom/inmobi/ads/b$a;->a(Lcom/inmobi/ads/b$a;J)J

    .line 177
    iget-object v1, p0, Lcom/inmobi/ads/b;->i:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-static {v1}, Lcom/inmobi/ads/b$a;->a(Lcom/inmobi/ads/b$a;)I

    move-result v1

    goto :goto_1

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-static {v1}, Lcom/inmobi/ads/b$a;->b(Lcom/inmobi/ads/b$a;)I

    move-result v1

    goto :goto_2

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-static {v1}, Lcom/inmobi/ads/b$a;->c(Lcom/inmobi/ads/b$a;)I

    move-result v1

    goto :goto_3

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-static {v1}, Lcom/inmobi/ads/b$a;->d(Lcom/inmobi/ads/b$a;)J

    move-result-wide v2

    goto :goto_4

    .line 179
    :cond_4
    return-void
.end method

.method private p()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xce4

    const/4 v4, 0x0

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    const-string v2, "maxCacheSize"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string v2, "fetchLimit"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string v2, "minThreshold"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v2, "timeToLive"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v2, "base"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v2, "maxCacheSize"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string v2, "fetchLimit"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v2, "minThreshold"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "timeToLive"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v2, "native"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    return-object v0
.end method

.method private q()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 57
    const-string v1, "samplingFactor"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v1, "metricEnabled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    return-object v0
.end method

.method private r()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 246
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    const-string v1, "maxCacheSize"

    iget-object v3, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$a;->b()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v1, "fetchLimit"

    iget-object v3, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$a;->c()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    const-string v1, "minThreshold"

    iget-object v3, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$a;->d()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    const-string v1, "timeToLive"

    iget-object v3, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$a;->e()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    const-string v1, "base"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    iget-object v0, p0, Lcom/inmobi/ads/b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/b$a;

    .line 258
    const-string v5, "maxCacheSize"

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->b()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    const-string v5, "fetchLimit"

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->c()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    const-string v5, "minThreshold"

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->d()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v5, "timeToLive"

    invoke-virtual {v1}, Lcom/inmobi/ads/b$a;->e()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 264
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/inmobi/ads/b$a;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/inmobi/ads/b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b$a;

    .line 351
    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    .line 354
    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "ads"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 99
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    .line 102
    :cond_0
    const-string v0, "minimumRefreshInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b;->e:I

    .line 103
    const-string v0, "defaultRefreshInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b;->f:I

    .line 104
    const-string v0, "fetchTimeout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b;->g:I

    .line 106
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/inmobi/ads/b;->b(Lorg/json/JSONObject;)V

    .line 109
    const-string v0, "imai"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$b;->a(Lcom/inmobi/ads/b$b;I)I

    .line 111
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    const-string v2, "pingInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$b;->b(Lcom/inmobi/ads/b$b;I)I

    .line 112
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    const-string v2, "pingTimeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$b;->c(Lcom/inmobi/ads/b$b;I)I

    .line 113
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    const-string v2, "maxDbEvents"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$b;->d(Lcom/inmobi/ads/b$b;I)I

    .line 114
    iget-object v1, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    const-string v2, "maxEventBatch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/inmobi/ads/b$b;->e(Lcom/inmobi/ads/b$b;I)I

    .line 116
    const-string v0, "rendering"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "renderTimeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$e;->a(Lcom/inmobi/ads/b$e;I)I

    .line 118
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "picHeight"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$e;->b(Lcom/inmobi/ads/b$e;I)I

    .line 119
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "picWidth"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$e;->c(Lcom/inmobi/ads/b$e;I)I

    .line 120
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "picQuality"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$e;->d(Lcom/inmobi/ads/b$e;I)I

    .line 121
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "webviewBackground"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$e;->a(Lcom/inmobi/ads/b$e;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "maxVibrationDuration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$e;->e(Lcom/inmobi/ads/b$e;I)I

    .line 123
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "maxVibrationPatternLength"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$e;->f(Lcom/inmobi/ads/b$e;I)I

    .line 124
    iget-object v1, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    const-string v2, "savecontent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "maxSaveSize"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/ads/b$e;->a(Lcom/inmobi/ads/b$e;J)J

    .line 125
    sget-object v1, Lcom/inmobi/ads/b;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-static {v2}, Lcom/inmobi/ads/b$e;->a(Lcom/inmobi/ads/b$e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 127
    const-string v2, "savecontent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "allowedContentType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 128
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-static {v3}, Lcom/inmobi/ads/b$e;->a(Lcom/inmobi/ads/b$e;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    const-string v0, "mraid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    const-string v2, "expiry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/ads/b$c;->a(Lcom/inmobi/ads/b$c;J)J

    .line 135
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$c;->a(Lcom/inmobi/ads/b$c;I)I

    .line 136
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$c;->b(Lcom/inmobi/ads/b$c;I)I

    .line 137
    iget-object v1, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/ads/b$c;->a(Lcom/inmobi/ads/b$c;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    const-string v0, "telemetry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "telemetry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    .line 142
    :cond_2
    const-string v0, "viewability"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    const-string v2, "impressionMinPercentageViewed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$f;->a(Lcom/inmobi/ads/b$f;I)I

    .line 144
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    const-string v2, "impressionMinTimeViewed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$f;->b(Lcom/inmobi/ads/b$f;I)I

    .line 145
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    const-string v2, "visibilityThrottleMillis"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$f;->c(Lcom/inmobi/ads/b$f;I)I

    .line 146
    iget-object v1, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    const-string v2, "impressionPollIntervalMillis"

    const/16 v3, 0xfa

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/inmobi/ads/b$f;->d(Lcom/inmobi/ads/b$f;I)I

    .line 148
    const-string v0, "preload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    const-string v1, "base"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/b$d;->a(Lcom/inmobi/ads/b$d;Z)Z

    .line 151
    iget-object v1, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    const-string v2, "placementExpiry"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/ads/b$d;->a(Lcom/inmobi/ads/b$d;J)J

    .line 152
    iget-object v1, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    const-string v2, "maxPreloadedAds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/inmobi/ads/b$d;->a(Lcom/inmobi/ads/b$d;I)I

    .line 154
    return-void

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    const-string v1, "url"

    iget-object v2, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v1, "minimumRefreshInterval"

    iget v2, p0, Lcom/inmobi/ads/b;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v1, "defaultRefreshInterval"

    iget v2, p0, Lcom/inmobi/ads/b;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v1, "fetchTimeout"

    iget v2, p0, Lcom/inmobi/ads/b;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    invoke-direct {p0}, Lcom/inmobi/ads/b;->r()Lorg/json/JSONObject;

    move-result-object v1

    .line 191
    const-string v2, "cache"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    const-string v2, "pingInterval"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v2, "pingTimeout"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v2, "maxDbEvents"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string v2, "maxEventBatch"

    iget-object v3, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$b;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v2, "imai"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 202
    const-string v2, "renderTimeout"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$e;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string v2, "picWidth"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$e;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v2, "picHeight"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$e;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string v2, "picQuality"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$e;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 206
    const-string v2, "webviewBackground"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-static {v3}, Lcom/inmobi/ads/b$e;->b(Lcom/inmobi/ads/b$e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v2, "maxVibrationDuration"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$e;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v2, "maxVibrationPatternLength"

    iget-object v3, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$e;->f()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 210
    const-string v3, "maxSaveSize"

    iget-object v4, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v4}, Lcom/inmobi/ads/b$e;->g()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 211
    const-string v3, "allowedContentType"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v5}, Lcom/inmobi/ads/b$e;->h()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v3, "savecontent"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v2, "rendering"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    const-string v2, "expiry"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$c;->a()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$c;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string v2, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$c;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v2, "url"

    iget-object v3, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v2, "mraid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    const-string v2, "impressionMinPercentageViewed"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$f;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v2, "impressionMinTimeViewed"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$f;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string v2, "visibilityThrottleMillis"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$f;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v2, "impressionPollIntervalMillis"

    iget-object v3, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/b$f;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v2, "viewability"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 230
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 231
    const-string v3, "enabled"

    iget-object v4, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    invoke-virtual {v4}, Lcom/inmobi/ads/b$d;->b()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 232
    const-string v3, "placementExpiry"

    iget-object v4, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    invoke-virtual {v4}, Lcom/inmobi/ads/b$d;->a()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    const-string v3, "maxPreloadedAds"

    iget-object v4, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    invoke-virtual {v4}, Lcom/inmobi/ads/b$d;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string v3, "base"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v2, "preload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    iget-object v1, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "telemetry"

    iget-object v2, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    :cond_0
    return-object v0
.end method

.method public c()Z
    .locals 7

    .prologue
    const/16 v6, 0x32

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/inmobi/ads/b;->e:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/inmobi/ads/b;->f:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/inmobi/ads/b;->g:I

    if-gtz v0, :cond_2

    :cond_1
    move v0, v1

    .line 324
    :goto_0
    return v0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/b;->h:Lcom/inmobi/ads/b$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 274
    goto :goto_0

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 279
    goto :goto_0

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->d()I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->e()I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->a()I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->b()I

    move-result v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$b;->c()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_7
    move v0, v1

    .line 285
    goto :goto_0

    .line 288
    :cond_8
    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->a()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->c()I

    move-result v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->b()I

    move-result v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move v0, v1

    .line 290
    goto/16 :goto_0

    .line 293
    :cond_a
    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->i()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->b()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->a()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->c()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->e()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->f()I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->g()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-static {v0}, Lcom/inmobi/ads/b$e;->b(Lcom/inmobi/ads/b$e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-static {v0}, Lcom/inmobi/ads/b$e;->b(Lcom/inmobi/ads/b$e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    move v0, v1

    .line 296
    goto/16 :goto_0

    .line 300
    :cond_c
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    iget-object v2, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    invoke-static {v2}, Lcom/inmobi/ads/b$e;->b(Lcom/inmobi/ads/b$e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/inmobi/ads/b$e;->g(Lcom/inmobi/ads/b$e;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->b()I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->c()I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    move v0, v1

    .line 307
    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/b;->a:Ljava/lang/String;

    const-string v4, "Webview color specified in config is invalid."

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 303
    goto/16 :goto_0

    .line 310
    :cond_e
    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->a()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->a()I

    move-result v0

    const/16 v2, 0x64

    if-gt v0, v2, :cond_f

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->b()I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->c()I

    move-result v0

    if-lt v0, v6, :cond_f

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v2}, Lcom/inmobi/ads/b$f;->b()I

    move-result v2

    if-gt v0, v2, :cond_f

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->d()I

    move-result v0

    if-lt v0, v6, :cond_f

    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/b$f;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    invoke-virtual {v2}, Lcom/inmobi/ads/b$f;->b()I

    move-result v2

    if-le v0, v2, :cond_10

    :cond_f
    move v0, v1

    .line 317
    goto/16 :goto_0

    .line 320
    :cond_10
    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    invoke-static {v0}, Lcom/inmobi/ads/b$d;->a(Lcom/inmobi/ads/b$d;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    invoke-static {v0}, Lcom/inmobi/ads/b$d;->b(Lcom/inmobi/ads/b$d;)I

    move-result v0

    if-gtz v0, :cond_12

    :cond_11
    move v0, v1

    .line 321
    goto/16 :goto_0

    .line 324
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/inmobi/ads/b;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/inmobi/ads/b;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/inmobi/ads/b;->g:I

    return v0
.end method

.method public i()Lcom/inmobi/ads/b$b;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Lcom/inmobi/ads/b$b;

    return-object v0
.end method

.method public j()Lcom/inmobi/ads/b$e;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$e;

    return-object v0
.end method

.method public k()Lcom/inmobi/ads/b$c;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$c;

    return-object v0
.end method

.method public l()Lcom/inmobi/ads/b$f;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$f;

    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    return-object v0
.end method

.method public n()Lcom/inmobi/ads/b$d;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$d;

    return-object v0
.end method
