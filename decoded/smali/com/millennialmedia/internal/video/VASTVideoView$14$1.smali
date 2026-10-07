.class Lcom/millennialmedia/internal/video/VASTVideoView$14$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/VASTVideoView$14;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/VASTVideoView$14;

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1261
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$14;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2300(Lcom/millennialmedia/internal/video/VASTVideoView;)Ljava/util/List;

    move-result-object v0

    .line 1264
    .local v0, "allWrapperVideoClicks":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    .line 1265
    .local v2, "wrapperVideoClicks":Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;
    iget-object v4, v2, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1266
    .local v1, "clickTrackingUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1267
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1268
    invoke-static {}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Firing wrapper video click tracker url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :cond_2
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 1275
    .end local v1    # "clickTrackingUrl":Ljava/lang/String;
    .end local v2    # "wrapperVideoClicks":Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$14;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickTrackingUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1276
    .restart local v1    # "clickTrackingUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1277
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1278
    invoke-static {}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Firing video click tracker url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :cond_5
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_1

    .line 1283
    .end local v1    # "clickTrackingUrl":Ljava/lang/String;
    :cond_6
    return-void
.end method
