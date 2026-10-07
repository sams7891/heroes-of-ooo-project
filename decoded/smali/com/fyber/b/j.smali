.class final Lcom/fyber/b/j;
.super Ljava/lang/Object;
.source "InterstitialAdsProcessorOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/fyber/ads/interstitials/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/interstitials/a;

.field final synthetic b:Lcom/fyber/b/i;


# direct methods
.method constructor <init>(Lcom/fyber/b/i;Lcom/fyber/ads/interstitials/a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fyber/b/j;->b:Lcom/fyber/b/i;

    iput-object p2, p0, Lcom/fyber/b/j;->a:Lcom/fyber/ads/interstitials/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    .line 1057
    iget-object v0, p0, Lcom/fyber/b/j;->a:Lcom/fyber/ads/interstitials/a;

    .line 54
    return-object v0
.end method
