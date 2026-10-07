.class Lcom/millennialmedia/internal/video/VASTVideoView$15;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;->onComplete(Lcom/millennialmedia/internal/video/MMVideoView;)V
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
    .line 1413
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$15;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$15;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2400(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 1417
    return-void
.end method
