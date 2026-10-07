.class public Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingEvent"
.end annotation


# instance fields
.field event:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->event:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 148
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    if-ne p0, p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    instance-of v3, p1, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    if-nez v3, :cond_2

    move v1, v2

    .line 159
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 162
    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    .line 164
    .local v0, "that":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->event:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->event:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 165
    goto :goto_0

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 168
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 179
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->event:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 181
    return v0
.end method
