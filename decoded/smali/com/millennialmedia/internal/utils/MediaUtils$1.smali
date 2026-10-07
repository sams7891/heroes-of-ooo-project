.class final Lcom/millennialmedia/internal/utils/MediaUtils$1;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    const-string v1, "Unable to download file"

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onDownloadSucceeded(Ljava/io/File;)V
    .locals 3
    .param p1, "downloadedFile"    # Ljava/io/File;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$1;->val$pictureListener:Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/millennialmedia/internal/utils/MediaUtils;->access$000(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    .line 111
    return-void
.end method
