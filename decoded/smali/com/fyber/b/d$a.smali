.class public final Lcom/fyber/b/d$a;
.super Ljava/lang/Object;
.source "BannerAdsProcessorOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/c;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/fyber/b/d$a;->a:Ljava/util/List;

    .line 77
    iput-object p2, p0, Lcom/fyber/b/d$a;->b:Ljava/util/List;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/b/d;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/fyber/b/d;

    iget-object v1, p0, Lcom/fyber/b/d$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/fyber/b/d$a;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/fyber/b/d;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
