.class Lcom/inmobi/ads/m$a;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/m;

.field private final b:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/m;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/inmobi/ads/m$a;->a:Lcom/inmobi/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/ArrayList;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Lcom/inmobi/ads/m;

    invoke-static {v0}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/s;

    .line 176
    iget-object v3, p0, Lcom/inmobi/ads/m$a;->a:Lcom/inmobi/ads/m;

    invoke-static {v3}, Lcom/inmobi/ads/m;->d(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/t$b;

    move-result-object v3

    iget-wide v4, v0, Lcom/inmobi/ads/s;->b:J

    iget-object v6, p0, Lcom/inmobi/ads/m$a;->a:Lcom/inmobi/ads/m;

    invoke-static {v6}, Lcom/inmobi/ads/m;->c(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/b$f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/b$f;->b()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/inmobi/ads/t$b;->a(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    iget-object v0, v0, Lcom/inmobi/ads/s;->a:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Lcom/inmobi/ads/o;->A()V

    .line 185
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 189
    iget-object v2, p0, Lcom/inmobi/ads/m$a;->a:Lcom/inmobi/ads/m;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/m;->a(Landroid/view/View;)V

    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Lcom/inmobi/ads/m;

    invoke-static {v0}, Lcom/inmobi/ads/m;->b(Lcom/inmobi/ads/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->c()V

    .line 196
    :cond_3
    return-void
.end method
