.class Lcom/millennialmedia/internal/video/LightboxView$5;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field final synthetic val$lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->val$lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
    .locals 1
    .param p1, "expandParams"    # Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->val$lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onAdLeftApplication()V

    .line 250
    return-void
.end method

.method public onClicked()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$5;->val$lightboxViewListener:Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onClicked()V

    .line 243
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onLoaded()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
    .locals 1
    .param p1, "resizeParams"    # Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 282
    return-void
.end method

.method public showCloseIndicator(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 276
    return-void
.end method
