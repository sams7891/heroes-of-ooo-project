.class public Lcom/millennialmedia/InlineAd$InlineAdMetadata;
.super Lcom/millennialmedia/internal/AdPlacementMetadata;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineAdMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/internal/AdPlacementMetadata",
        "<",
        "Lcom/millennialmedia/InlineAd$InlineAdMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final PLACEMENT_TYPE_INLINE:Ljava/lang/String; = "inline"


# instance fields
.field private adSize:Lcom/millennialmedia/InlineAd$AdSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    const-string v0, "inline"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/AdPlacementMetadata;-><init>(Ljava/lang/String;)V

    .line 195
    return-void
.end method


# virtual methods
.method public getAdSize()Lcom/millennialmedia/InlineAd$AdSize;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    return-object v0
.end method

.method public getHeight(Lcom/millennialmedia/InlineAd;)I
    .locals 3
    .param p1, "inlineAd"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    iget v1, v1, Lcom/millennialmedia/InlineAd$AdSize;->height:I

    int-to-float v1, v1

    .line 243
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 242
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getWidth(Lcom/millennialmedia/InlineAd;)I
    .locals 3
    .param p1, "inlineAd"    # Lcom/millennialmedia/InlineAd;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    iget v0, v0, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    iget v1, v1, Lcom/millennialmedia/InlineAd$AdSize;->width:I

    int-to-float v1, v1

    .line 231
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 230
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 234
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->access$100(Lcom/millennialmedia/InlineAd;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public setAdSize(Lcom/millennialmedia/InlineAd$AdSize;)Lcom/millennialmedia/InlineAd$InlineAdMetadata;
    .locals 2
    .param p1, "adSize"    # Lcom/millennialmedia/InlineAd$AdSize;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    invoke-static {}, Lcom/millennialmedia/InlineAd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Provided AdSize cannot be null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-object p0

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->adSize:Lcom/millennialmedia/InlineAd$AdSize;

    goto :goto_0
.end method

.method public toMap(Lcom/millennialmedia/InlineAd;)Ljava/util/Map;
    .locals 3
    .param p1, "inlineAd"    # Lcom/millennialmedia/InlineAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/InlineAd;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/millennialmedia/internal/AdPlacementMetadata;->toMap(Lcom/millennialmedia/internal/AdPlacement;)Ljava/util/Map;

    move-result-object v0

    .line 255
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "width"

    invoke-virtual {p0, p1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getWidth(Lcom/millennialmedia/InlineAd;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    const-string v1, "height"

    invoke-virtual {p0, p1}, Lcom/millennialmedia/InlineAd$InlineAdMetadata;->getHeight(Lcom/millennialmedia/InlineAd;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    const-string v1, "refreshRate"

    invoke-static {p1}, Lcom/millennialmedia/InlineAd;->access$200(Lcom/millennialmedia/InlineAd;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/Utils;->injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-object v0
.end method
