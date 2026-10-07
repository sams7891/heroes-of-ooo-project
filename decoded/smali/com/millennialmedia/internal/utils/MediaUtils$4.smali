.class final Lcom/millennialmedia/internal/utils/MediaUtils$4;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/MediaUtils;->getPhotoFromGallery(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Landroid/content/Intent;)V
    .locals 10
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 267
    if-eqz p1, :cond_2

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 269
    .local v1, "imageUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "path":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 273
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 274
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 275
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 276
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 279
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v6    # "column_index":I
    :cond_1
    if-eqz v9, :cond_2

    .line 283
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v8, "file":Ljava/io/File;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v0, v8}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onPhoto(Ljava/io/File;)V

    .line 294
    .end local v1    # "imageUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    const-string v3, "Unable to get image from gallery"

    invoke-interface {v0, v3}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/MediaUtils$4;->val$photoListener:Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    invoke-interface {v0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    .line 301
    return-void
.end method
