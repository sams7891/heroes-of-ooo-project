.class public Lcom/millennialmedia/internal/playlistserver/PlayListServer;
.super Ljava/lang/Object;
.source "PlayListServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static activePlayListServerAdapterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportedAdFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const-class v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "web"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "native"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->supportedAdFormats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static getActivePlayListServerAdapter()Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->activePlayListServerAdapterClass:Ljava/lang/Class;

    .line 111
    .local v0, "selectedPlayListServerAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;>;"
    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlayListServerAdapterClass()Ljava/lang/Class;

    move-result-object v0

    .line 115
    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->getAdapter(Ljava/lang/Class;)Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V
    .locals 4
    .param p1, "playListLoadListener"    # Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "adPlacementMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getSdkEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    sget-object v2, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->TAG:Ljava/lang/String;

    const-string v3, "Unable to request ad, SDK is disabled.  Please contact Millennial Media."

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "SDK disabled"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    .line 90
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    sget-object v2, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->TAG:Ljava/lang/String;

    const-string v3, "Unable to request ad, no network connection found"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Network not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->getActivePlayListServerAdapter()Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .local v1, "playListServerAdapter":Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    new-instance v2, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;

    invoke-direct {v2, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;-><init>(Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V

    invoke-virtual {v1, p0, v2}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V

    goto :goto_0

    .line 63
    .end local v1    # "playListServerAdapter":Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setActivePlayListServerAdapter(Ljava/lang/Class;)V
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
    .line 103
    .local p0, "playListServerAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;>;"
    sput-object p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer;->activePlayListServerAdapterClass:Ljava/lang/Class;

    .line 104
    return-void
.end method
