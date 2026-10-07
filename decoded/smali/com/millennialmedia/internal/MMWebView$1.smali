.class Lcom/millennialmedia/internal/MMWebView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/MMWebView;

.field final synthetic val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView$1;->this$0:Lcom/millennialmedia/internal/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/internal/MMWebView$1;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView$1;->val$webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onClicked()V

    .line 205
    const/4 v0, 0x1

    return v0
.end method
