.class public Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;
.super Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressEvent"
.end annotation


# instance fields
.field public offset:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-object v0, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->progress:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;-><init>(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;Ljava/lang/String;)V

    .line 196
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    if-ne p0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    instance-of v3, p1, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    if-nez v3, :cond_2

    move v1, v2

    .line 207
    goto :goto_0

    .line 209
    :cond_2
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 210
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;

    .line 215
    .local v0, "that":Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 216
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->hashCode()I

    move-result v0

    .line 227
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTParser$ProgressEvent;->offset:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 229
    return v0
.end method
