.class public Lcom/millennialmedia/internal/adcontrollers/NativeController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;,
        Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;,
        Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;",
            ">;"
        }
    .end annotation
.end field

.field public impTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jsTracker:Ljava/lang/String;

.field public link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

.field private nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;)V
    .locals 1
    .param p1, "nativeControllerListener"    # Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    .line 113
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    .line 114
    return-void
.end method

.method private loadAssets(Lorg/json/JSONArray;)V
    .locals 14
    .param p1, "assetsJSON"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    .line 171
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v6, v11, :cond_6

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 176
    .local v3, "assetJSON":Lorg/json/JSONObject;
    const-string v11, "id"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, "assetId":I
    const/4 v8, 0x0

    .line 179
    .local v8, "required":Z
    const-string v11, "required"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_0

    .line 180
    const/4 v8, 0x1

    .line 185
    :cond_0
    const-string v11, "title"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 188
    :try_start_0
    const-string v11, "title"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 190
    .local v9, "titleJSON":Lorg/json/JSONObject;
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v1, v11, v2, v8}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .local v1, "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    :try_start_1
    new-instance v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    invoke-direct {v11}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;-><init>()V

    iput-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->title:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    .line 192
    iget-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->title:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    const-string v12, "text"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;->value:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_a

    move-object v0, v1

    .line 252
    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .end local v9    # "titleJSON":Lorg/json/JSONObject;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 255
    :try_start_2
    const-string v11, "link"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->loadLink(Lorg/json/JSONObject;)Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    move-result-object v11

    iput-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 261
    :goto_2
    iget-object v11, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v5

    .line 195
    .local v5, "e":Lorg/json/JSONException;
    :goto_3
    const/4 v0, 0x0

    .line 196
    goto :goto_1

    .line 198
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v11, "img"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 201
    :try_start_3
    const-string v11, "img"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 203
    .local v7, "imageJSON":Lorg/json/JSONObject;
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v1, v11, v2, v8}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 204
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    :try_start_4
    new-instance v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    invoke-direct {v11}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;-><init>()V

    iput-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    .line 205
    iget-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    const-string v12, "url"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7

    .line 208
    :try_start_5
    iget-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    const-string v12, "w"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->width:Ljava/lang/Integer;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_9

    .line 214
    :goto_4
    :try_start_6
    iget-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    const-string v12, "h"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->height:Ljava/lang/Integer;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    :goto_5
    move-object v0, v1

    .line 221
    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    goto :goto_1

    .line 219
    .end local v7    # "imageJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 220
    .restart local v5    # "e":Lorg/json/JSONException;
    :goto_6
    const/4 v0, 0x0

    .line 221
    goto :goto_1

    .line 223
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_4
    const-string v11, "video"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 226
    :try_start_7
    const-string v11, "video"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 228
    .local v10, "videoJson":Lorg/json/JSONObject;
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->VIDEO:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v1, v11, v2, v8}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 229
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    :try_start_8
    new-instance v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;

    invoke-direct {v11}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;-><init>()V

    iput-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->video:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;

    .line 230
    iget-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->video:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;

    const-string v12, "vasttag"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Video;->vastTag:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    move-object v0, v1

    .line 234
    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    goto/16 :goto_1

    .line 232
    .end local v10    # "videoJson":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 233
    .restart local v5    # "e":Lorg/json/JSONException;
    :goto_7
    const/4 v0, 0x0

    .line 234
    goto/16 :goto_1

    .line 236
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_5
    const-string v11, "data"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 239
    :try_start_9
    const-string v11, "data"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 241
    .local v4, "dataJSON":Lorg/json/JSONObject;
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    sget-object v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-direct {v1, v11, v2, v8}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;IZ)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    .line 242
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    :try_start_a
    new-instance v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    invoke-direct {v11}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;-><init>()V

    iput-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    .line 243
    iget-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    const-string v12, "value"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    .line 244
    iget-object v11, v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    const-string v12, "label"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->label:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5

    move-object v0, v1

    .line 248
    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    goto/16 :goto_1

    .line 246
    .end local v4    # "dataJSON":Lorg/json/JSONObject;
    :catch_3
    move-exception v5

    .line 247
    .restart local v5    # "e":Lorg/json/JSONException;
    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 264
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .end local v2    # "assetId":I
    .end local v3    # "assetJSON":Lorg/json/JSONObject;
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "required":Z
    :cond_6
    return-void

    .line 257
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v2    # "assetId":I
    .restart local v3    # "assetJSON":Lorg/json/JSONObject;
    .restart local v8    # "required":Z
    :catch_4
    move-exception v11

    goto/16 :goto_2

    .line 246
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v4    # "dataJSON":Lorg/json/JSONObject;
    :catch_5
    move-exception v5

    move-object v0, v1

    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    goto :goto_8

    .line 232
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .end local v4    # "dataJSON":Lorg/json/JSONObject;
    .restart local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v10    # "videoJson":Lorg/json/JSONObject;
    :catch_6
    move-exception v5

    move-object v0, v1

    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    goto :goto_7

    .line 219
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .end local v10    # "videoJson":Lorg/json/JSONObject;
    .restart local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v7    # "imageJSON":Lorg/json/JSONObject;
    :catch_7
    move-exception v5

    move-object v0, v1

    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    goto :goto_6

    .line 215
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    :catch_8
    move-exception v11

    goto :goto_5

    .line 209
    :catch_9
    move-exception v11

    goto/16 :goto_4

    .line 194
    .end local v7    # "imageJSON":Lorg/json/JSONObject;
    .restart local v9    # "titleJSON":Lorg/json/JSONObject;
    :catch_a
    move-exception v5

    move-object v0, v1

    .end local v1    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .restart local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    goto/16 :goto_3
.end method

.method private loadLink(Lorg/json/JSONObject;)Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;
    .locals 5
    .param p1, "linkJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    invoke-direct {v2}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;-><init>()V

    .line 270
    .local v2, "link":Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    .line 272
    const-string v3, "clicktrackers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    :try_start_0
    const-string v3, "clicktrackers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 276
    .local v0, "clickTrackersJSON":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 278
    iget-object v3, v2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "clickTrackersJSON":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 286
    :cond_0
    const-string v3, "fallback"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->fallback:Ljava/lang/String;

    .line 288
    return-object v2
.end method


# virtual methods
.method public canHandleContent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "adContent"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "native"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 8
    .param p1, "adContent"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "adJSON":Lorg/json/JSONObject;
    const-string v6, "native"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 124
    .local v5, "nativeJSON":Lorg/json/JSONObject;
    const-string v6, "ver"

    iget v7, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->version:I

    .line 127
    const-string v6, "assets"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 128
    .local v1, "assetsJSON":Lorg/json/JSONArray;
    invoke-direct {p0, v1}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->loadAssets(Lorg/json/JSONArray;)V

    .line 131
    const-string v6, "link"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->loadLink(Lorg/json/JSONObject;)Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    move-result-object v6

    iput-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    .line 134
    const-string v6, "imptrackers"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 135
    .local v4, "impTrackersJSON":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    .line 137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 138
    iget-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->impTrackers:Ljava/util/List;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_0
    const-string v6, "jstracker"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->jsTracker:Ljava/lang/String;

    .line 145
    iget-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    invoke-interface {v6}, Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;->initSucceeded()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "adJSON":Lorg/json/JSONObject;
    .end local v1    # "assetsJSON":Lorg/json/JSONArray;
    .end local v4    # "impTrackersJSON":Lorg/json/JSONArray;
    .end local v5    # "nativeJSON":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/millennialmedia/internal/adcontrollers/NativeController;->TAG:Ljava/lang/String;

    const-string v7, "Initialization of the native controller instance failed"

    invoke-static {v6, v7, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object v6, p0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    invoke-interface {v6, v2}, Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;->initFailed(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
