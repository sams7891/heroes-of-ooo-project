.class public Lcom/fyber/annotations/processor/MediationAnnotationProcessor;
.super Lcom/fyber/annotations/processor/BaseMediationProcessor;
.source "MediationAnnotationProcessor.java"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = Ljavax/annotation/processing/Processor;
.end annotation


# static fields
.field private static final NETWORK_BANNER_SIZE_LIST:Ljava/lang/String; = "NETWORK_BANNER_SIZE_LIST"


# instance fields
.field private final activityType:Lcom/squareup/javapoet/ClassName;

.field private final adapterType:Lcom/squareup/javapoet/ClassName;

.field private adaptersCount:I

.field private final configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

.field private final futureType:Lcom/squareup/javapoet/ParameterizedTypeName;

.field private final loggerType:Lcom/squareup/javapoet/ClassName;

.field private final mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

.field private final networkBannerSizeType:Lcom/squareup/javapoet/ClassName;

.field private final returnType:Lcom/squareup/javapoet/ParameterizedTypeName;

.field private sdkSupportBanners:Z

.field private shouldAddMissingBannerClasses:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;-><init>()V

    .line 44
    const-string v0, "com.fyber.mediation"

    const-string v1, "MediationAdapter"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adapterType:Lcom/squareup/javapoet/ClassName;

    .line 45
    const-string v0, "android.app"

    const-string v1, "Activity"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->activityType:Lcom/squareup/javapoet/ClassName;

    .line 46
    const-string v0, "com.fyber.utils"

    const-string v1, "FyberLogger"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    .line 47
    const-string v0, "com.fyber.ads.banners"

    const-string v1, "NetworkBannerSize"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->networkBannerSizeType:Lcom/squareup/javapoet/ClassName;

    .line 49
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    new-array v1, v5, [Lcom/squareup/javapoet/TypeName;

    const-class v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adapterType:Lcom/squareup/javapoet/ClassName;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->returnType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 50
    const-class v0, Ljava/util/Map;

    new-array v1, v5, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 51
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    new-array v1, v5, [Lcom/squareup/javapoet/TypeName;

    const-class v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 52
    const-class v0, Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    new-array v1, v4, [Lcom/squareup/javapoet/TypeName;

    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->futureType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 54
    iput v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adaptersCount:I

    .line 60
    iput-boolean v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddMissingBannerClasses:Z

    .line 61
    iput-boolean v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->sdkSupportBanners:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fyber/annotations/processor/MediationAnnotationProcessor;)Ljavax/annotation/processing/ProcessingEnvironment;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/annotations/processor/MediationAnnotationProcessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-object v0
.end method

.method private generateAdaptersCount()Lcom/squareup/javapoet/MethodSpec;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 434
    const-string v2, "getAdaptersCount"

    invoke-static {v2}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v6

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v5

    .line 435
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 436
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "return $L"

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adaptersCount:I

    .line 437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 439
    .local v1, "adaptersCountBuilder":Lcom/squareup/javapoet/MethodSpec$Builder;
    iget-boolean v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddKeepNameAnnotation:Z

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 444
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    .line 446
    .local v0, "adaptersCount":Lcom/squareup/javapoet/MethodSpec;
    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-object v0
.end method

.method private generateCompatibilityAdapter(Ljava/lang/String;Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/squareup/javapoet/TypeSpec;"
        }
    .end annotation

    .prologue
    .local p2, "adapter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 356
    const-string v2, "getBannerMediationAdapter"

    invoke-static {v2}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v7, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v6

    .line 357
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "com.fyber.ads.banners.mediation"

    const-string v4, "BannerMediationAdapter"

    new-array v5, v6, [Ljava/lang/String;

    .line 358
    invoke-static {v3, v4, v5}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "return null"

    new-array v4, v6, [Ljava/lang/Object;

    .line 359
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 360
    .local v1, "methodBuilder":Lcom/squareup/javapoet/MethodSpec$Builder;
    invoke-static {p1}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v6

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v7

    .line 361
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v2

    .line 362
    invoke-virtual {v2, p2}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v2

    .line 363
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    .line 364
    .local v0, "classBuilder":Lcom/squareup/javapoet/TypeSpec$Builder;
    invoke-virtual {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v2

    return-object v2
.end method

.method private generateGetConfigs()Lcom/squareup/javapoet/MethodSpec;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 477
    const-string v3, "getConfigs"

    invoke-static {v3}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v4, v10, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v8

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v9

    .line 478
    invoke-virtual {v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->futureType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v5, "futureConfig"

    new-array v6, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v7, v6, v8

    .line 479
    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 480
    invoke-virtual {v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 482
    .local v0, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    invoke-virtual {p0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediationConfigProvider"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v1

    .line 483
    .local v1, "configProvider":Lcom/squareup/javapoet/ClassName;
    const-string v3, "$T configs = $T.getConfigs()"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    invoke-virtual {v0, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T runtimeConfigs = $T.getRuntimeConfigs()"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v6, v5, v8

    aput-object v1, v5, v9

    .line 484
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "configs = mergeConfigs(configs, runtimeConfigs)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 485
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "try"

    new-array v5, v8, [Ljava/lang/Object;

    .line 486
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "if (futureConfig != null)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 487
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T serverConfigs = futureConfig.get()"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v6, v5, v8

    .line 488
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "configs = mergeConfigs(configs, serverConfigs)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 489
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 490
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "catch ($T | $T e)"

    new-array v5, v10, [Ljava/lang/Object;

    const-class v6, Ljava/lang/InterruptedException;

    aput-object v6, v5, v8

    const-class v6, Ljava/util/concurrent/ExecutionException;

    aput-object v6, v5, v9

    .line 491
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T.e(TAG, \"Exception occurred\", e)"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    aput-object v6, v5, v8

    .line 492
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 493
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "return configs"

    new-array v5, v8, [Ljava/lang/Object;

    .line 494
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 496
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v2

    .line 497
    .local v2, "methodSpec":Lcom/squareup/javapoet/MethodSpec;
    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    return-object v2
.end method

.method private generateGetConfigsForAdapter()Lcom/squareup/javapoet/MethodSpec;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 417
    const-string v1, "getConfigsForAdapter"

    invoke-static {v1}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v3, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v5

    sget-object v3, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v3, v2, v6

    .line 418
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v3, "configs"

    new-array v4, v5, [Ljavax/lang/model/element/Modifier;

    .line 419
    invoke-virtual {v1, v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const-string v3, "adapter"

    new-array v4, v5, [Ljavax/lang/model/element/Modifier;

    .line 420
    invoke-virtual {v1, v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 421
    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-string v2, "$T config = configs.get(adapter.toLowerCase())"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v4, v3, v5

    .line 422
    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-string v2, "if (config == null)"

    new-array v3, v5, [Ljava/lang/Object;

    .line 423
    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-string v2, "config = $T.emptyMap()"

    new-array v3, v6, [Ljava/lang/Object;

    const-class v4, Ljava/util/Collections;

    aput-object v4, v3, v5

    .line 424
    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    const-string v2, "return config"

    new-array v3, v5, [Ljava/lang/Object;

    .line 426
    invoke-virtual {v1, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v0

    .line 429
    .local v0, "getConfigsForAdapter":Lcom/squareup/javapoet/MethodSpec;
    iget-object v1, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    return-object v0
.end method

.method private generateMergeConfigs()Lcom/squareup/javapoet/MethodSpec;
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 502
    const-string v2, "mergeConfigs"

    invoke-static {v2}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v7, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v8

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v9

    .line 503
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v4, "intoConfigs"

    new-array v5, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v8

    .line 504
    invoke-virtual {v2, v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v4, "fromConfigs"

    new-array v5, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v8

    .line 505
    invoke-virtual {v2, v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 506
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 509
    .local v0, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    const-string v2, "if (fromConfigs != null && !fromConfigs.isEmpty())"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "for ($T entry: fromConfigs.entrySet())"

    new-array v4, v9, [Ljava/lang/Object;

    const-class v5, Ljava/util/Map$Entry;

    .line 510
    invoke-static {v5}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v5

    new-array v6, v7, [Lcom/squareup/javapoet/TypeName;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "String network = entry.getKey()"

    new-array v4, v8, [Ljava/lang/Object;

    .line 511
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$T adapterIntoConfigs = entry.getValue()"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v5, v4, v8

    .line 512
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$T adapterFromConfigs = intoConfigs.get(network)"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v5, v4, v8

    .line 513
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "if (adapterFromConfigs != null)"

    new-array v4, v8, [Ljava/lang/Object;

    .line 514
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "adapterIntoConfigs.putAll(adapterFromConfigs)"

    new-array v4, v8, [Ljava/lang/Object;

    .line 515
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "intoConfigs.put(network, adapterIntoConfigs)"

    new-array v4, v8, [Ljava/lang/Object;

    .line 517
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 518
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "else"

    new-array v4, v8, [Ljava/lang/Object;

    .line 519
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$T.d(TAG, \"There were no configurations to override\")"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    aput-object v5, v4, v8

    .line 520
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "return intoConfigs"

    new-array v4, v8, [Ljava/lang/Object;

    .line 522
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 524
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    .line 525
    .local v1, "methodSpec":Lcom/squareup/javapoet/MethodSpec;
    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    return-object v1
.end method

.method private generateMissingBannerClasses()V
    .locals 12

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 198
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v8, "banner_mediation_support"

    invoke-virtual {v0, v8}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 200
    .local v4, "resources":Ljava/net/URL;
    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 203
    .local v5, "uri":Ljava/net/URI;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "create"

    const-string v9, "true"

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {v5, v1}, Ljava/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .local v7, "zipfs":Ljava/nio/file/FileSystem;
    const/4 v9, 0x0

    .line 206
    :try_start_1
    const-string v8, "/banner_mediation_support"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 208
    .local v3, "pathInZipfile":Ljava/nio/file/Path;
    new-instance v6, Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;

    invoke-direct {v6, p0, v3}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor$1;-><init>(Lcom/fyber/annotations/processor/MediationAnnotationProcessor;Ljava/nio/file/Path;)V

    .line 233
    .local v6, "visitor":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<Ljava/nio/file/Path;>;"
    invoke-static {v3, v6}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    if-eqz v7, :cond_0

    if-eqz v9, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/file/FileSystem;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pathInZipfile":Ljava/nio/file/Path;
    .end local v4    # "resources":Ljava/net/URL;
    .end local v5    # "uri":Ljava/net/URI;
    .end local v6    # "visitor":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<Ljava/nio/file/Path;>;"
    .end local v7    # "zipfs":Ljava/nio/file/FileSystem;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "pathInZipfile":Ljava/nio/file/Path;
    .restart local v4    # "resources":Ljava/net/URL;
    .restart local v5    # "uri":Ljava/net/URI;
    .restart local v6    # "visitor":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<Ljava/nio/file/Path;>;"
    .restart local v7    # "zipfs":Ljava/nio/file/FileSystem;
    :catch_0
    move-exception v8

    :try_start_3
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 239
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pathInZipfile":Ljava/nio/file/Path;
    .end local v4    # "resources":Ljava/net/URL;
    .end local v5    # "uri":Ljava/net/URI;
    .end local v6    # "visitor":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<Ljava/nio/file/Path;>;"
    .end local v7    # "zipfs":Ljava/nio/file/FileSystem;
    :catch_1
    move-exception v2

    .line 240
    .local v2, "error":Ljava/lang/Exception;
    :goto_1
    iget-object v8, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    sget-object v9, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    .end local v2    # "error":Ljava/lang/Exception;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "pathInZipfile":Ljava/nio/file/Path;
    .restart local v4    # "resources":Ljava/net/URL;
    .restart local v5    # "uri":Ljava/net/URI;
    .restart local v6    # "visitor":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<Ljava/nio/file/Path;>;"
    .restart local v7    # "zipfs":Ljava/nio/file/FileSystem;
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/nio/file/FileSystem;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 239
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pathInZipfile":Ljava/nio/file/Path;
    .end local v4    # "resources":Ljava/net/URL;
    .end local v5    # "uri":Ljava/net/URI;
    .end local v6    # "visitor":Ljava/nio/file/SimpleFileVisitor;, "Ljava/nio/file/SimpleFileVisitor<Ljava/nio/file/Path;>;"
    .end local v7    # "zipfs":Ljava/nio/file/FileSystem;
    :catch_2
    move-exception v2

    goto :goto_1

    .line 205
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "resources":Ljava/net/URL;
    .restart local v5    # "uri":Ljava/net/URI;
    .restart local v7    # "zipfs":Ljava/nio/file/FileSystem;
    :catch_3
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    :catchall_0
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_2
    if-eqz v7, :cond_2

    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/nio/file/FileSystem;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    :try_start_7
    throw v8

    :catch_4
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Ljava/nio/file/FileSystem;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v8

    goto :goto_2
.end method

.method private generateNetworkBannerSizes()Lcom/squareup/javapoet/TypeSpec;
    .locals 19

    .prologue
    .line 139
    const-class v13, Ljava/util/List;

    invoke-static {v13}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Lcom/squareup/javapoet/TypeName;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->networkBannerSizeType:Lcom/squareup/javapoet/ClassName;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v2

    .line 144
    .local v2, "bannerSizeListTypeName":Lcom/squareup/javapoet/TypeName;
    const-string v13, "MediationNetworkBannerSize"

    invoke-static {v13}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljavax/lang/model/element/Modifier;

    const/4 v15, 0x0

    sget-object v16, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v16, v14, v15

    .line 145
    invoke-virtual {v13, v14}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v3

    .line 147
    .local v3, "builder":Lcom/squareup/javapoet/TypeSpec$Builder;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddNetworkBannerSizeList:Z

    if-eqz v13, :cond_0

    .line 150
    const-string v13, "NETWORK_BANNER_SIZE_LIST"

    const/4 v14, 0x0

    new-array v14, v14, [Ljavax/lang/model/element/Modifier;

    invoke-static {v2, v13, v14}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljavax/lang/model/element/Modifier;

    const/4 v15, 0x0

    sget-object v16, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v16, v14, v15

    .line 151
    invoke-virtual {v13, v14}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v13

    const-string v14, "new $T<>()"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-class v17, Ljava/util/ArrayList;

    aput-object v17, v15, v16

    .line 152
    invoke-virtual {v13, v14, v15}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v13

    .line 153
    invoke-virtual {v13}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v8

    .line 155
    .local v8, "networkBannerSizeListFieldSpec":Lcom/squareup/javapoet/FieldSpec;
    invoke-virtual {v3, v8}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 158
    .end local v8    # "networkBannerSizeListFieldSpec":Lcom/squareup/javapoet/FieldSpec;
    :cond_0
    new-instance v5, Lorg/reflections/util/FilterBuilder$Include;

    const-string v13, "com.fyber.*"

    invoke-direct {v5, v13}, Lorg/reflections/util/FilterBuilder$Include;-><init>(Ljava/lang/String;)V

    .line 159
    .local v5, "filter":Lorg/reflections/util/FilterBuilder$Include;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lorg/reflections/util/ClasspathHelper;->forClassLoader([Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v12

    .line 160
    .local v12, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    new-instance v11, Lorg/reflections/Reflections;

    new-instance v13, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v13}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    .line 161
    invoke-virtual {v13, v12}, Lorg/reflections/util/ConfigurationBuilder;->setUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Lorg/reflections/scanners/Scanner;

    const/4 v15, 0x0

    new-instance v16, Lorg/reflections/scanners/SubTypesScanner;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lorg/reflections/scanners/SubTypesScanner;-><init>(Z)V

    .line 162
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/reflections/scanners/SubTypesScanner;->filterResultsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/scanners/Scanner;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lorg/reflections/scanners/FieldAnnotationsScanner;

    invoke-direct/range {v16 .. v16}, Lorg/reflections/scanners/FieldAnnotationsScanner;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/reflections/scanners/FieldAnnotationsScanner;->filterResultsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/scanners/Scanner;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lorg/reflections/util/ConfigurationBuilder;->setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v13

    .line 163
    invoke-virtual {v13, v5}, Lorg/reflections/util/ConfigurationBuilder;->filterInputsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v13

    invoke-direct {v11, v13}, Lorg/reflections/Reflections;-><init>(Lorg/reflections/Configuration;)V

    .line 165
    .local v11, "reflections":Lorg/reflections/Reflections;
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v4

    .line 168
    .local v4, "codeBlockBuilder":Lcom/squareup/javapoet/CodeBlock$Builder;
    const-class v13, Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;

    invoke-virtual {v11, v13}, Lorg/reflections/Reflections;->getFieldsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v9

    .line 170
    .local v9, "networkBannerSizes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 171
    .local v6, "networkBannerSizeField":Ljava/lang/reflect/Field;
    const-class v14, Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;

    .line 172
    .local v1, "annotation":Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;
    invoke-interface {v1}, Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;->value()Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "networkName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->networkBannerSizeType:Lcom/squareup/javapoet/ClassName;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v14

    const/4 v15, 0x3

    new-array v15, v15, [Ljavax/lang/model/element/Modifier;

    const/16 v16, 0x0

    sget-object v17, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v17, v15, v16

    .line 176
    invoke-virtual {v14, v15}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v14

    const-string v15, "$T.$L"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 177
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v14

    .line 178
    invoke-virtual {v14}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v7

    .line 180
    .local v7, "networkBannerSizeFieldSpec":Lcom/squareup/javapoet/FieldSpec;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddNetworkBannerSizeList:Z

    if-eqz v14, :cond_1

    .line 182
    const-string v14, "NETWORK_BANNER_SIZE_LIST.add($L)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v4, v14, v15}, Lcom/squareup/javapoet/CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 184
    :cond_1
    invoke-virtual {v3, v7}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto/16 :goto_0

    .line 187
    .end local v1    # "annotation":Lcom/fyber/mediation/annotations/MediationNetworkBannerSize;
    .end local v6    # "networkBannerSizeField":Ljava/lang/reflect/Field;
    .end local v7    # "networkBannerSizeFieldSpec":Lcom/squareup/javapoet/FieldSpec;
    .end local v10    # "networkName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddNetworkBannerSizeList:Z

    if-eqz v13, :cond_3

    .line 189
    invoke-virtual {v4}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/squareup/javapoet/TypeSpec$Builder;->addStaticBlock(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 192
    :cond_3
    invoke-virtual {v3}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v13

    return-object v13
.end method

.method private generateStartAdapter(Lcom/squareup/javapoet/ClassName;Lcom/fyber/mediation/annotations/AdapterDefinition;)Lcom/squareup/javapoet/MethodSpec;
    .locals 12
    .param p1, "className"    # Lcom/squareup/javapoet/ClassName;
    .param p2, "annotation"    # Lcom/fyber/mediation/annotations/AdapterDefinition;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 451
    invoke-interface {p2}, Lcom/fyber/mediation/annotations/AdapterDefinition;->name()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "adapterName":Ljava/lang/String;
    invoke-interface {p2}, Lcom/fyber/mediation/annotations/AdapterDefinition;->version()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "adapterVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/fyber/annotations/processor/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    new-array v4, v10, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v8

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v9

    .line 455
    invoke-virtual {v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->activityType:Lcom/squareup/javapoet/ClassName;

    const-string v5, "activity"

    new-array v6, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v7, v6, v8

    .line 456
    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v5, "configs"

    new-array v6, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v7, v6, v8

    .line 457
    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->returnType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v5, "map"

    new-array v6, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v7, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v7, v6, v8

    .line 458
    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 460
    .local v2, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    const-string v3, "try"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T adapter = new $T()"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adapterType:Lcom/squareup/javapoet/ClassName;

    aput-object v6, v5, v8

    aput-object p1, v5, v9

    .line 461
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T.d(TAG, \"Starting adapter $N with version $N\")"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    .line 462
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "if (adapter.startAdapter(activity, configs))"

    new-array v5, v8, [Ljava/lang/Object;

    .line 463
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T.d(TAG, \"Adapter $N with version $N was started successfully\")"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    .line 464
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "map.put($S, adapter)"

    new-array v5, v9, [Ljava/lang/Object;

    .line 465
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "else"

    new-array v5, v8, [Ljava/lang/Object;

    .line 466
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T.d(TAG, \"Adapter $N with version $N was not started successfully\")"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    .line 467
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 468
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "catch (Throwable throwable)"

    new-array v5, v8, [Ljava/lang/Object;

    .line 469
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    const-string v4, "$T.e(TAG, \"Exception occurred while loading adapter $N with version $N - \" + throwable.getCause())"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    .line 470
    invoke-virtual {v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 471
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v3

    .line 472
    invoke-virtual {v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    .line 473
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v3

    return-object v3
.end method

.method private generateStartAdaptersWithConfigs(Ljavax/annotation/processing/RoundEnvironment;)Lcom/squareup/javapoet/MethodSpec;
    .locals 30
    .param p1, "roundEnv"    # Ljavax/annotation/processing/RoundEnvironment;

    .prologue
    .line 246
    const-string v24, "startAdapters"

    invoke-static/range {v24 .. v24}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v27, v25, v26

    const/16 v26, 0x1

    sget-object v27, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v27, v25, v26

    .line 247
    invoke-virtual/range {v24 .. v25}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->activityType:Lcom/squareup/javapoet/ClassName;

    move-object/from16 v25, v0

    const-string v26, "activity"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v29, v27, v28

    .line 248
    invoke-virtual/range {v24 .. v27}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    move-object/from16 v25, v0

    const-string v26, "configs"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljavax/lang/model/element/Modifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v29, v27, v28

    .line 249
    invoke-virtual/range {v24 .. v27}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->returnType:Lcom/squareup/javapoet/ParameterizedTypeName;

    move-object/from16 v25, v0

    .line 250
    invoke-virtual/range {v24 .. v25}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v10

    .line 252
    .local v10, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddKeepNameAnnotation:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 257
    :cond_0
    const-class v24, Lcom/fyber/annotations/FyberSDK;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v14

    .line 258
    .local v14, "fyberElements":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/Element;>;"
    if-eqz v14, :cond_7

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_7

    .line 259
    new-instance v13, Lorg/reflections/util/FilterBuilder$Include;

    const-string v24, "com.fyber.*"

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Lorg/reflections/util/FilterBuilder$Include;-><init>(Ljava/lang/String;)V

    .line 260
    .local v13, "filter":Lorg/reflections/util/FilterBuilder$Include;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/ClassLoader;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v24 .. v24}, Lorg/reflections/util/ClasspathHelper;->forClassLoader([Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object v23

    .line 261
    .local v23, "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    new-instance v19, Lorg/reflections/Reflections;

    new-instance v24, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct/range {v24 .. v24}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    .line 262
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lorg/reflections/util/ConfigurationBuilder;->filterInputsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lorg/reflections/scanners/Scanner;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lorg/reflections/scanners/SubTypesScanner;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Lorg/reflections/scanners/SubTypesScanner;-><init>(Z)V

    .line 264
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lorg/reflections/scanners/SubTypesScanner;->filterResultsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/scanners/Scanner;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    new-instance v27, Lorg/reflections/scanners/TypeAnnotationsScanner;

    invoke-direct/range {v27 .. v27}, Lorg/reflections/scanners/TypeAnnotationsScanner;-><init>()V

    .line 265
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lorg/reflections/scanners/TypeAnnotationsScanner;->filterResultsBy(Lcom/google/common/base/Predicate;)Lorg/reflections/scanners/Scanner;

    move-result-object v27

    aput-object v27, v25, v26

    .line 263
    invoke-virtual/range {v24 .. v25}, Lorg/reflections/util/ConfigurationBuilder;->setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v24

    .line 267
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/reflections/util/ConfigurationBuilder;->setUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/reflections/Reflections;-><init>(Lorg/reflections/Configuration;)V

    .line 269
    .local v19, "reflections":Lorg/reflections/Reflections;
    const-class v24, Lcom/fyber/mediation/annotations/MediationAPI;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/reflections/Reflections;->getTypesAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v16

    .line 270
    .local v16, "mediationAPI":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const-class v24, Lcom/fyber/mediation/annotations/AdapterDefinition;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/reflections/Reflections;->getTypesAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v6

    .line 273
    .local v6, "adapters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 275
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Class;

    .line 277
    .local v20, "sdk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v24, Lcom/fyber/mediation/annotations/MediationAPI;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/fyber/mediation/annotations/MediationAPI;

    .line 278
    .local v8, "api":Lcom/fyber/mediation/annotations/MediationAPI;
    invoke-interface {v8}, Lcom/fyber/mediation/annotations/MediationAPI;->value()I

    move-result v9

    .line 280
    .local v9, "apiVersion":I
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v9, v0, :cond_1

    .line 282
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->sdkSupportBanners:Z

    .line 285
    :cond_1
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_5

    .line 286
    const-string v24, "$T map = new $T<>()"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->returnType:Lcom/squareup/javapoet/ParameterizedTypeName;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const-class v27, Ljava/util/HashMap;

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 288
    const-string v24, "Class - %s with MediationAPI version %d"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 289
    .local v17, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    move-object/from16 v24, v0

    sget-object v25, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 290
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 291
    .local v4, "adapter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v24, Lcom/fyber/mediation/annotations/AdapterDefinition;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/fyber/mediation/annotations/AdapterDefinition;

    .line 293
    .local v7, "annotation":Lcom/fyber/mediation/annotations/AdapterDefinition;
    invoke-interface {v7}, Lcom/fyber/mediation/annotations/AdapterDefinition;->apiVersion()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v9, v1}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->isAdapterCompatible(II)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 294
    invoke-interface {v7}, Lcom/fyber/mediation/annotations/AdapterDefinition;->version()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "adapterVersion":Ljava/lang/String;
    const-string v24, "Class - %s with AdapterDefinition adapterVersion %s"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v5, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    move-object/from16 v24, v0

    sget-object v26, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adaptersCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adaptersCount:I

    .line 301
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v7}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->getAdapterClassName(ILjava/lang/Class;Lcom/fyber/mediation/annotations/AdapterDefinition;)Lcom/squareup/javapoet/ClassName;

    move-result-object v11

    .line 303
    .local v11, "className":Lcom/squareup/javapoet/ClassName;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateStartAdapter(Lcom/squareup/javapoet/ClassName;Lcom/fyber/mediation/annotations/AdapterDefinition;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v21

    .line 304
    .local v21, "startAdapterMethod":Lcom/squareup/javapoet/MethodSpec;
    const-string v24, "$N(activity, getConfigsForAdapter(configs, $S), map)"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v21, v26, v27

    const/16 v27, 0x1

    invoke-interface {v7}, Lcom/fyber/mediation/annotations/AdapterDefinition;->name()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 309
    .end local v5    # "adapterVersion":Ljava/lang/String;
    .end local v11    # "className":Lcom/squareup/javapoet/ClassName;
    .end local v21    # "startAdapterMethod":Lcom/squareup/javapoet/MethodSpec;
    :cond_2
    const-string v24, "The adapter %s with version %s is not compatible with this SDK"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    .line 310
    invoke-interface {v7}, Lcom/fyber/mediation/annotations/AdapterDefinition;->name()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-interface {v7}, Lcom/fyber/mediation/annotations/AdapterDefinition;->version()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    .line 309
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 311
    .local v18, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    move-object/from16 v26, v0

    sget-object v27, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavax/lang/model/element/Element;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto/16 :goto_0

    .line 315
    .end local v4    # "adapter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "annotation":Lcom/fyber/mediation/annotations/AdapterDefinition;
    .end local v18    # "msg":Ljava/lang/String;
    :cond_3
    const-string v24, "return map"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 335
    .end local v6    # "adapters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v8    # "api":Lcom/fyber/mediation/annotations/MediationAPI;
    .end local v9    # "apiVersion":I
    .end local v13    # "filter":Lorg/reflections/util/FilterBuilder$Include;
    .end local v16    # "mediationAPI":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v17    # "message":Ljava/lang/String;
    .end local v19    # "reflections":Lorg/reflections/Reflections;
    .end local v20    # "sdk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    :cond_4
    :goto_1
    invoke-virtual {v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v22

    .line 337
    .local v22, "startAdapters":Lcom/squareup/javapoet/MethodSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    return-object v22

    .line 318
    .end local v22    # "startAdapters":Lcom/squareup/javapoet/MethodSpec;
    .restart local v6    # "adapters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local v8    # "api":Lcom/fyber/mediation/annotations/MediationAPI;
    .restart local v9    # "apiVersion":I
    .restart local v13    # "filter":Lorg/reflections/util/FilterBuilder$Include;
    .restart local v16    # "mediationAPI":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local v19    # "reflections":Lorg/reflections/Reflections;
    .restart local v20    # "sdk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    :cond_5
    const-string v24, "$T.d(TAG, \"No mediation adapters started for this session\")"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v24

    const-string v25, "return $T.emptyMap()"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/util/Collections;

    aput-object v28, v26, v27

    .line 319
    invoke-virtual/range {v24 .. v26}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_1

    .line 323
    .end local v8    # "api":Lcom/fyber/mediation/annotations/MediationAPI;
    .end local v9    # "apiVersion":I
    .end local v20    # "sdk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const-string v18, "There should be only one \"MediationAPI\" annotation"

    .line 325
    .restart local v18    # "msg":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    move-object/from16 v25, v0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Class;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v12

    .line 327
    .local v12, "element":Ljavax/lang/model/element/TypeElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    move-object/from16 v24, v0

    sget-object v25, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    const-string v26, "There should be only one \"MediationAPI\" annotation"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2, v12}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_2

    .line 331
    .end local v6    # "adapters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v12    # "element":Ljavax/lang/model/element/TypeElement;
    .end local v13    # "filter":Lorg/reflections/util/FilterBuilder$Include;
    .end local v15    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    .end local v16    # "mediationAPI":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v18    # "msg":Ljava/lang/String;
    .end local v19    # "reflections":Lorg/reflections/Reflections;
    .end local v23    # "urls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/URL;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    move-object/from16 v24, v0

    sget-object v25, Ljavax/tools/Diagnostic$Kind;->NOTE:Ljavax/tools/Diagnostic$Kind;

    const-string v26, "There was no source class annotated with FyberSDK"

    invoke-interface/range {v24 .. v26}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    .line 332
    const-string v24, "$T.d(TAG, \"No mediation adapters started for this session\")"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->loggerType:Lcom/squareup/javapoet/ClassName;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v24

    const-string v25, "return $T.emptyMap()"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/util/Collections;

    aput-object v28, v26, v27

    .line 333
    invoke-virtual/range {v24 .. v26}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto/16 :goto_1
.end method

.method private generateStartAdaptersWithFuture(Lcom/squareup/javapoet/MethodSpec;Lcom/squareup/javapoet/MethodSpec;Lcom/squareup/javapoet/FieldSpec;Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/MethodSpec;
    .locals 10
    .param p1, "startAdaptersWithConfigsMethod"    # Lcom/squareup/javapoet/MethodSpec;
    .param p2, "getConfigs"    # Lcom/squareup/javapoet/MethodSpec;
    .param p3, "adaptersListenerField"    # Lcom/squareup/javapoet/FieldSpec;
    .param p4, "adaptersListenerMethod"    # Lcom/squareup/javapoet/MethodSpec;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 382
    const-string v2, "startAdapters"

    invoke-static {v2}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    new-array v3, v9, [Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v7

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v4, v3, v8

    .line 383
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->activityType:Lcom/squareup/javapoet/ClassName;

    const-string v4, "activity"

    new-array v5, v8, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v7

    .line 384
    invoke-virtual {v2, v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->futureType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v4, "future"

    new-array v5, v8, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v7

    .line 385
    invoke-virtual {v2, v3, v4, v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->returnType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 386
    invoke-virtual {v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v0

    .line 388
    .local v0, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    iget-boolean v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddKeepNameAnnotation:Z

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 392
    :cond_0
    iget v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adaptersCount:I

    if-lez v2, :cond_1

    .line 393
    const-string v2, "$T configs = $N(future)"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v4, v3, v7

    aput-object p2, v3, v8

    invoke-virtual {v0, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$T adapters = $N(activity, configs)"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->returnType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    .line 394
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "if ($N != null)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p3, v4, v7

    .line 396
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$N.$N(adapters.keySet(), configs)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p3, v4, v7

    aput-object p4, v4, v8

    .line 397
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "return adapters"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    .line 399
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 409
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v1

    .line 411
    .local v1, "startAdapters":Lcom/squareup/javapoet/MethodSpec;
    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-object v1

    .line 401
    .end local v1    # "startAdapters":Lcom/squareup/javapoet/MethodSpec;
    :cond_1
    const-string v2, "if ($N != null)"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p3, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/squareup/javapoet/MethodSpec$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$T<$T> adapters = $T.emptySet()"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Ljava/util/Set;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v8

    const-class v5, Ljava/util/Collections;

    aput-object v5, v4, v9

    .line 402
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$T configs = $T.emptyMap()"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v5, v4, v7

    const-class v5, Ljava/util/Collections;

    aput-object v5, v4, v8

    .line 403
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "$N.$N(adapters, configs)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p3, v4, v7

    aput-object p4, v4, v8

    .line 404
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Lcom/squareup/javapoet/MethodSpec$Builder;->endControlFlow()Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v2

    const-string v3, "return $T.emptyMap()"

    new-array v4, v8, [Ljava/lang/Object;

    const-class v5, Ljava/util/Collections;

    aput-object v5, v4, v7

    .line 406
    invoke-virtual {v2, v3, v4}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0
.end method

.method private getAdapterClassName(ILjava/lang/Class;Lcom/fyber/mediation/annotations/AdapterDefinition;)Lcom/squareup/javapoet/ClassName;
    .locals 4
    .param p1, "apiVersion"    # I
    .param p3, "annotation"    # Lcom/fyber/mediation/annotations/AdapterDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fyber/mediation/annotations/AdapterDefinition;",
            ")",
            "Lcom/squareup/javapoet/ClassName;"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, "adapter":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    .line 346
    .local v0, "className":Lcom/squareup/javapoet/ClassName;
    invoke-interface {p3}, Lcom/fyber/mediation/annotations/AdapterDefinition;->apiVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/fyber/mediation/annotations/AdapterDefinition;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CompatibilityAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    .line 349
    invoke-direct {p0, v1, p2}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateCompatibilityAdapter(Ljava/lang/String;Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->writeJava(Lcom/squareup/javapoet/TypeSpec;)V

    .line 352
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private isAdapterCompatible(II)Z
    .locals 3
    .param p1, "sdkDeclaredAPI"    # I
    .param p2, "adapterDeclaredAPI"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 368
    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 369
    iput-boolean v0, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddMissingBannerClasses:Z

    .line 372
    :cond_0
    if-eq p1, p2, :cond_2

    if-ne p1, v1, :cond_1

    if-eq p2, v2, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 12
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
    .line 78
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    invoke-direct {p0, p2}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateStartAdaptersWithConfigs(Ljavax/annotation/processing/RoundEnvironment;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v5

    .line 80
    .local v5, "startAdaptersWithConfigs":Lcom/squareup/javapoet/MethodSpec;
    invoke-direct {p0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateAdaptersCount()Lcom/squareup/javapoet/MethodSpec;

    .line 82
    const/4 v4, 0x0

    .line 84
    .local v4, "getConfigs":Lcom/squareup/javapoet/MethodSpec;
    iget v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->adaptersCount:I

    if-lez v6, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateGetConfigsForAdapter()Lcom/squareup/javapoet/MethodSpec;

    .line 86
    invoke-direct {p0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateGetConfigs()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v4

    .line 87
    invoke-direct {p0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateMergeConfigs()Lcom/squareup/javapoet/MethodSpec;

    .line 90
    :cond_0
    const-string v6, "MediationAdapterStarter"

    invoke-static {v6}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljavax/lang/model/element/Modifier;

    const/4 v8, 0x0

    sget-object v9, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v9, v7, v8

    .line 91
    invoke-virtual {v6, v7}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    const-string v8, "TAG"

    const/4 v9, 0x0

    new-array v9, v9, [Ljavax/lang/model/element/Modifier;

    .line 92
    invoke-static {v7, v8, v9}, Lcom/squareup/javapoet/FieldSpec;->builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljavax/lang/model/element/Modifier;

    const/4 v9, 0x0

    sget-object v10, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v10, v8, v9

    .line 93
    invoke-virtual {v7, v8}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v7

    const-string v8, "$S"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "MediationAdapterStarter"

    aput-object v11, v9, v10

    .line 94
    invoke-virtual {v7, v8, v9}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v7

    .line 95
    invoke-virtual {v7}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v7

    .line 92
    invoke-virtual {v6, v7}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v3

    .line 97
    .local v3, "classBuilder":Lcom/squareup/javapoet/TypeSpec$Builder;
    const-string v6, "startedAdapters"

    invoke-static {v6}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljavax/lang/model/element/Modifier;

    const/4 v8, 0x0

    sget-object v9, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v9, v7, v8

    .line 98
    invoke-virtual {v6, v7}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v6

    const-class v7, Ljava/util/Set;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/reflect/Type;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    .line 99
    invoke-static {v7, v8}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v7

    const-string v8, "adapters"

    const/4 v9, 0x0

    new-array v9, v9, [Ljavax/lang/model/element/Modifier;

    invoke-virtual {v6, v7, v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->configsType:Lcom/squareup/javapoet/ParameterizedTypeName;

    const-string v8, "configs"

    const/4 v9, 0x0

    new-array v9, v9, [Ljavax/lang/model/element/Modifier;

    .line 100
    invoke-virtual {v6, v7, v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addParameter(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v6

    .line 101
    invoke-virtual {v6}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v2

    .line 102
    .local v2, "adaptersStartedMethod":Lcom/squareup/javapoet/MethodSpec;
    const-string v6, "AdaptersListener"

    invoke-static {v6}, Lcom/squareup/javapoet/TypeSpec;->interfaceBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljavax/lang/model/element/Modifier;

    const/4 v8, 0x0

    sget-object v9, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v9, v7, v8

    .line 103
    invoke-virtual {v6, v7}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v6

    .line 104
    invoke-virtual {v6, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v6

    .line 105
    invoke-virtual {v6}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v0

    .line 107
    .local v0, "adapterListener":Lcom/squareup/javapoet/TypeSpec;
    invoke-virtual {p0, v0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->writeJava(Lcom/squareup/javapoet/TypeSpec;)V

    .line 109
    iget-object v6, v0, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object v6

    const-string v7, "adaptersListener"

    const/4 v8, 0x0

    new-array v8, v8, [Ljavax/lang/model/element/Modifier;

    invoke-static {v6, v7, v8}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljavax/lang/model/element/Modifier;

    const/4 v8, 0x0

    sget-object v9, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v9, v7, v8

    .line 110
    invoke-virtual {v6, v7}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object v6

    .line 111
    invoke-virtual {v6}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object v1

    .line 114
    .local v1, "adaptersListenerField":Lcom/squareup/javapoet/FieldSpec;
    invoke-direct {p0, v5, v4, v1, v2}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateStartAdaptersWithFuture(Lcom/squareup/javapoet/MethodSpec;Lcom/squareup/javapoet/MethodSpec;Lcom/squareup/javapoet/FieldSpec;Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/MethodSpec;

    .line 116
    invoke-virtual {v3, v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->methodSpecs:Ljava/util/List;

    .line 117
    invoke-virtual {v6, v7}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethods(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 119
    iget-boolean v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddKeepNameAnnotation:Z

    if-eqz v6, :cond_1

    .line 120
    iget-object v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v3, v6}, Lcom/squareup/javapoet/TypeSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 123
    :cond_1
    invoke-virtual {v3}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->writeJava(Lcom/squareup/javapoet/TypeSpec;)V

    .line 125
    iget-boolean v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->sdkSupportBanners:Z

    if-eqz v6, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateNetworkBannerSizes()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->writeJava(Lcom/squareup/javapoet/TypeSpec;)V

    .line 129
    :cond_2
    iget-boolean v6, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->shouldAddMissingBannerClasses:Z

    if-eqz v6, :cond_3

    .line 130
    invoke-direct {p0}, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->generateMissingBannerClasses()V

    .line 133
    :cond_3
    const/4 v6, 0x0

    return v6
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "com.fyber.mediation"

    return-object v0
.end method

.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    const-class v0, Lcom/fyber/annotations/FyberSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method protected shouldProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 3
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
    .line 65
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    iget-object v1, p0, Lcom/fyber/annotations/processor/MediationAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    const-class v2, Lcom/fyber/annotations/FyberSDK;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 67
    .local v0, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
