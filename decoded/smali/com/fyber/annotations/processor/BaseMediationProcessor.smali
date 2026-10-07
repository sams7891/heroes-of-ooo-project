.class public abstract Lcom/fyber/annotations/processor/BaseMediationProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "BaseMediationProcessor.java"


# instance fields
.field protected elementUtils:Ljavax/lang/model/util/Elements;

.field protected final keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

.field protected messager:Ljavax/annotation/processing/Messager;

.field protected methodSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/javapoet/MethodSpec;",
            ">;"
        }
    .end annotation
.end field

.field protected shouldAddKeepNameAnnotation:Z

.field protected shouldAddNetworkBannerSizeList:Z

.field protected typeUtils:Ljavax/lang/model/util/Types;

.field protected verboseMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 23
    const-string v0, "com.google.android.gms.common.annotation"

    const-string v1, "KeepName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->methodSpecs:Ljava/util/List;

    return-void
.end method

.method private isVerboseMode()Z
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    const-string v1, "VERBOSE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "verbose"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method private shouldAddKeepNameAnnotation()Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    const-string v1, "KEEPNAME_ANNOTATION"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "keepname"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method private shouldAddNetworkBannerSizeList()Z
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    const-string v1, "NETWORK_BANNER_SIZE_LIST"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "networkbannersizelist"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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


# virtual methods
.method protected abstract doProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation
.end method

.method protected abstract getPackageName()Ljava/lang/String;
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1
    .param p1, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 37
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->messager:Ljavax/annotation/processing/Messager;

    .line 38
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 39
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 41
    invoke-direct {p0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->shouldAddKeepNameAnnotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->shouldAddKeepNameAnnotation:Z

    .line 42
    invoke-direct {p0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->shouldAddNetworkBannerSizeList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->shouldAddNetworkBannerSizeList:Z

    .line 43
    invoke-direct {p0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->isVerboseMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->verboseMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 1
    .param p2, "roundEnv"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->shouldProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->doProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract shouldProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation
.end method

.method protected writeJava(Lcom/squareup/javapoet/TypeSpec;)V
    .locals 1
    .param p1, "javaSpec"    # Lcom/squareup/javapoet/TypeSpec;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->writeJava(Lcom/squareup/javapoet/TypeSpec;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected writeJava(Lcom/squareup/javapoet/TypeSpec;Ljava/lang/String;)V
    .locals 3
    .param p1, "javaSpec"    # Lcom/squareup/javapoet/TypeSpec;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p2, p1}, Lcom/squareup/javapoet/JavaFile;->builder(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/squareup/javapoet/JavaFile$Builder;->build()Lcom/squareup/javapoet/JavaFile;

    move-result-object v1

    .line 75
    .local v1, "javaFile":Lcom/squareup/javapoet/JavaFile;
    :try_start_0
    invoke-direct {p0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->isVerboseMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/JavaFile;->writeTo(Ljava/lang/Appendable;)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/fyber/annotations/processor/BaseMediationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/JavaFile;->writeTo(Ljavax/annotation/processing/Filer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
