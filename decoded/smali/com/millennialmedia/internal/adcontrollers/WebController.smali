.class public Lcom/millennialmedia/internal/adcontrollers/WebController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final searchTags:[Ljava/lang/String;


# instance fields
.field private volatile mmWebView:Lcom/millennialmedia/internal/MMWebView;

.field private volatile sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

.field private webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->TAG:Ljava/lang/String;

    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<SCRIPT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<IMG"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<HTML"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<A"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<DIV"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<SPAN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "<P"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "<H1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<H2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<H3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<H4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "<H5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<H6"

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->searchTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isInterstitial"    # Z
    .param p3, "adContent"    # Ljava/lang/String;
    .param p4, "adMetadata"    # Lcom/millennialmedia/internal/AdMetadata;
    .param p5, "webControllerListener"    # Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 73
    iput-object p5, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    .line 75
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/internal/adcontrollers/WebController$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/content/Context;ZLcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/MMWebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMWebView;)Lcom/millennialmedia/internal/MMWebView;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;
    .param p1, "x1"    # Lcom/millennialmedia/internal/MMWebView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->mmWebView:Lcom/millennialmedia/internal/MMWebView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/WebController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/adcontrollers/WebController;)Lcom/millennialmedia/internal/SizableStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager;)Lcom/millennialmedia/internal/SizableStateManager;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/WebController;
    .param p1, "x1"    # Lcom/millennialmedia/internal/SizableStateManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    return-object p1
.end method


# virtual methods
.method public attach(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .param p1, "containerLayout"    # Landroid/widget/RelativeLayout;
    .param p2, "layoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    .line 153
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, "containerContext":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->webControllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    invoke-interface {v1}, Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;->attachFailed()V

    goto :goto_0

    .line 130
    :cond_1
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$2;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/millennialmedia/internal/adcontrollers/WebController$3;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public canHandleContent(Ljava/lang/String;)Z
    .locals 7
    .param p1, "adContent"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v3

    .line 94
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v4

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "upperAdContent":Ljava/lang/String;
    sget-object v5, Lcom/millennialmedia/internal/adcontrollers/WebController;->searchTags:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v1, v5, v4

    .line 105
    .local v1, "searchTag":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 106
    .local v0, "found":Z
    if-eqz v0, :cond_2

    .line 107
    const/4 v3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method createWebView(Landroid/content/Context;ZZLcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)Lcom/millennialmedia/internal/MMWebView;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isInterstitial"    # Z
    .param p3, "isTwoPart"    # Z
    .param p4, "adMetadata"    # Lcom/millennialmedia/internal/AdMetadata;
    .param p5, "webControllerListener"    # Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    .prologue
    .line 266
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    .line 268
    .local v7, "transparent":Z
    :goto_0
    new-instance v8, Lcom/millennialmedia/internal/MMWebView;

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$6;

    move-object v1, p0

    move v2, p3

    move-object v3, p5

    move v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/internal/adcontrollers/WebController$6;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;ZLcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;ZLandroid/content/Context;Lcom/millennialmedia/internal/AdMetadata;)V

    invoke-direct {v8, p1, p2, v7, v0}, Lcom/millennialmedia/internal/MMWebView;-><init>(Landroid/content/Context;ZZLcom/millennialmedia/internal/MMWebView$MMWebViewListener;)V

    .line 381
    .local v8, "webView":Lcom/millennialmedia/internal/MMWebView;
    return-object v8

    .line 266
    .end local v7    # "transparent":Z
    .end local v8    # "webView":Lcom/millennialmedia/internal/MMWebView;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method getSizableStateManager()Lcom/millennialmedia/internal/SizableStateManager;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/millennialmedia/internal/SizableStateManager;

    new-instance v1, Lcom/millennialmedia/internal/adcontrollers/WebController$5;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/adcontrollers/WebController$5;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;)V

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/SizableStateManager;-><init>(Lcom/millennialmedia/internal/SizableStateManager$SizableListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    return-object v0
.end method

.method loadTwoPartContentAsync(Lcom/millennialmedia/internal/MMWebView;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)V
    .locals 3
    .param p1, "twoPartWebView"    # Lcom/millennialmedia/internal/MMWebView;
    .param p2, "expandParams"    # Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;

    .prologue
    .line 390
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/millennialmedia/internal/adcontrollers/WebController;->sizableStateManager:Lcom/millennialmedia/internal/SizableStateManager;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 391
    .local v0, "sizableStateManagerRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/SizableStateManager;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 393
    .local v1, "twoPartWebViewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/millennialmedia/internal/MMWebView;>;"
    new-instance v2, Lcom/millennialmedia/internal/adcontrollers/WebController$7;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController$7;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    invoke-static {v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V
    .locals 1
    .param p1, "activityConfig"    # Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    .prologue
    .line 158
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/adcontrollers/WebController$4;-><init>(Lcom/millennialmedia/internal/adcontrollers/WebController;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method
