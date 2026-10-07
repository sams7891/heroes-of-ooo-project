.class public Lcom/millennialmedia/MMSDK;
.super Ljava/lang/Object;
.source "MMSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "6.1.0-5323db4"

.field private static appInfo:Lcom/millennialmedia/AppInfo;

.field public static initialized:Z

.field public static locationEnabled:Z

.field public static registeredPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static testInfo:Lcom/millennialmedia/TestInfo;

.field private static userData:Lcom/millennialmedia/UserData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/millennialmedia/MMSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInfo()Lcom/millennialmedia/AppInfo;
    .locals 2

    .prologue
    .line 282
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get app info, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    sget-object v0, Lcom/millennialmedia/MMSDK;->appInfo:Lcom/millennialmedia/AppInfo;

    return-object v0
.end method

.method public static getTestInfo()Lcom/millennialmedia/TestInfo;
    .locals 2

    .prologue
    .line 334
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get test info, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    sget-object v0, Lcom/millennialmedia/MMSDK;->testInfo:Lcom/millennialmedia/TestInfo;

    return-object v0
.end method

.method public static getUserData()Lcom/millennialmedia/UserData;
    .locals 2

    .prologue
    .line 252
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get user data, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    sget-object v0, Lcom/millennialmedia/MMSDK;->userData:Lcom/millennialmedia/UserData;

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 51
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    const-string v1, "Millennial Media SDK already initialized"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 58
    :cond_0
    if-nez p0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to initialize SDK, specified activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->initialize()V

    .line 63
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->init(Landroid/app/Activity;)V

    .line 64
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->initialize()V

    .line 66
    invoke-static {}, Lcom/millennialmedia/internal/ActivityListenerManager;->init()V

    .line 69
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerPackagedAdapters()V

    .line 70
    invoke-static {}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerPackagedAdapters()V

    .line 71
    invoke-static {}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerPackagedControllers()V

    .line 74
    const-string v0, "com.millennialmedia.clientmediation.AdMobMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 75
    const-string v0, "com.millennialmedia.clientmediation.ConversentMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 76
    const-string v0, "com.millennialmedia.clientmediation.InMobiMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 77
    const-string v0, "com.millennialmedia.clientmediation.AdColonyMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 78
    const-string v0, "com.millennialmedia.clientmediation.ChartboostMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 79
    const-string v0, "com.millennialmedia.clientmediation.FacebookMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 80
    const-string v0, "com.millennialmedia.clientmediation.MoPubMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 81
    const-string v0, "com.millennialmedia.clientmediation.VungleMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 82
    const-string v0, "com.millennialmedia.clientmediation.YahooMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 83
    const-string v0, "com.millennialmedia.clientmediation.TapjoyMediationAdapter"

    invoke-static {v0}, Lcom/millennialmedia/MMSDK;->registerMediationAdapter(Ljava/lang/String;)V

    .line 85
    invoke-static {v1}, Lcom/millennialmedia/internal/Handshake;->request(Z)V

    .line 86
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->init()V

    .line 88
    sput-boolean v1, Lcom/millennialmedia/MMSDK;->initialized:Z

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    return v0
.end method

.method public static registerAdAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
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
    .line 139
    .local p0, "adPlacementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "adAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "adControllerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 140
    return-void
.end method

.method public static registerAdController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V
    .locals 0
    .param p0, "adController"    # Lcom/millennialmedia/internal/adcontrollers/AdController;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V

    .line 152
    return-void
.end method

.method public static registerMediatedAdAdapter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
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
    .line 198
    .local p1, "adPlacementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "adAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerMediatedAdapter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 199
    return-void
.end method

.method private static registerMediationAdapter(Ljava/lang/String;)V
    .locals 6
    .param p0, "adapterClassName"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 159
    .local v1, "foundClass":Ljava/lang/Class;
    const-class v3, Lcom/millennialmedia/clientmediation/MediationAdapter;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    sget-object v3, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    const-string v4, "Unable to register mediation adapter, specified class is not an instance of MediationAdapter"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v1    # "foundClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v1    # "foundClass":Ljava/lang/Class;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/clientmediation/MediationAdapter;

    .line 170
    .local v2, "mediationAdapter":Lcom/millennialmedia/clientmediation/MediationAdapter;
    invoke-virtual {v2}, Lcom/millennialmedia/clientmediation/MediationAdapter;->register()V

    .line 172
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    sget-object v3, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering client mediation adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 175
    .end local v1    # "foundClass":Ljava/lang/Class;
    .end local v2    # "mediationAdapter":Lcom/millennialmedia/clientmediation/MediationAdapter;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    sget-object v3, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No class found for mediation adapter <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    sget-object v3, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    const-string v4, "Unable to create new instance of mediation adapter"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static registerPlayListServerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V
    .locals 0
    .param p0, "playListServerAdapter"    # Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->registerAdapter(Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;)V

    .line 111
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to register plugin, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    :cond_1
    sget-object v0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    const-string v1, "Unable to register plugin, neither id or version can be null or empty"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 222
    :cond_2
    sget-object v0, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    sget-object v0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered plugin with ID <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> and version <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setActiveAdServerAdapter(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "playListServerAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;>;"
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->setActivePlayListServerAdapter(Ljava/lang/Class;)V

    .line 125
    return-void
.end method

.method public static setAppInfo(Lcom/millennialmedia/AppInfo;)V
    .locals 2
    .param p0, "appInfo"    # Lcom/millennialmedia/AppInfo;

    .prologue
    .line 267
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set app info, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    sput-object p0, Lcom/millennialmedia/MMSDK;->appInfo:Lcom/millennialmedia/AppInfo;

    .line 272
    return-void
.end method

.method public static setLocationEnabled(Z)V
    .locals 3
    .param p0, "locationEnabled"    # Z

    .prologue
    .line 298
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set location state, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    sget-object v0, Lcom/millennialmedia/MMSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting location enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    sput-boolean p0, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    .line 306
    return-void
.end method

.method public static setTestInfo(Lcom/millennialmedia/TestInfo;)V
    .locals 2
    .param p0, "testInfo"    # Lcom/millennialmedia/TestInfo;

    .prologue
    .line 318
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set test info, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    sput-object p0, Lcom/millennialmedia/MMSDK;->testInfo:Lcom/millennialmedia/TestInfo;

    .line 323
    return-void
.end method

.method public static setUserData(Lcom/millennialmedia/UserData;)V
    .locals 2
    .param p0, "userData"    # Lcom/millennialmedia/UserData;

    .prologue
    .line 237
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to set user data, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    sput-object p0, Lcom/millennialmedia/MMSDK;->userData:Lcom/millennialmedia/UserData;

    .line 242
    return-void
.end method
