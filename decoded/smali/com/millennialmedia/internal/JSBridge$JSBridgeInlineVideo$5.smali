.class Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->expandToFullScreen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

.field final synthetic val$viewTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->val$viewTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1888
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v2, v2, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 1889
    .local v1, "webView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v1, :cond_0

    .line 1890
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$5;->val$viewTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/MMWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .line 1891
    .local v0, "inlineWebVideoView":Lcom/millennialmedia/internal/video/InlineWebVideoView;
    if-eqz v0, :cond_0

    .line 1892
    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->expandToFullScreen()V

    .line 1895
    .end local v0    # "inlineWebVideoView":Lcom/millennialmedia/internal/video/InlineWebVideoView;
    :cond_0
    return-void
.end method
