.class public Lcom/millennialmedia/NativeAd;
.super Lcom/millennialmedia/internal/AdPlacement;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/NativeAd$ExpirationRunnable;,
        Lcom/millennialmedia/NativeAd$ImpressionListener;,
        Lcom/millennialmedia/NativeAd$NativeAdMetadata;,
        Lcom/millennialmedia/NativeAd$NativeErrorStatus;,
        Lcom/millennialmedia/NativeAd$NativeListener;,
        Lcom/millennialmedia/NativeAd$ComponentName;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID_BODY:Ljava/lang/String; = "body"

.field public static final COMPONENT_ID_CALL_TO_ACTION:Ljava/lang/String; = "callToAction"

.field public static final COMPONENT_ID_DISCLAIMER:Ljava/lang/String; = "disclaimer"

.field public static final COMPONENT_ID_ICON_IMAGE:Ljava/lang/String; = "iconImage"

.field public static final COMPONENT_ID_MAIN_IMAGE:Ljava/lang/String; = "mainImage"

.field public static final COMPONENT_ID_RATING:Ljava/lang/String; = "rating"

.field public static final COMPONENT_ID_TITLE:Ljava/lang/String; = "title"

.field private static final DEFAULT_DISCLAIMER_TEXT:Ljava/lang/String; = "Sponsored"

.field private static final MAX_COMP_INSTANCE_ID:I = 0x384

.field private static final MIN_COMP_INSTANCE_ID:I = 0x1

.field private static final MIN_IMPRESSION_DISPLAY:I = 0x3e8

.field public static final NATIVE_TYPE_INLINE:Ljava/lang/String; = "inline"

.field protected static final STATE_EXPIRED:Ljava/lang/String; = "expired"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accessedComponentIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private bodyInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private callToActionInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private disclaimerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private iconImageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private impressionListener:Lcom/millennialmedia/NativeAd$ImpressionListener;

.field public loadedComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mainImageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

.field private nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

.field private nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

.field private placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

.field private ratingInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestedNativeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private titleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private usingManagedLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/millennialmedia/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "nativeTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 374
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/AdPlacement;-><init>(Ljava/lang/String;)V

    .line 77
    iput-boolean v7, p0, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    .line 94
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    .line 119
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    .line 376
    if-eqz p2, :cond_0

    array-length v8, p2

    if-eqz v8, :cond_0

    aget-object v8, p2, v7

    if-eqz v8, :cond_0

    aget-object v8, p2, v7

    .line 377
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 379
    :cond_0
    new-instance v7, Lcom/millennialmedia/MMException;

    const-string v8, "Unable to create native ad, nativeTypes is required"

    invoke-direct {v7, v8}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 383
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v5, "typeIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeTypeDefinitions()Ljava/util/Map;

    move-result-object v3

    .line 387
    .local v3, "typeDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;>;"
    array-length v9, p2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_5

    aget-object v1, p2, v8

    .line 388
    .local v1, "specifiedTypeName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 390
    .local v0, "foundTypeId":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 391
    .local v2, "typeDefinitionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .local v4, "typeId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v6, v7, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->typeName:Ljava/lang/String;

    .line 394
    .local v6, "typeName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 395
    move-object v0, v4

    .line 401
    .end local v2    # "typeDefinitionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;>;"
    .end local v4    # "typeId":Ljava/lang/String;
    .end local v6    # "typeName":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 402
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 404
    :cond_4
    new-instance v7, Lcom/millennialmedia/MMException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load native ad, specified native type <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> is not recognized"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 409
    .end local v0    # "foundTypeId":Ljava/lang/String;
    .end local v1    # "specifiedTypeName":Ljava/lang/String;
    :cond_5
    iput-object v5, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->loadComponents(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/adadapters/NativeAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/NativeAd$NativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/millennialmedia/NativeAd;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/millennialmedia/NativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->onAdLeftApplication()V

    return-void
.end method

.method static synthetic access$202(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/millennialmedia/NativeAd;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/millennialmedia/NativeAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/PlayList;)Lcom/millennialmedia/internal/PlayList;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/PlayList;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->playList:Lcom/millennialmedia/internal/PlayList;

    return-object p1
.end method

.method static synthetic access$802(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/NativeAd;
    .param p1, "x1"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/NativeAd;
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "nativeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/millennialmedia/NativeAd;->createInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/millennialmedia/NativeAd;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Ljava/lang/String;[Ljava/lang/String;)Lcom/millennialmedia/NativeAd;
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "nativeTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 364
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    new-instance v0, Lcom/millennialmedia/NativeAd;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/NativeAd;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private fillImageViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V
    .locals 8
    .param p2, "componentId"    # Ljava/lang/String;
    .param p3, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .param p5, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .local p1, "imageViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    .local p4, "componentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;>;"
    const/4 v7, 0x0

    .line 1580
    if-nez p1, :cond_1

    .line 1606
    :cond_0
    return-void

    .line 1584
    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1587
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p5, :cond_2

    .line 1588
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 1593
    .local v4, "length":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 1594
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1596
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1597
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1598
    .local v3, "internalImageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1599
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0, v2, p3, v1, v5}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 1593
    .end local v3    # "internalImageView":Landroid/widget/ImageView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1590
    .end local v1    # "i":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "length":I
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4    # "length":I
    goto :goto_0

    .line 1602
    .restart local v1    # "i":I
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1603
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V
    .locals 7
    .param p2, "componentId"    # Ljava/lang/String;
    .param p3, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .param p5, "reset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1625
    .local p1, "textViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    .local p4, "componentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;>;"
    if-nez p1, :cond_1

    .line 1651
    :cond_0
    return-void

    .line 1629
    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1632
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p5, :cond_2

    .line 1633
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1638
    .local v3, "length":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1639
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1641
    .local v4, "textView":Landroid/widget/TextView;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1642
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1643
    .local v2, "internalTextView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1644
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    invoke-direct {p0, v4, p3, v1, v5}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 1638
    .end local v2    # "internalTextView":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1635
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "length":I
    goto :goto_0

    .line 1647
    .restart local v1    # "i":I
    .restart local v4    # "textView":Landroid/widget/TextView;
    :cond_3
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private findImageViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v1, "componentViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x384

    if-gt v2, v3, :cond_1

    .line 1680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1682
    .local v0, "componentView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1683
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1684
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "componentView":Landroid/view/View;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1679
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1686
    .restart local v0    # "componentView":Landroid/view/View;
    :cond_0
    new-instance v3, Lcom/millennialmedia/MMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected View with tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be a ImageView."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1695
    .end local v0    # "componentView":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    .local v1, "componentViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x384

    if-gt v2, v3, :cond_1

    .line 1658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1660
    .local v0, "componentView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1661
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1662
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "componentView":Landroid/view/View;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1664
    .restart local v0    # "componentView":Landroid/view/View;
    :cond_0
    new-instance v3, Lcom/millennialmedia/MMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected View with tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be a TextView."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1672
    .end local v0    # "componentView":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    .locals 6
    .param p1, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .param p2, "instanceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1154
    const/4 v1, 0x0

    .line 1156
    .local v1, "componentInfoList":Ljava/util/List;, "Ljava/util/List<+Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;>;"
    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v3, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    .line 1164
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 1165
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get component info for component name <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> and instance id <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">, did not find component info list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1193
    :cond_1
    :goto_1
    return-object v0

    .line 1158
    :cond_2
    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v3, :cond_3

    .line 1159
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    goto :goto_0

    .line 1160
    :cond_3
    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    if-ne p1, v3, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    goto :goto_0

    .line 1171
    :cond_4
    const/4 v3, 0x1

    if-ge p2, v3, :cond_5

    .line 1172
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get component info for component name <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> and instance id <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">, instance id must be greater than 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1175
    goto :goto_1

    .line 1178
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p2, :cond_6

    .line 1179
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get component info for component name <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> and instance id <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">, only <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> instances found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1179
    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1182
    goto :goto_1

    .line 1185
    :cond_6
    add-int/lit8 p2, p2, -0x1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    .line 1186
    .local v0, "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    if-nez v0, :cond_1

    .line 1187
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get component info for component name <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> and instance id <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">, found value is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1190
    goto/16 :goto_1
.end method

.method private getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "instanceId"    # I
    .param p2, "componentId"    # Ljava/lang/String;
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1228
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 1229
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve the requested <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> instance, instance value must be 1 or greater"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :goto_0
    return-object v1

    .line 1235
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1236
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    .line 1237
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve the requested <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> instance <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, only <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> instances available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1237
    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/millennialmedia/NativeAd;->markComponentAsAccessed(Ljava/lang/String;I)V

    .line 1246
    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private internalUpdateLayout(Landroid/view/View;ZZ)Z
    .locals 21
    .param p1, "layout"    # Landroid/view/View;
    .param p2, "failOnCantFill"    # Z
    .param p3, "resetViews"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1451
    const/16 v20, 0x0

    .line 1452
    .local v20, "viewUpdated":Z
    const/16 v19, 0x1

    .line 1456
    .local v19, "valid":Z
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1458
    .local v12, "componentIdToDefinition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v2, v2, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1461
    .local v11, "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    iget-object v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v12, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1464
    .end local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    :cond_0
    const-string v2, "body"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1465
    .local v3, "bodyViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const-string v2, "body"

    .line 1466
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1468
    .restart local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v4, :cond_1

    .line 1469
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the body component."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/16 v19, 0x0

    .line 1473
    :cond_1
    const-string v2, "callToAction"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1474
    .local v10, "callToActionViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const-string v2, "callToAction"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1475
    .restart local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v4, :cond_2

    .line 1476
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the \'Call To Action\' component."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const/16 v19, 0x0

    .line 1480
    :cond_2
    const-string v2, "disclaimer"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1481
    .local v13, "disclaimerViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const-string v2, "disclaimer"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1482
    .restart local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v11, :cond_3

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v4, :cond_3

    .line 1483
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the Disclaimer component."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const/16 v19, 0x0

    .line 1487
    :cond_3
    const-string v2, "iconImage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->findImageViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 1488
    .local v14, "iconViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    const-string v2, "iconImage"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1489
    .restart local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v11, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v4, :cond_4

    .line 1490
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the \'Icon Image\' component."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const/16 v19, 0x0

    .line 1494
    :cond_4
    const-string v2, "mainImage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->findImageViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1495
    .local v15, "mainImageViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    const-string v2, "mainImage"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1496
    .restart local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v11, :cond_5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v4, :cond_5

    .line 1497
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the \'Main Image\' component."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const/16 v19, 0x0

    .line 1501
    :cond_5
    const-string v2, "rating"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 1502
    .local v16, "ratingViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const-string v2, "rating"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1503
    .restart local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v11, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v4, :cond_6

    .line 1504
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the Rating component."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const/16 v19, 0x0

    .line 1508
    :cond_6
    const-string v2, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/NativeAd;->findTextViewsByComponentId(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 1509
    .local v17, "titleViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const-string v2, "title"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    check-cast v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1510
    .restart local v11    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v11, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v11, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v4, :cond_7

    .line 1511
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout does not contain the required number of Views for the Title component."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const/16 v19, 0x0

    .line 1515
    :cond_7
    if-eqz v19, :cond_c

    .line 1517
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 1518
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 1519
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 1520
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 1521
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 1522
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_b

    .line 1523
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v2, v4, :cond_b

    const/16 v18, 0x1

    .line 1525
    .local v18, "totalFill":Z
    :goto_1
    if-nez v18, :cond_8

    if-nez p2, :cond_a

    .line 1527
    :cond_8
    const-string v4, "body"

    sget-object v5, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    move-object/from16 v2, p0

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1529
    const-string v6, "disclaimer"

    sget-object v7, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    move-object/from16 v4, p0

    move-object v5, v13

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1532
    const-string v6, "rating"

    sget-object v7, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    move-object/from16 v4, p0

    move-object/from16 v5, v16

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1533
    const-string v6, "title"

    sget-object v7, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    move-object/from16 v4, p0

    move-object/from16 v5, v17

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1535
    const-string v6, "callToAction"

    sget-object v7, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    move-object/from16 v4, p0

    move-object v5, v10

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/millennialmedia/NativeAd;->fillTextViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1538
    const-string v6, "iconImage"

    sget-object v7, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    move-object/from16 v4, p0

    move-object v5, v14

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/millennialmedia/NativeAd;->fillImageViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1541
    const-string v6, "mainImage"

    sget-object v7, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    move-object/from16 v4, p0

    move-object v5, v15

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/millennialmedia/NativeAd;->fillImageViews(Ljava/util/List;Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;Z)V

    .line 1544
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    .line 1545
    const/16 v20, 0x1

    .line 1549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/NativeAd;->impressionListener:Lcom/millennialmedia/NativeAd$ImpressionListener;

    if-eqz v2, :cond_9

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/NativeAd;->impressionListener:Lcom/millennialmedia/NativeAd$ImpressionListener;

    invoke-virtual {v2}, Lcom/millennialmedia/NativeAd$ImpressionListener;->cancel()V

    .line 1552
    :cond_9
    new-instance v2, Lcom/millennialmedia/NativeAd$ImpressionListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/millennialmedia/NativeAd$ImpressionListener;-><init>(Lcom/millennialmedia/NativeAd;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/NativeAd;->impressionListener:Lcom/millennialmedia/NativeAd$ImpressionListener;

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/NativeAd;->impressionListener:Lcom/millennialmedia/NativeAd$ImpressionListener;

    invoke-virtual {v2}, Lcom/millennialmedia/NativeAd$ImpressionListener;->listen()V

    .line 1560
    .end local v18    # "totalFill":Z
    :cond_a
    :goto_2
    return v20

    .line 1523
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1557
    :cond_c
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Layout was not updated because it did not contain the required Views."

    invoke-static {v2, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 8
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 514
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v1

    .line 516
    .local v1, "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v4, v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v5, "play_list_loaded"

    .line 518
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v5, "ad_adapter_load_failed"

    .line 519
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 521
    :cond_0
    monitor-exit p0

    .line 617
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v4, "loading_ad_adapter"

    iput-object v4, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    .line 525
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/PlayList;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 528
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 529
    sget-object v4, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v5, "Unable to find ad adapter in play list"

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_2
    invoke-direct {p0, v1}, Lcom/millennialmedia/NativeAd;->onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 537
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/internal/AdPlacementReporter;->getPlayListItemReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;

    move-result-object v3

    .line 539
    .local v3, "playListItemReporter":Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->playList:Lcom/millennialmedia/internal/PlayList;

    invoke-virtual {v4, p0, v3}, Lcom/millennialmedia/internal/PlayList;->getNextAdAdapter(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    .line 540
    .local v2, "nativeAdAdapter":Lcom/millennialmedia/internal/adadapters/NativeAdapter;
    if-eqz v2, :cond_6

    .line 543
    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    .line 545
    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getItemHash()I

    .line 547
    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 550
    iget v0, v2, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->requestTimeout:I

    .line 551
    .local v0, "adAdapterTimeout":I
    if-lez v0, :cond_5

    .line 552
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v4, :cond_4

    .line 553
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v4}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 556
    :cond_4
    new-instance v4, Lcom/millennialmedia/NativeAd$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/millennialmedia/NativeAd$3;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 574
    :cond_5
    new-instance v4, Lcom/millennialmedia/NativeAd$4;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/millennialmedia/NativeAd$4;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;Lcom/millennialmedia/internal/adadapters/NativeAdapter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    invoke-virtual {v2, v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V

    goto :goto_0

    .line 614
    .end local v0    # "adAdapterTimeout":I
    :cond_6
    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayListItem(Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)V

    .line 615
    invoke-direct {p0, v1}, Lcom/millennialmedia/NativeAd;->onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private loadButtonComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 5
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p3, "componentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v2, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 770
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    .line 771
    .local v1, "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    if-nez v1, :cond_0

    .line 769
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 775
    :cond_0
    new-instance v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 776
    .local v0, "button":Landroid/widget/Button;
    iget-object v4, v1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 777
    invoke-direct {p0, v0, p2, v3, v1}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 779
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 782
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    return-void
.end method

.method private loadComponents(Lcom/millennialmedia/internal/adadapters/NativeAdapter;)Z
    .locals 6
    .param p1, "nativeAdAdapter"    # Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    .prologue
    const/4 v2, 0x0

    .line 622
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getType()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "nativeType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 624
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load components, native type is not set"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_0
    return v2

    .line 630
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 631
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load components, native type <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> is not a requested native type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_1
    invoke-static {v1}, Lcom/millennialmedia/internal/Handshake;->getNativeTypeDefinition(Ljava/lang/String;)Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    .line 638
    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    if-nez v3, :cond_2

    .line 639
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load components, unable to find list of required components for native type <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getTitleList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    .line 648
    const-string v2, "title"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->TITLE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->titleInfoList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 651
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getBodyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    .line 652
    const-string v2, "body"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->BODY:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->bodyInfoList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 655
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getIconImageList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    .line 656
    const-string v2, "iconImage"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->ICON_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->iconImageInfoList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/millennialmedia/NativeAd;->loadImageComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 659
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getMainImageList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    .line 660
    const-string v2, "mainImage"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->MAIN_IMAGE:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->mainImageInfoList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/millennialmedia/NativeAd;->loadImageComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 663
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getCallToActionList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    .line 664
    const-string v2, "callToAction"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->callToActionInfoList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/millennialmedia/NativeAd;->loadButtonComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 667
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getRatingList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    .line 668
    const-string v2, "rating"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->RATING:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->ratingInfoList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 671
    invoke-virtual {p1}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getDisclaimerList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    .line 674
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 675
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 676
    .local v0, "disclaimerComponentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    const-string v2, "Sponsored"

    iput-object v2, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 678
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v0    # "disclaimerComponentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    :cond_3
    const-string v2, "disclaimer"

    sget-object v3, Lcom/millennialmedia/NativeAd$ComponentName;->DISCLAIMER:Lcom/millennialmedia/NativeAd$ComponentName;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->disclaimerInfoList:Ljava/util/List;

    invoke-direct {p0, v2, v3, v4}, Lcom/millennialmedia/NativeAd;->loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V

    .line 683
    invoke-direct {p0, v1}, Lcom/millennialmedia/NativeAd;->validateLoadedComponents(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private loadImageComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p3, "componentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 747
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    .line 748
    .local v0, "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;
    if-nez v0, :cond_0

    .line 746
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    :cond_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 754
    .local v3, "imageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/millennialmedia/NativeAd;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 755
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 756
    invoke-direct {p0, v4, p2, v2, v0}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 758
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 761
    .end local v0    # "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;
    .end local v3    # "imageDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    return-void
.end method

.method private loadTextComponentArray(Ljava/lang/String;Lcom/millennialmedia/NativeAd$ComponentName;Ljava/util/List;)V
    .locals 5
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/NativeAd$ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p3, "componentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 725
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    .line 726
    .local v0, "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    if-nez v0, :cond_0

    .line 724
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 730
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 731
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    invoke-direct {p0, v3, p2, v2, v0}, Lcom/millennialmedia/NativeAd;->setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    .line 734
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 737
    .end local v0    # "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    return-void
.end method

.method private markComponentAsAccessed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1318
    .local v0, "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1320
    .restart local v0    # "indexSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1324
    return-void
.end method

.method private onAdAdapterLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 3
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1734
    monitor-enter p0

    .line 1735
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1736
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "onAdAdapterLoadFailed called but load state is not valid"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :cond_0
    monitor-exit p0

    .line 1753
    :goto_0
    return-void

    .line 1742
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v1, "loading_ad_adapter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1743
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1744
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdAdapterLoadFailed called but placement state is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1750
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1749
    :cond_3
    :try_start_1
    const-string v0, "ad_adapter_load_failed"

    iput-object v0, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    .line 1750
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1752
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->loadAdAdapter(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    goto :goto_0
.end method

.method private onAdLeftApplication()V
    .locals 3

    .prologue
    .line 1847
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad left application"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1851
    .local v0, "localNativeListener":Lcom/millennialmedia/NativeAd$NativeListener;
    if-eqz v0, :cond_0

    .line 1852
    new-instance v1, Lcom/millennialmedia/NativeAd$9;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$9;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    .line 1860
    :cond_0
    return-void
.end method

.method private onExpired(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1865
    monitor-enter p0

    .line 1866
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1867
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1868
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "onExpired called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    :cond_0
    monitor-exit p0

    .line 1896
    :cond_1
    :goto_0
    return-void

    .line 1873
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v2, "loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1874
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1875
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExpired called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1881
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1880
    :cond_4
    :try_start_1
    const-string v1, "expired"

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    .line 1881
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1883
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Ad expired"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1887
    .local v0, "localNativeListener":Lcom/millennialmedia/NativeAd$NativeListener;
    if-eqz v0, :cond_1

    .line 1888
    new-instance v1, Lcom/millennialmedia/NativeAd$10;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$10;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onLoadFailed(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1807
    monitor-enter p0

    .line 1808
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1809
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1810
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "onLoadFailed called but load state is not valid"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    :cond_0
    monitor-exit p0

    .line 1842
    :cond_1
    :goto_0
    return-void

    .line 1815
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_ad_adapter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v2, "loading_play_list"

    .line 1816
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1817
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1818
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFailed called but placement state is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1829
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1823
    :cond_4
    :try_start_1
    const-string v1, "load_failed"

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    .line 1825
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Load failed"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopRequestTimeoutTimers()V

    .line 1828
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1829
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1832
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1833
    .local v0, "localNativeListener":Lcom/millennialmedia/NativeAd$NativeListener;
    if-eqz v0, :cond_1

    .line 1834
    new-instance v1, Lcom/millennialmedia/NativeAd$8;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$8;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onLoadSucceeded(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 8
    .param p1, "callerRequestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1758
    monitor-enter p0

    .line 1759
    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v3, p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1760
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1761
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "onLoadSucceeded called but load state is not valid"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :cond_0
    monitor-exit p0

    .line 1802
    :cond_1
    :goto_0
    return-void

    .line 1766
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v4, "loading_ad_adapter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1767
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1768
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLoadSucceeded called but placement state is not valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 1779
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1773
    :cond_4
    :try_start_1
    const-string v3, "loaded"

    iput-object v3, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    .line 1775
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Load succeeded"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopRequestTimeoutTimers()V

    .line 1777
    invoke-direct {p0, p1}, Lcom/millennialmedia/NativeAd;->startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 1778
    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/internal/AdPlacementReporter;->reportPlayList(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1779
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1783
    :try_start_2
    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onPostLoaded"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/millennialmedia/NativeAd;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1784
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1792
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 1793
    .local v1, "localNativeListener":Lcom/millennialmedia/NativeAd$NativeListener;
    if-eqz v1, :cond_1

    .line 1794
    new-instance v3, Lcom/millennialmedia/NativeAd$7;

    invoke-direct {v3, p0, v1}, Lcom/millennialmedia/NativeAd$7;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOffUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1785
    .end local v1    # "localNativeListener":Lcom/millennialmedia/NativeAd$NativeListener;
    :catch_0
    move-exception v0

    .line 1786
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1787
    sget-object v3, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v4, "Could not find method <onPostLoaded> in adAdapter"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setComponentClickListener(Landroid/view/View;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .param p3, "index"    # I
    .param p4, "componentInfo"    # Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v2

    .line 1258
    .local v2, "reporter":Lcom/millennialmedia/internal/AdPlacementReporter;
    new-instance v0, Lcom/millennialmedia/NativeAd$6;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/NativeAd$6;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacementReporter;Lcom/millennialmedia/NativeAd$ComponentName;ILcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1311
    return-void
.end method

.method private startExpirationTimer(Lcom/millennialmedia/internal/AdPlacement$RequestState;)V
    .locals 4
    .param p1, "requestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 1713
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->stopExpirationTimer()V

    .line 1715
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeExpirationDuration()I

    move-result v0

    .line 1716
    .local v0, "expirationDuration":I
    if-lez v0, :cond_0

    .line 1717
    new-instance v1, Lcom/millennialmedia/NativeAd$ExpirationRunnable;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/NativeAd$ExpirationRunnable;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 1721
    :cond_0
    return-void
.end method

.method private stopExpirationTimer()V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->expirationRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1729
    :cond_0
    return-void
.end method

.method private stopRequestTimeoutTimers()V
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->adAdapterRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 1708
    :cond_1
    return-void
.end method

.method private validateLoadedComponents(Ljava/lang/String;)Z
    .locals 9
    .param p1, "nativeType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v2, "missingComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v6, v6, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 694
    .local v0, "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    if-eqz v0, :cond_2

    .line 695
    iget v3, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->adverstiserRequired:I

    .line 697
    .local v3, "requiredComponentCount":I
    iget-object v7, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    iget-object v8, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 698
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v3, :cond_0

    .line 699
    :cond_1
    iget-object v7, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "requiredComponentCount":I
    :cond_2
    sget-object v6, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v7, "Missing configuration data for native type: %s."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .end local v0    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    :goto_1
    return v4

    .line 709
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 710
    sget-object v5, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load required components <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> for native type <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v4, v5

    .line 716
    goto :goto_1
.end method

.method private validateRequiredComponentAccess()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1329
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v4, "invalidComponents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v5, v5, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->componentDefinitions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;

    .line 1334
    .local v1, "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    const/4 v2, 0x0

    .line 1336
    .local v2, "count":I
    iget-object v6, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    iget-object v7, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1337
    .local v0, "accessedIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 1338
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1341
    :cond_1
    iget v6, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    if-ge v2, v6, :cond_0

    .line 1342
    const-string v6, "Component: %s, required: %d, accessed: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->componentId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v1, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;->publisherRequired:I

    .line 1344
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1343
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1342
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1348
    .end local v0    # "accessedIndices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "componentDefinition":Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition$ComponentDefinition;
    .end local v2    # "count":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to validate that all required native components have been accessed:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1350
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1352
    .local v3, "errorMessage":Ljava/lang/String;
    sget-object v5, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1355
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public fireClicked()V
    .locals 3

    .prologue
    .line 1203
    sget-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/NativeAd;->getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    .line 1204
    .local v0, "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    if-nez v0, :cond_1

    .line 1205
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to fire clicked, found component info is null"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setClicked(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    .line 1212
    iget-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1213
    new-instance v1, Lcom/millennialmedia/NativeAd$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/NativeAd$5;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireImpression()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 860
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Native ad is not in a loaded state, you must load before showing"

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->logAndFireMMException(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    if-eqz v1, :cond_1

    .line 866
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Impression firing is disabled when using a managed layout."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 872
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->validateRequiredComponentAccess()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "All required components have been accessed, firing impression"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdPlacement$RequestState;->getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->setDisplayed(Lcom/millennialmedia/internal/AdPlacementReporter;)V

    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/millennialmedia/MMException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBody()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getBody(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getBody(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get body, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v0, 0x0

    .line 958
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "body"

    const-string v1, "body"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getCallToActionButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1027
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getCallToActionButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getCallToActionButton(I)Landroid/widget/Button;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get call to action button, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "callToAction"

    const-string v1, "call to action"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    goto :goto_0
.end method

.method public getCallToActionUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1115
    sget-object v1, Lcom/millennialmedia/NativeAd$ComponentName;->CALL_TO_ACTION:Lcom/millennialmedia/NativeAd$ComponentName;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/millennialmedia/NativeAd;->getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    .line 1116
    .local v0, "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    if-nez v0, :cond_0

    .line 1117
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get call to action url, found component info is not for a call to action component"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const/4 v1, 0x0

    .line 1123
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisclaimer()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getDisclaimer(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getDisclaimer(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get disclaimer, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x0

    .line 1103
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "disclaimer"

    const-string v1, "disclaimer"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getIconImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getIconImage(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getIconImage(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get icon image, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const/4 v0, 0x0

    .line 987
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "iconImage"

    const-string v1, "icon image"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getImageUrl(Lcom/millennialmedia/NativeAd$ComponentName;I)Ljava/lang/String;
    .locals 3
    .param p1, "componentName"    # Lcom/millennialmedia/NativeAd$ComponentName;
    .param p2, "instanceId"    # I

    .prologue
    .line 1135
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/NativeAd;->getComponentInfo(Lcom/millennialmedia/NativeAd$ComponentName;I)Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;

    move-result-object v0

    .line 1136
    .local v0, "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    instance-of v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    if-nez v1, :cond_0

    .line 1137
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get image url, found component info is not for a image component"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const/4 v1, 0x0

    .line 1142
    .end local v0    # "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    :goto_0
    return-object v1

    .restart local v0    # "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    :cond_0
    check-cast v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    .end local v0    # "componentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    iget-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMainImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getMainImage(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getMainImage(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get main image, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const/4 v0, 0x0

    .line 1016
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mainImage"

    const-string v1, "main image"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getNativeType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 891
    sget-object v1, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get native type, ad not loaded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_0
    :goto_0
    return-object v0

    .line 896
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/NativeAd;->nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v1, :cond_0

    .line 900
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->nativeTypeDefinition:Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;

    iget-object v0, v0, Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;->typeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRating()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getRating(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getRating(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get rating, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const/4 v0, 0x0

    .line 1074
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "rating"

    const-string v1, "rating"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/NativeAd;->getTitle(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(I)Landroid/widget/TextView;
    .locals 2
    .param p1, "instanceId"    # I

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get title, ad not loaded"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/4 v0, 0x0

    .line 929
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "title"

    const-string v1, "title"

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->getComponentInstance(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public hasExpired()Z
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v1, "expired"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inflateLayout(Landroid/content/Context;[I)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1406
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1407
    sget-object v5, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v7, "NativeAd.inflateLayout must be called on the UI thread."

    invoke-static {v5, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 1444
    :cond_0
    :goto_0
    return-object v4

    .line 1412
    :cond_1
    if-nez p1, :cond_2

    .line 1413
    sget-object v5, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v7, "Unable to inflate a layout because the provided Context is null."

    invoke-static {v5, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 1415
    goto :goto_0

    .line 1418
    :cond_2
    if-eqz p2, :cond_3

    array-length v7, p2

    if-nez v7, :cond_4

    .line 1419
    :cond_3
    sget-object v5, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v7, "Unable to inflate a layout because the layoutIds are null or empty."

    invoke-static {v5, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 1421
    goto :goto_0

    .line 1424
    :cond_4
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1425
    sget-object v5, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v7, "Cannot inflate a layout. The NativeAd is not loaded."

    invoke-static {v5, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 1427
    goto :goto_0

    .line 1430
    :cond_5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1431
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 1433
    .local v4, "selectedLayout":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, p2

    if-ge v1, v7, :cond_0

    .line 1434
    aget v7, p2, v1

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1435
    .local v2, "layout":Landroid/view/View;
    array-length v7, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_6

    const/4 v0, 0x1

    .line 1437
    .local v0, "failOnCantFill":Z
    :goto_2
    invoke-direct {p0, v2, v0, v5}, Lcom/millennialmedia/NativeAd;->internalUpdateLayout(Landroid/view/View;ZZ)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1438
    move-object v4, v2

    .line 1440
    goto :goto_0

    .end local v0    # "failOnCantFill":Z
    :cond_6
    move v0, v5

    .line 1435
    goto :goto_2

    .line 1433
    .restart local v0    # "failOnCantFill":Z
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public invokeDefaultAction()V
    .locals 4

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 825
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v3, "Unable to invoke default action, ad not loaded"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    if-eqz v2, :cond_0

    .line 834
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->nativeAdAdapter:Lcom/millennialmedia/internal/adadapters/NativeAdapter;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;->getDefaultAction()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "defaultActionUrl":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 836
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v3, "Unable to invoke default action, no default action url found"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 844
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 845
    invoke-direct {p0}, Lcom/millennialmedia/NativeAd;->onAdLeftApplication()V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public load(Landroid/content/Context;Lcom/millennialmedia/NativeAd$NativeAdMetadata;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeAdMetadata"    # Lcom/millennialmedia/NativeAd$NativeAdMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v2, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading playlist for placement ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/NativeAd;->placementId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    if-nez p1, :cond_0

    .line 428
    new-instance v2, Lcom/millennialmedia/MMException;

    const-string v3, "Unable to load native, specified context cannot be null"

    invoke-direct {v2, v3}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->context:Landroid/content/Context;

    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v3, "idle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v3, "load_failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    const-string v3, "loaded"

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    monitor-exit p0

    .line 508
    :goto_0
    return-void

    .line 439
    :cond_1
    const-string v2, "loading_play_list"

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->placementState:Ljava/lang/String;

    .line 440
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->playList:Lcom/millennialmedia/internal/PlayList;

    .line 444
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->accessedComponentIndices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 445
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->loadedComponents:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 446
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/millennialmedia/NativeAd;->usingManagedLayout:Z

    .line 449
    if-nez p2, :cond_2

    .line 450
    new-instance p2, Lcom/millennialmedia/NativeAd$NativeAdMetadata;

    .end local p2    # "nativeAdMetadata":Lcom/millennialmedia/NativeAd$NativeAdMetadata;
    invoke-direct {p2}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;-><init>()V

    .line 453
    .restart local p2    # "nativeAdMetadata":Lcom/millennialmedia/NativeAd$NativeAdMetadata;
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;

    move-result-object v0

    .line 456
    .local v0, "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 460
    :cond_3
    new-instance v2, Lcom/millennialmedia/NativeAd$1;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/NativeAd$1;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    .line 470
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getNativeTimeout()I

    move-result v3

    int-to-long v4, v3

    .line 460
    invoke-static {v2, v4, v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/NativeAd;->placementRequestTimeoutRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    .line 473
    invoke-virtual {p2, p0}, Lcom/millennialmedia/NativeAd$NativeAdMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v1

    .line 474
    .local v1, "nativeAdMetadataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "nativeTypes"

    iget-object v3, p0, Lcom/millennialmedia/NativeAd;->requestedNativeTypes:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v2, Lcom/millennialmedia/NativeAd$2;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/NativeAd$2;-><init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/internal/AdPlacement$RequestState;)V

    invoke-static {v1, v2}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V

    goto :goto_0

    .line 440
    .end local v0    # "localRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .end local v1    # "nativeAdMetadataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setListener(Lcom/millennialmedia/NativeAd$NativeListener;)V
    .locals 0
    .param p1, "nativeListener"    # Lcom/millennialmedia/NativeAd$NativeListener;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/millennialmedia/NativeAd;->nativeListener:Lcom/millennialmedia/NativeAd$NativeListener;

    .line 794
    return-void
.end method

.method public updateLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "NativeAd.updateLayout must be called on the UI thread."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    :goto_0
    return-void

    .line 1374
    :cond_0
    if-nez p1, :cond_1

    .line 1375
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Unable to updated; the provided layout was null."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1380
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/NativeAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1381
    sget-object v0, Lcom/millennialmedia/NativeAd;->TAG:Ljava/lang/String;

    const-string v1, "Cannot update the layout. The NativeAd is not loaded."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1386
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/millennialmedia/NativeAd;->internalUpdateLayout(Landroid/view/View;ZZ)Z

    goto :goto_0
.end method
