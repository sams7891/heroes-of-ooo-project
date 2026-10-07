.class public abstract Lcom/millennialmedia/internal/AdPlacementMetadata;
.super Ljava/lang/Object;
.source "AdPlacementMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MetadataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final METADATA_KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final METADATA_KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final METADATA_KEY_NATIVE_TYPES:Ljava/lang/String; = "nativeTypes"

.field public static final METADATA_KEY_PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final METADATA_KEY_PLACEMENT_TYPE:Ljava/lang/String; = "placementType"

.field public static final METADATA_KEY_SUPPORTED_ORIENTATIONS:Ljava/lang/String; = "supportedOrientations"

.field public static final METADATA_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String;

.field private static final validOrientations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keywords:Ljava/lang/String;

.field private final placementType:Ljava/lang/String;

.field private supportedOrientations:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/millennialmedia/internal/AdPlacementMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementMetadata;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "landscape"

    aput-object v2, v0, v1

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementMetadata;->validOrientations:Ljava/util/List;

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 52
    .local p0, "this":Lcom/millennialmedia/internal/AdPlacementMetadata;, "Lcom/millennialmedia/internal/AdPlacementMetadata<TMetadataType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->placementType:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected buildValidatedList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/millennialmedia/internal/AdPlacementMetadata;, "Lcom/millennialmedia/internal/AdPlacementMetadata<TMetadataType;>;"
    .local p3, "validValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "validatedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "items":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 133
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    sget-object v5, Lcom/millennialmedia/internal/AdPlacementMetadata;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Value <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> is not a valid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v0    # "item":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 148
    const/4 v2, 0x0

    .line 155
    .end local v1    # "items":[Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v2

    .line 152
    .end local v2    # "validatedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "validatedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lcom/millennialmedia/internal/AdPlacementMetadata;, "Lcom/millennialmedia/internal/AdPlacementMetadata<TMetadataType;>;"
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOrientations()Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/millennialmedia/internal/AdPlacementMetadata;, "Lcom/millennialmedia/internal/AdPlacementMetadata<TMetadataType;>;"
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->supportedOrientations:Ljava/util/List;

    return-object v0
.end method

.method public setKeywords(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/millennialmedia/internal/AdPlacementMetadata;, "Lcom/millennialmedia/internal/AdPlacementMetadata<TMetadataType;>;"
    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->keywords:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setSupportedOrientations(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "orientations"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TMetadataType;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/millennialmedia/internal/AdPlacementMetadata;, "Lcom/millennialmedia/internal/AdPlacementMetadata<TMetadataType;>;"
    const-string v0, "orientation"

    sget-object v1, Lcom/millennialmedia/internal/AdPlacementMetadata;->validOrientations:Ljava/util/List;

    invoke-virtual {p0, v0, p1, v1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->buildValidatedList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->supportedOrientations:Ljava/util/List;

    .line 83
    return-object p0
.end method

.method public toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;
    .locals 3
    .param p1, "adPlacement"    # Lcom/millennialmedia/internal/AdPlacement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/AdPlacement;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/millennialmedia/internal/AdPlacementMetadata;, "Lcom/millennialmedia/internal/AdPlacementMetadata<TMetadataType;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "placementId"

    iget-object v2, p1, Lcom/millennialmedia/internal/AdPlacement;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "placementType"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->placementType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "keywords"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->keywords:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    const-string v1, "supportedOrientations"

    iget-object v2, p0, Lcom/millennialmedia/internal/AdPlacementMetadata;->supportedOrientations:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    return-object v0
.end method
