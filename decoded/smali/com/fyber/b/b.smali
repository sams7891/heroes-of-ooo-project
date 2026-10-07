.class public abstract Lcom/fyber/b/b;
.super Lcom/fyber/b/n;
.source "AdRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/ads/a/b",
        "<TV;>;>",
        "Lcom/fyber/b/n",
        "<",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fyber/utils/t;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/fyber/utils/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fyber/b/n;-><init>(Lcom/fyber/utils/t;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/b/b;->a:Z

    .line 37
    iput-object p2, p0, Lcom/fyber/b/b;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(Lcom/fyber/ads/a/b;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fyber/ads/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {p0}, Lcom/fyber/b/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method private b(Lcom/fyber/utils/k;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/k;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 42
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/fyber/utils/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    iget-boolean v1, p0, Lcom/fyber/b/b;->a:Z

    if-eqz v1, :cond_5

    .line 51
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->a()Lcom/fyber/utils/i;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/fyber/utils/i;->b()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v1}, Lcom/fyber/utils/i;->c()I

    move-result v1

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/fyber/b/b;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Parsing ads response\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v0, "ads"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v6, v2

    .line 60
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 61
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 62
    const-string v0, "provider_type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v9, "ad_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual {p0, v0, v9}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;

    move-result-object v9

    .line 67
    const-string v0, "tracking_params"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    invoke-direct {p0, v9, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/a/b;Lorg/json/JSONObject;)V

    .line 70
    invoke-virtual {v8}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v10

    move v0, v2

    .line 71
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_1

    .line 72
    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 73
    const-string v12, "ad_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "provider_type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "tracking_params"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 74
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/fyber/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 78
    :cond_1
    iget-boolean v0, p0, Lcom/fyber/b/b;->a:Z

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v9}, Lcom/fyber/ads/a/b;->c()Ljava/util/Map;

    move-result-object v0

    const-string v8, "orientation"

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const-string v0, "orientation"

    invoke-virtual {v9, v0, v3}, Lcom/fyber/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;

    .line 83
    :cond_2
    const-string v0, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Lcom/fyber/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;

    .line 86
    :cond_3
    invoke-virtual {v5, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {p0}, Lcom/fyber/b/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    invoke-virtual {p0}, Lcom/fyber/b/b;->b()V

    .line 97
    :goto_3
    return-object v4

    .line 96
    :cond_4
    invoke-virtual {p0, v5}, Lcom/fyber/b/b;->a(Ljava/util/List;)V

    move-object v4, v5

    .line 97
    goto :goto_3

    :cond_5
    move v1, v2

    move-object v3, v4

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/a/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method

.method protected final synthetic a(Lcom/fyber/utils/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/fyber/b/b;->b(Lcom/fyber/utils/k;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TV;>;)V"
        }
    .end annotation
.end method

.method protected abstract b()V
.end method
