.class Lcom/inmobi/ads/t;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/t$b;,
        Lcom/inmobi/ads/t$c;,
        Lcom/inmobi/ads/t$a;,
        Lcom/inmobi/ads/t$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
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

.field private c:J

.field private final d:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/inmobi/ads/t$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/inmobi/ads/t$d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/inmobi/ads/t$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final h:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/inmobi/ads/b$f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/t;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/b$f;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/inmobi/ads/t$b;

    invoke-direct {v1}, Lcom/inmobi/ads/t$b;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/inmobi/ads/t;-><init>(Ljava/util/Map;Lcom/inmobi/ads/t$b;Landroid/os/Handler;Lcom/inmobi/ads/b$f;)V

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcom/inmobi/ads/t$b;Landroid/os/Handler;Lcom/inmobi/ads/b$f;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/t$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/b$f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/t$a;",
            ">;",
            "Lcom/inmobi/ads/t$b;",
            "Landroid/os/Handler;",
            "Lcom/inmobi/ads/b$f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/t;->c:J

    .line 77
    iput-object p1, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    .line 78
    iput-object p2, p0, Lcom/inmobi/ads/t;->e:Lcom/inmobi/ads/t$b;

    .line 79
    iput-object p3, p0, Lcom/inmobi/ads/t;->h:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/inmobi/ads/t$c;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/t$c;-><init>(Lcom/inmobi/ads/t;)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->g:Lcom/inmobi/ads/t$c;

    .line 81
    iput-object p4, p0, Lcom/inmobi/ads/t;->j:Lcom/inmobi/ads/b$f;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->b:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/t;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    return-object v0
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

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

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/t$a;

    iget-wide v4, v1, Lcom/inmobi/ads/t$a;->b:J

    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/inmobi/ads/t;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 120
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/t;->a(Landroid/view/View;)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/t;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/inmobi/ads/t;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/t;)Lcom/inmobi/ads/t$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/ads/t;->e:Lcom/inmobi/ads/t$b;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/t;)Lcom/inmobi/ads/t$d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/ads/t;->f:Lcom/inmobi/ads/t$d;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    iget-object v0, p0, Lcom/inmobi/ads/t;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iput-boolean v1, p0, Lcom/inmobi/ads/t;->i:Z

    .line 139
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method a(Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, 0x32

    .line 95
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t$a;

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/inmobi/ads/t$a;

    invoke-direct {v0}, Lcom/inmobi/ads/t$a;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/inmobi/ads/t;->c()V

    .line 101
    :cond_0
    iput p2, v0, Lcom/inmobi/ads/t$a;->a:I

    .line 102
    iget-wide v2, p0, Lcom/inmobi/ads/t;->c:J

    iput-wide v2, v0, Lcom/inmobi/ads/t$a;->b:J

    .line 105
    iget-wide v0, p0, Lcom/inmobi/ads/t;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/ads/t;->c:J

    .line 106
    iget-wide v0, p0, Lcom/inmobi/ads/t;->c:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 107
    iget-wide v0, p0, Lcom/inmobi/ads/t;->c:J

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/t;->a(J)V

    .line 109
    :cond_1
    return-void
.end method

.method a(Lcom/inmobi/ads/t$d;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/t$d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iput-object p1, p0, Lcom/inmobi/ads/t;->f:Lcom/inmobi/ads/t$d;

    .line 88
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/inmobi/ads/t;->a()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/t;->f:Lcom/inmobi/ads/t$d;

    .line 147
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/inmobi/ads/t;->i:Z

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/t;->i:Z

    .line 157
    iget-object v0, p0, Lcom/inmobi/ads/t;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/t;->g:Lcom/inmobi/ads/t$c;

    iget-object v2, p0, Lcom/inmobi/ads/t;->j:Lcom/inmobi/ads/b$f;

    invoke-virtual {v2}, Lcom/inmobi/ads/b$f;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
