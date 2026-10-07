.class public final Lcom/fyber/cache/internal/c;
.super Ljava/lang/Object;
.source "CacheEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fyber/cache/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 38
    iput-object p1, p0, Lcom/fyber/cache/internal/c;->a:Ljava/io/File;

    .line 39
    iput-object p2, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/fyber/cache/internal/c;->c:I

    .line 41
    invoke-direct {p0}, Lcom/fyber/cache/internal/c;->h()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    .line 35
    iput v0, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 45
    new-instance v1, Ljava/io/File;

    const-string v2, "local_file"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fyber/cache/internal/c;->a:Ljava/io/File;

    .line 46
    const-string v1, "remote_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    .line 47
    const-string v1, "download_state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fyber/cache/internal/c;->c:I

    .line 48
    const-string v1, "retries"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 49
    const-string v1, "created_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fyber/cache/internal/c;->e:J

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    .line 51
    const-string v1, "video_entries"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 54
    :goto_0
    if-ge v0, v2, :cond_0

    .line 55
    new-instance v3, Lcom/fyber/cache/internal/h;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fyber/cache/internal/h;-><init>(Lorg/json/JSONObject;)V

    .line 56
    iget-object v4, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/cache/internal/c;->e:J

    .line 104
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->a:Ljava/io/File;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 74
    iput p1, p0, Lcom/fyber/cache/internal/c;->c:I

    .line 75
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    iget v0, p0, Lcom/fyber/cache/internal/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 78
    :cond_0
    return-void
.end method

.method public final a(Lcom/fyber/cache/internal/h;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    invoke-direct {p0}, Lcom/fyber/cache/internal/c;->h()V

    .line 95
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/fyber/cache/internal/c;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/fyber/cache/internal/c;->f:I

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 86
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 125
    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/fyber/cache/internal/c;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fyber/cache/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/fyber/cache/internal/c;->e:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 112
    const-string v0, ","

    iget-object v1, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "{\"local_file\":\"%s\", \"remote_url\":\"%s\",\"download_state\":%d,\"created_at\":%d,\"retries\":%d,\"video_entries\":[%s]}"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fyber/cache/internal/c;->a:Ljava/io/File;

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/fyber/cache/internal/c;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Lcom/fyber/cache/internal/c;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/fyber/cache/internal/c;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    .line 113
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
