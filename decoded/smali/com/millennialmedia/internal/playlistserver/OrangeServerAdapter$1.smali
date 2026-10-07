.class Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;
.super Ljava/lang/Object;
.source "OrangeServerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

.field final synthetic val$adPlacementMetadata:Ljava/util/Map;

.field final synthetic val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->this$0:Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adPlacementMetadata:Ljava/util/Map;

    iput-object p3, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 312
    iget-object v4, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adPlacementMetadata:Ljava/util/Map;

    invoke-static {v4}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->access$000(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "postData":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 314
    iget-object v4, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unable to create post request data"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    .line 351
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlaylistServerBaseUrl()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "requestUrl":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 321
    iget-object v4, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unable to determine base url for request"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 325
    :cond_1
    sget-object v4, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->PLAYLIST_REQUEST_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request\n\turl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tpost data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_2
    const-string v4, "application/json"

    .line 334
    invoke-static {v3, v2, v4}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 336
    .local v0, "adResponse":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget-object v4, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    iget-object v4, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Post request failed to get ad"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 342
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response content:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_4
    iget-object v4, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v4}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->parsePlayListResponse(Ljava/lang/String;)Lcom/millennialmedia/internal/PlayList;

    move-result-object v1

    .line 346
    .local v1, "playList":Lcom/millennialmedia/internal/PlayList;
    if-nez v1, :cond_5

    .line 347
    iget-object v4, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unable to get valid playlist"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 349
    :cond_5
    iget-object v4, p0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    invoke-interface {v4, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadSucceeded(Lcom/millennialmedia/internal/PlayList;)V

    goto/16 :goto_0
.end method
