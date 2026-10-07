.class final Lcom/millennialmedia/internal/utils/IOUtils$1;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connectionTimeout:Ljava/lang/Integer;

.field final synthetic val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$file:Ljava/io/File;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$connectionTimeout:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 198
    iget-object v7, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$file:Ljava/io/File;

    .line 200
    .local v7, "outputFile":Ljava/io/File;
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "_mm_"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$file:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 203
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/utils/HttpUtils;->httpRequestHandler:Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$connectionTimeout:Ljava/lang/Integer;

    new-instance v5, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;

    invoke-direct {v5, v7}, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;-><init>(Ljava/io/File;)V

    .line 204
    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v8

    .line 206
    .local v8, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget-object v0, v8, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    iget-object v1, v8, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadSucceeded(Ljava/io/File;)V

    .line 216
    .end local v8    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :goto_0
    return-void

    .line 209
    .restart local v8    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Error creating file"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v8    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :catch_0
    move-exception v6

    .line 213
    .local v6, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred downloading file from url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    invoke-interface {v0, v6}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
