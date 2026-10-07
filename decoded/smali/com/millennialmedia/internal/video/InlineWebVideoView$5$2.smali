.class Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 704
    if-eqz p2, :cond_0

    .line 705
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    iget-object v0, v0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1100(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V

    .line 707
    :cond_0
    return-void
.end method
