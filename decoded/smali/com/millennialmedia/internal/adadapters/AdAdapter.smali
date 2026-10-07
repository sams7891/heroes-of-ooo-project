.class public abstract Lcom/millennialmedia/internal/adadapters/AdAdapter;
.super Ljava/lang/Object;
.source "AdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;,
        Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static registeredAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredMediatedAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected adContent:Ljava/lang/String;

.field protected adMetadata:Lcom/millennialmedia/internal/AdMetadata;

.field public requestTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredMediatedAdapters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    .line 57
    return-void
.end method

.method public static getAdapterInstance(Ljava/lang/Class;Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "adPlacementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "adControllerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 167
    .local v1, "adAdapter":Lcom/millennialmedia/internal/adadapters/AdAdapter;
    const/4 v2, 0x0

    .line 169
    .local v2, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    .line 170
    .local v6, "registrationItem":Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;
    iget-object v8, v6, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adPlacementClass:Ljava/lang/Class;

    invoke-virtual {v8, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 171
    .local v3, "adapterMatch":Z
    iget-object v8, v6, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adControllerClass:Ljava/lang/Class;

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 173
    .local v4, "controllerMatch":Z
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 174
    iget-object v2, v6, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adAdapterClass:Ljava/lang/Class;

    .line 181
    .end local v3    # "adapterMatch":Z
    .end local v4    # "controllerMatch":Z
    .end local v6    # "registrationItem":Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;
    :cond_1
    if-nez v2, :cond_2

    .line 182
    :try_start_0
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Unable to find adapter class"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    move-exception v5

    .line 188
    .local v5, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create ad adapter instance for the placement type <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> and ad controller type <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 185
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getMediatedAdapterInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 8
    .param p0, "mediationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "adPlacementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 199
    .local v1, "adAdapter":Lcom/millennialmedia/internal/adadapters/AdAdapter;
    const/4 v2, 0x0

    .line 201
    .local v2, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredMediatedAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;

    .line 202
    .local v4, "registrationItem":Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;
    iget-object v6, v4, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->adPlacementClass:Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->mediationId:Ljava/lang/String;

    .line 203
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    iget-object v2, v4, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->adAdapterClass:Ljava/lang/Class;

    .line 212
    .end local v4    # "registrationItem":Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;
    :cond_1
    if-nez v2, :cond_2

    .line 213
    :try_start_0
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Unable to find ad mediation adapter class"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create ad mediation adapter instance for the placement type <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> and mediation ID <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 216
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "adPlacementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "adAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "adControllerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/millennialmedia/internal/AdPlacement;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to register ad adapter, specified placement class is not an instance of AdPlacement"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    const-class v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to register ad adapter, specified adapter class is not an instance of AdAdapter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1
    const-class v2, Lcom/millennialmedia/internal/adcontrollers/AdController;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to register ad adapter, specified controller class is not an instance of AdController"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering ad adapter <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for ad placement <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> and ad controller <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;>;"
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    .line 109
    .local v1, "registration":Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;
    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adPlacementClass:Ljava/lang/Class;

    if-ne v2, p0, :cond_4

    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adAdapterClass:Ljava/lang/Class;

    if-ne v2, p1, :cond_4

    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->adControllerClass:Ljava/lang/Class;

    if-ne v2, p2, :cond_4

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 116
    .end local v1    # "registration":Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;
    :cond_5
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredAdapters:Ljava/util/List;

    new-instance v3, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    invoke-direct {v3, p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public static registerMediatedAdapter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .param p0, "mediationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "adPlacementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "adAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to register mediation ad adapter, specified mediation ID cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    const-class v2, Lcom/millennialmedia/internal/AdPlacement;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to register mediation ad adapter, specified placement class is not an instance of AdPlacement"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_1
    const-class v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to register mediated ad adapter, specified adapter class is not an instance of AdAdapter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_2
    const-class v2, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 140
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to register mediated ad adapter, specified adapter class does not implement MediatedAdAdapter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering ad adapter <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> for mediation id <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> and ad placement <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_4
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredMediatedAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;>;"
    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;

    .line 153
    .local v1, "registration":Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;
    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->mediationId:Ljava/lang/String;

    if-ne v2, p0, :cond_5

    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->adPlacementClass:Ljava/lang/Class;

    if-ne v2, p1, :cond_5

    iget-object v2, v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->adAdapterClass:Ljava/lang/Class;

    if-ne v2, p2, :cond_5

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 160
    .end local v1    # "registration":Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;
    :cond_6
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registeredMediatedAdapters:Ljava/util/List;

    new-instance v3, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;

    invoke-direct {v3, p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public static registerPackagedAdapters()V
    .locals 3

    .prologue
    .line 75
    const-class v0, Lcom/millennialmedia/InlineAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/millennialmedia/InterstitialAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/millennialmedia/InlineAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 78
    const-class v0, Lcom/millennialmedia/InterstitialAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/millennialmedia/NativeAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 80
    return-void
.end method


# virtual methods
.method public setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 0
    .param p1, "adMetadata"    # Lcom/millennialmedia/internal/AdMetadata;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    .line 236
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "adContent"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->adContent:Ljava/lang/String;

    .line 230
    return-void
.end method
