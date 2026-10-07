.class Lcom/millennialmedia/internal/MMWebView$3;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$3;->this$0:Lcom/millennialmedia/internal/MMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 1
    .param p1, "viewable"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$3;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$3;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/JSBridge;->setViewable(Z)V

    .line 309
    :cond_0
    return-void
.end method
