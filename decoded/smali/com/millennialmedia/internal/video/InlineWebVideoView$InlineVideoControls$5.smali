.class Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;
.super Ljava/lang/Object;
.source "InlineWebVideoView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/MMVideoView;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

.field final synthetic val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

.field final synthetic val$this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;Lcom/millennialmedia/internal/video/InlineWebVideoView;Lcom/millennialmedia/internal/video/MMVideoView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    iput-object p3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x3

    .line 163
    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    if-eqz v3, :cond_0

    .line 164
    if-eqz p2, :cond_1

    .line 165
    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->val$mmVideoView:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    .line 169
    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls$5;->this$1:Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;

    .line 170
    invoke-virtual {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView$InlineVideoControls;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 172
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 174
    .local v1, "currentVolume":I
    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    div-int/lit8 v2, v3, 0x3

    .line 178
    .local v2, "forcedUnmuteVolume":I
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
