.class Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;
.super Ljava/lang/Object;
.source "InterstitialVASTVideoAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    new-instance v1, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->showFailed(Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;)V

    .line 61
    :cond_0
    return-void
.end method

.method public attachSucceeded()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-static {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$000(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->access$002(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Z)Z

    .line 49
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->shown()V

    .line 51
    :cond_0
    return-void
.end method

.method public initFailed()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initFailed()V

    .line 41
    return-void
.end method

.method public initSucceeded()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->initSucceeded()V

    .line 34
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;->onClicked()V

    .line 68
    return-void
.end method
