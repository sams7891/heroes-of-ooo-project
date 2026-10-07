.class public Lcom/millennialmedia/internal/MMWebView;
.super Landroid/webkit/WebView;
.source "MMWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;,
        Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_PATH:Ljava/lang/String; = "file:///android_asset/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentPosition:[I

.field currentUrl:Ljava/lang/String;

.field private final dimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gestureDetector:Landroid/view/GestureDetector;

.field jsBridge:Lcom/millennialmedia/internal/JSBridge;

.field private jsScriptsInjected:Z

.field private lastPosition:[I

.field private pageFinished:Z

.field private final viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

.field private final webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/millennialmedia/internal/MMWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isInterstitial"    # Z
    .param p3, "transparent"    # Z
    .param p4, "webViewListener"    # Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    new-instance v1, Landroid/content/MutableContextWrapper;

    invoke-direct {v1, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->dimensions:Ljava/util/Map;

    .line 53
    iput-boolean v4, p0, Lcom/millennialmedia/internal/MMWebView;->pageFinished:Z

    .line 54
    iput-boolean v4, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    .line 55
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    .line 56
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    .line 186
    if-nez p4, :cond_0

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to create MMWebView instance, specified listener is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    iput-object p4, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    .line 191
    if-eqz p3, :cond_1

    .line 192
    invoke-virtual {p0, v4}, Lcom/millennialmedia/internal/MMWebView;->setBackgroundColor(I)V

    .line 195
    :cond_1
    invoke-virtual {p0, v4}, Lcom/millennialmedia/internal/MMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 196
    invoke-virtual {p0, v4}, Lcom/millennialmedia/internal/MMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 198
    new-instance v1, Landroid/view/GestureDetector;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/internal/MMWebView$1;

    invoke-direct {v3, p0, p4}, Lcom/millennialmedia/internal/MMWebView$1;-><init>(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 209
    new-instance v1, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewClient;-><init>(Lcom/millennialmedia/internal/MMWebView;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 210
    new-instance v1, Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/MMWebView$MMWebChromeClient;-><init>(Lcom/millennialmedia/internal/MMWebView;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/MMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 213
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 214
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 215
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 216
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 218
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 219
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 221
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 222
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    sget-object v1, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v2, "Disabling user gesture requirement for media playback"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_2
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 231
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_4

    .line 232
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 235
    :cond_4
    new-instance v1, Lcom/millennialmedia/internal/JSBridge;

    new-instance v2, Lcom/millennialmedia/internal/MMWebView$2;

    invoke-direct {v2, p0, p4}, Lcom/millennialmedia/internal/MMWebView$2;-><init>(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    invoke-direct {v1, p0, p2, v2}, Lcom/millennialmedia/internal/JSBridge;-><init>(Lcom/millennialmedia/internal/MMWebView;ZLcom/millennialmedia/internal/JSBridge$JSBridgeListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    .line 302
    new-instance v1, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    new-instance v2, Lcom/millennialmedia/internal/MMWebView$3;

    invoke-direct {v2, p0}, Lcom/millennialmedia/internal/MMWebView$3;-><init>(Lcom/millennialmedia/internal/MMWebView;)V

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;-><init>(Landroid/view/View;Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityListener;)V

    iput-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    .line 312
    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->viewabilityWatcher:Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;

    invoke-virtual {v1}, Lcom/millennialmedia/internal/utils/ViewUtils$ViewabilityWatcher;->startWatching()V

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/MMWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/MMWebView;->isOriginalUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/millennialmedia/internal/MMWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/MMWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMWebView;->pageFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/millennialmedia/internal/MMWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMWebView;->setLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/millennialmedia/internal/MMWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/MMWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/MMWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/MMWebView;->loadUrlOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method private isOriginalUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadUrlOnUiThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 410
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v2, "Error loading url"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setLoaded()V
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->pageFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onLoaded()V

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/JSBridge;->callJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :cond_0
    return-void
.end method

.method public varargs invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/internal/JSBridge;->invokeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    :cond_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    .line 400
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v2, "Error hit when calling through to loadDataWithBaseUrl"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/millennialmedia/internal/MMWebView;->TAG:Ljava/lang/String;

    const-string v1, "Url is null or empty"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :goto_0
    return-void

    .line 427
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iput-object p1, p0, Lcom/millennialmedia/internal/MMWebView;->currentUrl:Ljava/lang/String;

    .line 431
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/MMWebView$5;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/MMWebView$5;-><init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 322
    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    invoke-virtual {p0, v1}, Lcom/millennialmedia/internal/MMWebView;->getLocationOnScreen([I)V

    .line 325
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 326
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 337
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 341
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 342
    return-void
.end method

.method public onNotifyClicked()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onClicked()V

    .line 544
    return-void
.end method

.method public onScrollChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/internal/MMWebView;->getLocationOnScreen([I)V

    .line 350
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    aget v1, v1, v2

    aput v1, v0, v2

    .line 355
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->lastPosition:[I

    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->currentPosition:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 357
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/JSBridge;->setScrolledPosition(Lcom/millennialmedia/internal/MMWebView;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 444
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 446
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/JSBridge;->setCurrentPosition(Lcom/millennialmedia/internal/MMWebView;)V

    .line 449
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->enableApiCalls()V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 466
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->webViewListener:Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/MMWebView$MMWebViewListener;->onFailed()V

    .line 383
    :goto_0
    return-void

    .line 372
    :cond_0
    iput-boolean v2, p0, Lcom/millennialmedia/internal/MMWebView;->jsScriptsInjected:Z

    .line 373
    iput-boolean v2, p0, Lcom/millennialmedia/internal/MMWebView;->pageFinished:Z

    .line 374
    iget-object v1, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/internal/JSBridge;->injectJSBridge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "injectedContent":Ljava/lang/String;
    new-instance v1, Lcom/millennialmedia/internal/MMWebView$4;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/internal/MMWebView$4;-><init>(Lcom/millennialmedia/internal/MMWebView;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setStateCollapsed()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateCollapsed()V

    .line 522
    :cond_0
    return-void
.end method

.method public setStateExpanded()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateExpanded()V

    .line 514
    :cond_0
    return-void
.end method

.method public setStateResized()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateResized()V

    .line 498
    :cond_0
    return-void
.end method

.method public setStateResizing()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateResizing()V

    .line 538
    :cond_0
    return-void
.end method

.method public setStateUnresized()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setStateUnresized()V

    .line 506
    :cond_0
    return-void
.end method

.method public setTwoPartExpand()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/millennialmedia/internal/MMWebView;->jsBridge:Lcom/millennialmedia/internal/JSBridge;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/JSBridge;->setTwoPartExpand()V

    .line 530
    :cond_0
    return-void
.end method
