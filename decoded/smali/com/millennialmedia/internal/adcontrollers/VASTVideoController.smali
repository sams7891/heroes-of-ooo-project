.class public Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;
.super Lcom/millennialmedia/internal/adcontrollers/AdController;
.source "VASTVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;
    }
.end annotation


# static fields
.field private static final MAX_WRAPPERS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

.field private listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

.field private vastVideoView:Lcom/millennialmedia/internal/video/VASTVideoView;

.field private wrapperAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adContent"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;-><init>()V

    .line 63
    iput-object p3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    .line 68
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    const-string v1, "External storage is not writeable.  Unable to load VAST video interstitial."

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    .line 158
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$1;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->loadAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTParser$InLineAd;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->fireErrorUrls()V

    return-void
.end method

.method static synthetic access$400(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/video/VASTVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastVideoView:Lcom/millennialmedia/internal/video/VASTVideoView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Lcom/millennialmedia/internal/video/VASTVideoView;)Lcom/millennialmedia/internal/video/VASTVideoView;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;
    .param p1, "x1"    # Lcom/millennialmedia/internal/video/VASTVideoView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastVideoView:Lcom/millennialmedia/internal/video/VASTVideoView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    return-object v0
.end method

.method private fireErrorUrls()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$4;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method private loadAd(Ljava/lang/String;)V
    .locals 6
    .param p1, "adContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Lcom/millennialmedia/internal/video/VASTParser;->parse(Ljava/lang/String;)Lcom/millennialmedia/internal/video/VASTParser$Ad;

    move-result-object v0

    .line 233
    .local v0, "ad":Lcom/millennialmedia/internal/video/VASTParser$Ad;
    if-nez v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->fireErrorUrls()V

    .line 235
    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->initFailed()V

    .line 266
    .end local v0    # "ad":Lcom/millennialmedia/internal/video/VASTParser$Ad;
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local v0    # "ad":Lcom/millennialmedia/internal/video/VASTParser$Ad;
    :cond_1
    instance-of v3, v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    if-eqz v3, :cond_2

    .line 241
    check-cast v0, Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    .end local v0    # "ad":Lcom/millennialmedia/internal/video/VASTParser$Ad;
    iput-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->inLineAd:Lcom/millennialmedia/internal/video/VASTParser$InLineAd;

    goto :goto_0

    .line 242
    .restart local v0    # "ad":Lcom/millennialmedia/internal/video/VASTParser$Ad;
    :cond_2
    instance-of v3, v0, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 243
    check-cast v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;

    .line 245
    .local v2, "wrapperAd":Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->wrapperAds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_5

    iget-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    .line 248
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 250
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    sget-object v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting VAST tag URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_3
    iget-object v3, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v1

    .line 255
    .local v1, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget v3, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    .line 256
    iget-object v3, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->content:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->loadAd(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_4
    sget-object v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received HTTP status code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when processing ad tag URI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;->adTagURI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    .end local v1    # "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    :cond_5
    sget-object v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->TAG:Ljava/lang/String;

    const-string v4, "VAST wrapper did not contain a valid ad tag URI or MAX VAST Redirects exceeded."

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public attach(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 4
    .param p1, "mmActivity"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/millennialmedia/internal/MMActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 180
    .local v2, "parentContainer":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 181
    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachFailed()V

    .line 227
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 187
    .local v1, "containerContext":Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->listener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-interface {v3}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;->attachFailed()V

    goto :goto_0

    .line 193
    :cond_1
    new-instance v0, Lcom/millennialmedia/internal/AdContainer;

    check-cast v1, Landroid/app/Activity;

    .end local v1    # "containerContext":Landroid/content/Context;
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/internal/AdContainer;-><init>(Landroid/app/Activity;Lcom/millennialmedia/internal/ActivityListenerManager$ActivityListener;)V

    .line 194
    .local v0, "adContainer":Lcom/millennialmedia/internal/AdContainer;
    new-instance v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;

    invoke-direct {v3, p0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$2;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;)V

    invoke-virtual {v0, v3}, Lcom/millennialmedia/internal/AdContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    new-instance v3, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;

    invoke-direct {v3, p0, v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$3;-><init>(Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;Lcom/millennialmedia/internal/AdContainer;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    invoke-static {v2, v0}, Lcom/millennialmedia/internal/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method public canHandleContent(Ljava/lang/String;)Z
    .locals 5
    .param p1, "adContent"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 169
    const-string v4, "<VAST"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 170
    .local v2, "vastOpenIndex":I
    const-string v4, "<AD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "adOpenIndex":I
    const-string v4, "</VAST>"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "vastCloseIndex":I
    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    if-ge v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastVideoView:Lcom/millennialmedia/internal/video/VASTVideoView;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastVideoView:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->canSkip()Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastVideoView:Lcom/millennialmedia/internal/video/VASTVideoView;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;->vastVideoView:Lcom/millennialmedia/internal/video/VASTVideoView;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/video/VASTVideoView;->shutdown()V

    .line 296
    :cond_0
    return-void
.end method
