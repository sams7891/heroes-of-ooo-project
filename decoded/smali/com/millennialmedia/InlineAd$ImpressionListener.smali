.class Lcom/millennialmedia/InlineAd$ImpressionListener;
.super Ljava/lang/Object;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImpressionListener"
.end annotation


# instance fields
.field volatile impressionFound:Z

.field volatile impressionTimerRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd;Landroid/view/View;)V
    .locals 2
    .param p1, "inlineAd"    # Lcom/millennialmedia/InlineAd;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->impressionFound:Z

    .line 274
    new-instance v0, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v1, Lcom/millennialmedia/InlineAd$ImpressionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/InlineAd$ImpressionListener$1;-><init>(Lcom/millennialmedia/InlineAd$ImpressionListener;Lcom/millennialmedia/InlineAd;)V

    invoke-direct {v0, p2, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 309
    return-void
.end method


# virtual methods
.method protected listen()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->setMinViewabilityPercent(I)V

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$ImpressionListener;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    goto :goto_0
.end method
