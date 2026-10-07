.class Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;
.super Ljava/lang/Object;
.source "InlineWebAdapter.java"

# interfaces
.implements Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFailed()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displayFailed()V

    .line 50
    return-void
.end method

.method public attachSucceeded()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->displaySucceeded()V

    .line 43
    return-void
.end method

.method public initFailed()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initFailed()V

    .line 36
    return-void
.end method

.method public initSucceeded()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->initSucceeded()V

    .line 29
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onAdLeftApplication()V

    .line 64
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onClicked()V

    .line 57
    return-void
.end method

.method public onCollapsed()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onCollapsed()V

    .line 92
    return-void
.end method

.method public onExpanded()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onExpanded()V

    .line 85
    return-void
.end method

.method public onResize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0, p1, p2}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onResize(II)V

    .line 71
    return-void
.end method

.method public onResized(IIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isClosed"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter$1;->this$0:Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/millennialmedia/internal/adadapters/InlineAdapter$InlineAdapterListener;->onResized(IIZ)V

    .line 78
    return-void
.end method
