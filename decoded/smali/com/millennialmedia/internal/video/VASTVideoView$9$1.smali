.class Lcom/millennialmedia/internal/video/VASTVideoView$9$1;
.super Ljava/lang/Object;
.source "VASTVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/VASTVideoView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

.field final synthetic val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTVideoView$9;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/video/VASTVideoView$9;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 964
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-virtual {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 965
    .local v1, "staticResourceImageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->val$response:Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    iget-object v2, v2, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 966
    new-instance v2, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/video/VASTVideoView$9$1$1;-><init>(Lcom/millennialmedia/internal/video/VASTVideoView$9$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 999
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2000(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v3, v3, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    .line 1000
    invoke-static {v4}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1300(Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;

    move-result-object v4

    iget-object v4, v4, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

    invoke-static {v3, v4}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$1900(Lcom/millennialmedia/internal/video/VASTVideoView;Lcom/millennialmedia/internal/video/VASTParser$StaticResource;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1002
    iget-object v2, p0, Lcom/millennialmedia/internal/video/VASTVideoView$9$1;->this$1:Lcom/millennialmedia/internal/video/VASTVideoView$9;

    iget-object v2, v2, Lcom/millennialmedia/internal/video/VASTVideoView$9;->this$0:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/VASTVideoView;->access$2000(Lcom/millennialmedia/internal/video/VASTVideoView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    return-void
.end method
