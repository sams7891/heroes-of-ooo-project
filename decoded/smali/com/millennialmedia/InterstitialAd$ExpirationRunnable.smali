.class Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpirationRunnable"
.end annotation


# instance fields
.field interstitialAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field requestStateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/AdPlacement$RequestState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 1
    .param p1, "interstitialAd"    # Lcom/millennialmedia/InterstitialAd;
    .param p2, "requestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;->interstitialAdRef:Ljava/lang/ref/WeakReference;

    .line 223
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;->requestStateRef:Ljava/lang/ref/WeakReference;

    .line 224
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;->interstitialAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/InterstitialAd;

    .line 231
    .local v0, "interstitialAd":Lcom/millennialmedia/InterstitialAd;
    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InterstitialAd instance has been destroyed, aborting expiration state change"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/millennialmedia/InterstitialAd;->access$102(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 238
    iget-object v2, p0, Lcom/millennialmedia/InterstitialAd$ExpirationRunnable;->requestStateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 239
    .local v1, "requestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    if-nez v1, :cond_1

    .line 240
    invoke-static {}, Lcom/millennialmedia/InterstitialAd;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No valid RequestState is available, unable to trigger expired state change"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {v0, v1}, Lcom/millennialmedia/InterstitialAd;->access$200(Lcom/millennialmedia/InterstitialAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method
