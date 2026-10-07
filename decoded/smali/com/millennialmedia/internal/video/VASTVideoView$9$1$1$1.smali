.class Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1$1;->this$3:Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 981
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1$1;->this$3:Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;->this$2:Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 984
    .local v0, "clickTrackingUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 985
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 988
    .end local v0    # "clickTrackingUrl":Ljava/lang/String;
    :cond_1
    return-void
.end method
