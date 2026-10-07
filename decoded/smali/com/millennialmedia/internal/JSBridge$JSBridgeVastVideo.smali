.class Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;
.super Ljava/lang/Object;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSBridgeVastVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1956
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1957
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v2, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1958
    check-cast v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1959
    .local v1, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->close()V

    .line 1963
    .end local v1    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :goto_0
    return-void

    .line 1961
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Close cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1943
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1944
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v2, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1945
    check-cast v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1946
    .local v1, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->pause()V

    .line 1950
    .end local v1    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :goto_0
    return-void

    .line 1948
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Pause cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public play(Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1930
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1931
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v2, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1932
    check-cast v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1933
    .local v1, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->play()V

    .line 1937
    .end local v1    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :goto_0
    return-void

    .line 1935
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Play cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restart(Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1980
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1981
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v2, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1982
    check-cast v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1983
    .local v1, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->restart()V

    .line 1987
    .end local v1    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :goto_0
    return-void

    .line 1985
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Restart cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seek(Ljava/lang/String;)V
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
    .line 1993
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 1994
    .local v1, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v3, v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v3, :cond_0

    .line 1995
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "seekTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "milliseconds":I
    move-object v2, v1

    .line 1996
    check-cast v2, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1997
    .local v2, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v2, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->seek(I)V

    .line 2001
    .end local v0    # "milliseconds":I
    .end local v2    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :goto_0
    return-void

    .line 1999
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Seek cannot be called on a WebView that is not part of a VAST Video creative."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTimeInterval(Ljava/lang/String;)V
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
    .line 2021
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v3}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 2022
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v3, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v3, :cond_0

    .line 2023
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "timeInterval"

    const/4 v5, -0x1

    .line 2024
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "timeInterval":I
    move-object v2, v0

    .line 2026
    check-cast v2, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 2027
    .local v2, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v2, v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->setTimeInterval(I)V

    .line 2032
    .end local v1    # "timeInterval":I
    .end local v2    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :goto_0
    return-void

    .line 2029
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SetTimeInterval can\'t be called on a WebView that is not part of a VAST Video creative."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public skip(Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1969
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 1970
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v2, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1971
    check-cast v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 1972
    .local v1, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->skip()V

    .line 1974
    .end local v1    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :cond_0
    return-void
.end method

.method public triggerTimeUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2007
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v2}, Lcom/millennialmedia/internal/JSBridge;->access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 2008
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    instance-of v2, v0, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 2009
    check-cast v1, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;

    .line 2010
    .local v1, "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    invoke-virtual {v1}, Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;->triggerTimeUpdate()V

    .line 2015
    .end local v1    # "vastVideoWebView":Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoWebView;
    :goto_0
    return-void

    .line 2012
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TriggerTimeUpdate can\'t be called on a WebView that is not part of a VAST Video creative."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
