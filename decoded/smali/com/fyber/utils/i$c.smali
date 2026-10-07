.class final Lcom/fyber/utils/i$c;
.super Ljava/lang/Object;
.source "HostInfo.java"

# interfaces
.implements Lcom/fyber/utils/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/Map;
    .locals 4
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
    .line 343
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 354
    :goto_0
    monitor-exit p0

    return-object v0

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/fyber/utils/i$c;->a:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/i$c;->a:Ljava/util/Map;

    .line 347
    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/i;->e(Lcom/fyber/utils/i;)Ljava/lang/String;

    move-result-object v0

    .line 348
    if-nez v0, :cond_1

    .line 349
    iget-object v1, p0, Lcom/fyber/utils/i$c;->a:Ljava/util/Map;

    const-string v2, "android_id"

    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fyber/utils/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/fyber/utils/i$c;->a:Ljava/util/Map;

    const-string v2, "google_ad_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/fyber/utils/i$c;->a:Ljava/util/Map;

    const-string v1, "google_ad_id_limited_tracking_enabled"

    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/i;->f(Lcom/fyber/utils/i;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/fyber/utils/i$c;->a:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
