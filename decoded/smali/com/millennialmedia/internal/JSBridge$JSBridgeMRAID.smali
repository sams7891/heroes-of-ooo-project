.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;
.super Ljava/lang/Object;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSBridgeMRAID"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID: close("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$1;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 744
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MRAID: createCalendarEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 749
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Ad has not been clicked"

    const-string v5, "createCalendarEvent"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :goto_0
    return-void

    .line 754
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isCalendarSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 755
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Not supported"

    const-string v5, "createCalendarEvent"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "json":Lorg/json/JSONObject;
    const-string v3, "parameters"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 763
    .local v2, "parameters":Lorg/json/JSONObject;
    if-nez v2, :cond_3

    .line 764
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "No parameters provided"

    const-string v5, "createCalendarEvent"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 770
    .local v1, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-nez v1, :cond_4

    .line 771
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Webview is no longer valid"

    const-string v5, "createCalendarEvent"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_4
    invoke-virtual {v1}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$7;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$7;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {v3, v2, v4}, Lcom/millennialmedia/internal/utils/CalendarUtils;->addEventWithIntent(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 486
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MRAID: expand("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v4}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 491
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Ad has not been clicked"

    const-string v5, "expand"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :goto_0
    return-void

    .line 496
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v4, v4, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v4, :cond_2

    .line 499
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Cannot expand interstitial"

    const-string v5, "expand"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 505
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    invoke-direct {v0}, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;-><init>()V

    .line 508
    .local v0, "expandParams":Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;
    const-string v4, "width"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    const-string v4, "width"

    .line 510
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 511
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v5

    .line 509
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    .line 518
    :goto_1
    const-string v4, "height"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 519
    const-string v4, "height"

    .line 520
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 521
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v5

    .line 519
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    .line 527
    :goto_2
    const-string v4, "useCustomClose"

    iget-object v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v5, v5, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    iput-boolean v3, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->showCloseIndicator:Z

    .line 528
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget v3, v3, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    iput v3, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->orientation:I

    .line 529
    const-string v3, "url"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->url:Ljava/lang/String;

    .line 532
    new-instance v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$2;

    invoke-direct {v3, p0, v0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$2;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 514
    :cond_3
    iput v7, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->width:I

    goto :goto_1

    .line 524
    :cond_4
    iput v7, v0, Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;->height:I

    goto :goto_2

    .line 527
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public open(Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MRAID: open("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v3, "Ad has not been clicked"

    const-string v4, "open"

    invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 453
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onAdLeftApplication()V

    goto :goto_0

    .line 459
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open url <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "open"

    invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MRAID: playVideo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 810
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Ad has not been clicked"

    const-string v5, "playVideo"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_0
    return-void

    .line 815
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 816
    .local v0, "json":Lorg/json/JSONObject;
    const-string v3, "url"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 819
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "No path specified for video"

    const-string v5, "playVideo"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 825
    .local v1, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-nez v1, :cond_3

    .line 826
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Webview is no longer valid"

    const-string v5, "playVideo"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_3
    invoke-virtual {v1}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$8;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$8;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {v3, v2, v4}, Lcom/millennialmedia/internal/utils/MediaUtils;->startVideoPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;)V

    goto :goto_0
.end method

.method public resize(Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 556
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MRAID: resize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 561
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Ad has not been clicked"

    const-string v5, "resize"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void

    .line 566
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v3, v3, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v3, :cond_2

    .line 569
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Cannot resize interstitial"

    const-string v5, "resize"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 575
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    invoke-direct {v2}, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;-><init>()V

    .line 577
    .local v2, "resizeParams":Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;
    const-string v3, "width"

    .line 578
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->width:I

    .line 580
    const-string v3, "height"

    .line 581
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->height:I

    .line 583
    const-string v3, "offsetX"

    .line 584
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->offsetX:I

    .line 586
    const-string v3, "offsetY"

    .line 587
    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->offsetY:I

    .line 589
    const-string v3, "customClosePosition"

    const-string v4, "top-right"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->customClosePosition:Ljava/lang/String;

    .line 590
    const-string v3, "allowOffscreen"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;->allowOffScreen:Z

    .line 593
    new-instance v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;

    invoke-direct {v3, p0, v2}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$3;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    .line 638
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MRAID: setOrientationProperties("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 643
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "allowOrientationChange"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 644
    .local v0, "allowOrientationChange":Z
    const-string v3, "forceOrientation"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "forceOrientation":Ljava/lang/String;
    const-string v3, "none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 655
    if-eqz v0, :cond_1

    .line 656
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const/4 v4, -0x1

    iput v4, v3, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    .line 677
    :goto_0
    new-instance v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$5;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 686
    :goto_1
    return-void

    .line 657
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 658
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput v6, v3, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    goto :goto_0

    .line 660
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput v7, v3, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    goto :goto_0

    .line 663
    :cond_3
    const-string v3, "portrait"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput v7, v3, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    goto :goto_0

    .line 666
    :cond_4
    const-string v3, "landscape"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 667
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput v6, v3, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    goto :goto_0

    .line 670
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid orientation specified <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setOrientationProperties"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 692
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MRAID: storePicture("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$400(Lcom/millennialmedia/internal/JSBridge;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 697
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Ad has not been clicked"

    const-string v5, "storePicture"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 703
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Not supported"

    const-string v5, "storePicture"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, "json":Lorg/json/JSONObject;
    const-string v3, "url"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 712
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "No path specified for picture"

    const-string v5, "storePicture"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 718
    .local v1, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-nez v1, :cond_4

    .line 719
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v4, "Webview is no longer valid"

    const-string v5, "storePicture"

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->throwMraidError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_4
    invoke-virtual {v1}, Lcom/millennialmedia/internal/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;

    invoke-direct {v4, p0, v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$6;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;Lcom/millennialmedia/internal/MMWebView;)V

    invoke-static {v3, v2, v6, v4}, Lcom/millennialmedia/internal/utils/MediaUtils;->savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    goto :goto_0
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MRAID: useCustomClose("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const-string v2, "useCustomClose"

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-boolean v3, v3, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    .line 625
    new-instance v1, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID$4;-><init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method
