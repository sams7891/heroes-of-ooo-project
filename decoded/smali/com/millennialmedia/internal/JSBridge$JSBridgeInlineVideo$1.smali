.class Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->insert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

.field final synthetic val$autoPlay:Z

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$muted:Z

.field final synthetic val$placeholder:Ljava/lang/String;

.field final synthetic val$showExpandControls:Z

.field final synthetic val$showMediaControls:Z

.field final synthetic val$timeUpdateInterval:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;ZZZZILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$autoPlay:Z

    iput-boolean p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$muted:Z

    iput-boolean p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$showMediaControls:Z

    iput-boolean p5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$showExpandControls:Z

    iput p6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$timeUpdateInterval:I

    iput-object p7, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$callbackId:Ljava/lang/String;

    iput p8, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$x:I

    iput p9, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$y:I

    iput p10, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$width:I

    iput p11, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$height:I

    iput-object p12, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$placeholder:Ljava/lang/String;

    iput-object p13, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/millennialmedia/internal/MMWebView;

    .line 1642
    .local v10, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v10, :cond_1

    .line 1643
    new-instance v0, Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .line 1644
    invoke-virtual {v10}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$autoPlay:Z

    iget-boolean v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$muted:Z

    iget-boolean v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$showMediaControls:Z

    iget-boolean v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$showExpandControls:Z

    iget v6, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$timeUpdateInterval:I

    iget-object v7, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$callbackId:Ljava/lang/String;

    new-instance v8, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;

    invoke-direct {v8, p0, v10}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$1;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;Lcom/millennialmedia/internal/MMWebView;)V

    invoke-direct/range {v0 .. v8}, Lcom/millennialmedia/internal/video/InlineWebVideoView;-><init>(Landroid/content/Context;ZZZZILjava/lang/String;Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewListener;)V

    .line 1655
    .local v0, "inlineWebVideoView":Lcom/millennialmedia/internal/video/InlineWebVideoView;
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$500(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    invoke-virtual {v10}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 1659
    .local v9, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$x:I

    int-to-float v2, v2

    invoke-static {v1, v9, v2}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v2

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$y:I

    int-to-float v3, v3

    .line 1660
    invoke-static {v1, v9, v3}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v3

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$width:I

    int-to-float v4, v4

    invoke-static {v1, v9, v4}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v4

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    iget v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$height:I

    int-to-float v5, v5

    .line 1661
    invoke-static {v1, v9, v5}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;->access$600(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;Landroid/util/DisplayMetrics;F)I

    move-result v5

    new-instance v6, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$2;

    invoke-direct {v6, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1$2;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;)V

    move-object v1, v10

    .line 1659
    invoke-virtual/range {v0 .. v6}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setAnchorView(Lcom/millennialmedia/internal/MMWebView;IIIILcom/millennialmedia/internal/video/InlineWebVideoView$InlineWebVideoViewAttachListener;)V

    .line 1679
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$placeholder:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1680
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$placeholder:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setPlaceholder(Landroid/net/Uri;)V

    .line 1683
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 1685
    .end local v0    # "inlineWebVideoView":Lcom/millennialmedia/internal/video/InlineWebVideoView;
    .end local v9    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    return-void
.end method
