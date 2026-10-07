.class Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;
.super Ljava/lang/Object;
.source "InterstitialWebAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    new-instance v1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v2, 0x7

    const-string v3, "Unable to start interstitial activity"

    invoke-direct {v1, v2, v3}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    .line 53
    return-void
.end method

.method public attachSucceeded()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public initFailed()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    .line 38
    return-void
.end method

.method public initSucceeded()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initSucceeded()V

    .line 31
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onAdLeftApplication()V

    .line 67
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClicked()V

    .line 60
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClosed()V

    .line 96
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->shown()V

    .line 89
    return-void
.end method

.method public onResize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 73
    return-void
.end method

.method public onResized(IIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isClosed"    # Z

    .prologue
    .line 79
    if-eqz p3, :cond_0

    .line 80
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClosed()V

    .line 82
    :cond_0
    return-void
.end method
