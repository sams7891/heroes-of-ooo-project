.class public abstract Lcom/millennialmedia/internal/AdPlacement;
.super Ljava/lang/Object;
.source "AdPlacement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/AdPlacement$RequestState;
    }
.end annotation


# static fields
.field protected static final STATE_AD_ADAPTER_LOAD_FAILED:Ljava/lang/String; = "ad_adapter_load_failed"

.field protected static final STATE_IDLE:Ljava/lang/String; = "idle"

.field protected static final STATE_LOADED:Ljava/lang/String; = "loaded"

.field protected static final STATE_LOADING_AD_ADAPTER:Ljava/lang/String; = "loading_ad_adapter"

.field protected static final STATE_LOADING_PLAY_LIST:Ljava/lang/String; = "loading_play_list"

.field protected static final STATE_LOAD_FAILED:Ljava/lang/String; = "load_failed"

.field protected static final STATE_PLAY_LIST_LOADED:Ljava/lang/String; = "play_list_loaded"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected volatile currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

.field public placementId:Ljava/lang/String;

.field protected volatile placementState:Ljava/lang/String;

.field protected volatile playList:Lcom/millennialmedia/internal/PlayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/millennialmedia/internal/AdPlacement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacement;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "idle"

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementState:Ljava/lang/String;

    .line 113
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MMSDK must be initialized before creating a new Ad Placement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-nez p1, :cond_1

    .line 118
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "PlacementId must be a non null."

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Lcom/millennialmedia/MMException;

    const-string v1, "PlacementId cannot be an empty string."

    invoke-direct {v0, v1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    return-void
.end method


# virtual methods
.method public getRequestState()Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .line 107
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement;->currentRequestState:Lcom/millennialmedia/internal/AdPlacement$RequestState;

    return-object v0
.end method
