.class public Lcom/millennialmedia/internal/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;,
        Lcom/millennialmedia/internal/utils/IOUtils$BitmapStreamer;,
        Lcom/millennialmedia/internal/utils/IOUtils$StringStreamer;,
        Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x80000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/millennialmedia/internal/utils/IOUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static convertStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 127
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 129
    sget-object v1, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create bitmap from input stream"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 90
    .local v3, "outputString":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 91
    sget-object v6, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    const-string v7, "Unable to convert to string, input stream is null"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v6, 0x0

    .line 121
    :goto_0
    return-object v6

    .line 97
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x1000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 100
    .local v1, "line":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v2, "outputBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 108
    .end local v2    # "outputBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 109
    .end local v1    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    sget-object v6, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error occurred when converting stream to string"

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    if-eqz v4, :cond_1

    .line 113
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    move-object v6, v3

    .line 121
    goto :goto_0

    .line 106
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "outputBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 112
    if-eqz v5, :cond_3

    .line 113
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v4, v5

    .line 118
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 116
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error closing input stream reader"

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 119
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 116
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "outputBuilder":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v0

    .line 117
    sget-object v6, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    const-string v7, "Error closing input stream reader"

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 112
    :goto_4
    if-eqz v4, :cond_4

    .line 113
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 118
    :cond_4
    :goto_5
    throw v6

    .line 116
    :catch_3
    move-exception v0

    .line 117
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/millennialmedia/internal/utils/IOUtils;->TAG:Ljava/lang/String;

    const-string v8, "Error closing input stream reader"

    invoke-static {v7, v8, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 108
    .end local v1    # "line":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "connectionTimeout"    # Ljava/lang/Integer;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "downloadListener"    # Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    .prologue
    .line 190
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url, file, and download listener are required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/utils/IOUtils$1;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/millennialmedia/internal/utils/IOUtils$1;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public static getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 224
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 225
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    .line 240
    :goto_0
    return-object v5

    .line 230
    :cond_0
    const-string v5, "\\.(?=[^\\.]+$)"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "tokens":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 232
    .local v0, "base":Ljava/lang/String;
    array-length v5, v4

    if-le v5, v6, :cond_1

    aget-object v1, v4, v6

    .line 233
    .local v1, "extension":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_3

    .line 234
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v2

    .line 236
    goto :goto_0

    .line 232
    .end local v1    # "extension":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 233
    .restart local v1    # "extension":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 240
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 68
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 66
    :cond_0
    const-string p1, "UTF-8"

    goto :goto_0
.end method

.method public static read(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x80000

    const/4 v3, 0x0

    .line 55
    new-array v0, v4, [B

    .line 57
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 58
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 59
    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public static read(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 82
    :cond_0
    return-void

    .line 78
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    :cond_1
    throw v1
.end method
