.class Lcom/millennialmedia/internal/video/VASTVideoView$9;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->loadCompanionAd()V
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
    .line 954
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 957
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 958
    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 960
    .local v0, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 961
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$9;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1006
    :cond_0
    return-void
.end method
