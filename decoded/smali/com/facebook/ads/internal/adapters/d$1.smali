.class Lcom/facebook/ads/internal/adapters/d$1;
.super Lcom/google/android/gms/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/d;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/s;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/s;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/d;Lcom/facebook/ads/internal/adapters/s;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/d$1;->b:Lcom/facebook/ads/internal/adapters/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/d$1;->a:Lcom/facebook/ads/internal/adapters/s;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 3

    invoke-static {}, Lcom/facebook/ads/internal/adapters/d;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/d$1;->a:Lcom/facebook/ads/internal/adapters/s;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/d$1;->b:Lcom/facebook/ads/internal/adapters/d;

    sget-object v2, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/s;->a(Lcom/facebook/ads/internal/adapters/r;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    invoke-static {}, Lcom/facebook/ads/internal/adapters/d;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/d$1;->a:Lcom/facebook/ads/internal/adapters/s;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/d$1;->b:Lcom/facebook/ads/internal/adapters/d;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/s;->c(Lcom/facebook/ads/internal/adapters/r;)V

    return-void
.end method
