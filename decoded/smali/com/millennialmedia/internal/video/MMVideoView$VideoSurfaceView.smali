.class Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "MMVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/MMVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/MMVideoView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    .line 165
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 173
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    invoke-static {v6, p1}, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v3

    .line 174
    .local v3, "width":I
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    invoke-static {v6, p2}, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 176
    .local v0, "height":I
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    if-lez v6, :cond_0

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 178
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 179
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 180
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 182
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_2

    if-ne v1, v7, :cond_2

    .line 184
    move v3, v5

    .line 185
    move v0, v2

    .line 188
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_1

    .line 189
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    div-int v3, v6, v7

    .line 235
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->setMeasuredDimension(II)V

    .line 236
    return-void

    .line 190
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v4    # "widthSpecMode":I
    .restart local v5    # "widthSpecSize":I
    :cond_1
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_0

    .line 191
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    div-int v0, v6, v7

    goto :goto_0

    .line 194
    :cond_2
    if-ne v4, v7, :cond_3

    .line 196
    move v3, v5

    .line 197
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    div-int v0, v6, v7

    .line 199
    if-ne v1, v8, :cond_0

    if-le v0, v2, :cond_0

    .line 201
    move v0, v2

    goto :goto_0

    .line 204
    :cond_3
    if-ne v1, v7, :cond_4

    .line 206
    move v0, v2

    .line 207
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    div-int v3, v6, v7

    .line 209
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 211
    move v3, v5

    goto :goto_0

    .line 216
    :cond_4
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v3

    .line 217
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v0

    .line 219
    if-ne v1, v8, :cond_5

    if-le v0, v2, :cond_5

    .line 221
    move v0, v2

    .line 222
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    div-int v3, v6, v7

    .line 225
    :cond_5
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 227
    move v3, v5

    .line 228
    iget-object v6, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v6}, Lcom/millennialmedia/internal/video/MMVideoView;->access$200(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v6

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/millennialmedia/internal/video/MMVideoView$VideoSurfaceView;->this$0:Lcom/millennialmedia/internal/video/MMVideoView;

    invoke-static {v7}, Lcom/millennialmedia/internal/video/MMVideoView;->access$100(Lcom/millennialmedia/internal/video/MMVideoView;)I

    move-result v7

    div-int v0, v6, v7

    goto/16 :goto_0
.end method
