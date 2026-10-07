.class Lcom/millennialmedia/internal/video/VASTVideoView$11;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->loadBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field final synthetic val$background:Lcom/millennialmedia/internal/video/VASTParser$Background;

.field final synthetic val$backgroundImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$Background;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->val$background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->val$backgroundImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$11;->val$background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Background;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 1099
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 1101
    .local v0, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1102
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$11$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$11$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$11;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1110
    :cond_0
    return-void
.end method
