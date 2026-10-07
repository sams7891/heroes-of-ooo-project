.class final Lcom/unity3d/ads/android/UnityAds$2;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/unity3d/ads/android/UnityAds$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAds$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->init(Landroid/app/Activity;)V

    .line 539
    invoke-static {}, Lcom/unity3d/ads/android/webapp/UnityAdsWebData;->initCampaigns()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAds;->access$002(Z)Z

    .line 542
    :cond_0
    return-void
.end method
