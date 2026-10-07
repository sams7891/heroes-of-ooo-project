.class Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;
.super Ljava/lang/Object;
.source "GreenServerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

.field final synthetic val$adPlacementMetadata:Ljava/util/Map;

.field final synthetic val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->this$0:Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adPlacementMetadata:Ljava/util/Map;

    iput-object p3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 274
    iget-object v3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adPlacementMetadata:Ljava/util/Map;

    invoke-static {v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->access$000(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "adRequestUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 276
    iget-object v3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to create post request data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    .line 300
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad request url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v1

    .line 285
    .local v1, "adResponse":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget-object v3, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    iget-object v3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Get request failed to get ad"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad response content: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_3
    iget-object v3, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->parsePlayListResponse(Ljava/lang/String;)Lcom/millennialmedia/internal/PlayList;

    move-result-object v2

    .line 295
    .local v2, "playList":Lcom/millennialmedia/internal/PlayList;
    if-nez v2, :cond_4

    .line 296
    iget-object v3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to get valid playlist"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 298
    :cond_4
    iget-object v3, p0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;->val$adapterLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;

    invoke-interface {v3, v2}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;->loadSucceeded(Lcom/millennialmedia/internal/PlayList;)V

    goto :goto_0
.end method
