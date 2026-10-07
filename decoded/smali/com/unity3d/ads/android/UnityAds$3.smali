.class final Lcom/unity3d/ads/android/UnityAds$3;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 552
    invoke-static {}, Lcom/unity3d/ads/android/view/UnityAdsMainView;->initWebView()V

    .line 553
    return-void
.end method
