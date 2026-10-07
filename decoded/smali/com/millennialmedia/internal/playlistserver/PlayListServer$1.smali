.class final Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;
.super Ljava/lang/Object;
.source "PlayListServer.java"

# interfaces
.implements Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/playlistserver/PlayListServer;->loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFailed(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public loadSucceeded(Lcom/millennialmedia/internal/PlayList;)V
    .locals 3
    .param p1, "playList"    # Lcom/millennialmedia/internal/PlayList;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoaded(Lcom/millennialmedia/internal/PlayList;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/playlistserver/PlayListServer$1;->val$playListLoadListener:Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Playlist provided by adapter is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/playlistserver/PlayListServer$PlayListLoadListener;->onLoadFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
