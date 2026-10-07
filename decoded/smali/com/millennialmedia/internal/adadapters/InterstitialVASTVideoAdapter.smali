.class public Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source "InterstitialVASTVideoAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile attached:Z

.field private vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

.field vastVideoControllerListener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    .line 27
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoControllerListener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->attached:Z

    return v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->attached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterListener"    # Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    .prologue
    .line 75
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    .line 76
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->adContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoControllerListener:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->vastVideoController:Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    .line 77
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayOptions"    # Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    .prologue
    .line 83
    if-nez p2, :cond_1

    .line 84
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Display options not specified, using defaults."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    new-instance v1, Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    invoke-direct {v1}, Lcom/millennialmedia/InterstitialAd$DisplayOptions;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->setImmersive(Z)Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    move-result-object p2

    .line 92
    :cond_1
    new-instance v1, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    iget-boolean v2, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->immersive:Z

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v0

    .line 94
    .local v0, "config":Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    new-instance v1, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter$2;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;)V

    invoke-static {p1, v0, v1}, Lcom/millennialmedia/internal/MMActivity;->launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V

    .line 119
    return-void
.end method
