.class Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "MediationAnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateMissingBannerClasses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/annotations/processor/MediationAnnotationProcessor;

.field final synthetic val$pathInZipfile:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Lcom/fyber/annotations/processor/MediationAnnotationProcessor;Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/annotations/processor/MediationAnnotationProcessor;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;->this$0:Lcom/fyber/annotations/processor/MediationAnnotationProcessor;

    iput-object p2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;->val$pathInZipfile:Ljava/nio/file/Path;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 12
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 212
    new-array v5, v10, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 213
    sget-object v5, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 230
    :goto_0
    return-object v5

    .line 215
    :cond_0
    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;->val$pathInZipfile:Ljava/nio/file/Path;

    invoke-interface {v5, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v10

    .line 216
    .local v1, "filename":Ljava/lang/String;
    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;->this$0:Lcom/fyber/annotations/processor/MediationAnnotationProcessor;

    invoke-static {v5}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->access$000(Lcom/fyber/annotations/processor/MediationAnnotationProcessor;)Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v5

    invoke-interface {v5}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.fyber.ads.banners."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v9, "."

    .line 217
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v10, [Ljavax/lang/model/element/Element;

    .line 216
    invoke-interface {v5, v6, v8}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v3

    .line 220
    .local v3, "jfo":Ljavax/tools/JavaFileObject;
    invoke-interface {v3}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v4

    .line 221
    .local v4, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 219
    .local v2, "fr":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 224
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 225
    .local v0, "c":I
    :goto_1
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 226
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(I)V

    .line 227
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v0

    goto :goto_1

    .line 229
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v7, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v7, :cond_8

    :try_start_3
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 230
    :cond_3
    :goto_3
    sget-object v5, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    .line 229
    :catch_0
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 219
    .end local v0    # "c":I
    .end local v2    # "fr":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    :catchall_0
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    :goto_4
    if-eqz v4, :cond_4

    if-eqz v7, :cond_9

    :try_start_6
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_5
    throw v5

    .restart local v0    # "c":I
    .restart local v2    # "fr":Ljava/io/BufferedReader;
    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .end local v0    # "c":I
    .end local v2    # "fr":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 219
    .restart local v2    # "fr":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 229
    :catchall_2
    move-exception v6

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    :goto_6
    if-eqz v2, :cond_6

    if-eqz v6, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    :goto_7
    :try_start_a
    throw v5

    :catch_3
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    .restart local v0    # "c":I
    :catch_4
    move-exception v5

    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    goto :goto_3

    .end local v0    # "c":I
    .end local v2    # "fr":Ljava/io/BufferedReader;
    :catch_5
    move-exception v6

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Ljava/io/Writer;->close()V

    goto :goto_5

    .restart local v2    # "fr":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    move-object v6, v7

    goto :goto_6
.end method
