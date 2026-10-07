.class public Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .locals 28
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "connectionTimeout"    # Ljava/lang/Integer;
    .param p5, "responseStreamer"    # Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 92
    .local v18, "requestId":J
    if-nez p4, :cond_2

    const/16 v22, 0x3a98

    .line 93
    .local v22, "timeout":I
    :goto_0
    const/4 v13, 0x0

    .line 94
    .local v13, "httpResponse":Lorg/apache/http/HttpResponse;
    new-instance v20, Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct/range {v20 .. v20}, Lcom/millennialmedia/internal/utils/HttpUtils$Response;-><init>()V

    .line 95
    .local v20, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    const/4 v14, 0x0

    .line 97
    .local v14, "inputStream":Ljava/io/BufferedInputStream;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 98
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Sending Http request.\n\turl: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tpost data: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tcontent type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\trequestId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v6

    .line 107
    .local v6, "client":Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v16

    .line 108
    .local v16, "params":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 114
    :try_start_0
    new-instance v23, Ljava/net/URI;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 116
    .local v23, "uri":Ljava/net/URI;
    if-eqz p2, :cond_3

    .line 117
    new-instance v21, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 118
    .local v21, "stringEntity":Lorg/apache/http/entity/StringEntity;
    if-eqz p3, :cond_1

    .line 119
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 122
    :cond_1
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 123
    .local v17, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 124
    move-object/from16 v12, v17

    .line 131
    .end local v17    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v21    # "stringEntity":Lorg/apache/http/entity/StringEntity;
    .local v12, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_1
    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 134
    invoke-virtual {v6, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 137
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 138
    move-object/from16 v0, v20

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    move/from16 v24, v0

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 139
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 141
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 142
    .local v5, "allHeaders":[Lorg/apache/http/Header;
    if-eqz v5, :cond_5

    .line 143
    new-instance v4, Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {v4}, Lcom/millennialmedia/internal/AdMetadata;-><init>()V

    .line 144
    .local v4, "adMetadata":Lcom/millennialmedia/internal/AdMetadata;
    array-length v0, v5

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    aget-object v11, v5, v24

    .line 145
    .local v11, "header":Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/millennialmedia/internal/AdMetadata;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 92
    .end local v4    # "adMetadata":Lcom/millennialmedia/internal/AdMetadata;
    .end local v5    # "allHeaders":[Lorg/apache/http/Header;
    .end local v6    # "client":Landroid/net/http/AndroidHttpClient;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "header":Lorg/apache/http/Header;
    .end local v12    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v13    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v16    # "params":Lorg/apache/http/params/HttpParams;
    .end local v20    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .end local v22    # "timeout":I
    .end local v23    # "uri":Ljava/net/URI;
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_0

    .line 127
    .restart local v6    # "client":Landroid/net/http/AndroidHttpClient;
    .restart local v13    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v16    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v20    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .restart local v22    # "timeout":I
    .restart local v23    # "uri":Ljava/net/URI;
    :cond_3
    :try_start_1
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .restart local v12    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_1

    .line 147
    .restart local v4    # "adMetadata":Lcom/millennialmedia/internal/AdMetadata;
    .restart local v5    # "allHeaders":[Lorg/apache/http/Header;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    :cond_4
    move-object/from16 v0, v20

    iput-object v4, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    .line 150
    .end local v4    # "adMetadata":Lcom/millennialmedia/internal/AdMetadata;
    :cond_5
    if-eqz v10, :cond_7

    .line 151
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v8

    .line 152
    .local v8, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v8, :cond_6

    .line 153
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    .line 156
    :cond_6
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-static {v10}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .local v15, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_2
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v15, v1}, Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;->streamContent(Ljava/io/InputStream;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v15

    .line 184
    .end local v5    # "allHeaders":[Lorg/apache/http/Header;
    .end local v8    # "contentTypeHeader":Lorg/apache/http/Header;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    :cond_7
    if-eqz v14, :cond_8

    .line 186
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    :cond_8
    :goto_3
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 195
    .end local v12    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v23    # "uri":Ljava/net/URI;
    :goto_4
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 196
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_f

    .line 198
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "text"

    .line 199
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "json"

    .line 200
    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 202
    :cond_9
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    .line 207
    .local v7, "content":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Http text response.\n\tcode: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\trequestId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tcontent-type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tcontent: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v7    # "content":Ljava/lang/String;
    :cond_a
    :goto_6
    return-object v20

    .line 187
    .restart local v12    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v23    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v9

    .line 188
    .local v9, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "Error closing input stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 162
    .end local v9    # "e":Ljava/io/IOException;
    .end local v12    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v23    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v9

    .line 163
    .local v9, "e":Ljava/net/SocketTimeoutException;
    :goto_7
    const/16 v24, 0x198

    :try_start_4
    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 165
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Timeout occurred when trying to get response content.\n\turl: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tpost data: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tpost content type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\ttimeout: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\trequestId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    if-eqz v14, :cond_b

    .line 186
    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 192
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    :cond_b
    :goto_8
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 187
    .restart local v9    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v9

    .line 188
    .local v9, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "Error closing input stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 172
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 173
    .local v9, "e":Ljava/lang/Exception;
    :goto_9
    const/16 v24, 0x190

    :try_start_6
    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    .line 175
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Error occurred when trying to get response content.\n\texception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 176
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\turl: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tpost data: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tpost content type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\ttimeout: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\trequestId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 175
    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    if-eqz v14, :cond_c

    .line 186
    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 192
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_a
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_4

    .line 187
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 188
    .local v9, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    const-string v25, "Error closing input stream"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 184
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v24

    :goto_b
    if-eqz v14, :cond_d

    .line 186
    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 192
    :cond_d
    :goto_c
    invoke-virtual {v6}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v24

    .line 187
    :catch_5
    move-exception v9

    .line 188
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v25

    const-string v26, "Error closing input stream"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 204
    .end local v9    # "e":Ljava/io/IOException;
    :cond_e
    const-string v7, "<non-text-content>"

    .restart local v7    # "content":Ljava/lang/String;
    goto/16 :goto_5

    .line 213
    .end local v7    # "content":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 214
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Http bitmap response.\n\tcode: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\trequestId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tcontent-type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tbitmap dimensions: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    .line 218
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " x "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    .line 219
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tbitmap size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    .line 220
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 214
    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 222
    :cond_10
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    .line 223
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Http file response.\n\tcode: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tcontent-type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\trequestId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tfile: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    move-object/from16 v26, v0

    .line 227
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 223
    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 230
    :cond_11
    invoke-static {}, Lcom/millennialmedia/internal/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Http response.\n\tcode: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\tcontent-type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->contentType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n\trequestId: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 184
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "allHeaders":[Lorg/apache/http/Header;
    .restart local v8    # "contentTypeHeader":Lorg/apache/http/Header;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v23    # "uri":Ljava/net/URI;
    :catchall_1
    move-exception v24

    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_b

    .line 172
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v9

    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_9

    .line 162
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v9

    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_7
.end method
