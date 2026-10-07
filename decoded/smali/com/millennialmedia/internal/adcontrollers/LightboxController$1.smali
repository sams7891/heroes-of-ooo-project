.class Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;
.super Ljava/lang/Object;
.source "LightboxController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 210
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    new-instance v1, Lcom/millennialmedia/internal/video/LightboxView;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v3}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$100(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;

    invoke-direct {v4, p0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/millennialmedia/internal/video/LightboxView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$002(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView;

    .line 279
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    new-instance v1, Lcom/millennialmedia/internal/MMWebView;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->val$context:Landroid/content/Context;

    new-instance v3, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$2;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;)V

    invoke-direct {v1, v2, v5, v5, v3}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$502(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;

    .line 346
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$500(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$100(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->inline:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$500(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$3;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1$3;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 361
    return-void
.end method
