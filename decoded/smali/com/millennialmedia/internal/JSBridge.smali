.class public Lcom/millennialmedia/internal/JSBridge;
.super Ljava/lang/Object;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;,
        Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;
    }
.end annotation


# static fields
.field private static final JS_MRAID_NAMESPACE:Ljava/lang/String; = "MmJsBridge.mraid"

.field private static final JS_SET_PLACEMENT_TYPE:Ljava/lang/String; = "MmJsBridge.mraid.setPlacementType"

.field private static final JS_SET_POSITIONS:Ljava/lang/String; = "MmJsBridge.mraid.setPositions"

.field private static final JS_SET_STATE:Ljava/lang/String; = "MmJsBridge.mraid.setState"

.field private static final JS_SET_SUPPORTS:Ljava/lang/String; = "MmJsBridge.mraid.setSupports"

.field private static final JS_SET_VIEWABLE:Ljava/lang/String; = "MmJsBridge.mraid.setViewable"

.field private static final JS_THROW_MRAID_ERROR:Ljava/lang/String; = "MmJsBridge.mraid.throwMraidError"

.field private static final MM_JS_BRIDGE_CALL_CALLBACK:Ljava/lang/String; = "MmJsBridge.callbackManager.callCallback"

.field private static final MM_JS_BRIDGE_SET_LOG_LEVEL:Ljava/lang/String; = "MmJsBridge.logging.setLogLevel"

.field private static final SCROLL_IDLE_TIMEOUT:I = 0x1c2

.field private static final SCROLL_UPDATE_INTERVAL:I = 0x64

.field private static final STATE_DEFAULT:Ljava/lang/String; = "default"

.field private static final STATE_EXPANDED:Ljava/lang/String; = "expanded"

.field private static final STATE_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final STATE_LOADING:Ljava/lang/String; = "loading"

.field private static final STATE_RESIZED:Ljava/lang/String; = "resized"

.field private static final SUPPORTS_CALENDAR:Ljava/lang/String; = "calendar"

.field private static final SUPPORTS_INLINE_VIDEO:Ljava/lang/String; = "inlineVideo"

.field private static final SUPPORTS_SMS:Ljava/lang/String; = "sms"

.field private static final SUPPORTS_STORE_PICTURE:Ljava/lang/String; = "storePicture"

.field private static final SUPPORTS_TEL:Ljava/lang/String; = "tel"

.field private static final TAG:Ljava/lang/String;

.field private static final bodyStartPattern:Ljava/util/regex/Pattern;

.field static final bodyStyling:Ljava/lang/String; = "<style>body {margin:0;padding:0;}</style>"

.field private static final headEndPattern:Ljava/util/regex/Pattern;

.field private static final mraidJsReplacePattern:Ljava/util/regex/Pattern;

.field static final scriptFilesToInject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final scriptStatementsToInject:Ljava/lang/String;

.field static final useActionsQueue:Z


# instance fields
.field private volatile actionsQueue:Lorg/json/JSONArray;

.field private volatile apiCallsEnabled:Z

.field currentState:Ljava/lang/String;

.field private volatile dimensions:Landroid/graphics/Rect;

.field hasSize:Z

.field final isInterstitial:Z

.field isReady:Z

.field isResizing:Z

.field isTwoPartExpand:Z

.field isViewable:Z

.field private volatile jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

.field jsInjected:Z

.field lastOrientation:I

.field private volatile mmWebViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/internal/MMWebView;",
            ">;"
        }
    .end annotation
.end field

.field requestedOrientation:I

.field scriptsAwaitingLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile scrollIdleTimeout:J

.field private volatile scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field useCustomClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 64
    const-class v2, Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    .line 95
    const-string v2, "</head>"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/internal/JSBridge;->headEndPattern:Ljava/util/regex/Pattern;

    .line 96
    const-string v2, "<body[^>]*>"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/internal/JSBridge;->bodyStartPattern:Ljava/util/regex/Pattern;

    .line 97
    const-string v2, "<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\\'])mraid\\.js\\1[^>]*>\\s*</script>"

    .line 98
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/internal/JSBridge;->mraidJsReplacePattern:Ljava/util/regex/Pattern;

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/millennialmedia/internal/JSBridge;->scriptFilesToInject:Ljava/util/List;

    .line 132
    sget-boolean v2, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->scriptFilesToInject:Ljava/util/List;

    const-string v3, "actionsQueue.js"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->scriptFilesToInject:Ljava/util/List;

    const-string v3, "mm.js"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->scriptFilesToInject:Ljava/util/List;

    const-string v3, "mraid.js"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->scriptFilesToInject:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, "script":Ljava/lang/String;
    const-string v3, "<script src=\"mmadsdk/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, "\"></script>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 112
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "script":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/millennialmedia/internal/JSBridge;->scriptStatementsToInject:Ljava/lang/String;

    .line 145
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/internal/MMWebView;ZLcom/millennialmedia/internal/JSBridge$JSBridgeListener;)V
    .locals 2
    .param p1, "mmWebView"    # Lcom/millennialmedia/internal/MMWebView;
    .param p2, "isInterstitial"    # Z
    .param p3, "jsBridgeListener"    # Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->apiCallsEnabled:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    .line 116
    const-string v0, "loading"

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    .line 117
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isTwoPartExpand:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    .line 119
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    .line 120
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->jsInjected:Z

    .line 121
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    .line 122
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->hasSize:Z

    .line 123
    iput-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->useCustomClose:Z

    .line 124
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/JSBridge;->lastOrientation:I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/internal/JSBridge;->requestedOrientation:I

    .line 184
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    .line 185
    iput-object p3, p0, Lcom/millennialmedia/internal/JSBridge;->jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    .line 186
    iput-boolean p2, p0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    .line 190
    if-eqz p1, :cond_0

    .line 191
    new-instance v0, Lcom/millennialmedia/internal/JSBridge$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/JSBridge$1;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    invoke-virtual {p1, v0}, Lcom/millennialmedia/internal/MMWebView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 212
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/JSBridge;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/internal/JSBridge;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$202(Lcom/millennialmedia/internal/JSBridge;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/JSBridge;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/JSBridge;)Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/internal/JSBridge;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->apiCallsEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/internal/JSBridge;)J
    .locals 2
    .param p0, "x0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollIdleTimeout:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/internal/JSBridge;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/JSBridge;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static getSupportedFeatures()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v1, "supportedFeatures":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "sms"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isSmsSupported()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 169
    const-string v2, "tel"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isTelSupported()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 170
    const-string v2, "calendar"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isCalendarSupported()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 171
    const-string v2, "storePicture"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageSupported()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 172
    const-string v2, "inlineVideo"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v3, "Error creating supports dictionary"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method varargs callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 329
    .local v0, "args":Lorg/json/JSONArray;
    :try_start_0
    iget-boolean v4, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    if-nez v4, :cond_1

    .line 330
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    sget-object v4, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsBridge scripts are not loaded: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    sget-boolean v4, Lcom/millennialmedia/internal/JSBridge;->useActionsQueue:Z

    if-eqz v4, :cond_4

    .line 338
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 339
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "functionName"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v4, "args"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :try_start_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    sget-object v4, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queuing js: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " args: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_2
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    if-nez v4, :cond_3

    .line 351
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    .line 353
    :cond_3
    iget-object v4, p0, Lcom/millennialmedia/internal/JSBridge;->actionsQueue:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 354
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 375
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v5, "Unable to execute javascript function"

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 357
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "js":Ljava/lang/String;
    new-instance v4, Lcom/millennialmedia/internal/JSBridge$2;

    invoke-direct {v4, p0, v2}, Lcom/millennialmedia/internal/JSBridge$2;-><init>(Lcom/millennialmedia/internal/JSBridge;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public enableApiCalls()V
    .locals 1

    .prologue
    .line 2038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->apiCallsEnabled:Z

    .line 2039
    return-void
.end method

.method getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "mmWebView"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 2130
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    invoke-static {p1, v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->getViewDimensionsRelativeToContent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2131
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 2132
    const/4 v1, 0x0

    .line 2147
    :goto_0
    return-object v1

    .line 2134
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(Landroid/graphics/Rect;)V

    .line 2136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2138
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "x"

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2139
    const-string v2, "y"

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2140
    const-string v2, "width"

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2141
    const-string v2, "height"

    iget-object v3, p0, Lcom/millennialmedia/internal/JSBridge;->dimensions:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2143
    :catch_0
    move-exception v0

    .line 2144
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v3, "Error creating json object"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method injectJSBridge(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-boolean v2, p0, Lcom/millennialmedia/internal/JSBridge;->jsInjected:Z

    if-nez v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 221
    .local v1, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v1, :cond_0

    .line 222
    new-instance v2, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeCommon;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v3, "MmInjectedFunctions"

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v2, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMRAID;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v3, "MmInjectedFunctionsMraid"

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v2, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeInlineVideo;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v3, "MmInjectedFunctionsInlineVideo"

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    new-instance v2, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeMMJS;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v3, "MmInjectedFunctionsMmjs"

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    new-instance v2, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/JSBridge$JSBridgeVastVideo;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    const-string v3, "MmInjectedFunctionsVast"

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/internal/JSBridge;->jsInjected:Z

    .line 236
    .end local v1    # "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    :cond_1
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->mraidJsReplacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 237
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->scriptStatementsToInject:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->bodyStartPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 240
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<style>body {margin:0;padding:0;}</style>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    :cond_2
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/millennialmedia/internal/JSBridge;->scriptFilesToInject:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    .line 259
    iput-boolean v4, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    .line 261
    return-object p1

    .line 245
    :cond_3
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->headEndPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 246
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/millennialmedia/internal/JSBridge;->scriptStatementsToInject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 249
    :cond_4
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->bodyStartPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 250
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/internal/JSBridge;->scriptStatementsToInject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 253
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<style>body {margin:0;padding:0;}</style>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/internal/JSBridge;->scriptStatementsToInject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public varargs invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 275
    if-nez p1, :cond_1

    .line 276
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    sget-object v2, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v3, "No callbackId provided"

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    if-nez p2, :cond_2

    .line 286
    const/4 v2, 0x1

    new-array p2, v2, [Ljava/lang/Object;

    .line 289
    :cond_2
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 290
    .local v0, "allParameters":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 292
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 293
    add-int/lit8 v2, v1, 0x1

    aget-object v3, p2, v1

    aput-object v3, v0, v2

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_3
    const-string v2, "MmJsBridge.callbackManager.callCallback"

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method sendPositions(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 12
    .param p1, "mmWebView"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 2242
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v0

    .line 2243
    .local v0, "displayDensity":F
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    float-to-int v8, v9

    .line 2244
    .local v8, "width":I
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v0

    float-to-int v2, v9

    .line 2245
    .local v2, "height":I
    const/4 v9, 0x0

    invoke-static {p1, v9}, Lcom/millennialmedia/internal/utils/ViewUtils;->getContentDimensions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 2249
    .local v7, "maxSize":Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/JSBridge;->getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2252
    .local v4, "jsonCurrentPosition":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2253
    .local v6, "jsonScreenSize":Lorg/json/JSONObject;
    const-string v9, "width"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2254
    const-string v9, "height"

    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2257
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2258
    .local v5, "jsonMaxSize":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 2259
    invoke-static {v7}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(Landroid/graphics/Rect;)V

    .line 2260
    const-string v9, "width"

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2261
    const-string v9, "height"

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2265
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2266
    .local v3, "json":Lorg/json/JSONObject;
    const-string v9, "currentPosition"

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2267
    const-string v9, "screenSize"

    invoke-virtual {v3, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2268
    const-string v9, "maxSize"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2270
    const-string v9, "MmJsBridge.mraid.setPositions"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonCurrentPosition":Lorg/json/JSONObject;
    .end local v5    # "jsonMaxSize":Lorg/json/JSONObject;
    .end local v6    # "jsonScreenSize":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 2272
    :catch_0
    move-exception v1

    .line 2273
    .local v1, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v10, "Error creating json object in setCurrentPosition"

    invoke-static {v9, v10}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 8
    .param p1, "mmWebView"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2201
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/JSBridge;->getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2202
    .local v3, "jsonCurrentPosition":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2206
    :cond_1
    iget-boolean v5, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    if-eqz v5, :cond_2

    .line 2207
    iget-boolean v5, p0, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    if-nez v5, :cond_0

    .line 2209
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2210
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "currentPosition"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2211
    const-string v5, "MmJsBridge.mraid.setPositions"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2213
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 2214
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    const-string v6, "Error creating json object in setCurrentPosition"

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2220
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v5, "width"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 2221
    .local v4, "width":I
    const-string v5, "height"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 2222
    .local v1, "height":I
    if-lez v4, :cond_0

    if-lez v1, :cond_0

    .line 2223
    iput-boolean v7, p0, Lcom/millennialmedia/internal/JSBridge;->hasSize:Z

    .line 2224
    invoke-virtual {p0}, Lcom/millennialmedia/internal/JSBridge;->setReadyState()V

    goto :goto_0
.end method

.method public setLogLevel(I)V
    .locals 4
    .param p1, "logLevel"    # I

    .prologue
    .line 302
    const-string v0, "DEBUG"

    .line 304
    .local v0, "logLevelString":Ljava/lang/String;
    const/4 v1, 0x6

    if-lt p1, v1, :cond_1

    .line 305
    const-string v0, "ERROR"

    .line 310
    :cond_0
    :goto_0
    const-string v1, "MmJsBridge.logging.setLogLevel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return-void

    .line 306
    :cond_1
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 307
    const-string v0, "INFO"

    goto :goto_0
.end method

.method setReadyState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2280
    iget-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    if-eqz v1, :cond_1

    .line 2307
    :cond_0
    :goto_0
    return-void

    .line 2287
    :cond_1
    iget-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->hasSize:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge;->scriptsAwaitingLoad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2288
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMWebView;

    .line 2289
    .local v0, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v0, :cond_0

    .line 2293
    iput-boolean v4, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    .line 2294
    const-string v2, "MmJsBridge.mraid.setPlacementType"

    new-array v3, v4, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v1, :cond_2

    const-string v1, "interstitial"

    :goto_1
    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2295
    const-string v1, "MmJsBridge.mraid.setSupports"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/millennialmedia/internal/JSBridge;->getSupportedFeatures()Lorg/json/JSONObject;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2296
    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->sendPositions(Lcom/millennialmedia/internal/MMWebView;)V

    .line 2297
    const-string v1, "MmJsBridge.mraid.setViewable"

    new-array v2, v4, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2300
    iget-boolean v1, p0, Lcom/millennialmedia/internal/JSBridge;->isTwoPartExpand:Z

    if-eqz v1, :cond_3

    const-string v1, "expanded"

    :goto_2
    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    .line 2303
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge;->jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    if-eqz v1, :cond_0

    .line 2304
    iget-object v1, p0, Lcom/millennialmedia/internal/JSBridge;->jsBridgeListener:Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;->onJSBridgeReady()V

    goto :goto_0

    .line 2294
    :cond_2
    const-string v1, "inline"

    goto :goto_1

    .line 2300
    :cond_3
    const-string v1, "default"

    goto :goto_2
.end method

.method setScrolledPosition(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 4
    .param p1, "mmWebView"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 2157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1c2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollIdleTimeout:J

    .line 2159
    iget-object v0, p0, Lcom/millennialmedia/internal/JSBridge;->scrollThrottling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    new-instance v0, Lcom/millennialmedia/internal/JSBridge$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/JSBridge$3;-><init>(Lcom/millennialmedia/internal/JSBridge;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 2196
    :cond_0
    return-void
.end method

.method setState(Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2091
    iget-boolean v2, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    if-nez v2, :cond_1

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2096
    :cond_1
    iput-boolean v4, p0, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    .line 2099
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "resized"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2100
    :cond_2
    iput-object p1, p0, Lcom/millennialmedia/internal/JSBridge;->currentState:Ljava/lang/String;

    .line 2102
    iget-object v2, p0, Lcom/millennialmedia/internal/JSBridge;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/internal/MMWebView;

    .line 2103
    .local v1, "mmWebView":Lcom/millennialmedia/internal/MMWebView;
    if-eqz v1, :cond_0

    .line 2107
    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/JSBridge;->getJsonCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2108
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "MmJsBridge.mraid.setState"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setStateCollapsed()V
    .locals 1

    .prologue
    .line 2072
    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v0, :cond_0

    .line 2073
    const-string v0, "hidden"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    .line 2077
    :goto_0
    return-void

    .line 2075
    :cond_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStateExpanded()V
    .locals 1

    .prologue
    .line 2062
    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isInterstitial:Z

    if-eqz v0, :cond_0

    .line 2063
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    .line 2067
    :goto_0
    return-void

    .line 2065
    :cond_0
    const-string v0, "expanded"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStateResized()V
    .locals 1

    .prologue
    .line 2050
    const-string v0, "resized"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    .line 2051
    return-void
.end method

.method public setStateResizing()V
    .locals 1

    .prologue
    .line 2082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isResizing:Z

    .line 2083
    return-void
.end method

.method public setStateUnresized()V
    .locals 1

    .prologue
    .line 2056
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/JSBridge;->setState(Ljava/lang/String;)V

    .line 2057
    return-void
.end method

.method public setTwoPartExpand()V
    .locals 1

    .prologue
    .line 2044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isTwoPartExpand:Z

    .line 2045
    return-void
.end method

.method setViewable(Z)V
    .locals 4
    .param p1, "isViewable"    # Z

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    if-eq p1, v0, :cond_0

    .line 2116
    iput-boolean p1, p0, Lcom/millennialmedia/internal/JSBridge;->isViewable:Z

    .line 2117
    iget-boolean v0, p0, Lcom/millennialmedia/internal/JSBridge;->isReady:Z

    if-eqz v0, :cond_1

    .line 2118
    const-string v0, "MmJsBridge.mraid.setViewable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2120
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/JSBridge;->setReadyState()V

    goto :goto_0
.end method

.method throwMraidError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;

    .prologue
    .line 2232
    sget-object v0, Lcom/millennialmedia/internal/JSBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID error - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const-string v0, "MmJsBridge.mraid.throwMraidError"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2234
    return-void
.end method
