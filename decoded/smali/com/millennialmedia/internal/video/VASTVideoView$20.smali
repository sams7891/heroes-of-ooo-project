.class Lcom/millennialmedia/internal/video/VASTVideoView$20;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->fireTrackingEvents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field final synthetic val$trackingEvents:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->val$trackingEvents:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->val$trackingEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;

    .line 1663
    .local v0, "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 1664
    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2800(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1666
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$20;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2900(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;)V

    goto :goto_0

    .line 1669
    .end local v0    # "trackingEvent":Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;
    :cond_1
    return-void
.end method
