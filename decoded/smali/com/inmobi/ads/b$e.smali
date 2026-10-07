.class public final Lcom/inmobi/ads/b$e;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/b$e;->a:I

    .line 443
    const/16 v0, 0x140

    iput v0, p0, Lcom/inmobi/ads/b$e;->b:I

    .line 444
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/inmobi/ads/b$e;->c:I

    .line 445
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/ads/b$e;->d:I

    .line 446
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/inmobi/ads/b$e;->e:Ljava/lang/String;

    .line 447
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b$e;->f:I

    .line 448
    const/4 v0, 0x5

    iput v0, p0, Lcom/inmobi/ads/b$e;->g:I

    .line 449
    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/ads/b$e;->h:I

    .line 450
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/inmobi/ads/b$e;->i:J

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/b$e;->j:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/b$e;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/inmobi/ads/b$e;->a:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$e;J)J
    .locals 1

    .prologue
    .line 440
    iput-wide p1, p0, Lcom/inmobi/ads/b$e;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/inmobi/ads/b$e;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/ads/b$e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/inmobi/ads/b$e;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/b$e;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/inmobi/ads/b$e;->c:I

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/b$e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/inmobi/ads/b$e;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/b$e;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/inmobi/ads/b$e;->b:I

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/b$e;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/inmobi/ads/b$e;->d:I

    return p1
.end method

.method static synthetic e(Lcom/inmobi/ads/b$e;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/inmobi/ads/b$e;->g:I

    return p1
.end method

.method static synthetic f(Lcom/inmobi/ads/b$e;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/inmobi/ads/b$e;->h:I

    return p1
.end method

.method static synthetic g(Lcom/inmobi/ads/b$e;I)I
    .locals 0

    .prologue
    .line 440
    iput p1, p0, Lcom/inmobi/ads/b$e;->f:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/inmobi/ads/b$e;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/inmobi/ads/b$e;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/inmobi/ads/b$e;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/inmobi/ads/b$e;->f:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/inmobi/ads/b$e;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/inmobi/ads/b$e;->h:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/inmobi/ads/b$e;->i:J

    return-wide v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/inmobi/ads/b$e;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/inmobi/ads/b$e;->a:I

    return v0
.end method
