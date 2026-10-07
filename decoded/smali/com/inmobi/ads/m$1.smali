.class Lcom/inmobi/ads/m$1;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Lcom/inmobi/ads/t$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/m;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/t$b;Lcom/inmobi/ads/t;Landroid/os/Handler;Lcom/inmobi/ads/b$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/m;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/m;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-static {v1}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/o;

    .line 79
    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/m;->a(Landroid/view/View;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-static {v2}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/s;

    .line 86
    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/inmobi/ads/s;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-static {v2}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lcom/inmobi/ads/s;

    invoke-direct {v4, v1}, Lcom/inmobi/ads/s;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 95
    iget-object v2, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-static {v2}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/m$1;->a:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->c()V

    .line 98
    return-void
.end method
