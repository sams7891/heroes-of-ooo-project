.class Lcom/millennialmedia/internal/video/VASTVideoView$2;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$InLineAd;Ljava/util/List;Lcom/millennialmedia/internal/video/VASTVideoView$VASTVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private didPause:Z

.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->didPause:Z

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 4
    .param p1, "viewable"    # Z

    .prologue
    .line 379
    if-eqz p1, :cond_0

    .line 380
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    sget-object v3, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 381
    invoke-static {v2, v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1000(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;)Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "wrapperCreativeViewEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1100(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    .line 385
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1200(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1200(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v2

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1200(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$Creative;

    move-result-object v2

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$Creative;->linearAd:Lcom/millennialmedia/internal/video/VASTParser$LinearAd;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->trackingEvents:Ljava/util/Map;

    sget-object v3, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    .line 387
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 389
    .local v0, "creativeViewTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1100(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    .line 393
    .end local v0    # "creativeViewTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    .end local v1    # "wrapperCreativeViewEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    :cond_0
    if-nez p1, :cond_2

    .line 394
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->didPause:Z

    .line 395
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->pause()V

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    iget-boolean v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->didPause:Z

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$2;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/MMVideoView;->start()V

    goto :goto_0
.end method
