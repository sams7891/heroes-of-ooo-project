.class Lcom/millennialmedia/internal/video/VASTVideoView$3;
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
.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$3;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewableChanged(Z)V
    .locals 3
    .param p1, "viewable"    # Z

    .prologue
    .line 418
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$3;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$3;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 419
    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$3;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 422
    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;->creativeView:Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 424
    .local v0, "creativeViewTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$3;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1100(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/util/List;)V

    .line 426
    .end local v0    # "creativeViewTrackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;>;"
    :cond_0
    return-void
.end method
