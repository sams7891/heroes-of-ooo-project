.class public final Lcom/fyber/mediation/MediationAdapterStarter;
.super Ljava/lang/Object;
.source "MediationAdapterStarter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediationAdapterStarter"

.field public static adaptersListener:Lcom/fyber/mediation/AdaptersListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdaptersCount()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x6

    return v0
.end method

.method private static getConfigs(Ljava/util/concurrent/Future;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "futureConfig":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-static {}, Lcom/fyber/mediation/MediationConfigProvider;->getConfigs()Ljava/util/Map;

    move-result-object v0

    .line 135
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/fyber/mediation/MediationConfigProvider;->getRuntimeConfigs()Ljava/util/Map;

    move-result-object v2

    .line 136
    .local v2, "runtimeConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v0, v2}, Lcom/fyber/mediation/MediationAdapterStarter;->mergeConfigs(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 138
    if-eqz p0, :cond_0

    .line 139
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 140
    .local v3, "serverConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v0, v3}, Lcom/fyber/mediation/MediationAdapterStarter;->mergeConfigs(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 145
    .end local v3    # "serverConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "MediationAdapterStarter"

    const-string v5, "Exception occurred"

    invoke-static {v4, v5, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "adapter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 127
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 130
    :cond_0
    return-object v0
.end method

.method private static mergeConfigs(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "intoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p1, "fromConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 150
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    :goto_1
    return-object p0

    .line 150
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "network":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 153
    .local v1, "adapterIntoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 154
    .local v0, "adapterFromConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 157
    :cond_1
    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v0    # "adapterFromConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "adapterIntoConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "network":Ljava/lang/String;
    :cond_2
    const-string v4, "MediationAdapterStarter"

    const-string v5, "There were no configurations to override"

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static startAdColony(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/AdColonyCompatibilityAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/AdColonyCompatibilityAdapter;-><init>()V

    .line 38
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Starting adapter AdColony with version 2.3.3-r1"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter AdColony with version 2.3.3-r1 was started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "adcolony"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return-void

    .line 43
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter AdColony with version 2.3.3-r1 was not started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v1

    .line 46
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MediationAdapterStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while loading adapter AdColony with version 2.3.3-r1 - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startAdMob(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/AdMobCompatibilityAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/AdMobCompatibilityAdapter;-><init>()V

    .line 98
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Starting adapter AdMob with version 8.4.0-r1"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter AdMob with version 8.4.0-r1 was started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "admob"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return-void

    .line 103
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter AdMob with version 8.4.0-r1 was not started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MediationAdapterStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while loading adapter AdMob with version 8.4.0-r1 - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startAdapters(Landroid/app/Activity;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    const-string v1, "Inmobi"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startInmobi(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 113
    const-string v1, "AdColony"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startAdColony(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 114
    const-string v1, "Applifier"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startApplifier(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 115
    const-string v1, "FacebookAudienceNetwork"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startFacebookAudienceNetwork(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 116
    const-string v1, "Chartboost"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startChartboost(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 117
    const-string v1, "AdMob"

    invoke-static {p1, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigsForAdapter(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/fyber/mediation/MediationAdapterStarter;->startAdMob(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 118
    return-object v0
.end method

.method public static startAdapters(Landroid/app/Activity;Ljava/util/concurrent/Future;)Ljava/util/Map;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-static {p1}, Lcom/fyber/mediation/MediationAdapterStarter;->getConfigs(Ljava/util/concurrent/Future;)Ljava/util/Map;

    move-result-object v1

    .line 167
    .local v1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p0, v1}, Lcom/fyber/mediation/MediationAdapterStarter;->startAdapters(Landroid/app/Activity;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 168
    .local v0, "adapters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    sget-object v2, Lcom/fyber/mediation/MediationAdapterStarter;->adaptersListener:Lcom/fyber/mediation/AdaptersListener;

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/fyber/mediation/MediationAdapterStarter;->adaptersListener:Lcom/fyber/mediation/AdaptersListener;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/fyber/mediation/AdaptersListener;->startedAdapters(Ljava/util/Set;Ljava/util/Map;)V

    .line 171
    :cond_0
    return-object v0
.end method

.method private static startApplifier(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/ApplifierCompatibilityAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/ApplifierCompatibilityAdapter;-><init>()V

    .line 53
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Starting adapter Applifier with version 1.5.6-r2"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter Applifier with version 1.5.6-r2 was started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "applifier"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return-void

    .line 58
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter Applifier with version 1.5.6-r2 was not started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MediationAdapterStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while loading adapter Applifier with version 1.5.6-r2 - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startChartboost(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/ChartboostCompatibilityAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/ChartboostCompatibilityAdapter;-><init>()V

    .line 83
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Starting adapter Chartboost with version 6.4.1-r1"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter Chartboost with version 6.4.1-r1 was started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "chartboost"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return-void

    .line 88
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter Chartboost with version 6.4.1-r1 was not started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MediationAdapterStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while loading adapter Chartboost with version 6.4.1-r1 - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startFacebookAudienceNetwork(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/facebook/FacebookMediationAdapter;-><init>()V

    .line 68
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Starting adapter FacebookAudienceNetwork with version 4.10.0-r2"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter FacebookAudienceNetwork with version 4.10.0-r2 was started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "facebookaudiencenetwork"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return-void

    .line 73
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter FacebookAudienceNetwork with version 4.10.0-r2 was not started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MediationAdapterStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while loading adapter FacebookAudienceNetwork with version 4.10.0-r2 - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startInmobi(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fyber/mediation/MediationAdapter;>;"
    :try_start_0
    new-instance v0, Lcom/fyber/mediation/InmobiCompatibilityAdapter;

    invoke-direct {v0}, Lcom/fyber/mediation/InmobiCompatibilityAdapter;-><init>()V

    .line 23
    .local v0, "adapter":Lcom/fyber/mediation/MediationAdapter;
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Starting adapter Inmobi with version 5.2.3-r1"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/fyber/mediation/MediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter Inmobi with version 5.2.3-r1 was started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v2, "inmobi"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :goto_0
    return-void

    .line 28
    .restart local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :cond_0
    const-string v2, "MediationAdapterStarter"

    const-string v3, "Adapter Inmobi with version 5.2.3-r1 was not started successfully"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    .end local v0    # "adapter":Lcom/fyber/mediation/MediationAdapter;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MediationAdapterStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurred while loading adapter Inmobi with version 5.2.3-r1 - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
