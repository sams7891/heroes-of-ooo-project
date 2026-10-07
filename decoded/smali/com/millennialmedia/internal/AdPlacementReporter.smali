.class public Lcom/millennialmedia/internal/AdPlacementReporter;
.super Ljava/lang/Object;
.source "AdPlacementReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;,
        Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;,
        Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;,
        Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    }
.end annotation


# static fields
.field private static final EVENT_CLICK:Ljava/lang/String; = "click_"

.field private static final EVENT_DISPLAY:Ljava/lang/String; = "display_"

.field private static final EVENT_REQUEST:Ljava/lang/String; = "request_"

.field private static final EXTENSION_JSON:Ljava/lang/String; = ".json"

.field private static final EXTENSION_TEMP:Ljava/lang/String; = ".tmp"

.field public static final REPORTING_DIR:Ljava/lang/String; = "/.reporting/"

.field private static final REPORT_KEY_ADNET:Ljava/lang/String; = "adnet"

.field private static final REPORT_KEY_BUYER:Ljava/lang/String; = "buyer"

.field private static final REPORT_KEY_CLICK:Ljava/lang/String; = "click"

.field private static final REPORT_KEY_DISPLAY:Ljava/lang/String; = "display"

.field private static final REPORT_KEY_ITEM_ID:Ljava/lang/String; = "tag"

.field private static final REPORT_KEY_PLACEMENT_NAME:Ljava/lang/String; = "zone"

.field private static final REPORT_KEY_PRU:Ljava/lang/String; = "pru"

.field private static final REPORT_KEY_REQUEST:Ljava/lang/String; = "req"

.field private static final REPORT_KEY_RESPONSE_ID:Ljava/lang/String; = "a"

.field private static final REPORT_KEY_RESPONSE_TIME:Ljava/lang/String; = "resp"

.field private static final REPORT_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final REPORT_KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final SITEID_FILENAME:Ljava/lang/String; = "siteid"

.field public static SSP_REPORTING_PATH:Ljava/lang/String; = null

.field public static SSP_SITE_ID_PARAMETER:Ljava/lang/String; = null

.field private static final STARTUP_DELAY_IN_SECONDS:I = 0x5

.field public static final STATUS_AD_SERVED:I = 0x1

.field public static final STATUS_NO_AD:I = -0x1

.field public static final STATUS_NO_AD_ERROR:I = -0x3

.field public static final STATUS_NO_AD_TIMEOUT:I = -0x2

.field private static final TAG:Ljava/lang/String;

.field private static volatile numQueuedEvents:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile reportingDir:Ljava/io/File;

.field private static volatile scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private static final stateLock:Ljava/lang/Object;

.field private static volatile uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;


# instance fields
.field private volatile activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

.field private volatile buyer:Ljava/lang/String;

.field private clickReported:Z

.field private displayReported:Z

.field private volatile eventId:Ljava/lang/String;

.field private volatile itemId:Ljava/lang/String;

.field private volatile placementName:Ljava/lang/String;

.field private volatile playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

.field private volatile playlistReportJson:Lorg/json/JSONObject;

.field private volatile pru:Ljava/lang/String;

.field private volatile responseId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    const-class v0, Lcom/millennialmedia/internal/AdPlacementReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->stateLock:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 157
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->numQueuedEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 160
    const-string v0, "/admax/sdk/report/2"

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->SSP_REPORTING_PATH:Ljava/lang/String;

    .line 161
    const-string v0, "?dcn="

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->SSP_SITE_ID_PARAMETER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/internal/PlayList;)V
    .locals 5
    .param p1, "playList"    # Lcom/millennialmedia/internal/PlayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-boolean v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->clickReported:Z

    .line 164
    iput-boolean v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->displayReported:Z

    .line 734
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new reporting instance for responseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_0
    iget-object v0, p1, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1100(Ljava/lang/String;)V

    .line 741
    iget-object v0, p1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    .line 745
    :cond_1
    iget-object v0, p1, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    .line 746
    iget-object v0, p1, Lcom/millennialmedia/internal/PlayList;->placementName:Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    .line 749
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    .line 750
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 751
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "adnet"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "a"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 753
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v1, "zone"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v0, "request_"

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v4}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1200(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    .line 757
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    .line 758
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->start()V

    .line 759
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->reportingDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$002(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 108
    sput-object p0, Lcom/millennialmedia/internal/AdPlacementReporter;->reportingDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->numQueuedEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->stateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object v0
.end method

.method static synthetic access$402(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    .prologue
    .line 108
    sput-object p0, Lcom/millennialmedia/internal/AdPlacementReporter;->uploadState:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    return-object p0
.end method

.method static synthetic access$500()Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .prologue
    .line 108
    sput-object p0, Lcom/millennialmedia/internal/AdPlacementReporter;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p0
.end method

.method public static getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    .locals 1
    .param p0, "adPlacementReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter;

    .prologue
    .line 897
    if-nez p0, :cond_0

    .line 898
    const/4 v0, 0x0

    .line 903
    :goto_0
    return-object v0

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter()Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    .line 903
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    goto :goto_0
.end method

.method public static getPlayListReporter(Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/AdPlacementReporter;
    .locals 3
    .param p0, "playList"    # Lcom/millennialmedia/internal/PlayList;

    .prologue
    .line 883
    iget-boolean v1, p0, Lcom/millennialmedia/internal/PlayList;->reportingEnabled:Z

    if-eqz v1, :cond_0

    .line 885
    :try_start_0
    new-instance v1, Lcom/millennialmedia/internal/AdPlacementReporter;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/AdPlacementReporter;-><init>(Lcom/millennialmedia/internal/PlayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-object v1

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v2, "Error starting ad placement reporting"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 723
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v1, "Initializing"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1000()V

    .line 729
    return-void
.end method

.method public static reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 2
    .param p0, "adPlacementReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter;

    .prologue
    .line 944
    if-nez p0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    const/4 v1, -0x2

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    .line 952
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 955
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList()V

    goto :goto_0
.end method

.method public static reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 2
    .param p0, "adPlacementReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter;
    .param p1, "playListItemReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    .prologue
    .line 923
    if-nez p0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    if-eq v0, p1, :cond_2

    .line 928
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v1, "reportPlayListItem called but item is not the active item"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->activePlayListItemReporter:Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    goto :goto_0
.end method

.method public static reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;I)V
    .locals 0
    .param p0, "adPlacementReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter;
    .param p1, "playListItemReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    .param p2, "status"    # I

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 917
    :goto_0
    return-void

    .line 914
    :cond_0
    iput p2, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    .line 916
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    goto :goto_0
.end method

.method public static setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 0
    .param p0, "adPlacementReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter;

    .prologue
    .line 971
    if-nez p0, :cond_0

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked()V

    goto :goto_0
.end method

.method public static setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 0
    .param p0, "adPlacementReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter;

    .prologue
    .line 961
    if-nez p0, :cond_0

    .line 966
    :goto_0
    return-void

    .line 965
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed()V

    goto :goto_0
.end method


# virtual methods
.method getPlayListItemReporter()Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    .locals 3

    .prologue
    .line 788
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting playlist item start for responseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;-><init>(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    return-object v0
.end method

.method reportPlayList()V
    .locals 6

    .prologue
    .line 764
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    sget-object v2, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting playlist stop for responseId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v3, "resp"

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistProcessingElapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 770
    const-string v2, "request_"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1200(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    move-result-object v1

    .line 773
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 774
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1300(Ljava/io/File;Z)Z

    .line 778
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v3, "Error stopping playlist reporting"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V
    .locals 7
    .param p1, "playListItemReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    .prologue
    .line 798
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    sget-object v3, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reporting playlist item stop for responseId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 804
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "tag"

    iget-object v4, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->itemId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    const-string v3, "status"

    iget v4, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 806
    const-string v3, "resp"

    invoke-static {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->access$1400(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->getElapsedTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 809
    iget v3, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 810
    iget-object v3, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->itemId:Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->itemId:Ljava/lang/String;

    .line 811
    iget-object v3, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->buyer:Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->buyer:Ljava/lang/String;

    .line 812
    iget-object v3, p1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->pru:Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->pru:Ljava/lang/String;

    .line 813
    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v4, "buyer"

    iget-object v5, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->buyer:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v4, "pru"

    iget-object v5, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->pru:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const-string v4, "adnet"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 818
    .local v0, "adnetArray":Lorg/json/JSONArray;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 819
    const-string v3, "request_"

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    iget-object v5, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->playlistReportJson:Lorg/json/JSONObject;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1200(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    .end local v0    # "adnetArray":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v4, "Error adding playlist item"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setClicked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 858
    iget-boolean v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->clickReported:Z

    if-nez v2, :cond_1

    .line 859
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 860
    sget-object v2, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting ad clicked for responseId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 865
    .local v0, "clickJson":Lorg/json/JSONObject;
    const-string v2, "a"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 867
    const-string v2, "zone"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    const-string v2, "tag"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    const-string v2, "click_"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1200(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    .end local v0    # "clickJson":Lorg/json/JSONObject;
    :goto_0
    iput-boolean v6, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->clickReported:Z

    .line 878
    :cond_1
    return-void

    .line 872
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v3, "Error recording click"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setDisplayed()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 830
    iget-boolean v2, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->displayReported:Z

    if-nez v2, :cond_1

    .line 831
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 832
    sget-object v2, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting ad displayed for responseId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 837
    .local v0, "displayJson":Lorg/json/JSONObject;
    const-string v2, "a"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->responseId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 839
    const-string v2, "zone"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    const-string v2, "tag"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    const-string v2, "buyer"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->buyer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    const-string v2, "pru"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->pru:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    const-string v2, "display_"

    iget-object v3, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->eventId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->access$1200(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v0    # "displayJson":Lorg/json/JSONObject;
    :goto_0
    iput-boolean v6, p0, Lcom/millennialmedia/internal/AdPlacementReporter;->displayReported:Z

    .line 852
    :cond_1
    return-void

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/millennialmedia/internal/AdPlacementReporter;->TAG:Ljava/lang/String;

    const-string v3, "Error recording display"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
