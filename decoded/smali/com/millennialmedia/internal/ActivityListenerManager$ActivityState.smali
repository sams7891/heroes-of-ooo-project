.class Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
.super Ljava/lang/Object;
.source "ActivityListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/ActivityListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityState"
.end annotation


# instance fields
.field private activityListenerRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;->UNKNOWN:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    iput-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .line 49
    return-void
.end method

.method static synthetic access$202(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;)Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;
    .param p1, "x1"    # Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object p1
.end method


# virtual methods
.method getLifecycleState()Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->lifecycleState:Lcom/millennialmedia/internal/ActivityListenerManager$LifecycleState;

    return-object v0
.end method

.method getListeners()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, "activityListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;"
    iget-object v4, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->activityListenerRefs:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 58
    iget-object v4, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->activityListenerRefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 59
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 61
    .local v1, "activityListenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .line 62
    .local v0, "activityListener":Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;
    if-nez v0, :cond_0

    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0    # "activityListener":Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;
    .end local v1    # "activityListenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;>;"
    :cond_1
    return-object v2
.end method

.method registerListener(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 3
    .param p1, "activityListener"    # Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->activityListenerRefs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->activityListenerRefs:Ljava/util/List;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->activityListenerRefs:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered activity listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    return-void
.end method

.method unregisterListener(Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V
    .locals 5
    .param p1, "activityListener"    # Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->activityListenerRefs:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/millennialmedia/internal/ActivityListenerManager$ActivityState;->activityListenerRefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 93
    .local v0, "activityListenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 94
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistered activity listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 103
    .end local v0    # "activityListenerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;>;>;"
    :cond_2
    return-void
.end method
