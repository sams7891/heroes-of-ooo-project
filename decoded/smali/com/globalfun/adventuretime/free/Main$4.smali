.class Lcom/globalfun/adventuretime/free/Main$4;
.super Lcom/lklab/azagmglib/AzaGmg$GmgListener;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/globalfun/adventuretime/free/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/globalfun/adventuretime/free/Main;


# direct methods
.method constructor <init>(Lcom/globalfun/adventuretime/free/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/globalfun/adventuretime/free/Main$4;->this$0:Lcom/globalfun/adventuretime/free/Main;

    .line 328
    invoke-direct {p0}, Lcom/lklab/azagmglib/AzaGmg$GmgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadListener()V
    .locals 18

    .prologue
    .line 335
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/globalfun/adventuretime/free/Main$4;->this$0:Lcom/globalfun/adventuretime/free/Main;

    const-string v16, "AzaGMG"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/globalfun/adventuretime/free/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 336
    .local v11, "sha":Landroid/content/SharedPreferences;
    const-string v15, "Saved_Icon"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "iconUrl":Ljava/lang/String;
    const/4 v5, 0x0

    .line 338
    .local v5, "gmg":Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 340
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v16, "Saved_Url"

    const-string v17, "market://details?id=com.globalfun.masters.google"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/globalfun/adventuretime/free/Main$4;->this$0:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v15}, Lcom/globalfun/adventuretime/free/Main;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 342
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 344
    .local v7, "istr":Ljava/io/InputStream;
    :try_start_1
    const-string v15, "icekingdom_new.png"

    invoke-virtual {v1, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 348
    :goto_0
    :try_start_2
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 361
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v7    # "istr":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 362
    .local v14, "srcWidth":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 363
    .local v13, "srcHeight":I
    int-to-float v15, v14

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    float-to-int v3, v15

    .line 364
    .local v3, "dstWidth":I
    int-to-float v15, v13

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    float-to-int v2, v15

    .line 365
    .local v2, "dstHeight":I
    const/4 v15, 0x0

    sput-object v15, Lcom/globalfun/adventuretime/free/Main;->gmgIcon:Lcom/globalfun/adventuretime/free/Image;

    .line 367
    sget v15, Lcom/globalfun/adventuretime/free/UI;->state:I

    .line 378
    .end local v2    # "dstHeight":I
    .end local v3    # "dstWidth":I
    .end local v5    # "gmg":Landroid/graphics/Bitmap;
    .end local v6    # "iconUrl":Ljava/lang/String;
    .end local v11    # "sha":Landroid/content/SharedPreferences;
    .end local v13    # "srcHeight":I
    .end local v14    # "srcWidth":I
    :goto_2
    return-void

    .line 345
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v5    # "gmg":Landroid/graphics/Bitmap;
    .restart local v6    # "iconUrl":Ljava/lang/String;
    .restart local v7    # "istr":Ljava/io/InputStream;
    .restart local v11    # "sha":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 346
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 373
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "gmg":Landroid/graphics/Bitmap;
    .end local v6    # "iconUrl":Ljava/lang/String;
    .end local v7    # "istr":Ljava/io/InputStream;
    .end local v11    # "sha":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    .line 375
    .local v4, "e":Ljava/lang/Throwable;
    const/4 v15, 0x0

    sput-object v15, Lcom/globalfun/adventuretime/free/Main;->gmgIcon:Lcom/globalfun/adventuretime/free/Image;

    .line 376
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 352
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v5    # "gmg":Landroid/graphics/Bitmap;
    .restart local v6    # "iconUrl":Ljava/lang/String;
    .restart local v11    # "sha":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_3
    const-string v15, "/"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 354
    .local v12, "split":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v8

    .line 355
    .local v8, "pack":Ljava/lang/Package;
    invoke-virtual {v8}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, "packageName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/android/data/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 357
    .local v10, "path":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v16, v12, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_1
.end method
