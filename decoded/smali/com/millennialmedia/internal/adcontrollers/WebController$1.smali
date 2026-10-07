.class Lcom/millennialmedia/internal/adcontrollers/WebController$1;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

.field final synthetic val$adContent:Ljava/lang/String;

.field final synthetic val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isInterstitial:Z

.field final synthetic val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/content/Context;ZLcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$isInterstitial:Z

    iput-object p4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    iput-object p5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    iput-object p6, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 79
    iget-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$isInterstitial:Z

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    iget-object v5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController;->createWebView(Landroid/content/Context;ZZLcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$002(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;

    .line 80
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->this$0:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;->val$adContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/MMWebView;->setContent(Ljava/lang/String;)V

    .line 81
    return-void
.end method
