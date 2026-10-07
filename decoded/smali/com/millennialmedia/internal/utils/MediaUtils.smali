.class public Lcom/millennialmedia/internal/utils/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;,
        Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;,
        Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/millennialmedia/internal/utils/MediaUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;
    .param p3, "x3"    # Z

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/internal/utils/MediaUtils;->scanPicture(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    return-void
.end method

.method public static base64EncodeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v4, "image/jpg"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "image/jpeg"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 452
    .local v2, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 453
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 454
    sget-object v4, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string v5, "Unable to compress bitmap for encoding"

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v3, 0x0

    .line 465
    :goto_1
    return-object v3

    .line 445
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :cond_1
    const-string v4, "image/webp"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 446
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 448
    .end local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :cond_2
    const-string p1, "image/png"

    .line 449
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 459
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 463
    .local v1, "byteArrayImage":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";base64,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "encodedImage":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getMimeTypeFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 325
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 329
    .local v0, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 330
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 332
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object v1
.end method

.method public static getPhotoFromCamera(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoListener"    # Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    sget-object v3, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string v4, "PhotoListener is required"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCamera()Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    const-string v3, "This device does not have a camera"

    invoke-interface {p1, v3}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    :try_start_0
    const-string v3, "CAMERA_"

    const-string v4, ".tmp"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCacheDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    .local v1, "file":Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    new-instance v3, Lcom/millennialmedia/internal/utils/MediaUtils$3;

    invoke-direct {v3, v1, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$3;-><init>(Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    invoke-static {p0, v2, v3}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V

    goto :goto_0

    .line 222
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Unable to create temporary file for picture"

    invoke-interface {p1, v3}, Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhotoFromGallery(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoListener"    # Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    sget-object v1, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string v2, "PhotoListener is required"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->getPictureChooserIntent()Landroid/content/Intent;

    move-result-object v0

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/millennialmedia/internal/utils/MediaUtils$4;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/internal/utils/MediaUtils$4;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$PhotoListener;)V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V

    goto :goto_0
.end method

.method private static getPictureChooserIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getScaledBitmapFromFile(Ljava/io/File;IIZZ)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "file"    # Ljava/io/File;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "maintainAspectRatio"    # Z
    .param p4, "normalizeOrientation"    # Z

    .prologue
    .line 340
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 344
    .local v8, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 345
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 347
    const/4 v14, 0x0

    .line 348
    .local v14, "rotateAngle":I
    if-eqz p4, :cond_0

    .line 349
    const/4 v9, 0x0

    .line 351
    .local v9, "exifInterface":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v9    # "exifInterface":Landroid/media/ExifInterface;
    .local v10, "exifInterface":Landroid/media/ExifInterface;
    :try_start_1
    const-string v2, "Orientation"

    const/4 v3, 0x1

    .line 353
    invoke-virtual {v10, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 354
    .local v13, "orientation":I
    packed-switch v13, :pswitch_data_0

    .line 370
    .end local v10    # "exifInterface":Landroid/media/ExifInterface;
    .end local v13    # "orientation":I
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v2, 0x5a

    if-eq v14, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v14, v2, :cond_2

    .line 372
    :cond_1
    move/from16 v18, p1

    .line 373
    .local v18, "tmp":I
    move/from16 p1, p2

    .line 374
    move/from16 p2, v18

    .line 378
    .end local v18    # "tmp":I
    :cond_2
    const/4 v2, 0x1

    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_3

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-le v2, v0, :cond_4

    .line 380
    :cond_3
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v12, v2, 0x2

    .line 381
    .local v12, "halfWidth":I
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v11, v2, 0x2

    .line 383
    .local v11, "halfHeight":I
    :goto_1
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v2, v12, v2

    move/from16 v0, p1

    if-le v2, v0, :cond_4

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v2, v11, v2

    move/from16 v0, p2

    if-le v2, v0, :cond_4

    .line 386
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 356
    .end local v11    # "halfHeight":I
    .end local v12    # "halfWidth":I
    .restart local v10    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v13    # "orientation":I
    :pswitch_1
    const/16 v14, 0x5a

    .line 357
    goto :goto_0

    .line 359
    :pswitch_2
    const/16 v14, 0xb4

    .line 360
    goto :goto_0

    .line 362
    :pswitch_3
    const/16 v14, 0x10e

    goto :goto_0

    .line 391
    .end local v10    # "exifInterface":Landroid/media/ExifInterface;
    .end local v13    # "orientation":I
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 392
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 394
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_5

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v2, :cond_7

    .line 395
    :cond_5
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load bitmap from file <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x0

    .line 436
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    return-object v1

    .line 401
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v3, v0

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 402
    .local v16, "scaleWidth":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v3, v0

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 403
    .local v15, "scaleHeight":F
    if-eqz p3, :cond_8

    .line 404
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 405
    move/from16 v15, v16

    .line 409
    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v16, v2

    if-nez v2, :cond_9

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v15, v2

    if-nez v2, :cond_9

    if-nez v14, :cond_9

    .line 410
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 411
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unscaled and unrotated bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 417
    :cond_9
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 418
    .local v6, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v16

    invoke-virtual {v6, v0, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 419
    if-lez v14, :cond_b

    .line 420
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 421
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotating image "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " degrees"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_a
    int-to-float v2, v14

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 426
    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 427
    .local v17, "scaledBitmap":Landroid/graphics/Bitmap;
    if-nez v17, :cond_c

    .line 428
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to create scaled bitmap"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_c
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 432
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaled and rotated bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v1, v17

    .line 436
    goto/16 :goto_2

    .line 365
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "scaleHeight":F
    .end local v16    # "scaleWidth":F
    .end local v17    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "exifInterface":Landroid/media/ExifInterface;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .end local v9    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v10    # "exifInterface":Landroid/media/ExifInterface;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v9    # "exifInterface":Landroid/media/ExifInterface;
    goto/16 :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static isPictureChooserAvailable()Z
    .locals 4

    .prologue
    .line 314
    invoke-static {}, Lcom/millennialmedia/internal/utils/MediaUtils;->getPictureChooserIntent()Landroid/content/Intent;

    move-result-object v0

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 316
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static savePicture(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "pictureListener"    # Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;

    .prologue
    .line 64
    if-nez p3, :cond_0

    .line 65
    sget-object v4, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string v5, "PictureListener is required"

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageWritable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 71
    const-string v4, "Storage not mounted, cannot add image to photo library"

    invoke-interface {p3, v4}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    if-nez p1, :cond_2

    .line 77
    const-string v4, "url is required"

    invoke-interface {p3, v4}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    .local v2, "pictureUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getExternalCacheDirectory(Z)Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_3

    .line 86
    const-string v4, "Cannot access cache directory"

    invoke-interface {p3, v4}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v4, "Pictures"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v3, "picturesDir":Ljava/io/File;
    if-nez p2, :cond_4

    .line 95
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/internal/utils/IOUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 100
    .local v1, "pictureFile":Ljava/io/File;
    :goto_1
    if-nez v1, :cond_5

    .line 101
    const-string v4, "Unable to store photo"

    invoke-interface {p3, v4}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v1    # "pictureFile":Ljava/io/File;
    :cond_4
    invoke-static {v3, p2}, Lcom/millennialmedia/internal/utils/IOUtils;->getUniqueFileName(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .restart local v1    # "pictureFile":Ljava/io/File;
    goto :goto_1

    .line 106
    :cond_5
    const/4 v4, 0x0

    new-instance v5, Lcom/millennialmedia/internal/utils/MediaUtils$1;

    invoke-direct {v5, p0, p3}, Lcom/millennialmedia/internal/utils/MediaUtils$1;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    invoke-static {p1, v4, v1, v5}, Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V

    goto :goto_0

    .line 122
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "pictureFile":Ljava/io/File;
    .end local v3    # "picturesDir":Ljava/io/File;
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v1    # "pictureFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No file found at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_7
    const/4 v4, 0x0

    invoke-static {p0, v1, p3, v4}, Lcom/millennialmedia/internal/utils/MediaUtils;->scanPicture(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V

    goto/16 :goto_0
.end method

.method private static scanPicture(Landroid/content/Context;Ljava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "pictureListener"    # Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;
    .param p3, "deleteOnFailure"    # Z

    .prologue
    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/millennialmedia/internal/utils/MediaUtils$2;

    invoke-direct {v2, p3, p1, p2}, Lcom/millennialmedia/internal/utils/MediaUtils$2;-><init>(ZLjava/io/File;Lcom/millennialmedia/internal/utils/MediaUtils$SavePictureListener;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 155
    return-void
.end method

.method public static setFileDescription(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 471
    if-eqz p1, :cond_0

    .line 473
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, "exifInterface":Landroid/media/ExifInterface;
    const-string v2, "UserComment"

    invoke-virtual {v1, v2, p1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1    # "exifInterface":Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    sget-object v2, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set description on media file <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startVideoPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "videoListener"    # Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;

    .prologue
    .line 161
    if-nez p2, :cond_0

    .line 162
    sget-object v5, Lcom/millennialmedia/internal/utils/MediaUtils;->TAG:Ljava/lang/String;

    const-string v6, "VideoListener is required"

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 167
    :cond_0
    if-nez p1, :cond_1

    .line 168
    const-string v5, "url is required"

    invoke-interface {p2, v5}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 174
    .local v4, "videoUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 175
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getExternalCacheDirectory(Z)Ljava/io/File;

    move-result-object v0

    .line 176
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_2

    .line 177
    const-string v5, "Cannot access cache directory"

    invoke-interface {p2, v5}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v3, "videoFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No file found at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 192
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v3    # "videoFile":Ljava/io/File;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "video/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    invoke-interface {p2, v4}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onVideoStarted(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "No video application installed"

    invoke-interface {p2, v5}, Lcom/millennialmedia/internal/utils/MediaUtils$PlayVideoListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
