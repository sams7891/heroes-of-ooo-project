.class public Lcom/lklab/azagmglib/AzaGmg;
.super Ljava/lang/Object;
.source "AzaGmg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lklab/azagmglib/AzaGmg$GmgListener;,
        Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;
    }
.end annotation


# static fields
.field static started:Z


# instance fields
.field GMG_JSON:Ljava/lang/String;

.field GMG_REFRESH_DELAY:J

.field act:Landroid/app/Activity;

.field listener:Lcom/lklab/azagmglib/AzaGmg$GmgListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lklab/azagmglib/AzaGmg;->started:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/lklab/azagmglib/AzaGmg$GmgListener;)V
    .locals 18
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/lklab/azagmglib/AzaGmg$GmgListener;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/32 v14, 0x19bfcc00

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/lklab/azagmglib/AzaGmg;->GMG_REFRESH_DELAY:J

    .line 33
    const-string v14, "http://www.essentialapplications.com/gmg_cdn/"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lklab/azagmglib/AzaGmg;->GMG_JSON:Ljava/lang/String;

    .line 37
    sget-boolean v14, Lcom/lklab/azagmglib/AzaGmg;->started:Z

    if-eqz v14, :cond_0

    .line 77
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v14, 0x1

    sput-boolean v14, Lcom/lklab/azagmglib/AzaGmg;->started:Z

    .line 40
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lklab/azagmglib/AzaGmg;->listener:Lcom/lklab/azagmglib/AzaGmg$GmgListener;

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lklab/azagmglib/AzaGmg;->act:Landroid/app/Activity;

    .line 42
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lklab/azagmglib/AzaGmg;->act:Landroid/app/Activity;

    const-string v15, "AzaGMG"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 43
    .local v12, "sha":Landroid/content/SharedPreferences;
    const-string v14, "Saved_Icon"

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "iconUrl":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 48
    :try_start_0
    const-string v14, "/"

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, "split":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    .line 51
    .local v7, "pack":Ljava/lang/Package;
    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, "packageName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/android/data/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 53
    .local v11, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v15, v13

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 55
    const/4 v6, 0x0

    .line 56
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v15, v13

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 57
    .local v5, "gmg":Landroid/graphics/Bitmap;
    if-nez v5, :cond_2

    .line 58
    const/4 v6, 0x0

    .line 66
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "gmg":Landroid/graphics/Bitmap;
    .end local v7    # "pack":Ljava/lang/Package;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v13    # "split":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v14, "LastUpdate"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-interface {v12, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 67
    .local v8, "lastUpdate":J
    if-eqz v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lklab/azagmglib/AzaGmg;->GMG_REFRESH_DELAY:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 69
    :cond_3
    new-instance v2, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;-><init>(Lcom/lklab/azagmglib/AzaGmg;)V

    .line 70
    .local v2, "da":Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object p2, v14, v15

    invoke-virtual {v2, v14}, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 60
    .end local v2    # "da":Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;
    .end local v8    # "lastUpdate":J
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    const/4 v6, 0x0

    goto :goto_1

    .line 74
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v8    # "lastUpdate":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lklab/azagmglib/AzaGmg;->listener:Lcom/lklab/azagmglib/AzaGmg$GmgListener;

    invoke-virtual {v14}, Lcom/lklab/azagmglib/AzaGmg$GmgListener;->onLoadListener()V

    .line 75
    const/4 v14, 0x0

    sput-boolean v14, Lcom/lklab/azagmglib/AzaGmg;->started:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lklab/azagmglib/AzaGmg;->act:Landroid/app/Activity;

    const-string v2, "AzaGMG"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    .local v0, "sha":Landroid/content/SharedPreferences;
    const-string v1, "Saved_Url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onClick()V
    .locals 6

    .prologue
    .line 175
    iget-object v3, p0, Lcom/lklab/azagmglib/AzaGmg;->act:Landroid/app/Activity;

    const-string v4, "AzaGMG"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, "sha":Landroid/content/SharedPreferences;
    const-string v3, "Saved_Url"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    iget-object v3, p0, Lcom/lklab/azagmglib/AzaGmg;->act:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
