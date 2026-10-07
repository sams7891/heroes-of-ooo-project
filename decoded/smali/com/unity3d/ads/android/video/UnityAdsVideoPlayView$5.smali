.class Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-static {}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->entered()V

    .line 244
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0, p1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$502(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 246
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$600(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$700(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)V

    .line 248
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$500(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView$5;->this$0:Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;->access$802(Lcom/unity3d/ads/android/video/UnityAdsVideoPlayView;Z)Z

    .line 252
    return-void
.end method
