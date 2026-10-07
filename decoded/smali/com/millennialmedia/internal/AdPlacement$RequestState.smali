.class public Lcom/millennialmedia/internal/AdPlacement$RequestState;
.super Ljava/lang/Object;
.source "AdPlacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestState"
.end annotation


# instance fields
.field private adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

.field private itemHash:I

.field private requestHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    .line 44
    return-void
.end method


# virtual methods
.method public compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z
    .locals 3
    .param p1, "requestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    const/4 v0, 0x0

    .line 79
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    iget v2, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    if-eq v1, v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    iget v2, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    if-ne v1, v2, :cond_0

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z
    .locals 2
    .param p1, "requestState"    # Lcom/millennialmedia/internal/AdPlacement$RequestState;

    .prologue
    .line 69
    iget v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    iget v1, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    if-eq v0, v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;-><init>()V

    .line 94
    .local v0, "newRequestState":Lcom/millennialmedia/internal/AdPlacement$RequestState;
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    .line 95
    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    .line 96
    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    iput-object v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    .line 98
    return-object v0
.end method

.method public getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    return-object v0
.end method

.method public getItemHash()I
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    .line 51
    iget v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    return v0
.end method

.method public setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 0
    .param p1, "adPlacementReporter"    # Lcom/millennialmedia/internal/AdPlacementReporter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    .line 58
    return-void
.end method
