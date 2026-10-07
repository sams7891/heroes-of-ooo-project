.class Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

.field final synthetic val$mmActivity:Lcom/millennialmedia/internal/MMActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$5;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;->val$mmActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 657
    if-nez p2, :cond_0

    .line 658
    iget-object v0, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;->val$mmActivity:Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    .line 660
    :cond_0
    return-void
.end method
