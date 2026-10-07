.class final Lcom/fyber/ads/videos/a/h;
.super Ljava/lang/Object;
.source "RewardedVideoPlayerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/a/g;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/a/g;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/fyber/ads/videos/a/h;->a:Lcom/fyber/ads/videos/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/fyber/ads/videos/a/h;->a:Lcom/fyber/ads/videos/a/g;

    invoke-static {v0}, Lcom/fyber/ads/videos/a/g;->a(Lcom/fyber/ads/videos/a/g;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 694
    return-void
.end method
