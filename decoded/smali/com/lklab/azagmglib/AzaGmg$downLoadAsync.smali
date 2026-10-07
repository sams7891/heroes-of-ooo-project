.class public Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;
.super Landroid/os/AsyncTask;
.source "AzaGmg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lklab/azagmglib/AzaGmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "downLoadAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lklab/azagmglib/AzaGmg;


# direct methods
.method public constructor <init>(Lcom/lklab/azagmglib/AzaGmg;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->this$0:Lcom/lklab/azagmglib/AzaGmg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 34
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    new-instance v5, Lokhttp3/OkHttpClient;

    invoke-direct {v5}, Lokhttp3/OkHttpClient;-><init>()V

    .line 87
    .local v5, "client":Lokhttp3/OkHttpClient;
    new-instance v31, Lokhttp3/Request$Builder;

    invoke-direct/range {v31 .. v31}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v32, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->this$0:Lcom/lklab/azagmglib/AzaGmg;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg;->GMG_JSON:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v33, 0x0

    aget-object v33, p1, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v23

    .line 88
    .local v23, "request":Lokhttp3/Request;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v25

    .line 89
    .local v25, "response":Lokhttp3/Response;
    invoke-virtual/range {v25 .. v25}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v29

    .line 90
    .local v29, "str":Ljava/lang/String;
    new-instance v22, Lcom/google/gson/stream/JsonReader;

    new-instance v31, Ljava/io/InputStreamReader;

    new-instance v32, Ljava/io/ByteArrayInputStream;

    const-string v33, "UTF-8"

    invoke-static/range {v33 .. v33}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v33, "UTF-8"

    invoke-direct/range {v31 .. v33}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v22, "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 92
    const/4 v12, 0x0

    .line 93
    .local v12, "game":Ljava/lang/String;
    const/4 v13, 0x0

    .line 94
    .local v13, "icon":Ljava/lang/String;
    const/16 v30, 0x0

    .line 95
    .local v30, "url":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v31

    if-nez v31, :cond_5

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->this$0:Lcom/lklab/azagmglib/AzaGmg;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg;->act:Landroid/app/Activity;

    move-object/from16 v31, v0

    const-string v32, "AzaGMG"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 105
    .local v27, "sha":Landroid/content/SharedPreferences;
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 106
    .local v9, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v12, :cond_1

    .line 107
    const-string v31, "Saved_GMG"

    move-object/from16 v0, v31

    invoke-interface {v9, v0, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    :cond_1
    if-eqz v13, :cond_3

    .line 110
    const-string v31, "/"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 111
    .local v28, "split":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget-object v14, v28, v31

    .line 112
    .local v14, "iconName":Ljava/lang/String;
    const-string v31, "Saved_Icon"

    move-object/from16 v0, v31

    invoke-interface {v9, v0, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->this$0:Lcom/lklab/azagmglib/AzaGmg;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg;->act:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v18

    .line 114
    .local v18, "pack":Ljava/lang/Package;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v19

    .line 115
    .local v19, "packageName":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/android/data/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 116
    .local v20, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_3

    .line 119
    new-instance v6, Lokhttp3/OkHttpClient;

    invoke-direct {v6}, Lokhttp3/OkHttpClient;-><init>()V

    .line 120
    .local v6, "clientIm":Lokhttp3/OkHttpClient;
    new-instance v31, Lokhttp3/Request$Builder;

    invoke-direct/range {v31 .. v31}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v24

    .line 121
    .local v24, "requestIm":Lokhttp3/Request;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v26

    .line 122
    .local v26, "responseIm":Lokhttp3/Response;
    invoke-virtual/range {v26 .. v26}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 124
    .local v15, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v31

    if-nez v31, :cond_2

    .line 126
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 127
    :cond_2
    new-instance v11, Ljava/io/File;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v11, "fileicon":Ljava/io/File;
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .local v17, "output":Ljava/io/OutputStream;
    const/16 v31, 0x1000

    :try_start_2
    move/from16 v0, v31

    new-array v4, v0, [B

    .line 134
    .local v4, "buffer":[B
    :goto_1
    invoke-virtual {v15, v4}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .local v21, "read":I
    const/16 v31, -0x1

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 137
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    .end local v4    # "buffer":[B
    .end local v21    # "read":I
    :goto_2
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 149
    .end local v6    # "clientIm":Lokhttp3/OkHttpClient;
    .end local v7    # "dir":Ljava/io/File;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fileicon":Ljava/io/File;
    .end local v14    # "iconName":Ljava/lang/String;
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "output":Ljava/io/OutputStream;
    .end local v18    # "pack":Ljava/lang/Package;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    .end local v24    # "requestIm":Lokhttp3/Request;
    .end local v26    # "responseIm":Lokhttp3/Response;
    .end local v28    # "split":[Ljava/lang/String;
    :cond_3
    if-eqz v30, :cond_4

    .line 150
    const-string v31, "Saved_Url"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 152
    const-string v31, "LastUpdate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 161
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .end local v5    # "client":Lokhttp3/OkHttpClient;
    .end local v9    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "game":Ljava/lang/String;
    .end local v13    # "icon":Ljava/lang/String;
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v23    # "request":Lokhttp3/Request;
    .end local v25    # "response":Lokhttp3/Response;
    .end local v27    # "sha":Landroid/content/SharedPreferences;
    .end local v29    # "str":Ljava/lang/String;
    .end local v30    # "url":Ljava/lang/String;
    :goto_3
    return-object v31

    .line 96
    .restart local v5    # "client":Lokhttp3/OkHttpClient;
    .restart local v12    # "game":Ljava/lang/String;
    .restart local v13    # "icon":Ljava/lang/String;
    .restart local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v23    # "request":Lokhttp3/Request;
    .restart local v25    # "response":Lokhttp3/Response;
    .restart local v29    # "str":Ljava/lang/String;
    .restart local v30    # "url":Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, "name":Ljava/lang/String;
    const-string v31, "game"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 98
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    .line 99
    :cond_6
    const-string v31, "icon"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 100
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    .line 101
    :cond_7
    const-string v31, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 102
    invoke-virtual/range {v22 .. v22}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v30

    goto/16 :goto_0

    .line 135
    .end local v16    # "name":Ljava/lang/String;
    .restart local v4    # "buffer":[B
    .restart local v6    # "clientIm":Lokhttp3/OkHttpClient;
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v9    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "fileicon":Ljava/io/File;
    .restart local v14    # "iconName":Ljava/lang/String;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v17    # "output":Ljava/io/OutputStream;
    .restart local v18    # "pack":Ljava/lang/Package;
    .restart local v19    # "packageName":Ljava/lang/String;
    .restart local v20    # "path":Ljava/lang/String;
    .restart local v21    # "read":I
    .restart local v24    # "requestIm":Lokhttp3/Request;
    .restart local v26    # "responseIm":Lokhttp3/Response;
    .restart local v27    # "sha":Landroid/content/SharedPreferences;
    .restart local v28    # "split":[Ljava/lang/String;
    :cond_8
    const/16 v31, 0x0

    :try_start_6
    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 138
    .end local v4    # "buffer":[B
    .end local v21    # "read":I
    :catchall_0
    move-exception v31

    .line 139
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 140
    throw v31
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 141
    :catch_0
    move-exception v8

    .line 142
    .local v8, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 144
    .end local v7    # "dir":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "fileicon":Ljava/io/File;
    .end local v17    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v31

    .line 145
    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 146
    throw v31
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 155
    .end local v5    # "client":Lokhttp3/OkHttpClient;
    .end local v6    # "clientIm":Lokhttp3/OkHttpClient;
    .end local v9    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "game":Ljava/lang/String;
    .end local v13    # "icon":Ljava/lang/String;
    .end local v14    # "iconName":Ljava/lang/String;
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "pack":Ljava/lang/Package;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    .end local v22    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v23    # "request":Lokhttp3/Request;
    .end local v24    # "requestIm":Lokhttp3/Request;
    .end local v25    # "response":Lokhttp3/Response;
    .end local v26    # "responseIm":Lokhttp3/Response;
    .end local v27    # "sha":Landroid/content/SharedPreferences;
    .end local v28    # "split":[Ljava/lang/String;
    .end local v29    # "str":Ljava/lang/String;
    .end local v30    # "url":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 157
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    goto :goto_3
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->this$0:Lcom/lklab/azagmglib/AzaGmg;

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg;->listener:Lcom/lklab/azagmglib/AzaGmg$GmgListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->this$0:Lcom/lklab/azagmglib/AzaGmg;

    iget-object v0, v0, Lcom/lklab/azagmglib/AzaGmg;->listener:Lcom/lklab/azagmglib/AzaGmg$GmgListener;

    invoke-virtual {v0}, Lcom/lklab/azagmglib/AzaGmg$GmgListener;->onLoadListener()V

    .line 169
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lklab/azagmglib/AzaGmg;->started:Z

    .line 170
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/lklab/azagmglib/AzaGmg$downLoadAsync;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
