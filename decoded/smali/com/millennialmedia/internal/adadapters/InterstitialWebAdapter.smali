.class public Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;
.super Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.source "InterstitialWebAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

.field webController:Lcom/millennialmedia/internal/adcontrollers/WebController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;-><init>()V

    .line 26
    new-instance v0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapterListener"    # Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    .prologue
    .line 103
    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adapterListener:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;

    .line 104
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    iget-object v5, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->controllerListener:Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Lcom/millennialmedia/internal/adcontrollers/WebController$WebControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    .line 105
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayOptions"    # Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    .prologue
    .line 111
    if-nez p2, :cond_1

    .line 112
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Display options not specified, using defaults."

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;

    .end local p2    # "displayOptions":Lcom/millennialmedia/InterstitialAd$DisplayOptions;
    invoke-direct {p2}, Lcom/millennialmedia/InterstitialAd$DisplayOptions;-><init>()V

    .line 120
    .restart local p2    # "displayOptions":Lcom/millennialmedia/InterstitialAd$DisplayOptions;
    :cond_1
    new-instance v1, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    iget-boolean v2, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->immersive:Z

    invoke-virtual {v1, v2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setImmersive(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v1

    iget-object v2, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->enterAnimationId:Ljava/lang/Integer;

    iget-object v3, p2, Lcom/millennialmedia/InterstitialAd$DisplayOptions;->exitAnimationId:Ljava/lang/Integer;

    .line 121
    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransitionAnimation(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v2

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->adMetadata:Lcom/millennialmedia/internal/AdMetadata;

    .line 122
    invoke-virtual {v1}, Lcom/millennialmedia/internal/AdMetadata;->isTransparent()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->setTransparent(Z)Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    move-result-object v0

    .line 124
    .local v0, "config":Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;->webController:Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;->showExpanded(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)V

    .line 125
    return-void

    .line 122
    .end local v0    # "config":Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
