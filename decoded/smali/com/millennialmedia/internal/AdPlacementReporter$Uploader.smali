.class Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;
.super Ljava/lang/Object;
.source "AdPlacementReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Uploader"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 232
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->start()V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->storeSiteId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/json/JSONObject;
    .param p3, "x3"    # Z

    .prologue
    .line 232
    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->storeEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/io/File;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Z

    .prologue
    .line 232
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setEventAsCompleted(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()[Ljava/io/File;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->getEventsToUpload()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->retrieveSiteId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800([Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/io/File;

    .prologue
    .line 232
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->buildRequest([Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900([Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # [Ljava/io/File;

    .prologue
    .line 232
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->deleteUploadedEvents([Ljava/io/File;)V

    return-void
.end method

.method private static buildRequest([Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0, "eventsToUpload"    # [Ljava/io/File;

    .prologue
    .line 268
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .local v6, "json":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 270
    .local v8, "requestEvents":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 271
    .local v1, "displayEvents":Lorg/json/JSONArray;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 274
    .local v0, "clickEvents":Lorg/json/JSONArray;
    :try_start_0
    array-length v10, p0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v3, p0, v9

    .line 275
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->retrieveEvent(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v7

    .line 276
    .local v7, "reportJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "fileName":Ljava/lang/String;
    const-string v11, "request_"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 279
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 274
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 280
    .restart local v4    # "fileName":Ljava/lang/String;
    :cond_1
    const-string v11, "display_"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 281
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "reportJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Error creating SSP reporting request"

    invoke-static {v9, v10, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    const/4 v9, 0x0

    .line 318
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v9

    .line 282
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v7    # "reportJson":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v11, "click_"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 283
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 288
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v7    # "reportJson":Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 289
    const-string v9, "req"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 293
    const-string v9, "display"

    invoke-virtual {v6, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 297
    const-string v9, "click"

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    :cond_6
    const/4 v9, 0x2

    :try_start_2
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 312
    .local v5, "indentedReportJson":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 313
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 314
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Generated report.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_7
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 309
    .end local v5    # "indentedReportJson":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "Unable to format report with indentation"

    .restart local v5    # "indentedReportJson":Ljava/lang/String;
    goto :goto_3
.end method

.method private static countQueuedEvents()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 434
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 443
    .local v2, "tmpFiles":[Ljava/io/File;
    const/4 v0, 0x0

    .line 444
    .local v0, "cnt":I
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v2, v3

    .line 445
    .local v1, "tmpFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 446
    invoke-static {v1, v4}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setEventAsCompleted(Ljava/io/File;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    add-int/lit8 v0, v0, 0x1

    .line 444
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    .end local v1    # "tmpFile":Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 457
    return-void
.end method

.method private static deleteUploadedEvents([Ljava/io/File;)V
    .locals 7
    .param p0, "uploadEvents"    # [Ljava/io/File;

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "cnt":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 255
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete reporting file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 262
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 263
    return-void
.end method

.method private static getEventsToUpload()[Ljava/io/File;
    .locals 3

    .prologue
    .line 238
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$1;

    invoke-direct {v2}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 247
    .local v0, "eventsToUpload":[Ljava/io/File;
    return-object v0
.end method

.method private static incrementQueuedEventsCount()V
    .locals 4

    .prologue
    .line 465
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$300()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 466
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 470
    .local v0, "count":I
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v1

    sget-object v3, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    if-ne v1, v3, :cond_1

    .line 472
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 473
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Reporting batch size limit detected -- requesting upload"

    invoke-static {v1, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    .line 479
    :cond_1
    monitor-exit v2

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 351
    .local v0, "contents":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 359
    if-eqz v3, :cond_2

    .line 361
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 369
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 362
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 364
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 357
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    if-eqz v2, :cond_0

    .line 361
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 362
    :catch_2
    move-exception v1

    .line 363
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 361
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 364
    :cond_1
    :goto_3
    throw v4

    .line 362
    :catch_3
    move-exception v1

    .line 363
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close file <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 356
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private static retrieveEvent(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 417
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "contents":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    move-object v2, v3

    .line 426
    .end local v0    # "contents":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 421
    .restart local v0    # "contents":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing reporting file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static retrieveSiteId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v1

    const-string v2, "siteid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 376
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static saveToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "fileWritten":Z
    const/4 v2, 0x0

    .line 327
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v3, p1}, Lcom/millennialmedia/internal/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    if-eqz v3, :cond_2

    .line 334
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    const/4 v1, 0x1

    move-object v2, v3

    .line 342
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return v1

    .line 336
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 338
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing to file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    if-eqz v2, :cond_0

    .line 334
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 335
    const/4 v1, 0x1

    goto :goto_0

    .line 336
    :catch_2
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 334
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 335
    const/4 v1, 0x1

    .line 338
    :cond_1
    :goto_3
    throw v4

    .line 336
    :catch_3
    move-exception v0

    .line 337
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to close file <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 332
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 329
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method

.method private static setEventAsCompleted(Ljava/io/File;Z)Z
    .locals 4
    .param p0, "tmpFile"    # Ljava/io/File;
    .param p1, "incrementCounter"    # Z

    .prologue
    .line 485
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".tmp"

    const-string v3, ".json"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target file already exists + <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to rename temp file <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error deleting temp file <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 491
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    if-eqz p1, :cond_3

    .line 493
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->incrementQueuedEventsCount()V

    .line 496
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V
    .locals 4
    .param p0, "newState"    # Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .prologue
    .line 554
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 556
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 557
    monitor-exit v1

    .line 644
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$402(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 561
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$1;->$SwitchMap$com$millennialmedia$internal$AdPlacementReporter$UploadState:[I

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 565
    :pswitch_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to IDLE"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$3;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$3;-><init>()V

    .line 580
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchFrequency()I

    move-result v1

    int-to-long v2, v1

    .line 570
    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$502(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 585
    :pswitch_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to UPLOADING"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$500()Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 590
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$500()Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 592
    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->uploadNow()V

    goto :goto_0

    .line 597
    :pswitch_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to ERROR_NETWORK_UNAVAILABLE"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$4;

    invoke-direct {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$4;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 620
    :pswitch_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 621
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting upload state set to ERROR_SENDING_TO_SERVER"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_5
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$5;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$5;-><init>()V

    .line 640
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchFrequency()I

    move-result v1

    int-to-long v2, v1

    .line 630
    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$502(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto/16 :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static start()V
    .locals 4

    .prologue
    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMillennialDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.reporting/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 516
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 518
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to creating reporting directory"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->countQueuedEvents()V

    .line 530
    new-instance v1, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$2;

    invoke-direct {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$2;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$502(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0
.end method

.method private static storeEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "isComplete"    # Z

    .prologue
    .line 396
    if-nez p1, :cond_1

    .line 397
    const/4 v0, 0x0

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 400
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_2

    const-string v2, ".json"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->saveToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    if-eqz p3, :cond_0

    .line 404
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->incrementQueuedEventsCount()V

    goto :goto_0

    .line 400
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2
    const-string v2, ".tmp"

    goto :goto_1
.end method

.method private static storeSiteId(Ljava/lang/String;)V
    .locals 3
    .param p0, "siteId"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v1

    const-string v2, "siteid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->saveToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 384
    return-void
.end method

.method static uploadNow()V
    .locals 2

    .prologue
    .line 649
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting is starting upload"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$6;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$6;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 717
    return-void
.end method
