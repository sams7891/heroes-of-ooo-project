.class Lcom/millennialmedia/internal/JSBridge$1;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge;-><init>(Lcom/millennialmedia/internal/MMWebView;ZLcom/millennialmedia/internal/JSBridge$JSBridgeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/internal/JSBridge;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$1;->this$0:Lcom/millennialmedia/internal/JSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 197
    instance-of v1, p1, Lcom/millennialmedia/internal/MMWebView;

    if-eqz v1, :cond_1

    .line 198
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result v0

    .line 199
    .local v0, "newOrientation":I
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$1;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget v1, v1, Lcom/millennialmedia/internal/JSBridge;->lastOrientation:I

    if-eq v1, v0, :cond_1

    .line 200
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected change in orientation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$1;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iput v0, v1, Lcom/millennialmedia/internal/JSBridge;->lastOrientation:I

    .line 206
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$1;->this$0:Lcom/millennialmedia/internal/JSBridge;

    check-cast p1, Lcom/millennialmedia/internal/MMWebView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/JSBridge;->sendPositions(Lcom/millennialmedia/internal/MMWebView;)V

    .line 209
    .end local v0    # "newOrientation":I
    :cond_1
    return-void
.end method
