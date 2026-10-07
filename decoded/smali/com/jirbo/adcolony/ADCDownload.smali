.class Lcom/jirbo/adcolony/ADCDownload;
.super Lcom/jirbo/adcolony/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCDownload$Listener;
    }
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/d;

.field b:Lcom/jirbo/adcolony/ADCDownload$Listener;

.field c:Ljava/lang/String;

.field d:Ljava/io/File;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:Z

.field j:Z

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field l:Ljavax/net/ssl/SSLContext;

.field m:I

.field n:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/d;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/d;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/d;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;
    .param p4, "filepath"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jirbo/adcolony/j;-><init>(Lcom/jirbo/adcolony/d;Z)V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    .line 49
    if-nez p2, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    .line 51
    :cond_0
    iput-object p3, p0, Lcom/jirbo/adcolony/ADCDownload;->b:Lcom/jirbo/adcolony/ADCDownload$Listener;

    .line 52
    if-eqz p4, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->e:Ljava/lang/Object;

    .line 58
    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->f:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method a()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->b:Lcom/jirbo/adcolony/ADCDownload$Listener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/ADCDownload$Listener;->on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V

    .line 343
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0}, Lcom/jirbo/adcolony/z;->a(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 76
    move v5, v0

    :goto_0
    const/4 v0, 0x3

    if-gt v5, v0, :cond_3

    .line 80
    const/4 v1, 0x0

    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 83
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->f:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 85
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "Performing POST"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 87
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_1e

    .line 89
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 90
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    move-object v4, v1

    .line 93
    :goto_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v1, :cond_5

    .line 95
    const-string v1, "POST"

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 104
    :goto_2
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 107
    :goto_3
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    :goto_4
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Post data: "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 112
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 115
    :goto_5
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-nez v1, :cond_2

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 118
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v3, v1

    .line 119
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 121
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v1, :cond_a

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->k:Ljava/util/Map;

    .line 123
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 124
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, v0

    .line 125
    :goto_8
    if-eq v1, v2, :cond_c

    move v0, v2

    .line 128
    :goto_9
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_b

    .line 130
    aget-byte v7, v4, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 317
    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->c(Ljava/lang/String;)V

    .line 322
    :cond_2
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1d

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v1, "androidads23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v9, Lcom/jirbo/adcolony/a;->p:Z

    .line 336
    :cond_4
    iput-boolean v9, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 337
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    .line 338
    :goto_a
    return-void

    .line 100
    :cond_5
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 105
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto/16 :goto_3

    .line 107
    :cond_7
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    .line 113
    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto/16 :goto_5

    .line 118
    :cond_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_6

    .line 121
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    .line 132
    :cond_b
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, v0

    .line 133
    goto :goto_8

    .line 134
    :cond_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :try_start_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 148
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v1, "androidads23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jirbo/adcolony/a;->al:J

    .line 153
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 154
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto :goto_a

    .line 140
    :catch_1
    move-exception v0

    .line 142
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 143
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto :goto_a

    .line 161
    :cond_e
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 162
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 164
    :cond_f
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    if-eqz v3, :cond_15

    .line 166
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->a:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCStorage;->b()V

    .line 168
    :cond_10
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 169
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 174
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 184
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 187
    const/16 v0, 0x400

    new-array v7, v0, [B

    .line 188
    const/4 v0, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 189
    :cond_11
    if-eq v0, v2, :cond_14

    .line 191
    if-lez v1, :cond_13

    .line 193
    if-le v0, v1, :cond_12

    move v0, v1

    .line 194
    :cond_12
    sub-int/2addr v1, v0

    .line 197
    :cond_13
    iget v8, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 198
    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 199
    const/4 v0, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 201
    if-nez v1, :cond_11

    .line 204
    :cond_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 205
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 206
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 208
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 312
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 313
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto/16 :goto_a

    .line 176
    :catch_2
    move-exception v0

    .line 178
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "okhttp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 179
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 180
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 212
    :cond_15
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->h:Z

    if-eqz v3, :cond_18

    .line 214
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_16

    .line 216
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 217
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    .line 220
    :cond_16
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_17

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 221
    :goto_c
    if-lez v3, :cond_18

    .line 223
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Got HTTP response "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " - counting as completed submission for 3rd party tracking."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 224
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCDownload;->i:Z

    .line 228
    invoke-static {p0}, Lcom/jirbo/adcolony/a;->a(Lcom/jirbo/adcolony/j;)V

    goto/16 :goto_a

    .line 220
    :cond_17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    goto :goto_c

    .line 232
    :cond_18
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_19

    .line 234
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 235
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    .line 236
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - use ssl!"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 242
    :goto_d
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - before pause"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 245
    const-wide/16 v6, 0xbb8

    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 251
    :goto_e
    :try_start_7
    sget-object v3, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v4, "ADCDownload - getInputStream"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 255
    :try_start_8
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 264
    :goto_f
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 266
    const/16 v1, 0x400

    new-array v6, v1, [B

    .line 267
    const/4 v1, 0x0

    const/16 v3, 0x400

    invoke-virtual {v0, v6, v1, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v1

    move v3, v1

    .line 270
    :goto_10
    if-eq v3, v2, :cond_1c

    move v1, v2

    .line 273
    :goto_11
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v3, :cond_1b

    .line 275
    :try_start_a
    aget-byte v7, v6, v1

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_11

    .line 280
    :catch_3
    move-exception v0

    .line 282
    :try_start_b
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 283
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_a

    .line 240
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCDownload;->j:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_d

    .line 255
    :cond_1a
    :try_start_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    move-result-object v0

    goto :goto_f

    .line 257
    :catch_4
    move-exception v0

    .line 259
    :try_start_d
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "okhttp error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 260
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 261
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_a

    .line 277
    :cond_1b
    const/4 v1, 0x0

    const/16 v3, 0x400

    :try_start_e
    invoke-virtual {v0, v6, v1, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    move-result v1

    move v3, v1

    .line 278
    goto :goto_10

    .line 286
    :catch_5
    move-exception v0

    .line 288
    :try_start_f
    sget-object v1, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v3, "okio error, disabling AdColony"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 289
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 290
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_a

    .line 294
    :cond_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 298
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    .line 307
    :try_start_11
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCDownload;->m:I

    .line 309
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDownload;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    goto/16 :goto_b

    .line 300
    :catch_6
    move-exception v0

    .line 302
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 303
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_a

    .line 326
    :cond_1d
    add-int/lit8 v0, v5, 0x1

    mul-int/lit8 v0, v0, 0xa

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :try_start_12
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_8

    .line 332
    :goto_12
    sget-object v0, Lcom/jirbo/adcolony/l;->b:Lcom/jirbo/adcolony/l;

    const-string v1, "Trying again ("

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(I)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, "/3)"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 76
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 247
    :catch_7
    move-exception v3

    goto/16 :goto_e

    .line 328
    :catch_8
    move-exception v0

    goto :goto_12

    :cond_1e
    move-object v4, v1

    goto/16 :goto_1
.end method
