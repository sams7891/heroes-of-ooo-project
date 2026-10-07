.class public final Lcom/inmobi/rendering/RenderView;
.super Landroid/webkit/WebView;
.source "RenderView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "ViewConstructor",
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/RenderView$a;,
        Lcom/inmobi/rendering/RenderView$RenderViewState;,
        Lcom/inmobi/rendering/RenderView$b;
    }
.end annotation


# static fields
.field private static R:Z

.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final J:Ljava/lang/Object;

.field private final K:Ljava/lang/Object;

.field private L:Z

.field private M:Z

.field private N:Landroid/view/View;

.field private O:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private P:I

.field private Q:Z

.field private final S:Lcom/inmobi/rendering/InMobiAdActivity$b;

.field private final T:Landroid/webkit/WebViewClient;

.field private final U:Landroid/webkit/WebChromeClient;

.field private b:Lcom/inmobi/rendering/RenderView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/rendering/mraid/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/inmobi/rendering/RenderView$b;

.field private h:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field private i:Lcom/inmobi/rendering/RenderingProperties;

.field private j:Lcom/inmobi/rendering/mraid/h;

.field private k:Lcom/inmobi/rendering/mraid/k;

.field private l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

.field private m:Lcom/inmobi/rendering/mraid/n;

.field private n:Lcom/inmobi/rendering/a;

.field private o:Lcom/inmobi/ads/b$e;

.field private p:Lcom/inmobi/ads/b$c;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/inmobi/rendering/RenderView$a;

.field private s:Z

.field private t:Z

.field private u:Lcom/inmobi/rendering/mraid/d;

.field private v:Lcom/inmobi/rendering/mraid/m;

.field private w:Lcom/inmobi/rendering/mraid/l;

.field private x:Lorg/json/JSONObject;

.field private y:Lorg/json/JSONObject;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/rendering/RenderView;->R:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderingProperties;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Ljava/util/List;

    .line 125
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->e:Z

    .line 128
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->q:Ljava/util/List;

    .line 138
    new-instance v0, Lcom/inmobi/rendering/RenderView$a;

    invoke-direct {v0, p0, v3}, Lcom/inmobi/rendering/RenderView$a;-><init>(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/rendering/RenderView$1;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->r:Lcom/inmobi/rendering/RenderView$a;

    .line 148
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    .line 149
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 151
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    .line 152
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 153
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    .line 154
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    .line 155
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    .line 156
    iput-object v3, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    .line 157
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->H:Z

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    .line 170
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->M:Z

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/RenderView;->P:I

    .line 180
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->Q:Z

    .line 1217
    new-instance v0, Lcom/inmobi/rendering/RenderView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$4;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/rendering/InMobiAdActivity$b;

    .line 1253
    new-instance v0, Lcom/inmobi/rendering/RenderView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$5;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->T:Landroid/webkit/WebViewClient;

    .line 1385
    new-instance v0, Lcom/inmobi/rendering/RenderView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$6;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->U:Landroid/webkit/WebChromeClient;

    .line 186
    iput-object v3, p0, Lcom/inmobi/rendering/RenderView;->b:Lcom/inmobi/rendering/RenderView;

    .line 187
    iput-object p2, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    .line 188
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 190
    sget-boolean v0, Lcom/inmobi/rendering/RenderView;->R:Z

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->a(Landroid/content/Context;)V

    .line 192
    sput-boolean v2, Lcom/inmobi/rendering/RenderView;->R:Z

    .line 194
    :cond_0
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 1565
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    .line 1574
    :goto_0
    return-void

    .line 1569
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 1570
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/k;->b()V

    .line 1571
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1572
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$b;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 1573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    goto :goto_0
.end method

.method private B()V
    .locals 3

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/c;

    .line 1628
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/mraid/c;->cancel(Z)Z

    goto :goto_0

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1631
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 1633
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->N:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->O:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.broadcastEvent(\'sizeChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 546
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 547
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 551
    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 553
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 554
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 556
    const/16 v1, 0x7d5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 557
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v1, v3, :cond_1

    .line 558
    const/16 v1, 0x18

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 565
    :goto_0
    const/4 v1, -0x2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 566
    const v1, 0x800033

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 567
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 570
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    :cond_0
    return-void

    .line 561
    :cond_1
    const v1, 0x1000018

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->i(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Vibrator;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1804
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderingProperties;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;Z)Z
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$b;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    return-object v0
.end method

.method private d(Z)V
    .locals 1

    .prologue
    .line 381
    .line 382
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    if-ne v0, p1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->e(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method private e(Z)V
    .locals 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    if-nez v0, :cond_0

    .line 391
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    .line 392
    if-nez p1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/n;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/n;->a(Landroid/content/Context;)V

    .line 397
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->a(Z)V

    .line 399
    :cond_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$b;->d(Lcom/inmobi/rendering/RenderView;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->e:Z

    return v0
.end method

.method static synthetic g(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->u()V

    return-void
.end method

.method static synthetic h(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.broadcastEvent(\'stateChange\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method static synthetic i(Lcom/inmobi/rendering/RenderView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->q:Ljava/util/List;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1636
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 1637
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 1641
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1642
    return-void
.end method

.method static synthetic j(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->H:Z

    return v0
.end method

.method static synthetic k(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->v()V

    return-void
.end method

.method static synthetic l(Lcom/inmobi/rendering/RenderView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/rendering/RenderView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->O:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 428
    :cond_0
    return-void
.end method

.method private t()Z
    .locals 6

    .prologue
    .line 575
    new-instance v0, Lcom/inmobi/rendering/mraid/i;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/i;-><init>()V

    .line 576
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/i;->c()J

    move-result-wide v0

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v0, v2, v0

    .line 579
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$c;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 608
    const-string v0, "window.mraidview.detectAndBlockFraud(\'redirect\')"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method private v()V
    .locals 1

    .prologue
    .line 612
    const-string v0, "window.imaiview.broadcastEvent(\'ready\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 613
    const-string v0, "window.mraidview.broadcastEvent(\'ready\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private w()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()V
    .locals 3

    .prologue
    .line 898
    invoke-static {}, Lcom/inmobi/rendering/InMobiAdActivity;->a()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    .line 899
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 900
    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Z)V

    .line 901
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 903
    iget v0, p0, Lcom/inmobi/rendering/RenderView;->P:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 904
    const/4 v0, 0x0

    iget v2, p0, Lcom/inmobi/rendering/RenderView;->P:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 907
    :cond_0
    return-void
.end method

.method private y()V
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c()V

    .line 1551
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 1554
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    .line 1562
    :goto_0
    return-void

    .line 1558
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 1559
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/mraid/h;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/h;->a()V

    .line 1560
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->x()V

    .line 1561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/RenderView$b;Lcom/inmobi/ads/b$e;Lcom/inmobi/ads/b$c;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    iput-object p2, p0, Lcom/inmobi/rendering/RenderView;->o:Lcom/inmobi/ads/b$e;

    .line 465
    iput-object p3, p0, Lcom/inmobi/rendering/RenderView;->p:Lcom/inmobi/ads/b$c;

    .line 466
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    .line 467
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    .line 469
    const-string v0, "production"

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 470
    invoke-static {v5}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b$e;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setBackgroundColor(I)V

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    new-instance v0, Lcom/inmobi/rendering/mraid/j;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$c;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/b$c;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/rendering/mraid/j;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/j;->a()V

    .line 484
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 485
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setImportantForAccessibility(I)V

    .line 488
    :cond_3
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/RenderView;->setScrollContainer(Z)V

    .line 489
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/RenderView;->setVerticalScrollBarEnabled(Z)V

    .line 490
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/RenderView;->setHorizontalScrollBarEnabled(Z)V

    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 495
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 499
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->T:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 502
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->U:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 504
    new-instance v0, Lcom/inmobi/rendering/a;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/rendering/a;-><init>(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/rendering/RenderingProperties;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->n:Lcom/inmobi/rendering/a;

    .line 505
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->n:Lcom/inmobi/rendering/a;

    const-string v1, "sdkController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/RenderView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/inmobi/rendering/mraid/h;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/h;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/mraid/h;

    .line 507
    new-instance v0, Lcom/inmobi/rendering/mraid/k;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/k;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/rendering/mraid/k;

    .line 508
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    .line 509
    new-instance v0, Lcom/inmobi/rendering/mraid/n;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/n;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/n;

    .line 511
    new-instance v0, Lcom/inmobi/rendering/mraid/d;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/d;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/mraid/d;

    .line 512
    new-instance v0, Lcom/inmobi/rendering/mraid/m;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/m;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->v:Lcom/inmobi/rendering/mraid/m;

    .line 513
    new-instance v0, Lcom/inmobi/rendering/mraid/l;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/l;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/l;

    .line 514
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 585
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 586
    new-instance v1, Lcom/inmobi/rendering/RenderView$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/RenderView$1;-><init>(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 594
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1174
    const-string v0, "postToSocial"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "postToSocial called even when it is not supported"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_0
    return-void

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/n;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/rendering/mraid/n;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 686
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 687
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;)V
    .locals 3

    .prologue
    .line 662
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 663
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback is only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 668
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback is  not allowed before it is visible! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "Media playback is  not allowed before it is visible! Ignoring request ..."

    const-string v1, "playVideo"

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEvent(\'error\',\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/n;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/inmobi/rendering/mraid/n;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidview.broadcastEvent(\'viewableChange\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 641
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 642
    new-instance v1, Lcom/inmobi/rendering/RenderView$2;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/RenderView$2;-><init>(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 677
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 678
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 713
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 714
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 921
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 922
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 933
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$b;->g(Lcom/inmobi/rendering/RenderView;)V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Successful\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve URI ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error message in processing openExternal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :catch_1
    move-exception v0

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app can handle the URI ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error message in processing openExternal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setCloseRegionDisabled(Z)V

    .line 827
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_0

    .line 831
    const v1, 0xfffb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    .line 832
    if-eqz v0, :cond_0

    .line 833
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 836
    :cond_0
    return-void

    .line 833
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    .line 808
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 695
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 696
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1199
    const-string v0, "vibrate"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1200
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "vibrate called despite the fact that it is not supported"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :goto_0
    return-void

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1205
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Creative not visible. Will not vibrate."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v0, "Creative not visible. Will not vibrate."

    const-string v1, "vibrate"

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/n;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/inmobi/rendering/mraid/n;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 939
    if-eqz p3, :cond_0

    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 940
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called with invalid url ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v0, "Invalid URL"

    invoke-virtual {p0, p2, v0, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    :goto_0
    return-void

    .line 945
    :cond_1
    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "play.google.com"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "market.android.com"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "market%3A%2F%2F"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 949
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->y()V

    .line 950
    invoke-static {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->b(Lcom/inmobi/rendering/RenderView;)V

    .line 952
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 953
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 955
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Successful\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 839
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setUseCustomClose(Z)V

    .line 840
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 842
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0xfffc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    .line 845
    if-eqz v0, :cond_0

    .line 846
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 849
    :cond_0
    return-void

    .line 846
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 604
    const-string v0, "window.mraidview.onUserInteraction();"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->s:Z

    if-nez v0, :cond_0

    .line 1135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->s:Z

    .line 1136
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->r:Lcom/inmobi/rendering/RenderView$a;

    invoke-virtual {v0, p1}, Lcom/inmobi/rendering/RenderView$a;->a(Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d()Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->r:Lcom/inmobi/rendering/RenderView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;)V

    .line 1139
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 704
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 705
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1577
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveContent called: content ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const-string v0, "saveContent"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "saveContent called despite the fact that it is not supported"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1582
    :try_start_0
    const-string v0, "url"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1583
    const-string v0, "reason"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSaveContentResult(\"saveContent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \'failed\', \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1589
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :goto_1
    return-void

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1593
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1596
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Cannot create temp directory to save "

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1599
    :try_start_1
    const-string v0, "url"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1600
    const-string v0, "reason"

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1604
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSaveContentResult(\"saveContent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \'failed\', \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1607
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1601
    :catch_1
    move-exception v0

    .line 1602
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1611
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1612
    new-instance v0, Lcom/inmobi/rendering/mraid/c;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/rendering/mraid/c;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/RenderView;)V

    .line 1613
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method public destroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 523
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 524
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/RenderView;->P:I

    .line 526
    const-string v0, "sdkController"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->B()V

    .line 528
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 529
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 722
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 723
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1184
    const-string v0, "vibrate"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "vibrate called despite the fact that it is not supported"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Creative not visible. Will not vibrate."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v0, "Creative not visible. Will not vibrate."

    const-string v1, "vibrate"

    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/n;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/mraid/n;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/c;

    .line 1619
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1620
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/c;->cancel(Z)Z

    .line 1624
    :cond_1
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    return v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 731
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 732
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 740
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 741
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    return v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/high16 v6, 0x10000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1676
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1678
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 1798
    :cond_1
    :goto_1
    :pswitch_0
    return v1

    .line 1678
    :sswitch_0
    const-string v5, "redirectFraudDetection"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v5, "tel"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v5, "postToSocial"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "playVideo"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "microphone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "inlineVideo"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "html5video"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "sms"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "saveContent"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v5, "sendMail"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v5, "calendar"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v5, "takeCameraPicture"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_c
    const-string v5, "getGalleryImage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "storePicture"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "vibrate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1682
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1683
    const-string v3, "tel:123456789"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1684
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1685
    if-nez v0, :cond_1

    move v1, v2

    .line 1686
    goto/16 :goto_1

    .line 1695
    :pswitch_2
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1696
    if-eqz v0, :cond_2

    const-string v0, "android.hardware.microphone"

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 1701
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    .line 1702
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1706
    :cond_3
    :goto_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTML5 video supported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 1702
    goto :goto_3

    .line 1710
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto:123456789"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1711
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1712
    if-nez v0, :cond_1

    move v1, v2

    .line 1713
    goto/16 :goto_1

    .line 1719
    :pswitch_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v0, v4, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 1724
    goto/16 :goto_1

    .line 1728
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1729
    const-string v3, "plain/text"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1730
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1731
    if-nez v0, :cond_1

    move v1, v2

    .line 1732
    goto/16 :goto_1

    .line 1738
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1739
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1743
    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {v3}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    .line 1744
    const-string v4, "android.permission.READ_CALENDAR"

    invoke-static {v4}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    .line 1746
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-nez v4, :cond_1

    :cond_5
    move v1, v2

    .line 1747
    goto/16 :goto_1

    .line 1753
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1757
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    .line 1758
    if-eqz v0, :cond_6

    if-nez v3, :cond_1

    :cond_6
    move v1, v2

    .line 1759
    goto/16 :goto_1

    .line 1765
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1768
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1773
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_a

    .line 1774
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1777
    :goto_4
    if-eqz v3, :cond_7

    if-nez v0, :cond_1

    :cond_7
    move v1, v2

    .line 1778
    goto/16 :goto_1

    .line 1784
    :pswitch_a
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_1

    .line 1787
    :pswitch_b
    const-string v0, "android.permission.VIBRATE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    move v3, v1

    .line 1790
    :goto_5
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "vibrator"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1791
    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_8

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->a(Landroid/os/Vibrator;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_8
    move v1, v2

    .line 1792
    goto/16 :goto_1

    :cond_9
    move v3, v2

    .line 1787
    goto :goto_5

    :cond_a
    move v0, v1

    goto :goto_4

    .line 1678
    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_3
        -0x6235c69e -> :sswitch_5
        -0x23026861 -> :sswitch_c
        -0xaa104c2 -> :sswitch_a
        0x1bd59 -> :sswitch_7
        0x1c01b -> :sswitch_1
        0x1ae6756f -> :sswitch_e
        0x1b5f6cdd -> :sswitch_d
        0x4a57455f -> :sswitch_9
        0x51b6992a -> :sswitch_4
        0x59fa48d1 -> :sswitch_6
        0x61e1d43c -> :sswitch_8
        0x69ad837d -> :sswitch_0
        0x70fc1cd2 -> :sswitch_b
        0x72856688 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getAdScreenEventsListener()Lcom/inmobi/rendering/InMobiAdActivity$b;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->S:Lcom/inmobi/rendering/InMobiAdActivity$b;

    return-object v0
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPositionMonitor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultPositionMonitor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    return-object v0
.end method

.method public getExpandProperties()Lcom/inmobi/rendering/mraid/d;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/mraid/d;

    return-object v0
.end method

.method public getFullScreenActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public getListener()Lcom/inmobi/rendering/RenderView$b;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    if-nez v0, :cond_0

    .line 966
    new-instance v0, Lcom/inmobi/rendering/RenderView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$3;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    .line 1018
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    goto :goto_0
.end method

.method public getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    return-object v0
.end method

.method public getMraidConfig()Lcom/inmobi/ads/b$c;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->p:Lcom/inmobi/ads/b$c;

    return-object v0
.end method

.method public getMraidJsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1149
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var d=String(a);b[d]||(b[d]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var d in b)b[d].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}},\nInmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&window.imraidview.startListeningHeadphonePluggedEvents();\n\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent()}}catch(d){this.log(d)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\n\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent()}};this.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(d){}}};this.sendSaveContentResult=\nfunction(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var d=arguments[c],d=JSON.parse(d);b[c]=d}else b[c]=arguments[c];d=b[1];\"success\"!=d&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);window.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=\n!0,window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),window.location=a)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){for(var b=this.urlScheme+\"://\"+a,c,d=!0,e=1;e<arguments.length;e+=2)c=arguments[e+1],null!=c&&(d?(b+=\"?\",d=!1):b+=\"&\",b+=arguments[e]+\"=\"+escape(c));__im__iosNativeCall.executeNativeCall(b);return\"OK\"};this.nativeCallComplete=function(a){__im__iosNativeCall.nativeCallComplete(a);\nreturn\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.zeroPad=function(a){var e=\"\";10>a&&(e+=\"0\");return e+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",a)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",\na)}catch(e){imraidview.showAlert(\"use CustomClose: \"+e)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,e){c?b.push(a):(eval(a),e&&(c=!0))};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"executeNativeExpand: \"+e+\", URL = \"+a)}};a.setExpandProperties=function(d){try{d?this.props=d:d=null;if(\"undefined\"!=typeof d.lockOrientation&&\nnull!=d.lockOrientation&&\"undefined\"!=typeof d.orientation&&null!=d.orientation){var e={};e.allowOrientationChange=!d.lockOrientation;e.forceOrientation=d.orientation;a.setOrientationProperties(e)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(d))}catch(b){imraidview.showAlert(\"executeNativesetExpandProperties: \"+b+\", props = \"+d)}};a.getExpandProperties=function(){try{return eval(\"(\"+sdkController.getExpandProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+\na)}};a.setOrientationProperties=function(d){try{d?(\"undefined\"!=typeof d.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=d.allowOrientationChange),\"undefined\"!=typeof d.forceOrientation&&(a.orientationProperties.forceOrientation=d.forceOrientation)):d=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(e){imraidview.showAlert(\"setOrientationProperties: \"+e+\", props = \"+d)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,\nallowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;a.setResizeProperties=function(d){var e,b;try{e=parseInt(d.width);b=parseInt(d.height);if(isNaN(e)||isNaN(b)||1>e||1>b)throw\"Invalid\";d.width=e;d.height=b;a.resizeProps=d;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(d))}catch(c){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+sdkController.getResizeProperties(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"open: \"+e)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=function(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};\na.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+a)}};a.isViewable=function(){try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+\na)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var e=\"\";null!=a&&(e=a);try{sdkController.playVideo(\"window.mraidview\",e)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(d){if(\"undefined\"===\ntypeof JSON){var e=\"\",b;if(\"undefined\"==typeof d.length)return a.stringifyArg(d);for(b=0;b<d.length;b++)0<b&&(e+=\",\"),e+=a.stringifyArg(d[b]);return e+\"]\"}return JSON.stringify(d)};a.stringifyArg=function(a){var e,b,c;b=typeof a;e=\"\";if(\"number\"===b||\"boolean\"===b)e+=args;else if(a instanceof Array)e=e+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;e+=\"{\";for(c in a)null!==a[c]&&(b||(e+=\",\"),e=e+\'\"\'+c+\'\":\',b=typeof a[c],e=\"number\"===b||\"boolean\"===b?e+a[c]:\"function\"===typeof a[c]?e+\'\"\"\':a[c]instanceof\nObject?e+this.stringify(args[i][c]):e+\'\"\'+a[c]+\'\"\',b=!1);e+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,\'\\\\\"\'),e=e+\'\"\'+a+\'\"\';imraidview.showAlert(\"json:\"+e);return e};getPID=function(a){var e=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(e=a.id);return e};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(b){imraidview.showAlert(\"resize called in bridge\")}};\na.createCalendarEvent=function(a){var e={};\"object\"!=typeof a&&window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects parameter\",\"createCalendarEvent\");if(\"string\"!=typeof a.start||\"string\"!=typeof a.end)window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects string parameters for start and end dates\",\"createCalendarEvent\");else{\"string\"!=typeof a.id&&(a.id=\"\");\"string\"!=typeof a.location&&(a.location=\"\");\"string\"!=typeof a.description&&(a.description=\"\");\"string\"!=\ntypeof a.summary&&(a.summary=\"\");\"string\"==typeof a.status&&(\"pending\"==a.status||\"tentative\"==a.status||\"confirmed\"==a.status||\"cancelled\"==a.status)||(a.status=\"\");\"string\"==typeof a.transparency&&(\"opaque\"==a.transparency||\"transparent\"==a.transparency)||(a.transparency=\"\");if(null==a.recurrence||\"\"==a.recurrence)e={};else{\"string\"==typeof a.summary&&(e.frequency=a.recurrence.frequency);null!=a.recurrence.interval&&(e.interval=a.recurrence.interval);\"string\"==typeof a.summary&&(e.expires=a.recurrence.expires);\nnull!=a.recurrence.exceptionDates&&(e.exceptionDates=a.recurrence.exceptionDates);if(null!=a.recurrence.daysInWeek){var b=formatDaysInWeek(a.recurrence.daysInWeek);null!=b?e.daysInWeek=b:imraidview.showAlert(\"daysInWeek invalid format \")}e.daysInMonth=a.recurrence.daysInMonth;e.daysInYear=a.recurrence.daysInYear;e.weeksInMonth=a.recurrence.weeksInMonth;e.monthsInYear=a.recurrence.monthsInYear}\"string\"!=typeof a.reminder&&(a.reminder=\"\");try{sdkController.createCalendarEvent(\"window.mraidview\",a.id,\na.start,a.end,a.location,a.description,a.summary,a.status,a.transparency,JSON.stringify(e),a.reminder)}catch(c){sdkController.createCalendarEvent(\"window.mraidview\",a.start,a.end,a.location,a.description)}}};formatDaysInWeek=function(a){try{if(0!=a.length){for(var e=0;e<a.length;e++)switch(a[e]){case 0:a[e]=\"SU\";break;case 1:a[e]=\"MO\";break;case 2:a[e]=\"TU\";break;case 3:a[e]=\"WE\";break;case 4:a[e]=\"TH\";break;case 5:a[e]=\"FR\";break;case 6:a[e]=\"SA\";break;default:return null}return a}}catch(b){}return null};\na.storePicture=function(b){console.log(\"bridge: storePicture\");if(\"string\"!=typeof b)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",b);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled because it is unsupported in this device/app.\",\n\"storePicture\")}};a.fireMediaTrackingEvent=function(a,e){};a.fireMediaErrorEvent=function(a,e){};a.fireMediaTimeUpdateEvent=function(a,e,b){};a.fireMediaCloseEvent=function(a,e,b){};a.fireMediaVolumeChangeEvent=function(a,e,b){};a.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1,d=!1;b.onUserInteraction=function(){c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!d||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var b={};b.trigger=a;b.isAdShown=d.toString();inmobi.recordEvent(104,b)}};b.detectAndBlockFraud=function(a){return b.isPossibleFraud()&&(b.fireRedirectFraudBeacon(a),!d)?!0:!1};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};\na.addEventListener(\"viewableChange\",function(a){a&&!d&&(d=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=function(e){\"undefined\"!=typeof e&&(\"useCustomClose\"in e&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(e.useCustomClose);b.setExpandProperties(e)};a.getResizeProperties=b.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;\na.setOrientationProperties=b.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){b.detectAndBlockFraud(\"mraid.createCalendarEvent\")||b.createCalendarEvent(a)};a.open=function(e){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof e?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(e))};a.resize=b.resize;a.getVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=\nfunction(a){b.playVideo(a)};a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(e){\"string\"!=typeof e?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(e)}})();\n(function(){var a=window.imraidview={},b,c=!0;a.setOrientationProperties=function(e){try{e?(\"undefined\"!=typeof e.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=e.allowOrientationChange),\"undefined\"!=typeof e.forceOrientation&&(mraidview.orientationProperties.forceOrientation=e.forceOrientation),\"undefined\"!=typeof e.direction&&(mraidview.orientationProperties.direction=e.direction)):e=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+e)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);window.innerWidth!==this.previousWidth&&0==a&&window.innerWidth>window.innerHeight&&(a=90);return a};var d=function(){window.setTimeout(function(){if(c||a.getWindowOrientation()!==b)c=!1,b=a.getWindowOrientation(),sdkController.onOrientationChange(\"window.imraidview\"),imraid.broadcastEvent(\"orientationChange\",b)},200)};a.registerOrientationListener=\nfunction(){b=a.getWindowOrientation();window.addEventListener(\"resize\",d,!1);window.addEventListener(\"orientationchange\",d,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",d,!1);window.removeEventListener(\"orientationchange\",d,!1)};window.imraidview.registerOrientationListener();a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var c={};c.name=a;var d=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=\nb&&\"\"!=b)&&(d=d+\"_\"+b);window.imraid.broadcastEvent(d,c)};a.fireMediaErrorEvent=function(a,b){var c={name:\"error\"};c.code=b;var d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.imraid.broadcastEvent(d,c)};a.fireMediaTimeUpdateEvent=function(a,b,c){var d={name:\"timeupdate\",target:{}};d.target.currentTime=b;d.target.duration=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.saveContent=function(a,\nb,c){window.imraid.addEventListener(\"saveContent_\"+a,c);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",a)};a.fireGalleryImageSelectedEvent=function(a,b,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"galleryImageSelected\",d)};a.fireCameraPictureCatpturedEvent=function(a,\nb,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"cameraPictureCaptured\",d)};a.fireMediaCloseEvent=function(a,b,c){var d={name:\"close\"};d.viaUserInteraction=b;d.target={};d.target.currentTime=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireMediaVolumeChangeEvent=function(a,b,c){var d={name:\"volumechange\",target:{}};d.target.volume=b;d.target.muted=c;b=\"inmobi_media_\"+d.name;\n\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=function(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(b){try{sdkController.openExternal(\"window.imraidview\",\nb)}catch(c){a.showAlert(\"openExternal: \"+c)}};a.log=function(b){try{sdkController.log(\"window.imraidview\",b)}catch(c){a.showAlert(\"log: \"+c)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(b){try{sdkController.asyncPing(\"window.imraidview\",b)}catch(c){a.showAlert(\"asyncPing: \"+c)}};a.makeCall=function(b){try{b.startsWith(\"tel:\")?sdkController.openExternal(\"window.imraidview\",b):sdkController.openExternal(\"window.imraidview\",\"tel:\"+b)}catch(c){a.showAlert(\"makeCall: \"+c)}};a.sendMail=\nfunction(b,c,d){try{null==c&&(c=\"\"),null==d&&(d=\"\"),sdkController.sendMail(\"window.imraidview\",b,c,d)}catch(f){a.showAlert(\"sendMail: \"+f)}};a.sendSMS=function(b,c){try{null==c&&(c=\"\"),sdkController.sendSMS(\"window.imraidview\",b,c)}catch(d){a.showAlert(\"sendSMS: \"+d)}};a.pauseAudio=function(b){try{var c=getPID(b);sdkController.pauseAudio(\"window.imraidview\",c)}catch(d){a.showAlert(\"pauseAudio: \"+d)}};a.muteAudio=function(b){try{var c=getPID(b);sdkController.muteAudio(\"window.imraidview\",c)}catch(d){a.showAlert(\"muteAudio: \"+\nd)}};a.unMuteAudio=function(b){try{var c=getPID(b);sdkController.unMuteAudio(\"window.imraidview\",c)}catch(d){a.showAlert(\"unMuteAudio: \"+d)}};a.isAudioMuted=function(b){try{var c=getPID(b);return sdkController.isAudioMuted(\"window.imraidview\",c)}catch(d){a.showAlert(\"isAudioMuted: \"+d)}};a.setAudioVolume=function(b,c){try{var d=getPID(b);c=parseInt(c);sdkController.setAudioVolume(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"setAudioVolume: \"+f)}};a.getAudioVolume=function(b){try{var c=getPID(b);\nreturn sdkController.getAudioVolume(\"window.imraidview\",c)}catch(d){a.showAlert(\"getAudioVolume: \"+d)}};a.seekAudio=function(b,c){try{var d=getPID(b);c=parseInt(c);isNaN(c)?window.imraid.broadcastEvent(\"error\",\"seek position must be a number\",\"seekAudio\"):sdkController.seekAudio(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"seekAudio: \"+f)}};a.playVideo=function(b,c){var d=!1,f=!0,g=!0,p=!1,m=-99999,k=-99999,n=-99999,q=-99999,r=\"normal\",s=\"exit\",t=\"\",u=getPID(c);null!=b&&(t=b);null!=c&&(\"undefined\"!=\ntypeof c.audio&&\"muted\"==c.audio&&(d=!0),\"undefined\"!=typeof c.autoplay&&!1===c.autoplay&&(f=!1),\"undefined\"!=typeof c.controls&&!1===c.controls&&(g=!1),\"undefined\"!=typeof c.loop&&!0===c.loop&&(p=!0),\"undefined\"!=typeof c.inline&&null!=c.inline&&(m=c.inline.top,k=c.inline.left),\"undefined\"!=typeof c.width&&null!=c.width&&(n=c.width),\"undefined\"!=typeof c.height&&null!=c.height&&(q=c.height),\"undefined\"!=typeof c.startStyle&&null!=c.startStyle&&(r=c.startStyle),\"undefined\"!=typeof c.stopStyle&&null!=\nc.stopStyle&&(s=c.stopStyle),m=parseInt(m).toString(),k=parseInt(k).toString(),n=parseInt(n).toString(),q=parseInt(q).toString());try{sdkController.playVideo(\"window.imraidview\",t,d,f,g,p,m,k,n,q,r,s,u)}catch(v){a.showAlert(\"playVideo: \"+v)}};a.playAudio=function(b,c){var d=!0,f=!1,g=\"normal\",p=\"normal\",m=!0,k=\"\",n=getPID(c);null!=b&&(k=b);null!=c&&(\"undefined\"!=typeof c.autoplay&&!1===c.autoplay&&(d=!1),\"undefined\"!=typeof c.loop&&!0===c.loop&&(f=!0),\"undefined\"!=typeof c.startStyle&&null!=c.startStyle&&\n(g=c.startStyle),\"undefined\"!=typeof c.stopStyle&&null!=c.stopStyle&&(p=c.stopStyle),\"fullscreen\"==g&&(m=!0));try{sdkController.playAudio(\"window.imraidview\",k,d,m,f,g,p,n)}catch(q){a.showAlert(\"playAudio: \"+q)}};a.pauseVideo=function(b){try{var c=getPID(b);sdkController.pauseVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"pauseVideo: \"+d)}};a.closeVideo=function(b){try{var c=getPID(b);sdkController.closeVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"closeVideo: \"+d)}};a.hideVideo=function(b){try{var c=\ngetPID(b);sdkController.hideVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"hideVideo: \"+d)}};a.showVideo=function(b){try{var c=getPID(b);sdkController.showVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"showVideo: \"+d)}};a.muteVideo=function(b){try{var c=getPID(b);sdkController.muteVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"muteVideo: \"+d)}};a.unMuteVideo=function(b){try{var c=getPID(b);sdkController.unMuteVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"unMuteVideo: \"+d)}};a.seekVideo=\nfunction(b,c){try{var d=getPID(b);c=parseInt(c);isNaN(c)?window.imraid.broadcastEvent(\"error\",\"seek position must be a number\",\"seekVideo\"):sdkController.seekVideo(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"seekVideo: \"+f)}};a.isVideoMuted=function(b){try{var c=getPID(b);return sdkController.isVideoMuted(\"window.imraidview\",c)}catch(d){a.showAlert(\"isVideoMuted: \"+d)}};a.setVideoVolume=function(b,c){try{var d=getPID(b);c=parseInt(c);sdkController.setVideoVolume(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"setVideoVolume: \"+\nf)}};a.getVideoVolume=function(b){try{var c=getPID(b);return sdkController.getVideoVolume(\"window.imraidview\",c)}catch(d){a.showAlert(\"getVideoVolume: \"+d)}};a.startListeningMicIntensity=function(){mraidview.onUserInteraction();sdkController.registerMicListener(\"window.imraidview\")};a.stopListeningMicIntensity=function(){sdkController.unRegisterMicListener(\"window.imraidview\")};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=\nfunction(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};a.startListeningVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};a.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};\ngetSdkVersionInt=function(){for(var b=a.getSdkVersion().split(\".\"),c=b.length,d=\"\",f=0;f<c;f++)d+=b[f];return parseInt(d)};a.vibrate=function(a){if(null==a||420>getSdkVersionInt())sdkController.vibrate(\"window.imraidview\");else{if(0===arguments.length)return sdkController.vibrate(\"window.imraidview\"),null;if(1==arguments.length)0===a||\"length\"in a&&0===a.length?sdkController.vibrate(\"window.imraidview\",\"[]\",-1):sdkController.vibrate(\"window.imraidview\",\"[0,\"+a+\"]\",-1);else{var b=Array.prototype.slice.call(arguments);\nsdkController.vibrate(\"window.imraidview\",\"[0,\"+String(b)+\"]\",-1)}}};a.takeCameraPicture=function(){sdkController.takeCameraPicture(\"window.imraidview\")};a.getGalleryImage=function(){return sdkController.getGalleryImage(\"window.imraidview\")};a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");if(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=\nsdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(a,b,c,d){a=parseInt(a);isNaN(a)?window.imraid.broadcastEvent(\"error\",\"socialType must be an integer\",\"postToSocial\"):(\"string\"!=typeof b&&(b=\"\"),\"string\"!=typeof c&&(c=\"\"),\"string\"!=typeof d&&(d=\"\"),sdkController.postToSocial(\"window.imraidview\",a,b,c,d))};a.getMicIntensity=function(){return sdkController.getMicIntensity(\"window.imraidview\")};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",\nnull);else try{sdkController.incentCompleted(\"window.imraidview\",JSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(b){a.showAlert(\"getOrientation: \"+b)}};a.acceptAction=function(b){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"acceptAction: \"+c+\", params = \"+b)}};a.rejectAction=function(b){try{sdkController.rejectAction(\"window.imraidview\",\nmraidview.stringify(b))}catch(c){a.showAlert(\"rejectAction: \"+c+\", params = \"+b)}};a.updateToPassbook=function(b){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=sdkController.isDeviceMuted(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,\narguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};\na.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var l=arguments.length,h,f=null;if(3>l){if(\"function\"===typeof arguments[l-1])h=arguments[l-1];else return;f={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],f={reason:11,url:arguments[1]});\"function\"!==!h&&(f?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(f))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.makeCall=function(c){mraidview.detectAndBlockFraud(\"imraid.makeCall\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must provide a number to call.\",\"makeCall\"):b.makeCall(c))};a.sendMail=function(c,d,e){mraidview.detectAndBlockFraud(\"imraid.sendMail\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendMail\"):b.sendMail(c,d,e))};a.sendSMS=function(c,\nd){mraidview.detectAndBlockFraud(\"imraid.sendSMS\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendSMS\"):b.sendSMS(c,d))};a.playAudio=function(a,d){\"object\"!=typeof d?\"string\"==typeof a?b.playAudio(a,null):\"object\"==typeof a?b.playAudio(null,a):b.playAudio(null,null):b.playAudio(a,d)};a.getGalleryImage=b.getGalleryImage;a.pauseAudio=b.pauseAudio;a.muteAudio=b.muteAudio;a.unMuteAudio=b.unMuteAudio;a.isAudioMuted=b.isAudioMuted;a.setAudioVolume=function(c){if(\"object\"!=\ntypeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var d=c.volume;isNaN(d)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setAudioVolume\"):(0>d?d=0:100<d&&(d=100),b.setAudioVolume(c,d))}};a.getAudioVolume=b.getAudioVolume;a.pauseVideo=b.pauseVideo;a.closeVideo=b.closeVideo;a.hideVideo=b.hideVideo;a.showVideo=b.showVideo;a.muteVideo=b.muteVideo;a.unMuteVideo=b.unMuteVideo;a.isVideoMuted=b.isVideoMuted;a.setVideoVolume=\nfunction(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var d=c.volume;isNaN(d)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setVideoVolume\"):(0>d?d=0:100<d&&(d=100),b.setVideoVolume(c,d))}};a.getVideoVolume=b.getVideoVolume;a.seekAudio=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"seekAudio\");else{var d=c.time;imIsObjValid(d)?\nb.seekAudio(c,d):a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekAudio\")}};a.seekVideo=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\");else{var d=c.time;imIsObjValid(d)?b.seekVideo(c,d):a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\")}};a.openExternal=function(a){mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||\n(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c))};a.vibrate=b.vibrate;a.takeCameraPicture=b.takeCameraPicture;a.getMicIntensity=function(){return!imIsObjValid(a.listeners.micIntensityChange)?-1:b.getMicIntensity()};a.postToSocial=function(a,d,e,l){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||b.postToSocial(a,d,e,l)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=\nfunction(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.playVideo=function(a,d){\"object\"!=typeof d?\"string\"==typeof a?b.playVideo(a,null):\"object\"==typeof a?b.playVideo(null,a):b.playVideo(null,null):b.playVideo(a,d)};a.supports=function(a){return b.supports(a)};a.isDeviceMuted=function(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=\nfunction(){return b.getDeviceVolume()};a.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(d){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a){sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||null==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",\nJSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var e=-1;try{e=a.indexOf(b)}catch(l){}return e};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,d,e){if(!imIsObjValid(d)||!imIsObjValid(e))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+d+\",\"+e):a+(\"&u-tap-o=\"+d+\",\"+e));return a};b.performAdClick=function(a,d){if(!mraidview.detectAndBlockFraud(\"imai.performAdClick\"))if(d=d||event,imIsObjValid(a)){var e=a.clickConfig,l=a.landingConfig;if(!imIsObjValid(e)&&!imIsObjValid(l))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,p=null,m=null,k=null,n=null;if(imIsObjValid(d))try{p=\nd.changedTouches[0].pageX,m=d.changedTouches[0].pageY}catch(q){m=p=0}imIsObjValid(l)?imIsObjValid(e)?(k=l.url,n=l.urlType,h=e.url,f=e.pingWV,g=e.fr):(k=l.url,n=l.urlType):(k=e.url,n=e.urlType);e=b.getPlatform();try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"number\"!=typeof n||null==n)n=0;h=b.appendTapParams(h,p,m);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");\nif(imIsObjValid(k))switch(imIsObjValid(h)||(k=b.appendTapParams(k,p,m)),n){case 1:b.openEmbedded(k);break;case 2:\"ios\"==e?b.ios.openItunesProductView(k):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+e);break;default:b.openExternal(k)}else b.log(\"Landing url provided is null.\")}catch(r){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=\na.clickConfig,l=a.landingConfig;if(!imIsObjValid(e)&&!imIsObjValid(l))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,p=null,m=null;if(imIsObjValid(d))try{p=d.changedTouches[0].pageX,m=d.changedTouches[0].pageY}catch(k){m=p=0}imIsObjValid(e)&&(h=e.url,f=e.pingWV,g=e.fr);try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\n\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;h=b.appendTapParams(h,p,m);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");b.onUserInteraction(l)}catch(n){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=a.openEmbedded;b.openExternal=a.openExternal;\nb.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.ios.openItunesProductView=function(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;b.fireAdFailed=a.fireAdFailed})();"

    .line 1151
    new-instance v0, Lcom/inmobi/rendering/mraid/i;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/i;-><init>()V

    .line 1152
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 1154
    if-nez v0, :cond_0

    .line 1155
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var d=String(a);b[d]||(b[d]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var d in b)b[d].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}},\nInmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&window.imraidview.startListeningHeadphonePluggedEvents();\n\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent()}}catch(d){this.log(d)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\n\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent()}};this.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(d){}}};this.sendSaveContentResult=\nfunction(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var d=arguments[c],d=JSON.parse(d);b[c]=d}else b[c]=arguments[c];d=b[1];\"success\"!=d&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);window.imraid.broadcastEvent(b[0],b[1],b[2])}}},__im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=\n!0,window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),window.location=a)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){for(var b=this.urlScheme+\"://\"+a,c,d=!0,e=1;e<arguments.length;e+=2)c=arguments[e+1],null!=c&&(d?(b+=\"?\",d=!1):b+=\"&\",b+=arguments[e]+\"=\"+escape(c));__im__iosNativeCall.executeNativeCall(b);return\"OK\"};this.nativeCallComplete=function(a){__im__iosNativeCall.nativeCallComplete(a);\nreturn\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.zeroPad=function(a){var e=\"\";10>a&&(e+=\"0\");return e+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",a)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",\na)}catch(e){imraidview.showAlert(\"use CustomClose: \"+e)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,e){c?b.push(a):(eval(a),e&&(c=!0))};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"executeNativeExpand: \"+e+\", URL = \"+a)}};a.setExpandProperties=function(d){try{d?this.props=d:d=null;if(\"undefined\"!=typeof d.lockOrientation&&\nnull!=d.lockOrientation&&\"undefined\"!=typeof d.orientation&&null!=d.orientation){var e={};e.allowOrientationChange=!d.lockOrientation;e.forceOrientation=d.orientation;a.setOrientationProperties(e)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(d))}catch(b){imraidview.showAlert(\"executeNativesetExpandProperties: \"+b+\", props = \"+d)}};a.getExpandProperties=function(){try{return eval(\"(\"+sdkController.getExpandProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+\na)}};a.setOrientationProperties=function(d){try{d?(\"undefined\"!=typeof d.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=d.allowOrientationChange),\"undefined\"!=typeof d.forceOrientation&&(a.orientationProperties.forceOrientation=d.forceOrientation)):d=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(e){imraidview.showAlert(\"setOrientationProperties: \"+e+\", props = \"+d)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,\nallowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;a.setResizeProperties=function(d){var e,b;try{e=parseInt(d.width);b=parseInt(d.height);if(isNaN(e)||isNaN(b)||1>e||1>b)throw\"Invalid\";d.width=e;d.height=b;a.resizeProps=d;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(d))}catch(c){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+sdkController.getResizeProperties(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"open: \"+e)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=function(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};\na.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+a)}};a.isViewable=function(){try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+\na)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var e=\"\";null!=a&&(e=a);try{sdkController.playVideo(\"window.mraidview\",e)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(d){if(\"undefined\"===\ntypeof JSON){var e=\"\",b;if(\"undefined\"==typeof d.length)return a.stringifyArg(d);for(b=0;b<d.length;b++)0<b&&(e+=\",\"),e+=a.stringifyArg(d[b]);return e+\"]\"}return JSON.stringify(d)};a.stringifyArg=function(a){var e,b,c;b=typeof a;e=\"\";if(\"number\"===b||\"boolean\"===b)e+=args;else if(a instanceof Array)e=e+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;e+=\"{\";for(c in a)null!==a[c]&&(b||(e+=\",\"),e=e+\'\"\'+c+\'\":\',b=typeof a[c],e=\"number\"===b||\"boolean\"===b?e+a[c]:\"function\"===typeof a[c]?e+\'\"\"\':a[c]instanceof\nObject?e+this.stringify(args[i][c]):e+\'\"\'+a[c]+\'\"\',b=!1);e+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,\'\\\\\"\'),e=e+\'\"\'+a+\'\"\';imraidview.showAlert(\"json:\"+e);return e};getPID=function(a){var e=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(e=a.id);return e};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(b){imraidview.showAlert(\"resize called in bridge\")}};\na.createCalendarEvent=function(a){var e={};\"object\"!=typeof a&&window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects parameter\",\"createCalendarEvent\");if(\"string\"!=typeof a.start||\"string\"!=typeof a.end)window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects string parameters for start and end dates\",\"createCalendarEvent\");else{\"string\"!=typeof a.id&&(a.id=\"\");\"string\"!=typeof a.location&&(a.location=\"\");\"string\"!=typeof a.description&&(a.description=\"\");\"string\"!=\ntypeof a.summary&&(a.summary=\"\");\"string\"==typeof a.status&&(\"pending\"==a.status||\"tentative\"==a.status||\"confirmed\"==a.status||\"cancelled\"==a.status)||(a.status=\"\");\"string\"==typeof a.transparency&&(\"opaque\"==a.transparency||\"transparent\"==a.transparency)||(a.transparency=\"\");if(null==a.recurrence||\"\"==a.recurrence)e={};else{\"string\"==typeof a.summary&&(e.frequency=a.recurrence.frequency);null!=a.recurrence.interval&&(e.interval=a.recurrence.interval);\"string\"==typeof a.summary&&(e.expires=a.recurrence.expires);\nnull!=a.recurrence.exceptionDates&&(e.exceptionDates=a.recurrence.exceptionDates);if(null!=a.recurrence.daysInWeek){var b=formatDaysInWeek(a.recurrence.daysInWeek);null!=b?e.daysInWeek=b:imraidview.showAlert(\"daysInWeek invalid format \")}e.daysInMonth=a.recurrence.daysInMonth;e.daysInYear=a.recurrence.daysInYear;e.weeksInMonth=a.recurrence.weeksInMonth;e.monthsInYear=a.recurrence.monthsInYear}\"string\"!=typeof a.reminder&&(a.reminder=\"\");try{sdkController.createCalendarEvent(\"window.mraidview\",a.id,\na.start,a.end,a.location,a.description,a.summary,a.status,a.transparency,JSON.stringify(e),a.reminder)}catch(c){sdkController.createCalendarEvent(\"window.mraidview\",a.start,a.end,a.location,a.description)}}};formatDaysInWeek=function(a){try{if(0!=a.length){for(var e=0;e<a.length;e++)switch(a[e]){case 0:a[e]=\"SU\";break;case 1:a[e]=\"MO\";break;case 2:a[e]=\"TU\";break;case 3:a[e]=\"WE\";break;case 4:a[e]=\"TH\";break;case 5:a[e]=\"FR\";break;case 6:a[e]=\"SA\";break;default:return null}return a}}catch(b){}return null};\na.storePicture=function(b){console.log(\"bridge: storePicture\");if(\"string\"!=typeof b)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",b);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled because it is unsupported in this device/app.\",\n\"storePicture\")}};a.fireMediaTrackingEvent=function(a,e){};a.fireMediaErrorEvent=function(a,e){};a.fireMediaTimeUpdateEvent=function(a,e,b){};a.fireMediaCloseEvent=function(a,e,b){};a.fireMediaVolumeChangeEvent=function(a,e,b){};a.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1,d=!1;b.onUserInteraction=function(){c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!d||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var b={};b.trigger=a;b.isAdShown=d.toString();inmobi.recordEvent(104,b)}};b.detectAndBlockFraud=function(a){return b.isPossibleFraud()&&(b.fireRedirectFraudBeacon(a),!d)?!0:!1};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};\na.addEventListener(\"viewableChange\",function(a){a&&!d&&(d=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=function(e){\"undefined\"!=typeof e&&(\"useCustomClose\"in e&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(e.useCustomClose);b.setExpandProperties(e)};a.getResizeProperties=b.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;\na.setOrientationProperties=b.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){b.detectAndBlockFraud(\"mraid.createCalendarEvent\")||b.createCalendarEvent(a)};a.open=function(e){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof e?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(e))};a.resize=b.resize;a.getVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=\nfunction(a){b.playVideo(a)};a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(e){\"string\"!=typeof e?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(e)}})();\n(function(){var a=window.imraidview={},b,c=!0;a.setOrientationProperties=function(e){try{e?(\"undefined\"!=typeof e.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=e.allowOrientationChange),\"undefined\"!=typeof e.forceOrientation&&(mraidview.orientationProperties.forceOrientation=e.forceOrientation),\"undefined\"!=typeof e.direction&&(mraidview.orientationProperties.direction=e.direction)):e=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+e)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);window.innerWidth!==this.previousWidth&&0==a&&window.innerWidth>window.innerHeight&&(a=90);return a};var d=function(){window.setTimeout(function(){if(c||a.getWindowOrientation()!==b)c=!1,b=a.getWindowOrientation(),sdkController.onOrientationChange(\"window.imraidview\"),imraid.broadcastEvent(\"orientationChange\",b)},200)};a.registerOrientationListener=\nfunction(){b=a.getWindowOrientation();window.addEventListener(\"resize\",d,!1);window.addEventListener(\"orientationchange\",d,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",d,!1);window.removeEventListener(\"orientationchange\",d,!1)};window.imraidview.registerOrientationListener();a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var c={};c.name=a;var d=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=\nb&&\"\"!=b)&&(d=d+\"_\"+b);window.imraid.broadcastEvent(d,c)};a.fireMediaErrorEvent=function(a,b){var c={name:\"error\"};c.code=b;var d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.imraid.broadcastEvent(d,c)};a.fireMediaTimeUpdateEvent=function(a,b,c){var d={name:\"timeupdate\",target:{}};d.target.currentTime=b;d.target.duration=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.saveContent=function(a,\nb,c){window.imraid.addEventListener(\"saveContent_\"+a,c);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",a)};a.fireGalleryImageSelectedEvent=function(a,b,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"galleryImageSelected\",d)};a.fireCameraPictureCatpturedEvent=function(a,\nb,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"cameraPictureCaptured\",d)};a.fireMediaCloseEvent=function(a,b,c){var d={name:\"close\"};d.viaUserInteraction=b;d.target={};d.target.currentTime=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireMediaVolumeChangeEvent=function(a,b,c){var d={name:\"volumechange\",target:{}};d.target.volume=b;d.target.muted=c;b=\"inmobi_media_\"+d.name;\n\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=function(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(b){try{sdkController.openExternal(\"window.imraidview\",\nb)}catch(c){a.showAlert(\"openExternal: \"+c)}};a.log=function(b){try{sdkController.log(\"window.imraidview\",b)}catch(c){a.showAlert(\"log: \"+c)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(b){try{sdkController.asyncPing(\"window.imraidview\",b)}catch(c){a.showAlert(\"asyncPing: \"+c)}};a.makeCall=function(b){try{b.startsWith(\"tel:\")?sdkController.openExternal(\"window.imraidview\",b):sdkController.openExternal(\"window.imraidview\",\"tel:\"+b)}catch(c){a.showAlert(\"makeCall: \"+c)}};a.sendMail=\nfunction(b,c,d){try{null==c&&(c=\"\"),null==d&&(d=\"\"),sdkController.sendMail(\"window.imraidview\",b,c,d)}catch(f){a.showAlert(\"sendMail: \"+f)}};a.sendSMS=function(b,c){try{null==c&&(c=\"\"),sdkController.sendSMS(\"window.imraidview\",b,c)}catch(d){a.showAlert(\"sendSMS: \"+d)}};a.pauseAudio=function(b){try{var c=getPID(b);sdkController.pauseAudio(\"window.imraidview\",c)}catch(d){a.showAlert(\"pauseAudio: \"+d)}};a.muteAudio=function(b){try{var c=getPID(b);sdkController.muteAudio(\"window.imraidview\",c)}catch(d){a.showAlert(\"muteAudio: \"+\nd)}};a.unMuteAudio=function(b){try{var c=getPID(b);sdkController.unMuteAudio(\"window.imraidview\",c)}catch(d){a.showAlert(\"unMuteAudio: \"+d)}};a.isAudioMuted=function(b){try{var c=getPID(b);return sdkController.isAudioMuted(\"window.imraidview\",c)}catch(d){a.showAlert(\"isAudioMuted: \"+d)}};a.setAudioVolume=function(b,c){try{var d=getPID(b);c=parseInt(c);sdkController.setAudioVolume(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"setAudioVolume: \"+f)}};a.getAudioVolume=function(b){try{var c=getPID(b);\nreturn sdkController.getAudioVolume(\"window.imraidview\",c)}catch(d){a.showAlert(\"getAudioVolume: \"+d)}};a.seekAudio=function(b,c){try{var d=getPID(b);c=parseInt(c);isNaN(c)?window.imraid.broadcastEvent(\"error\",\"seek position must be a number\",\"seekAudio\"):sdkController.seekAudio(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"seekAudio: \"+f)}};a.playVideo=function(b,c){var d=!1,f=!0,g=!0,p=!1,m=-99999,k=-99999,n=-99999,q=-99999,r=\"normal\",s=\"exit\",t=\"\",u=getPID(c);null!=b&&(t=b);null!=c&&(\"undefined\"!=\ntypeof c.audio&&\"muted\"==c.audio&&(d=!0),\"undefined\"!=typeof c.autoplay&&!1===c.autoplay&&(f=!1),\"undefined\"!=typeof c.controls&&!1===c.controls&&(g=!1),\"undefined\"!=typeof c.loop&&!0===c.loop&&(p=!0),\"undefined\"!=typeof c.inline&&null!=c.inline&&(m=c.inline.top,k=c.inline.left),\"undefined\"!=typeof c.width&&null!=c.width&&(n=c.width),\"undefined\"!=typeof c.height&&null!=c.height&&(q=c.height),\"undefined\"!=typeof c.startStyle&&null!=c.startStyle&&(r=c.startStyle),\"undefined\"!=typeof c.stopStyle&&null!=\nc.stopStyle&&(s=c.stopStyle),m=parseInt(m).toString(),k=parseInt(k).toString(),n=parseInt(n).toString(),q=parseInt(q).toString());try{sdkController.playVideo(\"window.imraidview\",t,d,f,g,p,m,k,n,q,r,s,u)}catch(v){a.showAlert(\"playVideo: \"+v)}};a.playAudio=function(b,c){var d=!0,f=!1,g=\"normal\",p=\"normal\",m=!0,k=\"\",n=getPID(c);null!=b&&(k=b);null!=c&&(\"undefined\"!=typeof c.autoplay&&!1===c.autoplay&&(d=!1),\"undefined\"!=typeof c.loop&&!0===c.loop&&(f=!0),\"undefined\"!=typeof c.startStyle&&null!=c.startStyle&&\n(g=c.startStyle),\"undefined\"!=typeof c.stopStyle&&null!=c.stopStyle&&(p=c.stopStyle),\"fullscreen\"==g&&(m=!0));try{sdkController.playAudio(\"window.imraidview\",k,d,m,f,g,p,n)}catch(q){a.showAlert(\"playAudio: \"+q)}};a.pauseVideo=function(b){try{var c=getPID(b);sdkController.pauseVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"pauseVideo: \"+d)}};a.closeVideo=function(b){try{var c=getPID(b);sdkController.closeVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"closeVideo: \"+d)}};a.hideVideo=function(b){try{var c=\ngetPID(b);sdkController.hideVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"hideVideo: \"+d)}};a.showVideo=function(b){try{var c=getPID(b);sdkController.showVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"showVideo: \"+d)}};a.muteVideo=function(b){try{var c=getPID(b);sdkController.muteVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"muteVideo: \"+d)}};a.unMuteVideo=function(b){try{var c=getPID(b);sdkController.unMuteVideo(\"window.imraidview\",c)}catch(d){a.showAlert(\"unMuteVideo: \"+d)}};a.seekVideo=\nfunction(b,c){try{var d=getPID(b);c=parseInt(c);isNaN(c)?window.imraid.broadcastEvent(\"error\",\"seek position must be a number\",\"seekVideo\"):sdkController.seekVideo(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"seekVideo: \"+f)}};a.isVideoMuted=function(b){try{var c=getPID(b);return sdkController.isVideoMuted(\"window.imraidview\",c)}catch(d){a.showAlert(\"isVideoMuted: \"+d)}};a.setVideoVolume=function(b,c){try{var d=getPID(b);c=parseInt(c);sdkController.setVideoVolume(\"window.imraidview\",d,c)}catch(f){a.showAlert(\"setVideoVolume: \"+\nf)}};a.getVideoVolume=function(b){try{var c=getPID(b);return sdkController.getVideoVolume(\"window.imraidview\",c)}catch(d){a.showAlert(\"getVideoVolume: \"+d)}};a.startListeningMicIntensity=function(){mraidview.onUserInteraction();sdkController.registerMicListener(\"window.imraidview\")};a.stopListeningMicIntensity=function(){sdkController.unRegisterMicListener(\"window.imraidview\")};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=\nfunction(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};a.startListeningVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};a.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};\ngetSdkVersionInt=function(){for(var b=a.getSdkVersion().split(\".\"),c=b.length,d=\"\",f=0;f<c;f++)d+=b[f];return parseInt(d)};a.vibrate=function(a){if(null==a||420>getSdkVersionInt())sdkController.vibrate(\"window.imraidview\");else{if(0===arguments.length)return sdkController.vibrate(\"window.imraidview\"),null;if(1==arguments.length)0===a||\"length\"in a&&0===a.length?sdkController.vibrate(\"window.imraidview\",\"[]\",-1):sdkController.vibrate(\"window.imraidview\",\"[0,\"+a+\"]\",-1);else{var b=Array.prototype.slice.call(arguments);\nsdkController.vibrate(\"window.imraidview\",\"[0,\"+String(b)+\"]\",-1)}}};a.takeCameraPicture=function(){sdkController.takeCameraPicture(\"window.imraidview\")};a.getGalleryImage=function(){return sdkController.getGalleryImage(\"window.imraidview\")};a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");if(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=\nsdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(a,b,c,d){a=parseInt(a);isNaN(a)?window.imraid.broadcastEvent(\"error\",\"socialType must be an integer\",\"postToSocial\"):(\"string\"!=typeof b&&(b=\"\"),\"string\"!=typeof c&&(c=\"\"),\"string\"!=typeof d&&(d=\"\"),sdkController.postToSocial(\"window.imraidview\",a,b,c,d))};a.getMicIntensity=function(){return sdkController.getMicIntensity(\"window.imraidview\")};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",\nnull);else try{sdkController.incentCompleted(\"window.imraidview\",JSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(b){a.showAlert(\"getOrientation: \"+b)}};a.acceptAction=function(b){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"acceptAction: \"+c+\", params = \"+b)}};a.rejectAction=function(b){try{sdkController.rejectAction(\"window.imraidview\",\nmraidview.stringify(b))}catch(c){a.showAlert(\"rejectAction: \"+c+\", params = \"+b)}};a.updateToPassbook=function(b){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=sdkController.isDeviceMuted(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,\narguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};\na.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var l=arguments.length,h,f=null;if(3>l){if(\"function\"===typeof arguments[l-1])h=arguments[l-1];else return;f={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],f={reason:11,url:arguments[1]});\"function\"!==!h&&(f?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(f))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.makeCall=function(c){mraidview.detectAndBlockFraud(\"imraid.makeCall\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must provide a number to call.\",\"makeCall\"):b.makeCall(c))};a.sendMail=function(c,d,e){mraidview.detectAndBlockFraud(\"imraid.sendMail\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendMail\"):b.sendMail(c,d,e))};a.sendSMS=function(c,\nd){mraidview.detectAndBlockFraud(\"imraid.sendSMS\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendSMS\"):b.sendSMS(c,d))};a.playAudio=function(a,d){\"object\"!=typeof d?\"string\"==typeof a?b.playAudio(a,null):\"object\"==typeof a?b.playAudio(null,a):b.playAudio(null,null):b.playAudio(a,d)};a.getGalleryImage=b.getGalleryImage;a.pauseAudio=b.pauseAudio;a.muteAudio=b.muteAudio;a.unMuteAudio=b.unMuteAudio;a.isAudioMuted=b.isAudioMuted;a.setAudioVolume=function(c){if(\"object\"!=\ntypeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var d=c.volume;isNaN(d)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setAudioVolume\"):(0>d?d=0:100<d&&(d=100),b.setAudioVolume(c,d))}};a.getAudioVolume=b.getAudioVolume;a.pauseVideo=b.pauseVideo;a.closeVideo=b.closeVideo;a.hideVideo=b.hideVideo;a.showVideo=b.showVideo;a.muteVideo=b.muteVideo;a.unMuteVideo=b.unMuteVideo;a.isVideoMuted=b.isVideoMuted;a.setVideoVolume=\nfunction(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var d=c.volume;isNaN(d)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setVideoVolume\"):(0>d?d=0:100<d&&(d=100),b.setVideoVolume(c,d))}};a.getVideoVolume=b.getVideoVolume;a.seekAudio=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"seekAudio\");else{var d=c.time;imIsObjValid(d)?\nb.seekAudio(c,d):a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekAudio\")}};a.seekVideo=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\");else{var d=c.time;imIsObjValid(d)?b.seekVideo(c,d):a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\")}};a.openExternal=function(a){mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||\n(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c))};a.vibrate=b.vibrate;a.takeCameraPicture=b.takeCameraPicture;a.getMicIntensity=function(){return!imIsObjValid(a.listeners.micIntensityChange)?-1:b.getMicIntensity()};a.postToSocial=function(a,d,e,l){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||b.postToSocial(a,d,e,l)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=\nfunction(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.playVideo=function(a,d){\"object\"!=typeof d?\"string\"==typeof a?b.playVideo(a,null):\"object\"==typeof a?b.playVideo(null,a):b.playVideo(null,null):b.playVideo(a,d)};a.supports=function(a){return b.supports(a)};a.isDeviceMuted=function(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=\nfunction(){return b.getDeviceVolume()};a.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(d){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a){sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||null==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",\nJSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var e=-1;try{e=a.indexOf(b)}catch(l){}return e};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,d,e){if(!imIsObjValid(d)||!imIsObjValid(e))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+d+\",\"+e):a+(\"&u-tap-o=\"+d+\",\"+e));return a};b.performAdClick=function(a,d){if(!mraidview.detectAndBlockFraud(\"imai.performAdClick\"))if(d=d||event,imIsObjValid(a)){var e=a.clickConfig,l=a.landingConfig;if(!imIsObjValid(e)&&!imIsObjValid(l))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,p=null,m=null,k=null,n=null;if(imIsObjValid(d))try{p=\nd.changedTouches[0].pageX,m=d.changedTouches[0].pageY}catch(q){m=p=0}imIsObjValid(l)?imIsObjValid(e)?(k=l.url,n=l.urlType,h=e.url,f=e.pingWV,g=e.fr):(k=l.url,n=l.urlType):(k=e.url,n=e.urlType);e=b.getPlatform();try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"number\"!=typeof n||null==n)n=0;h=b.appendTapParams(h,p,m);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");\nif(imIsObjValid(k))switch(imIsObjValid(h)||(k=b.appendTapParams(k,p,m)),n){case 1:b.openEmbedded(k);break;case 2:\"ios\"==e?b.ios.openItunesProductView(k):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+e);break;default:b.openExternal(k)}else b.log(\"Landing url provided is null.\")}catch(r){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=\na.clickConfig,l=a.landingConfig;if(!imIsObjValid(e)&&!imIsObjValid(l))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,p=null,m=null;if(imIsObjValid(d))try{p=d.changedTouches[0].pageX,m=d.changedTouches[0].pageY}catch(k){m=p=0}imIsObjValid(e)&&(h=e.url,f=e.pingWV,g=e.fr);try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\n\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;h=b.appendTapParams(h,p,m);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");b.onUserInteraction(l)}catch(n){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=a.openEmbedded;b.openExternal=a.openExternal;\nb.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.ios.openItunesProductView=function(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;b.fireAdFailed=a.fireAdFailed})();"

    .line 1156
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v3, "Returning default Mraid Js string."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :goto_0
    return-object v0

    .line 1158
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v3, "Returning fetched Mraid Js string."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrientationProperties()Lcom/inmobi/rendering/mraid/l;
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/l;

    return-object v0
.end method

.method public getOriginalRenderView()Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public getRenderViewContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    .line 244
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getRenderingConfig()Lcom/inmobi/ads/b$e;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->o:Lcom/inmobi/ads/b$e;

    return-object v0
.end method

.method public getResizeProperties()Lcom/inmobi/rendering/mraid/m;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->v:Lcom/inmobi/rendering/mraid/m;

    return-object v0
.end method

.method public getState()Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method public getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    .line 812
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 749
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 750
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const-string v0, "broadcastEvent(\'backButtonPressed\')"

    .line 821
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Ljava/lang/String;

    const-string v1, "broadcastEvent(\'backButtonPressed\')"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 758
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 759
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Media playback controls are only supported on full screen ads! Ignoring request ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 852
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    .line 853
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Render view state must be either DEFAULT or RESIZED to admit the resize request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/m;

    move-result-object v0

    if-nez v0, :cond_1

    .line 858
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "Render view state can not resize with invalid resize properties"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_1
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 863
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/k;->a()V

    .line 864
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 865
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->invalidate()V

    .line 866
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 867
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusable(Z)V

    .line 868
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusableInTouchMode(Z)V

    .line 869
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestFocus()Z

    .line 871
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 872
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/RenderView$b;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$b;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    goto :goto_0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 767
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_0

    .line 768
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Render view state must be either DEFAULT or RESIZED to admit the expand request. Current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :goto_0
    return-void

    .line 772
    :cond_0
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 773
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->j:Lcom/inmobi/rendering/mraid/h;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/rendering/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 775
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->invalidate()V

    .line 776
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 777
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusable(Z)V

    .line 778
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusableInTouchMode(Z)V

    .line 779
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestFocus()Z

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->B()V

    .line 878
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b()V

    .line 880
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_1

    .line 881
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->z()V

    .line 893
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 895
    return-void

    .line 882
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_2

    .line 883
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->A()V

    goto :goto_0

    .line 884
    :cond_2
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    .line 885
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 886
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderingProperties;->a()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    if-ne v0, v1, :cond_3

    .line 887
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->x()V

    goto :goto_0

    .line 889
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->k:Lcom/inmobi/rendering/mraid/k;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/k;->a()V

    .line 917
    :cond_0
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setVisibility(I)V

    .line 1061
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 1062
    return-void
.end method

.method public n()D
    .locals 2

    .prologue
    .line 1130
    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public o()V
    .locals 2

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->s:Z

    if-eqz v0, :cond_0

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->s:Z

    .line 1144
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->l:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d()Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->r:Lcom/inmobi/rendering/RenderView$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a$a;)V

    .line 1146
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 408
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 410
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->s()V

    .line 411
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    .line 414
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 432
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 434
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->n:Lcom/inmobi/rendering/a;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a;->unRegisterBroadcastListener()V

    .line 436
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->o()V

    .line 437
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f()V

    .line 438
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g()V

    .line 439
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i()V

    .line 440
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->m:Lcom/inmobi/rendering/mraid/n;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/n;->a(Landroid/content/Context;)V

    .line 448
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detaching WebView from window encountered an error ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 453
    const-string v2, "type"

    const-string v3, "IllegalArgumentException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v2, "message"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "ExceptionCaught"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 418
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Touch event received, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->d()V

    .line 420
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onScreenStateChanged(I)V

    .line 371
    if-nez p1, :cond_1

    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->Q:Z

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 334
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSizeChanged ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 337
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    .line 338
    invoke-static {p2}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v1

    .line 339
    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/RenderView;->a(II)V

    .line 341
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 362
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->Q:Z

    .line 364
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    .line 365
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 347
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 348
    :goto_0
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->D:Z

    if-ne v1, v0, :cond_1

    .line 353
    :goto_1
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->e(Z)V

    goto :goto_1
.end method

.method public p()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1645
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v2, "disableHardwareAcceleration called."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    iput-boolean v3, p0, Lcom/inmobi/rendering/RenderView;->M:Z

    .line 1649
    const-string v0, "setLayerType"

    .line 1651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1653
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1655
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1656
    :catch_0
    move-exception v0

    .line 1657
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1658
    :catch_1
    move-exception v0

    .line 1659
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1660
    :catch_2
    move-exception v0

    .line 1661
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1662
    :catch_3
    move-exception v0

    .line 1663
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    const-string v3, "disableHardwareAcceleration failed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->M:Z

    return v0
.end method

.method public setAdActiveFlag(Z)V
    .locals 0

    .prologue
    .line 1069
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->C:Z

    .line 1070
    return-void
.end method

.method public setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V
    .locals 4

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    .line 1053
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/RenderView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView$RenderViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->h(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method public setCloseRegionDisabled(Z)V
    .locals 0

    .prologue
    .line 795
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->E:Z

    .line 796
    return-void
.end method

.method public setCurrentPosition()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    .line 289
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 290
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->getLocationOnScreen([I)V

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v2, "x"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v2, "y"

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    .line 295
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v1

    .line 296
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 304
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 305
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setCurrentPositionLock()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 238
    return-void
.end method

.method public setDefaultPosition()V
    .locals 4

    .prologue
    .line 248
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    .line 250
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v2, "x"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v2, "y"

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->f:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v1

    .line 261
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    .line 279
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 280
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 268
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "y"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->x:Lorg/json/JSONObject;

    const-string v1, "height"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public setDefaultPositionLock()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->z:Z

    .line 234
    return-void
.end method

.method public setDisableBackButton(Z)V
    .locals 0

    .prologue
    .line 799
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    .line 800
    return-void
.end method

.method public setExpandProperties(Lcom/inmobi/rendering/mraid/d;)V
    .locals 1

    .prologue
    .line 1036
    invoke-virtual {p1}, Lcom/inmobi/rendering/mraid/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p1}, Lcom/inmobi/rendering/mraid/d;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setUseCustomClose(Z)V

    .line 1039
    :cond_0
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/mraid/d;

    .line 1040
    return-void
.end method

.method public setFullScreenActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 313
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    .line 314
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/l;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/l;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/l;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setFullScreenExitAnimation(I)V
    .locals 0

    .prologue
    .line 910
    iput p1, p0, Lcom/inmobi/rendering/RenderView;->P:I

    .line 911
    return-void
.end method

.method setIsInAppBrowser(Z)V
    .locals 0

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->e:Z

    .line 518
    return-void
.end method

.method public setOrientationProperties(Lcom/inmobi/rendering/mraid/l;)V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1077
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/rendering/mraid/l;

    .line 1078
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/inmobi/rendering/mraid/l;->a:Z

    if-nez v2, :cond_1

    .line 1079
    iget-object v3, p1, Lcom/inmobi/rendering/mraid/l;->b:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1115
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v2

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 1116
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1127
    :cond_1
    :goto_1
    return-void

    .line 1079
    :sswitch_0
    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "portrait"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    .line 1088
    :pswitch_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v2

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v2

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1090
    :cond_2
    :goto_2
    if-eqz v0, :cond_5

    .line 1091
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1093
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1088
    goto :goto_2

    .line 1096
    :cond_4
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1101
    :cond_5
    iget-object v0, p1, Lcom/inmobi/rendering/mraid/l;->c:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1102
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1103
    :cond_6
    iget-object v0, p1, Lcom/inmobi/rendering/mraid/l;->c:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1108
    :pswitch_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v1

    sget-object v2, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_PORTRAIT:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 1109
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1111
    :cond_7
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1117
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v2

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->REVERSE_LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 1118
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1119
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b()I

    move-result v2

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->LANDSCAPE:Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo$ORIENTATION_VALUES;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 1120
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1122
    :cond_a
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1079
    :sswitch_data_0
    .sparse-switch
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOriginalRenderView(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->b:Lcom/inmobi/rendering/RenderView;

    .line 198
    return-void
.end method

.method public setResizeProperties(Lcom/inmobi/rendering/mraid/m;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->v:Lcom/inmobi/rendering/mraid/m;

    .line 1048
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 0

    .prologue
    .line 787
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->B:Z

    .line 788
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 601
    :cond_0
    return-void
.end method
