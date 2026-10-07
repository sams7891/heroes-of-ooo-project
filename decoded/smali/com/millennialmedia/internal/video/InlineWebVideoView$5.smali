.class Lcom/millennialmedia/internal/video/InlineWebVideoView$5;
.super Lcom/millennialmedia/internal/MMActivity$MMActivityListener;
.source "InlineWebVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/InlineWebVideoView;->internalExpandToFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/InlineWebVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/InlineWebVideoView;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 7
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    .line 641
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V

    .line 643
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 645
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 648
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 649
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 651
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$1;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;Lcom/millennialmedia/internal/MMActivity;)V

    .line 652
    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 663
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2, v6}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1900(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V

    .line 665
    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 668
    .local v1, "webView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v1, :cond_0

    .line 669
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$800(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v5}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "expand"

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    :cond_0
    return-void
.end method

.method public onDestroy(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 7
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    const/4 v6, 0x0

    .line 691
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 693
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1400(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v3}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1600(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1300(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v4

    iget-object v5, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v5}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1500(Lcom/millennialmedia/internal/video/InlineWebVideoView;)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 695
    .local v0, "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 696
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 698
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$900(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Landroid/widget/ToggleButton;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/video/InlineWebVideoView$5$2;-><init>(Lcom/millennialmedia/internal/video/InlineWebVideoView$5;)V

    .line 699
    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 710
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2, v6}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$1900(Lcom/millennialmedia/internal/video/InlineWebVideoView;Z)V

    .line 712
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$700(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 713
    .local v1, "webView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v1, :cond_0

    .line 714
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v2, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-static {v2}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->access$800(Lcom/millennialmedia/internal/video/InlineWebVideoView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/millennialmedia/internal/video/InlineWebVideoView$5;->this$0:Lcom/millennialmedia/internal/video/InlineWebVideoView;

    invoke-virtual {v4}, Lcom/millennialmedia/internal/video/InlineWebVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "collapse"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onDestroy(Lcom/millennialmedia/internal/MMActivity;)V

    .line 719
    return-void
.end method

.method public onPause(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 684
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onPause(Lcom/millennialmedia/internal/MMActivity;)V

    .line 685
    return-void
.end method

.method public onResume(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 677
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onResume(Lcom/millennialmedia/internal/MMActivity;)V

    .line 678
    return-void
.end method
