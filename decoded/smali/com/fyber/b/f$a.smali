.class public final Lcom/fyber/b/f$a;
.super Ljava/lang/Object;
.source "BannerFetchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/fyber/utils/t;

.field private b:Lcom/fyber/requesters/a/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, "banner"

    invoke-static {v0}, Lcom/fyber/utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/fyber/utils/t;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/t;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/f$a;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/fyber/utils/t;->b(Ljava/lang/String;)Lcom/fyber/utils/t;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/fyber/utils/t;->a()Lcom/fyber/utils/t;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/fyber/utils/t;->b()Lcom/fyber/utils/t;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/f$a;->a:Lcom/fyber/utils/t;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/fyber/b/f$a;)Lcom/fyber/requesters/a/a;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fyber/b/f$a;->b:Lcom/fyber/requesters/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/b/f$a;)Lcom/fyber/utils/t;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fyber/b/f$a;->a:Lcom/fyber/utils/t;

    return-object v0
.end method

.method static synthetic c(Lcom/fyber/b/f$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fyber/b/f$a;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fyber/requesters/a/a;)Lcom/fyber/b/f$a;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fyber/b/f$a;->b:Lcom/fyber/requesters/a/a;

    .line 119
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/b/f$a;
    .locals 1

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fyber/b/f$a;->c:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/fyber/b/f$a;->a:Lcom/fyber/utils/t;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/t;->b(Ljava/lang/String;)Lcom/fyber/utils/t;

    .line 130
    return-object p0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/fyber/b/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)",
            "Lcom/fyber/b/f$a;"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/fyber/b/f$a;->d:Ljava/util/List;

    .line 135
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/fyber/b/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/b/f$a;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fyber/b/f$a;->a:Lcom/fyber/utils/t;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/t;->a(Ljava/util/Map;)Lcom/fyber/utils/t;

    .line 124
    return-object p0
.end method
