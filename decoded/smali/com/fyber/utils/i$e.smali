.class final Lcom/fyber/utils/i$e;
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
    name = "e"
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
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
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
    .line 307
    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/i$e;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/i$e;->a:Ljava/util/Map;

    .line 311
    iget-object v0, p0, Lcom/fyber/utils/i$e;->a:Ljava/util/Map;

    const-string v1, "screen_width"

    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/i;->a(Lcom/fyber/utils/i;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/fyber/utils/i$e;->a:Ljava/util/Map;

    const-string v1, "screen_height"

    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/i;->b(Lcom/fyber/utils/i;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/fyber/utils/i$e;->a:Ljava/util/Map;

    const-string v1, "screen_density_x"

    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/i;->c(Lcom/fyber/utils/i;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/fyber/utils/i$e;->a:Ljava/util/Map;

    const-string v1, "screen_density_y"

    invoke-static {}, Lcom/fyber/utils/i;->h()Lcom/fyber/utils/i;

    move-result-object v2

    invoke-static {v2}, Lcom/fyber/utils/i;->d(Lcom/fyber/utils/i;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/fyber/utils/i$e;->a:Ljava/util/Map;

    goto :goto_0
.end method
