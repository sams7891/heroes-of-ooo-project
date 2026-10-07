.class Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;
.super Ljava/lang/Object;
.source "JSBridge.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->getPictureFromPhotoLibrary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$maintainAspectRatio:Z

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;IIZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iput p2, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxWidth:I

    iput p3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxHeight:I

    iput-boolean p4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maintainAspectRatio:Z

    iput-object p5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1084
    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v0, v0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$callbackId:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    return-void
.end method

.method public onPhoto(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x1

    .line 1066
    const/4 v1, 0x0

    .line 1067
    .local v1, "encodedBitmap":Ljava/lang/String;
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/MediaUtils;->getMimeTypeFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, "mimeType":Ljava/lang/String;
    iget v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxWidth:I

    iget v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maxHeight:I

    iget-boolean v5, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$maintainAspectRatio:Z

    .line 1070
    invoke-static {p1, v3, v4, v5, v6}, Lcom/millennialmedia/internal/utils/MediaUtils;->getScaledBitmapFromFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1072
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1073
    invoke-static {v0, v2}, Lcom/millennialmedia/internal/utils/MediaUtils;->base64EncodeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1077
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->this$1:Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    iget-object v3, v3, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;->this$0:Lcom/millennialmedia/internal/JSBridge;

    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS$2;->val$callbackId:Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    return-void
.end method
