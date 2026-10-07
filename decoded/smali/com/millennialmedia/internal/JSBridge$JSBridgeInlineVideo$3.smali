.class Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->reposition(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

.field final synthetic val$height:I

.field final synthetic val$viewTag:Ljava/lang/String;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    .prologue
    .line 1831
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$viewTag:Ljava/lang/String;

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$x:I

    iput p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$y:I

    iput p5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$width:I

    iput p6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1835
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v3, v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/MMWebView;

    .line 1836
    .local v2, "webView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v2, :cond_0

    .line 1837
    invoke-virtual {v2}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1838
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$viewTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/internal/MMWebView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .line 1839
    .local v1, "inlineWebVideoView":Lcom/millennialmedia/internal/video/InlineWebVideoView;
    if-eqz v1, :cond_0

    .line 1840
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$x:I

    int-to-float v4, v4

    .line 1841
    invoke-static {v3, v0, v4}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v3

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$y:I

    int-to-float v5, v5

    invoke-static {v4, v0, v5}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v4

    iget-object v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$width:I

    int-to-float v6, v6

    .line 1842
    invoke-static {v5, v0, v6}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v5

    iget-object v6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v7, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$3;->val$height:I

    int-to-float v7, v7

    invoke-static {v6, v0, v7}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v6

    .line 1841
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->reposition(IIII)V

    .line 1845
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "inlineWebVideoView":Lcom/millennialmedia/internal/video/InlineWebVideoView;
    :cond_0
    return-void
.end method
