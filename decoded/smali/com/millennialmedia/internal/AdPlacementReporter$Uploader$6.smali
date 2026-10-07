.class final Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$6;
.super Ljava/lang/Object;
.source "AdPlacementReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->uploadNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 657
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$600()[Ljava/io/File;

    move-result-object v0

    .line 658
    .local v0, "eventsToUpload":[Ljava/io/File;
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 660
    .local v1, "nextState":Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBaseUrl()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "reportingUrl":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 662
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to determine base url for request"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 666
    :cond_0
    sget-object v6, Lcom/millennialmedia/internal/AdPlacementReporter;->SSP_REPORTING_PATH:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    array-length v6, v0

    if-lez v6, :cond_7

    .line 669
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$700()Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, "siteId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 671
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to upload report -- siteId has not been set"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 714
    .end local v5    # "siteId":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    goto :goto_0

    .line 674
    .restart local v5    # "siteId":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$800([Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "request":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/millennialmedia/internal/AdPlacementReporter;->SSP_SITE_ID_PARAMETER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "application/json"

    .line 677
    invoke-static {v6, v3, v7}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v4

    .line 680
    .local v4, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget v6, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_5

    .line 681
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 682
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reporting successfully uploaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " events"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_3
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$900([Ljava/io/File;)V

    .line 692
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchSize()I

    move-result v7

    if-lt v6, v7, :cond_4

    .line 693
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->uploadNow()V

    goto/16 :goto_0

    .line 699
    :cond_4
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto :goto_1

    .line 701
    :cond_5
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isNetworkAvailable()Z

    move-result v6

    if-nez v6, :cond_6

    .line 702
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Reporting failed to upload because network is unavailable"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto :goto_1

    .line 705
    :cond_6
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reporting failed to upload with response code <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto/16 :goto_1

    .line 709
    .end local v3    # "request":Ljava/lang/String;
    .end local v4    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .end local v5    # "siteId":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 710
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Reporting found no events to upload"

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
