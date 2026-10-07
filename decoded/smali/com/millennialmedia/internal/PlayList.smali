.class public Lcom/millennialmedia/internal/PlayList;
.super Ljava/lang/Object;
.source "PlayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;,
        Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;,
        Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;,
        Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;,
        Lcom/millennialmedia/internal/PlayList$PlayListItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private currentPlayListPosition:I

.field public handshakeConfig:Ljava/lang/String;

.field public placementId:Ljava/lang/String;

.field public placementName:Ljava/lang/String;

.field private final playListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/PlayList$PlayListItem;",
            ">;"
        }
    .end annotation
.end field

.field public playListVersion:Ljava/lang/String;

.field public reportingEnabled:Z

.field public responseId:Ljava/lang/String;

.field public siteId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/PlayList;->playListItems:Ljava/util/List;

    .line 39
    iput v1, p0, Lcom/millennialmedia/internal/PlayList;->currentPlayListPosition:I

    .line 49
    iput-boolean v1, p0, Lcom/millennialmedia/internal/PlayList;->reportingEnabled:Z

    .line 140
    return-void
.end method

.method private static getAdAdapterForContent(Lcom/millennialmedia/internal/AdPlacement;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 5
    .param p0, "adPlacement"    # Lcom/millennialmedia/internal/AdPlacement;
    .param p1, "adContent"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    sget-object v2, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to get ad adapter for ad placement ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    if-nez p1, :cond_2

    .line 367
    sget-object v2, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find ad adapter, ad content is null"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    :goto_0
    return-object v0

    .line 372
    :cond_2
    invoke-static {p1}, Lcom/millennialmedia/internal/adcontrollers/AdController;->getControllerClassForContent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 373
    .local v1, "adControllerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_3

    .line 374
    sget-object v2, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine ad controller type for specified ad content <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getAdapterInstance(Ljava/lang/Class;Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v0

    .line 380
    .local v0, "adAdapter":Lcom/millennialmedia/internal/adadapters/AdAdapter;
    if-eqz v0, :cond_1

    .line 381
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    sget-object v2, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ad adapter <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for placement ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_4
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setErrorStatusFromResponseCode(Lcom/millennialmedia/internal/utils/HttpUtils$Response;)I
    .locals 1
    .param p1, "response"    # Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    .prologue
    .line 395
    iget v0, p1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    sparse-switch v0, :sswitch_data_0

    .line 401
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 398
    :sswitch_0
    const/4 v0, -0x2

    goto :goto_0

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x198 -> :sswitch_0
        0x1f8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V
    .locals 3
    .param p1, "playListItem"    # Lcom/millennialmedia/internal/PlayList$PlayListItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 159
    if-eqz p1, :cond_2

    .line 160
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding playlist item.\n\tPlaylist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPlaylist item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPlaylist item ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/millennialmedia/internal/PlayList$PlayListItem;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/PlayList;->playListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    const-string v1, "Unable to add null playlist item"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableReporting()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling reporting for placement id <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/PlayList;->placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> and playlist <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/PlayList;->reportingEnabled:Z

    .line 73
    return-void
.end method

.method public getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 23
    .param p1, "adPlacement"    # Lcom/millennialmedia/internal/AdPlacement;
    .param p2, "playListItemReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    .prologue
    .line 186
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 187
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Attempting to get ad adapter for placement.\n\tPlacement: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n\tPlacement ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    const/4 v4, 0x0

    .line 193
    .local v4, "adAdapter":Lcom/millennialmedia/internal/adadapters/AdAdapter;
    const/16 v18, -0x3

    .line 196
    .local v18, "status":I
    monitor-enter p0

    .line 197
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/PlayList;->currentPlayListPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList;->playListItems:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 198
    if-eqz p2, :cond_1

    .line 199
    const/16 v19, -0x3

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    .line 202
    :cond_1
    const/16 v19, 0x0

    monitor-exit p0

    .line 356
    :goto_0
    return-object v19

    .line 205
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList;->playListItems:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/millennialmedia/internal/PlayList;->currentPlayListPosition:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/millennialmedia/internal/PlayList;->currentPlayListPosition:I

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/millennialmedia/internal/PlayList$PlayListItem;

    .line 206
    .local v13, "playListItem":Lcom/millennialmedia/internal/PlayList$PlayListItem;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz p2, :cond_3

    .line 211
    iget-object v0, v13, Lcom/millennialmedia/internal/PlayList$PlayListItem;->itemId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->itemId:Ljava/lang/String;

    .line 214
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 215
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Processing playlist item ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/millennialmedia/internal/PlayList$PlayListItem;->itemId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_4
    instance-of v0, v13, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 219
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 220
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Processing client mediation playlist item ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/millennialmedia/internal/PlayList$PlayListItem;->itemId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v7, v13

    .line 222
    check-cast v7, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;

    .line 224
    .local v7, "clientMediationPlayListItem":Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;
    iget-object v0, v7, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;->networkId:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 225
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->getMediatedAdapterInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v4

    .line 227
    if-nez v4, :cond_9

    .line 228
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to find ad adapter for network ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;->networkId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v7    # "clientMediationPlayListItem":Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 349
    const/16 v18, 0x1

    .line 352
    :cond_7
    if-eqz p2, :cond_8

    .line 353
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->status:I

    :cond_8
    move-object/from16 v19, v4

    .line 356
    goto/16 :goto_0

    .line 206
    .end local v13    # "playListItem":Lcom/millennialmedia/internal/PlayList$PlayListItem;
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 229
    .restart local v7    # "clientMediationPlayListItem":Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;
    .restart local v13    # "playListItem":Lcom/millennialmedia/internal/PlayList$PlayListItem;
    :cond_9
    instance-of v0, v4, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 230
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to use ad adapter <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> for <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v7, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;->networkId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">, does not implement mediated ad interface"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    move-object/from16 v19, v4

    .line 236
    check-cast v19, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    new-instance v20, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;

    iget-object v0, v7, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;->siteId:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;->spaceId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v19 .. v20}, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;->setMediationInfo(Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;)V

    .line 240
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getClientMediationTimeout()I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    goto :goto_1

    .line 243
    .end local v7    # "clientMediationPlayListItem":Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;
    :cond_b
    instance-of v0, v13, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 244
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 245
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Processing server mediation playlist item ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/millennialmedia/internal/PlayList$PlayListItem;->itemId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object/from16 v16, v13

    .line 247
    check-cast v16, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;

    .line 249
    .local v16, "serverPlayListItem":Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getServerToServerTimeout()I

    move-result v17

    .line 252
    .local v17, "serverToServerTimeout":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->postBody:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 253
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->postBody:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->postContentType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v15

    .line 260
    .local v15, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :goto_2
    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 261
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve content for server mediation playlist item, placement ID <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/millennialmedia/internal/PlayList;->setErrorStatusFromResponseCode(Lcom/millennialmedia/internal/utils/HttpUtils$Response;)I

    move-result v18

    goto/16 :goto_1

    .line 257
    .end local v15    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :cond_d
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v15

    .restart local v15    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    goto :goto_2

    .line 266
    :cond_e
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->validateRegex:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_f

    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "(?s)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->validateRegex:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 267
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 269
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to validate content for server mediation playlist item due to \"no ad\" response for placement ID <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> and content <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/16 v18, -0x1

    goto/16 :goto_1

    .line 276
    :cond_f
    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/PlayList;->getAdAdapterForContent(Lcom/millennialmedia/internal/AdPlacement;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v4

    .line 277
    if-nez v4, :cond_10

    .line 278
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to find adapter for server mediation playlist item, placement ID <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> and content <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    :cond_10
    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V

    goto/16 :goto_1

    .line 285
    .end local v15    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    .end local v16    # "serverPlayListItem":Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;
    .end local v17    # "serverToServerTimeout":I
    :cond_11
    instance-of v0, v13, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 286
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 287
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Processing exchange mediation playlist item ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/millennialmedia/internal/PlayList$PlayListItem;->itemId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object v10, v13

    .line 289
    check-cast v10, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;

    .line 291
    .local v10, "exchangePlayListItem":Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getExchangeTimeout()I

    move-result v12

    .line 294
    .local v12, "exchangeTimeout":I
    iget-object v0, v10, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->postBody:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 295
    iget-object v0, v10, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v10, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->postBody:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v10, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->postContentType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v12}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v15

    .line 302
    .restart local v15    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :goto_3
    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 303
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve content for exchange mediation playlist item, placement ID <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/millennialmedia/internal/PlayList;->setErrorStatusFromResponseCode(Lcom/millennialmedia/internal/utils/HttpUtils$Response;)I

    move-result v18

    goto/16 :goto_1

    .line 299
    .end local v15    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :cond_13
    iget-object v0, v10, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;I)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v15

    .restart local v15    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    goto :goto_3

    .line 311
    :cond_14
    :try_start_2
    new-instance v11, Lorg/json/JSONObject;

    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    .local v11, "exchangeResponseJSON":Lorg/json/JSONObject;
    const-string v19, "ad"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "adContent":Ljava/lang/String;
    const-string v19, "ad_buyer"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "buyer":Ljava/lang/String;
    const-string v19, "ad_pru"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 316
    .local v14, "pru":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/millennialmedia/internal/PlayList;->getAdAdapterForContent(Lcom/millennialmedia/internal/AdPlacement;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v4

    .line 317
    if-eqz v4, :cond_16

    .line 318
    if-eqz p2, :cond_15

    .line 319
    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->buyer:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p2

    iput-object v14, v0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->pru:Ljava/lang/String;

    .line 322
    :cond_15
    iget-object v0, v15, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 329
    .end local v5    # "adContent":Ljava/lang/String;
    .end local v6    # "buyer":Ljava/lang/String;
    .end local v11    # "exchangeResponseJSON":Lorg/json/JSONObject;
    .end local v14    # "pru":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 330
    .local v9, "e":Lorg/json/JSONException;
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    const-string v20, "Error occurred when trying to parse ad content from exchange response"

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 325
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v5    # "adContent":Ljava/lang/String;
    .restart local v6    # "buyer":Ljava/lang/String;
    .restart local v11    # "exchangeResponseJSON":Lorg/json/JSONObject;
    .restart local v14    # "pru":Ljava/lang/String;
    :cond_16
    :try_start_3
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to find adapter for exchange mediation playlist item, placement ID <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> and content <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 334
    .end local v5    # "adContent":Ljava/lang/String;
    .end local v6    # "buyer":Ljava/lang/String;
    .end local v10    # "exchangePlayListItem":Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;
    .end local v11    # "exchangeResponseJSON":Lorg/json/JSONObject;
    .end local v12    # "exchangeTimeout":I
    .end local v14    # "pru":Ljava/lang/String;
    .end local v15    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :cond_17
    instance-of v0, v13, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 335
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_18

    .line 336
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Processing ad content playlist item ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v13, Lcom/millennialmedia/internal/PlayList$PlayListItem;->itemId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object v8, v13

    .line 338
    check-cast v8, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;

    .line 340
    .local v8, "contentPlayListItem":Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;
    iget-object v0, v8, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;->value:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/PlayList;->getAdAdapterForContent(Lcom/millennialmedia/internal/AdPlacement;Ljava/lang/String;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v4

    .line 341
    if-nez v4, :cond_6

    .line 342
    sget-object v19, Lcom/millennialmedia/internal/PlayList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to find adapter for ad content playlist item, placement ID <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "> and content <"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v8, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ">"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/millennialmedia/internal/PlayList;->currentPlayListPosition:I

    iget-object v1, p0, Lcom/millennialmedia/internal/PlayList;->playListItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
