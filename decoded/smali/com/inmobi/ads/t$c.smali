.class Lcom/inmobi/ads/t$c;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/t;

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

.field private final c:Ljava/util/ArrayList;
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
.method constructor <init>(Lcom/inmobi/ads/t;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/inmobi/ads/t$c;->a:Lcom/inmobi/ads/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/t$c;->c:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/t$c;->b:Ljava/util/ArrayList;

    .line 170
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->a:Lcom/inmobi/ads/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/t;->a(Lcom/inmobi/ads/t;Z)Z

    .line 175
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->a:Lcom/inmobi/ads/t;

    invoke-static {v0}, Lcom/inmobi/ads/t;->a(Lcom/inmobi/ads/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t$a;

    iget v0, v0, Lcom/inmobi/ads/t$a;->a:I

    .line 179
    iget-object v3, p0, Lcom/inmobi/ads/t$c;->a:Lcom/inmobi/ads/t;

    invoke-static {v3}, Lcom/inmobi/ads/t;->b(Lcom/inmobi/ads/t;)Lcom/inmobi/ads/t$b;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/inmobi/ads/t$b;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->a:Lcom/inmobi/ads/t;

    invoke-static {v0}, Lcom/inmobi/ads/t;->c(Lcom/inmobi/ads/t;)Lcom/inmobi/ads/t$d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->a:Lcom/inmobi/ads/t;

    invoke-static {v0}, Lcom/inmobi/ads/t;->c(Lcom/inmobi/ads/t;)Lcom/inmobi/ads/t$d;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/t$c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/inmobi/ads/t$c;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/t$d;->a(Ljava/util/List;Ljava/util/List;)V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v0, p0, Lcom/inmobi/ads/t$c;->a:Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->c()V

    .line 195
    return-void
.end method
