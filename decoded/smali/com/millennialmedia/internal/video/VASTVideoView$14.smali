.class Lcom/millennialmedia/internal/video/VASTVideoView$14;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->registerVideoClicks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

.field final synthetic val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 1257
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$14$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$14$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$14;)V

    .line 1286
    .local v0, "fireClickTrackers":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1287
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$14;->val$videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    .line 1289
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 1306
    :goto_0
    return-void

    .line 1291
    :cond_0
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$14$2;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$14$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$14;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
