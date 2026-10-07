.class public Lcom/millennialmedia/internal/ActivityListenerManager;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;,
        Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;,
        Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile activities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/millennialmedia/internal/ActivityListenerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->activities:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager;->getActivityState(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->activities:Ljava/util/Map;

    return-object v0
.end method

.method private static getActivityState(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    .locals 3
    .param p0, "activityHash"    # I
    .param p1, "createIfNotFound"    # Z

    .prologue
    .line 375
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager;->activities:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    .line 376
    .local v0, "activityState":Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 377
    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    .end local v0    # "activityState":Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    invoke-direct {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;-><init>()V

    .line 378
    .restart local v0    # "activityState":Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager;->activities:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_0
    return-object v0
.end method

.method public static getLifecycleState(I)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 5
    .param p0, "activityId"    # I

    .prologue
    .line 359
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 361
    .local v1, "lifecycleState":Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/millennialmedia/internal/ActivityListenerManager;->getActivityState(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 362
    .local v0, "activityState":Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->getLifecycleState()Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v1

    .line 366
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    sget-object v2, Lcom/millennialmedia/internal/ActivityListenerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lifecycle state <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for activity ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_1
    return-object v1
.end method

.method public static getLifecycleState(Landroid/app/Activity;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 346
    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->getLifecycleState(I)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 350
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "Lifecycle state <UNKNOWN> for null activity"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lcom/millennialmedia/internal/ActivityListenerManager$1;

    invoke-direct {v0}, Lcom/millennialmedia/internal/ActivityListenerManager$1;-><init>()V

    .line 305
    .local v0, "activityLifecycleCallbacks":Landroid/app/Application$ActivityLifecycleCallbacks;
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 306
    return-void
.end method

.method public static registerListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 3
    .param p0, "activityId"    # I
    .param p1, "activityListener"    # Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .prologue
    .line 311
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to register activity listener.\n\tactivity ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tactivity listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    if-nez p1, :cond_1

    .line 317
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager;->TAG:Ljava/lang/String;

    const-string v1, "Unable to register activity listener, provided instance is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/millennialmedia/internal/ActivityListenerManager;->getActivityState(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->registerListener(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_0
.end method

.method public static unregisterListener(ILcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 4
    .param p0, "activityId"    # I
    .param p1, "activityListener"    # Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .prologue
    .line 328
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    sget-object v1, Lcom/millennialmedia/internal/ActivityListenerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to unregister activity listener.\n\tactivity ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\tactivity listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    if-nez p1, :cond_2

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/millennialmedia/internal/ActivityListenerManager;->getActivityState(IZ)Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;

    move-result-object v0

    .line 338
    .local v0, "activityState":Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->unregisterListener(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    goto :goto_0
.end method
