.class public Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;
.super Lcom/fyber/annotations/processor/BaseMediationProcessor;
.source "MediationConfigAnnotationProcessor.java"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = Ljavax/annotation/processing/Processor;
.end annotation


# instance fields
.field private alreadyRun:Z

.field private assignableType:Ljavax/lang/model/type/DeclaredType;

.field final configTypes:Lcom/squareup/javapoet/ParameterizedTypeName;

.field final mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

.field private final methodSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/javapoet/MethodSpec;",
            ">;"
        }
    .end annotation
.end field

.field final modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field surroundWithDoubleQuotes:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Lcom/fyber/annotations/processor/BaseMediationProcessor;-><init>()V

    .line 48
    iput-boolean v3, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->alreadyRun:Z

    .line 50
    new-array v0, v5, [Ljavax/lang/model/element/Modifier;

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->modifiers:Ljava/util/List;

    .line 51
    const-class v0, Ljava/util/Map;

    new-array v1, v5, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 52
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    new-array v1, v5, [Lcom/squareup/javapoet/TypeName;

    const-class v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->configTypes:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->methodSpecs:Ljava/util/List;

    .line 284
    new-instance v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor$1;

    invoke-direct {v0, p0}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor$1;-><init>(Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;)V

    iput-object v0, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->surroundWithDoubleQuotes:Lcom/google/common/base/Function;

    return-void
.end method

.method private checkModifiers(Ljavax/lang/model/element/Element;)V
    .locals 3
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 224
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->modifiers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    const-string v0, "The method annotated with @MediationRuntimeConfigs should be \'public static\'"

    .line 226
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v1

    sget-object v2, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v1, v2, v0, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 228
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkReturnType(Ljavax/lang/model/element/Element;)V
    .locals 4
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .prologue
    .line 231
    move-object v2, p1

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 234
    .local v0, "methodReturnType":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->assignableType:Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v2, v0, v3}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    const-string v1, "The method annotated with @MediationRuntimeConfigs should return \'java.util.Map<java.lang.String,java.lang.Object>\'"

    .line 236
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v2

    sget-object v3, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v2, v3, v1, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    .line 238
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private generateConfigs(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)Lcom/squareup/javapoet/MethodSpec;
    .locals 14
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "mirror"    # Ljavax/lang/model/element/AnnotationMirror;

    .prologue
    .line 241
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 243
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<+Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/fyber/annotations/processor/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljavax/lang/model/element/Modifier;

    const/4 v10, 0x0

    sget-object v11, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v11, v9, v10

    .line 245
    invoke-virtual {v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 246
    invoke-virtual {v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 248
    .local v1, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    const-string v8, "$T config = new $T<>()"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->mapType:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/util/HashMap;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 250
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 251
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/ExecutableElement;

    const-class v10, Lcom/fyber/mediation/annotations/ConfigKey;

    invoke-interface {v8, v10}, Ljavax/lang/model/element/ExecutableElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/fyber/mediation/annotations/ConfigKey;

    invoke-interface {v8}, Lcom/fyber/mediation/annotations/ConfigKey;->name()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v8}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v8

    invoke-interface {v8}, Ljavax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "returnTypeString":Ljava/lang/String;
    const-class v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 257
    const-string v10, "config.put($S, $S)"

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v11, v8

    const/4 v12, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v8}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_0

    .line 258
    :cond_1
    const-class v8, [Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 259
    const-class v10, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v8}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 260
    .local v5, "list":Ljava/util/List;
    const-string v8, "config.put($S, new String[]{$L})"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    const-string v12, ", "

    .line 261
    invoke-static {v12}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v12

    iget-object v13, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->surroundWithDoubleQuotes:Lcom/google/common/base/Function;

    invoke-static {v5, v13}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 260
    invoke-virtual {v1, v8, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto/16 :goto_0

    .line 262
    .end local v5    # "list":Ljava/util/List;
    :cond_2
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 263
    const-string v8, "config.put($S, $L)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v8, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto/16 :goto_0

    .line 265
    :cond_3
    const-string v8, "com.fyber.mediation.configs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 267
    const-class v10, Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v8}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 269
    .local v0, "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/fyber/annotations/processor/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/fyber/annotations/processor/utils/Utils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->generateConfigs(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v4

    .line 270
    .local v4, "innerSpec":Lcom/squareup/javapoet/MethodSpec;
    if-eqz v4, :cond_0

    .line 271
    const-string v8, "config.put($S, $N())"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-virtual {v1, v8, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 272
    iget-object v8, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 275
    .end local v0    # "annotationMirror":Ljavax/lang/model/element/AnnotationMirror;
    .end local v4    # "innerSpec":Lcom/squareup/javapoet/MethodSpec;
    :cond_4
    const-string v10, "config.put($S, $L)"

    const/4 v8, 0x2

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v11, v8

    const/4 v12, 0x1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/lang/model/element/AnnotationValue;

    invoke-interface {v8}, Ljavax/lang/model/element/AnnotationValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-virtual {v1, v10, v11}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto/16 :goto_0

    .line 278
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljavax/lang/model/element/ExecutableElement;+Ljavax/lang/model/element/AnnotationValue;>;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "returnTypeString":Ljava/lang/String;
    :cond_5
    const-string v8, "return config"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 279
    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v8

    .line 281
    .end local v1    # "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    :goto_1
    return-object v8

    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private generateRuntimeConfigsSpecs(Ljava/util/Set;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "runtimeConfigElems":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/Element;>;"
    const-string v8, "getRuntimeConfigs"

    invoke-static {v8}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljavax/lang/model/element/Modifier;

    const/4 v10, 0x0

    sget-object v11, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v11, v9, v10

    .line 168
    invoke-virtual {v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->configTypes:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 169
    invoke-virtual {v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v1

    .line 171
    .local v1, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    iget-boolean v8, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->shouldAddKeepNameAnnotation:Z

    if-eqz v8, :cond_0

    .line 172
    iget-object v8, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v1, v8}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 176
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    const-string v8, "return $T.emptyMap()"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-class v11, Ljava/util/Collections;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 220
    :goto_0
    iget-object v8, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-virtual {v1}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void

    .line 179
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Lcom/google/common/collect/LinkedListMultimap;->create(I)Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v7

    .line 181
    .local v7, "runtimeAdapterConfigs":Lcom/google/common/collect/ListMultimap;, "Lcom/google/common/collect/ListMultimap<Ljava/lang/String;Ljavax/lang/model/element/Element;>;"
    const-string v8, "$T configs = new $T<>()"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->configTypes:Lcom/squareup/javapoet/ParameterizedTypeName;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/util/HashMap;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 183
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 184
    .local v3, "element":Ljavax/lang/model/element/Element;
    invoke-direct {p0, v3}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->checkModifiers(Ljavax/lang/model/element/Element;)V

    .line 185
    invoke-direct {p0, v3}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->checkReturnType(Ljavax/lang/model/element/Element;)V

    .line 187
    const-class v9, Lcom/fyber/annotations/MediationRuntimeConfigs;

    invoke-interface {v3, v9}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fyber/annotations/MediationRuntimeConfigs;

    .line 188
    .local v0, "annotation":Lcom/fyber/annotations/MediationRuntimeConfigs;
    invoke-interface {v0}, Lcom/fyber/annotations/MediationRuntimeConfigs;->value()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "networkName":Ljava/lang/String;
    invoke-interface {v7, v6, v3}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v0    # "annotation":Lcom/fyber/annotations/MediationRuntimeConfigs;
    .end local v3    # "element":Ljavax/lang/model/element/Element;
    .end local v6    # "networkName":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Lcom/google/common/collect/LinkedListMultimap;->create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedListMultimap;

    move-result-object v2

    .line 197
    .local v2, "duplicateEntries":Lcom/google/common/collect/ListMultimap;, "Lcom/google/common/collect/ListMultimap<Ljava/lang/String;Ljavax/lang/model/element/Element;>;"
    invoke-interface {v7}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 198
    .local v5, "network":Ljava/lang/String;
    invoke-interface {v7, v5}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 199
    invoke-interface {v2, v5}, Lcom/google/common/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    goto :goto_2

    .line 203
    .end local v5    # "network":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Lcom/google/common/collect/ListMultimap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 204
    invoke-interface {v7}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    .restart local v5    # "network":Ljava/lang/String;
    invoke-interface {v7, v5}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 207
    .restart local v3    # "element":Ljavax/lang/model/element/Element;
    const-string v9, "configs.put($S, $T.$L())"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_3

    .line 210
    .end local v3    # "element":Ljavax/lang/model/element/Element;
    .end local v5    # "network":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 211
    .restart local v5    # "network":Ljava/lang/String;
    const-string v9, "There is more than one @MediationRuntimeConfigs annotation for \'%s\'"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "msg":Ljava/lang/String;
    invoke-interface {v2, v5}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 213
    .restart local v3    # "element":Ljavax/lang/model/element/Element;
    iget-object v10, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v10}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v10

    sget-object v11, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v10, v11, v4, v3}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_4

    .line 218
    .end local v3    # "element":Ljavax/lang/model/element/Element;
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "network":Ljava/lang/String;
    :cond_7
    const-string v8, "return configs"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto/16 :goto_0
.end method

.method private getStaticConfigs(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)V
    .locals 19
    .param p2, "roundEnv"    # Ljavax/annotation/processing/RoundEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v13}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v10

    .line 111
    .local v10, "messager":Ljavax/annotation/processing/Messager;
    const-string v13, "getConfigs"

    invoke-static {v13}, Lcom/squareup/javapoet/MethodSpec;->methodBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljavax/lang/model/element/Modifier;

    const/4 v15, 0x0

    sget-object v16, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v16, v14, v15

    .line 112
    invoke-virtual {v13, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->configTypes:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 113
    invoke-virtual {v13, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->returns(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    move-result-object v5

    .line 115
    .local v5, "builder":Lcom/squareup/javapoet/MethodSpec$Builder;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->shouldAddKeepNameAnnotation:Z

    if-eqz v13, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v5, v13}, Lcom/squareup/javapoet/MethodSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 119
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 120
    const-string v13, "$T configs = new $T<>()"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->configTypes:Lcom/squareup/javapoet/ParameterizedTypeName;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/util/HashMap;

    aput-object v16, v14, v15

    invoke-virtual {v5, v13, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 123
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 124
    .local v2, "annotation":Ljavax/lang/model/element/TypeElement;
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object v8

    .line 126
    .local v8, "elements":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/Element;>;"
    const-class v13, Lcom/fyber/mediation/annotations/ConfigKey;

    invoke-interface {v2, v13}, Ljavax/lang/model/element/TypeElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lcom/fyber/mediation/annotations/ConfigKey;

    invoke-interface {v13}, Lcom/fyber/mediation/annotations/ConfigKey;->name()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "adapterName":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    .line 128
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/Element;

    .line 130
    .local v7, "element":Ljavax/lang/model/element/Element;
    invoke-interface {v7}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v4

    .line 131
    .local v4, "annotationMirrors":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavax/lang/model/element/AnnotationMirror;

    .line 132
    .local v11, "mirror":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v11}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v15

    invoke-interface {v15}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v15

    const-class v16, Lcom/fyber/mediation/annotations/ConfigKey;

    invoke-interface/range {v15 .. v16}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/fyber/mediation/annotations/ConfigKey;

    .line 133
    .local v6, "configKey":Lcom/fyber/mediation/annotations/ConfigKey;
    if-eqz v6, :cond_3

    .line 134
    invoke-interface {v6}, Lcom/fyber/mediation/annotations/ConfigKey;->name()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "annotationForAdapter":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 138
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->generateConfigs(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;)Lcom/squareup/javapoet/MethodSpec;

    move-result-object v9

    .line 140
    .local v9, "getConfigsForAdapter":Lcom/squareup/javapoet/MethodSpec;
    if-eqz v9, :cond_3

    .line 141
    const-string v15, "configs.put($S, $N())"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v9, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v3    # "annotationForAdapter":Ljava/lang/String;
    .end local v4    # "annotationMirrors":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v6    # "configKey":Lcom/fyber/mediation/annotations/ConfigKey;
    .end local v7    # "element":Ljavax/lang/model/element/Element;
    .end local v9    # "getConfigsForAdapter":Lcom/squareup/javapoet/MethodSpec;
    .end local v11    # "mirror":Ljavax/lang/model/element/AnnotationMirror;
    :cond_4
    const-string v13, "You have defined more than one configuration for %s with annotation @%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    const/16 v16, 0x1

    .line 149
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v17

    aput-object v17, v15, v16

    .line 148
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "msg":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/element/Element;

    .line 151
    .restart local v7    # "element":Ljavax/lang/model/element/Element;
    sget-object v15, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {v10, v15, v12, v7}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 155
    .end local v1    # "adapterName":Ljava/lang/String;
    .end local v2    # "annotation":Ljavax/lang/model/element/TypeElement;
    .end local v7    # "element":Ljavax/lang/model/element/Element;
    .end local v8    # "elements":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/Element;>;"
    .end local v12    # "msg":Ljava/lang/String;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 157
    const-string v13, "return new $T<>()"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-class v16, Ljava/util/HashMap;

    aput-object v16, v14, v15

    invoke-virtual {v5, v13, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    .line 162
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->methodSpecs:Ljava/util/List;

    invoke-virtual {v5}, Lcom/squareup/javapoet/MethodSpec$Builder;->build()Lcom/squareup/javapoet/MethodSpec;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void

    .line 159
    :cond_6
    const-string v13, "return configs"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v5, v13, v14}, Lcom/squareup/javapoet/MethodSpec$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/MethodSpec$Builder;

    goto :goto_2
.end method


# virtual methods
.method public doProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 9
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
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 81
    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    const-class v5, Lcom/fyber/annotations/MediationRuntimeConfigs;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 82
    .local v3, "typeElement":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v4}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v4

    const-class v5, Lcom/fyber/annotations/FyberSDK;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v3

    .line 84
    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    const-class v4, Lcom/fyber/annotations/MediationRuntimeConfigs;

    invoke-interface {p2, v4}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    .line 88
    .local v2, "runtimeConfigElems":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/Element;>;"
    invoke-direct {p0, v2}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->generateRuntimeConfigsSpecs(Ljava/util/Set;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->getStaticConfigs(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)V

    .line 92
    const-string v0, "MediationConfigProvider"

    .line 94
    .local v0, "classFileName":Ljava/lang/String;
    const-string v4, "MediationConfigProvider"

    invoke-static {v4}, Lcom/squareup/javapoet/TypeSpec;->classBuilder(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v7

    sget-object v6, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    aput-object v6, v5, v8

    .line 95
    invoke-virtual {v4, v5}, Lcom/squareup/javapoet/TypeSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->methodSpecs:Ljava/util/List;

    .line 96
    invoke-virtual {v4, v5}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethods(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v1

    .line 98
    .local v1, "configProvider":Lcom/squareup/javapoet/TypeSpec$Builder;
    iget-boolean v4, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->shouldAddKeepNameAnnotation:Z

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->keepNameAnnotation:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v1, v4}, Lcom/squareup/javapoet/TypeSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 102
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->writeJava(Lcom/squareup/javapoet/TypeSpec;)V

    .line 104
    iput-boolean v8, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->alreadyRun:Z

    .line 105
    return v7
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "com.fyber.mediation"

    return-object v0
.end method

.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 2
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
    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "com.fyber.mediation.configs.*"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    const-class v1, Lcom/fyber/annotations/FyberSDK;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    const-class v1, Lcom/fyber/annotations/MediationRuntimeConfigs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    return-object v0
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 6
    .param p1, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/fyber/annotations/processor/BaseMediationProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 61
    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v3, v4, v5}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    .line 62
    .local v2, "stringType":Ljavax/lang/model/type/DeclaredType;
    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    iget-object v4, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v3, v4, v5}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    .line 63
    .local v1, "objectType":Ljavax/lang/model/type/DeclaredType;
    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 65
    .local v0, "mapType":Ljavax/lang/model/element/TypeElement;
    iget-object v3, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    const/4 v4, 0x2

    new-array v4, v4, [Ljavax/lang/model/type/TypeMirror;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v3, v0, v4}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->assignableType:Ljavax/lang/model/type/DeclaredType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "mapType":Ljavax/lang/model/element/TypeElement;
    .end local v1    # "objectType":Ljavax/lang/model/type/DeclaredType;
    .end local v2    # "stringType":Ljavax/lang/model/type/DeclaredType;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected shouldProcess(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
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
    .line 70
    .local p1, "annotations":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/TypeElement;>;"
    iget-boolean v0, p0, Lcom/fyber/annotations/processor/MediationConfigAnnotationProcessor;->alreadyRun:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
