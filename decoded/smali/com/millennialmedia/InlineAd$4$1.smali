.class Lcom/millennialmedia/InlineAd$4$1;
.super Ljava/lang/Object;
.source "InlineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/InlineAd$4;->initSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/InlineAd$4;


# direct methods
.method constructor <init>(Lcom/millennialmedia/InlineAd$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/InlineAd$4;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 743
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$1700(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$1700(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/InlineAd;->access$1702(Lcom/millennialmedia/InlineAd;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 750
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v0}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$1700(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v0, v0, Lcom/millennialmedia/InlineAd$4;->val$inlineAdAdapter:Lcom/millennialmedia/internal/adadapters/InlineAdapter;

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v1, v1, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v1}, Lcom/millennialmedia/InlineAd;->access$1700(Lcom/millennialmedia/InlineAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v2, v2, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-static {v2}, Lcom/millennialmedia/InlineAd;->access$1800(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v3, v3, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v2, v3}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getWidth(Lcom/millennialmedia/InlineAd;)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v3, v3, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    .line 758
    invoke-static {v3}, Lcom/millennialmedia/InlineAd;->access$1800(Lcom/millennialmedia/InlineAd;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/InlineAd$4$1;->this$1:Lcom/millennialmedia/InlineAd$4;

    iget-object v4, v4, Lcom/millennialmedia/InlineAd$4;->this$0:Lcom/millennialmedia/InlineAd;

    invoke-virtual {v3, v4}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getHeight(Lcom/millennialmedia/InlineAd;)I

    move-result v3

    .line 757
    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/internal/adadapters/InlineAdapter;->display(Landroid/widget/RelativeLayout;II)V

    .line 759
    return-void
.end method
