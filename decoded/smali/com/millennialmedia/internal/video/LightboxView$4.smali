.class Lcom/millennialmedia/internal/video/LightboxView$4;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->val$lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/millennialmedia/internal/video/LightboxView$4;->val$lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->fullscreen:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;->imageUri:Ljava/lang/String;

    .line 201
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    .line 203
    .local v0, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget v1, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 204
    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView$4$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/video/LightboxView$4$1;-><init>(Lcom/millennialmedia/internal/video/LightboxView$4;Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    :cond_0
    return-void
.end method
