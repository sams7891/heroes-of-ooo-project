.class Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;
.super Ljava/lang/Object;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSBridgeCommon"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileLoaded(Ljava/lang/String;)V
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
    .line 414
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "json":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    const-string v2, "filename"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 419
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, v1, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onInjectedScriptsLoaded()V

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/JSBridge;->setReadyState()V

    .line 428
    :cond_2
    return-void
.end method

.method public getActionsQueue()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 398
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    monitor-enter v2

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->access$200(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-static {v1}, Lcom/millennialmedia/internal/JSBridge;->access$200(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;->this$0:Lcom/millennialmedia/internal/JSBridge;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/millennialmedia/internal/JSBridge;->access$202(Lcom/millennialmedia/internal/JSBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 403
    monitor-exit v2

    .line 407
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 405
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public useActionsQueue()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 390
    sget-boolean v0, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
