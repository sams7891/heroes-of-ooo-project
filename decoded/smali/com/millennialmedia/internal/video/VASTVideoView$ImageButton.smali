.class Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;
.super Landroid/widget/ImageView;
.source "VASTVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageButton"
.end annotation


# instance fields
.field button:Lcom/millennialmedia/internal/video/VASTParser$Button;

.field offset:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/millennialmedia/internal/video/VASTVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView;Landroid/content/Context;Lcom/millennialmedia/internal/video/VASTParser$Button;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "button"    # Lcom/millennialmedia/internal/video/VASTParser$Button;

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 129
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 123
    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    .line 124
    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    .line 131
    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    .line 133
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->getOffset()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->setVisibility(I)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->loadStaticResource()V

    .line 139
    invoke-virtual {p0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method private loadStaticResource()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$2;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method


# virtual methods
.method getOffset()I
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iget-object v1, v1, Lcom/millennialmedia/internal/video/VASTParser$Button;->offset:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$000(Lcom/millennialmedia/internal/video/VASTVideoView;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->offset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v1}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$100(Lcom/millennialmedia/internal/video/VASTVideoView;)V

    .line 195
    iget-object v1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->button:Lcom/millennialmedia/internal/video/VASTParser$Button;

    iget-object v0, v1, Lcom/millennialmedia/internal/video/VASTParser$Button;->buttonClicks:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

    .line 196
    .local v0, "buttonClicks":Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;
    if-eqz v0, :cond_1

    .line 198
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickThrough:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/Utils;->startActivityFromUrl(Ljava/lang/String;)Z

    .line 202
    :cond_0
    iget-object v1, v0, Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;->clickTrackingUrls:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 203
    new-instance v1, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$3;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 215
    :cond_1
    return-void
.end method

.method updateVisibility(I)Z
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;->getOffset()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 156
    new-instance v0, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$ImageButton;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
