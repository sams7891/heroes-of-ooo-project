.class public Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/utils/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileStreamer"
.end annotation


# instance fields
.field private outputFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "outputFile"    # Ljava/io/File;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;->outputFile:Ljava/io/File;

    .line 162
    return-void
.end method


# virtual methods
.method public streamContent(Ljava/io/InputStream;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "response"    # Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;->outputFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p1, v2}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 171
    iget-object v3, p0, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;->outputFile:Ljava/io/File;

    iput-object v3, p2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    if-eqz v2, :cond_2

    .line 177
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 183
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 178
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error closing OutputStream when writing file"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 180
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 173
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unable to create file from input stream"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    if-eqz v1, :cond_0

    .line 177
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 178
    :catch_2
    move-exception v0

    .line 179
    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error closing OutputStream when writing file"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 177
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 180
    :cond_1
    :goto_3
    throw v3

    .line 178
    :catch_3
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error closing OutputStream when writing file"

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 172
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0
.end method
