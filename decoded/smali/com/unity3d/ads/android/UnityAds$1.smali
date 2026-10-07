.class Lcom/unity3d/ads/android/UnityAds$1;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/android/UnityAds;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/UnityAds;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/unity3d/ads/android/UnityAds$1;->this$0:Lcom/unity3d/ads/android/UnityAds;

    iput-object p2, p0, Lcom/unity3d/ads/android/UnityAds$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/unity3d/ads/android/UnityAds$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 435
    return-void
.end method
