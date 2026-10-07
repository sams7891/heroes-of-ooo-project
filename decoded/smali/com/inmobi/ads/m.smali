.class Lcom/inmobi/ads/m;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/inmobi/ads/t;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/s",
            "<",
            "Lcom/inmobi/ads/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/inmobi/ads/m$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lcom/inmobi/ads/t$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private h:Lcom/inmobi/ads/t$d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/inmobi/ads/b$f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/b$f;)V
    .locals 7

    .prologue
    .line 51
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/inmobi/ads/t$b;

    invoke-direct {v3}, Lcom/inmobi/ads/t$b;-><init>()V

    new-instance v4, Lcom/inmobi/ads/t;

    invoke-direct {v4, p1}, Lcom/inmobi/ads/t;-><init>(Lcom/inmobi/ads/b$f;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/m;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/t$b;Lcom/inmobi/ads/t;Landroid/os/Handler;Lcom/inmobi/ads/b$f;)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/t$b;Lcom/inmobi/ads/t;Landroid/os/Handler;Lcom/inmobi/ads/b$f;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/t$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/ads/b$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/o;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/s",
            "<",
            "Lcom/inmobi/ads/o;",
            ">;>;",
            "Lcom/inmobi/ads/t$b;",
            "Lcom/inmobi/ads/t;",
            "Landroid/os/Handler;",
            "Lcom/inmobi/ads/b$f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/inmobi/ads/m;->c:Ljava/util/Map;

    .line 66
    iput-object p2, p0, Lcom/inmobi/ads/m;->d:Ljava/util/Map;

    .line 67
    iput-object p3, p0, Lcom/inmobi/ads/m;->g:Lcom/inmobi/ads/t$b;

    .line 68
    iput-object p4, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/t;

    .line 69
    iput-object p6, p0, Lcom/inmobi/ads/m;->i:Lcom/inmobi/ads/b$f;

    .line 71
    new-instance v0, Lcom/inmobi/ads/m$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/m$1;-><init>(Lcom/inmobi/ads/m;)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->h:Lcom/inmobi/ads/t$d;

    .line 100
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/t;

    iget-object v1, p0, Lcom/inmobi/ads/m;->h:Lcom/inmobi/ads/t$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/t;->a(Lcom/inmobi/ads/t$d;)V

    .line 102
    iput-object p5, p0, Lcom/inmobi/ads/m;->e:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/inmobi/ads/m$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/m$a;-><init>(Lcom/inmobi/ads/m;)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->f:Lcom/inmobi/ads/m$a;

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/m;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/m;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/m;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/m;->d:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inmobi/ads/m;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/b$f;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/m;->i:Lcom/inmobi/ads/b$f;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/t$b;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/m;->g:Lcom/inmobi/ads/t$b;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/m;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lcom/inmobi/ads/m;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->a()V

    .line 136
    iget-object v0, p0, Lcom/inmobi/ads/m;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/inmobi/ads/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0, p1}, Lcom/inmobi/ads/m;->b(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/t;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/t;->a(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method a(Landroid/view/View;Lcom/inmobi/ads/o;)V
    .locals 2
    .param p2    # Lcom/inmobi/ads/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iget-object v0, p0, Lcom/inmobi/ads/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/m;->a(Landroid/view/View;)V

    .line 118
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p2}, Lcom/inmobi/ads/o;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/m;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/t;

    iget-object v1, p0, Lcom/inmobi/ads/m;->i:Lcom/inmobi/ads/b$f;

    invoke-virtual {v1}, Lcom/inmobi/ads/b$f;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/t;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->a()V

    .line 142
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->b()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/m;->h:Lcom/inmobi/ads/t$d;

    .line 144
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/inmobi/ads/m;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/m;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/m;->f:Lcom/inmobi/ads/m$a;

    iget-object v2, p0, Lcom/inmobi/ads/m;->i:Lcom/inmobi/ads/b$f;

    invoke-virtual {v2}, Lcom/inmobi/ads/b$f;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
