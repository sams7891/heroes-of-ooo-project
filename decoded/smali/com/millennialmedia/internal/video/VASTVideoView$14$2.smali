.class Lcom/millennialmedia/internal/video/VASTVideoView$14$2;
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

.field final synthetic val$fireClickTrackers:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$14;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/VASTVideoView$14;

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14$2;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$14;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14$2;->val$fireClickTrackers:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14$2;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$14;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->customClickUrls:Ljava/util/List;

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

    .line 1296
    .local v0, "customClickUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1297
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    goto :goto_0

    .line 1302
    .end local v0    # "customClickUrl":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14$2;->val$fireClickTrackers:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1303
    return-void
.end method
