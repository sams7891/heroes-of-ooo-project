.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source "LightboxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;,
        Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;,
        Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;,
        Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;,
        Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;,
        Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;,
        Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile adContainer:Landroid/view/ViewGroup;

.field private lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

.field private lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

.field private lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

.field private mmWebView:Lcom/millennialmedia/internal/MMWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adContext"    # Ljava/lang/String;
    .param p3, "lightboxControllerListener"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 158
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    .line 161
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v9, "json":Lorg/json/JSONObject;
    const-string v13, "ad"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 163
    .local v3, "adObject":Lorg/json/JSONObject;
    const-string v13, "inline"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 165
    .local v4, "bannerObject":Lorg/json/JSONObject;
    new-instance v8, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;

    const-string v13, "content"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->loaded:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "loadTracking"

    .line 166
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 168
    .local v8, "inline":Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;
    const-string v13, "video"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 170
    .local v12, "videoObject":Lorg/json/JSONObject;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v10, "trackingEvents":Ljava/util/Map;, "Ljava/util/Map<Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Ljava/util/List<Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;>;>;"
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "start"

    .line 173
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->firstQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "firstQuartile"

    .line 176
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    .line 175
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->midpoint:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "midpoint"

    .line 179
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    .line 178
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->thirdQuartile:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "thirdQuartile"

    .line 182
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    .line 181
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->complete:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "complete"

    .line 185
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    .line 184
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoExpand:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "videoExpand"

    .line 188
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    .line 187
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoCollapse:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "videoCollapse"

    .line 191
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    .line 190
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoClose:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    sget-object v14, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->start:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v15, "videoClose"

    .line 194
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v14

    .line 193
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v11, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    const-string v13, "uri"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13, v10}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 198
    .local v11, "video":Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;
    const-string v13, "fullscreen"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 200
    .local v7, "fullscreenObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;

    const-string v13, "webContent"

    .line 201
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "imageUri"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->loaded:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    const-string v16, "loadTracking"

    .line 202
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v6, v13, v14, v15}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 204
    .local v6, "fullscreen":Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;
    new-instance v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    invoke-direct {v13, v8, v11, v6}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    .line 206
    new-instance v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v13, v0, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;)V

    invoke-static {v13}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v3    # "adObject":Lorg/json/JSONObject;
    .end local v4    # "bannerObject":Lorg/json/JSONObject;
    .end local v6    # "fullscreen":Lcom/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen;
    .end local v7    # "fullscreenObject":Lorg/json/JSONObject;
    .end local v8    # "inline":Lcom/millennialmedia/internal/adcontrollers/LightboxController$Inline;
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "trackingEvents":Ljava/util/Map;, "Ljava/util/Map<Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Ljava/util/List<Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;>;>;"
    .end local v11    # "video":Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;
    .end local v12    # "videoObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v5

    .line 365
    .local v5, "e":Lorg/json/JSONException;
    sget-object v13, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->TAG:Ljava/lang/String;

    const-string v14, "Lightbox ad content is malformed."

    invoke-static {v13, v14, v5}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    invoke-interface/range {p3 .. p3}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->initFailed()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/video/LightboxView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;
    .param p1, "x1"    # Lcom/millennialmedia/internal/video/LightboxView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxAd:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->adContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->attachLightboxView()V

    return-void
.end method

.method static synthetic access$500(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/MMWebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;
    .param p1, "x1"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->fireTrackingEvents(Ljava/util/List;)V

    return-void
.end method

.method private attachLightboxView()V
    .locals 12

    .prologue
    .line 438
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 439
    sget-object v9, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->TAG:Ljava/lang/String;

    const-string v10, "attaching lightbox view"

    invoke-static {v9, v10}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 445
    .local v8, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 446
    .local v2, "defaultDisplay":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 447
    .local v4, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 449
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v9}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultPosition()Landroid/graphics/Point;

    move-result-object v3

    .line 450
    .local v3, "defaultPosition":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v9}, Lcom/millennialmedia/internal/video/LightboxView;->getDefaultDimensions()Landroid/graphics/Point;

    move-result-object v1

    .line 453
    .local v1, "defaultDimension":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    iget v10, v3, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationX(F)V

    .line 454
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    iget v10, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Lcom/millennialmedia/internal/video/LightboxView;->setTranslationY(F)V

    .line 456
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v7, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 458
    .local v7, "videoLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->adContainer:Landroid/view/ViewGroup;

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 459
    .local v6, "rootView":Landroid/view/ViewGroup;
    if-eqz v6, :cond_1

    .line 460
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v6, v9, v7}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    iget v9, v4, Landroid/graphics/Point;->y:I

    iget v10, v3, Landroid/graphics/Point;->y:I

    sub-int v5, v9, v10

    .line 463
    .local v5, "distanceToDefaultPosY":I
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;

    invoke-direct {v0, p0, v4, v5}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$3;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/graphics/Point;I)V

    .line 474
    .local v0, "animation":Landroid/view/animation/Animation;
    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 477
    iget-object v9, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxView:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {v9, v0}, Lcom/millennialmedia/internal/video/LightboxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v5    # "distanceToDefaultPosY":I
    :goto_0
    return-void

    .line 480
    :cond_1
    sget-object v9, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->TAG:Ljava/lang/String;

    const-string v10, "Unable to determine the root view; cannot attach Lightbox view."

    invoke-static {v9, v10}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fireTrackingEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "trackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;>;"
    if-eqz p1, :cond_0

    .line 488
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$4;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Ljava/util/List;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 503
    :cond_0
    return-void
.end method

.method private fromJSONArray(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1, "trackableEvent"    # Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;
    .param p2, "uris"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v1, "trackingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 376
    new-instance v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackingEvent;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-object v1
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->attachFailed()V

    .line 433
    :goto_0
    return-void

    .line 405
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->adContainer:Landroid/view/ViewGroup;

    .line 407
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 408
    .local v0, "containerContext":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->lightboxControllerListener:Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener;->attachFailed()V

    goto :goto_0

    .line 414
    :cond_1
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController$2;-><init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public canHandleContent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "adContent"    # Ljava/lang/String;

    .prologue
    .line 387
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, "jsonAdContent":Lorg/json/JSONObject;
    const-string v2, "lightbox"

    const-string v3, "mmAdFormat"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 392
    .end local v1    # "jsonAdContent":Lorg/json/JSONObject;
    :goto_0
    return v2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method
