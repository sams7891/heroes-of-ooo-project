.class public Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;
.super Lcom/millennialmedia/internal/adadapters/NativeAdapter;
.source "NativeNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;
    }
.end annotation


# static fields
.field private static final ASSET_COMPONENT_TYPE_ID_BODY:Ljava/lang/String; = "101"

.field private static final ASSET_COMPONENT_TYPE_ID_CALL_TO_ACTION:Ljava/lang/String; = "104"

.field private static final ASSET_COMPONENT_TYPE_ID_DISCLAIMER:Ljava/lang/String; = "106"

.field private static final ASSET_COMPONENT_TYPE_ID_ICON_IMAGE:Ljava/lang/String; = "102"

.field private static final ASSET_COMPONENT_TYPE_ID_MAIN_IMAGE:Ljava/lang/String; = "103"

.field private static final ASSET_COMPONENT_TYPE_ID_RATING:Ljava/lang/String; = "105"

.field private static final ASSET_COMPONENT_TYPE_ID_TITLE:Ljava/lang/String; = "100"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private callToActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private disclaimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private iconImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mainImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

.field private volatile nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

.field nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

.field private nativeType:Ljava/lang/String;

.field private ratings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->titles:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->bodies:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->iconImages:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->mainImages:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->callToActions:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->ratings:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->disclaimers:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$1;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->loadComponentsInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;
    .param p1, "x1"    # Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    .param p2, "x2"    # Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    return-void
.end method

.method static synthetic access$300(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->iconImages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->mainImages:Ljava/util/List;

    return-object v0
.end method

.method private loadComponentsInfo()Z
    .locals 14

    .prologue
    .line 95
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v8, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 97
    .local v8, "loadingLatch":Ljava/util/concurrent/CountDownLatch;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_10

    .line 98
    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController;->assets:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    .line 100
    .local v0, "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    if-nez v0, :cond_0

    .line 101
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load component, asset is null"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 97
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "assetId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x9

    if-eq v11, v12, :cond_1

    .line 109
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "error when processing native asset, asset ID is not the correct length"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 115
    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeType:Ljava/lang/String;

    .line 117
    const/4 v11, 0x3

    const/4 v12, 0x6

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "assetType":Ljava/lang/String;
    const-string v11, "100"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 119
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v12, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v11, v12, :cond_2

    .line 120
    new-instance v10, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v10}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 121
    .local v10, "title":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->title:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Title;->value:Ljava/lang/String;

    iput-object v11, v10, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 122
    invoke-direct {p0, v10, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 124
    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->titles:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v10    # "title":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    :goto_2
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 127
    :cond_2
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load title component, asset not the expected type"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 132
    :cond_3
    const-string v11, "101"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 133
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v12, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v11, v12, :cond_4

    .line 134
    new-instance v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v3}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 135
    .local v3, "body":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v11, v3, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 136
    invoke-direct {p0, v3, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 138
    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->bodies:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v3    # "body":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    :goto_3
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 141
    :cond_4
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load body component, asset not the expected type"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 146
    :cond_5
    const-string v11, "102"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 147
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v12, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v11, v12, :cond_6

    .line 148
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;

    new-instance v12, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$2;

    invoke-direct {v12, p0, v0, v8}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$2;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v11, v12}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->loadImageComponent(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V

    goto/16 :goto_1

    .line 162
    :cond_6
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load icon image component, asset not the expected type"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 166
    :cond_7
    const-string v11, "103"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 167
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v12, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v11, v12, :cond_8

    .line 168
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->image:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Image;->url:Ljava/lang/String;

    new-instance v12, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$3;

    invoke-direct {v12, p0, v0, v8}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$3;-><init>(Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v11, v12}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->loadImageComponent(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V

    goto/16 :goto_1

    .line 182
    :cond_8
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load main image component, asset not the expected type"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 186
    :cond_9
    const-string v11, "104"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 187
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v12, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v11, v12, :cond_a

    .line 188
    new-instance v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v4}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 189
    .local v4, "callToAction":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v11, v4, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 190
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 192
    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->callToActions:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v4    # "callToAction":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    :goto_4
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 195
    :cond_a
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load call to action text component, asset not the expected type"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 200
    :cond_b
    const-string v11, "105"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 201
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v12, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v11, v12, :cond_c

    .line 202
    new-instance v9, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v9}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 203
    .local v9, "rating":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v11, v9, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 204
    invoke-direct {p0, v9, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 206
    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->ratings:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v9    # "rating":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    :goto_5
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 209
    :cond_c
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load rating component, asset not the expected type"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 214
    :cond_d
    const-string v11, "106"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 215
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->type:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v12, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    if-ne v11, v12, :cond_e

    .line 216
    new-instance v5, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;

    invoke-direct {v5}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;-><init>()V

    .line 217
    .local v5, "disclaimer":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    iget-object v11, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->data:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;

    iget-object v11, v11, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Data;->value:Ljava/lang/String;

    iput-object v11, v5, Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;->value:Ljava/lang/String;

    .line 218
    invoke-direct {p0, v5, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V

    .line 220
    iget-object v11, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->disclaimers:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v5    # "disclaimer":Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;
    :goto_6
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 223
    :cond_e
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Unable to load disclaimer component, asset not the expected type"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 229
    :cond_f
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load component from asset, asset type is unrecognized <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    .line 235
    .end local v0    # "asset":Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
    .end local v1    # "assetId":Ljava/lang/String;
    .end local v2    # "assetType":Ljava/lang/String;
    :cond_10
    const-wide/16 v12, 0x1388

    :try_start_0
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v12, v13, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 240
    :goto_7
    return v11

    .line 237
    :catch_0
    move-exception v6

    .line 238
    .local v6, "e":Ljava/lang/InterruptedException;
    sget-object v11, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->TAG:Ljava/lang/String;

    const-string v12, "Error occurred when loading native component info"

    invoke-static {v11, v12}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v11, 0x0

    goto :goto_7
.end method

.method private loadImageComponent(Ljava/lang/String;Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;)V
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageLoadedCallback"    # Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;

    .prologue
    .line 247
    invoke-static {p1}, Lcom/millennialmedia/internal/utils/HttpUtils;->getBitmapFromGetRequest(Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v1

    .line 248
    .local v1, "response":Lcom/millennialmedia/internal/utils/HttpUtils$Response;
    iget v2, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 249
    new-instance v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;-><init>()V

    .line 250
    .local v0, "imageComponentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;
    iput-object p1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmapUrl:Ljava/lang/String;

    .line 251
    iget-object v2, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 252
    iget-object v2, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->width:I

    .line 253
    iget-object v2, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->height:I

    .line 255
    invoke-interface {p2, v0}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;->imageLoaded(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    .line 260
    .end local v0    # "imageComponentInfo":Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback;->imageLoaded(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V

    goto :goto_0
.end method

.method private setLink(Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;)V
    .locals 1
    .param p1, "componentInfo"    # Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;
    .param p2, "asset"    # Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;

    .prologue
    .line 265
    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    .line 267
    iget-object v0, p2, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickUrl:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->clickTrackerUrls:Ljava/util/List;

    iput-object v0, p1, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;->clickTrackerUrls:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getBodyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->bodies:Ljava/util/List;

    return-object v0
.end method

.method public getCallToActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->callToActions:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;->link:Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Link;->url:Ljava/lang/String;

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisclaimerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->disclaimers:Ljava/util/List;

    return-object v0
.end method

.method public getIconImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->iconImages:Ljava/util/List;

    return-object v0
.end method

.method public getMainImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->mainImages:Ljava/util/List;

    return-object v0
.end method

.method public getRatingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->ratings:Ljava/util/List;

    return-object v0
.end method

.method public getTitleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->titles:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeType:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V
    .locals 2
    .param p1, "nativeAdapterListener"    # Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeAdapterListener:Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;

    .line 88
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeControllerListener:Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;

    invoke-direct {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/NativeController;-><init>(Lcom/millennialmedia/internal/adcontrollers/NativeController$NativeControllerListener;)V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    .line 89
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->nativeController:Lcom/millennialmedia/internal/adcontrollers/NativeController;

    iget-object v1, p0, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;->adContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/adcontrollers/NativeController;->init(Ljava/lang/String;)V

    .line 90
    return-void
.end method
