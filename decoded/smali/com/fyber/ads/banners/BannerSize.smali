.class public Lcom/fyber/ads/banners/BannerSize;
.super Ljava/lang/Object;
.source "BannerSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/ads/banners/BannerSize$Builder;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE:I = -0x2

.field public static final FIXED_HEIGHT_50:Lcom/fyber/ads/banners/BannerSize;

.field public static final FIXED_HEIGHT_90:Lcom/fyber/ads/banners/BannerSize;

.field public static final FIXED_SIZE_320_50:Lcom/fyber/ads/banners/BannerSize;

.field public static final FLUID_SIZE:Lcom/fyber/ads/banners/BannerSize;

.field public static final FULL_SIZE:I = -0x1

.field public static final SMART_SIZE:Lcom/fyber/ads/banners/BannerSize;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 16
    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Lcom/fyber/ads/banners/BannerSize$Builder;->withWidth(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fyber/ads/banners/BannerSize$Builder;->withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v0

    sput-object v0, Lcom/fyber/ads/banners/BannerSize;->FIXED_SIZE_320_50:Lcom/fyber/ads/banners/BannerSize;

    .line 17
    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fyber/ads/banners/BannerSize$Builder;->withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v0

    sput-object v0, Lcom/fyber/ads/banners/BannerSize;->FIXED_HEIGHT_50:Lcom/fyber/ads/banners/BannerSize;

    .line 18
    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/fyber/ads/banners/BannerSize$Builder;->withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v0

    sput-object v0, Lcom/fyber/ads/banners/BannerSize;->FIXED_HEIGHT_90:Lcom/fyber/ads/banners/BannerSize;

    .line 19
    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fyber/ads/banners/BannerSize$Builder;->withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v0

    sput-object v0, Lcom/fyber/ads/banners/BannerSize;->FLUID_SIZE:Lcom/fyber/ads/banners/BannerSize;

    .line 20
    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v0

    sput-object v0, Lcom/fyber/ads/banners/BannerSize;->SMART_SIZE:Lcom/fyber/ads/banners/BannerSize;

    return-void
.end method

.method private constructor <init>(Lcom/fyber/ads/banners/BannerSize$Builder;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/fyber/ads/banners/BannerSize$Builder;->a(Lcom/fyber/ads/banners/BannerSize$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fyber/ads/banners/BannerSize;->width:I

    .line 27
    invoke-static {p1}, Lcom/fyber/ads/banners/BannerSize$Builder;->b(Lcom/fyber/ads/banners/BannerSize$Builder;)I

    move-result v0

    iput v0, p0, Lcom/fyber/ads/banners/BannerSize;->height:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/ads/banners/BannerSize$Builder;Lcom/fyber/ads/banners/BannerSize$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/fyber/ads/banners/BannerSize;-><init>(Lcom/fyber/ads/banners/BannerSize$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_3
    check-cast p1, Lcom/fyber/ads/banners/BannerSize;

    .line 105
    iget v2, p0, Lcom/fyber/ads/banners/BannerSize;->width:I

    iget v3, p1, Lcom/fyber/ads/banners/BannerSize;->width:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_4
    iget v2, p0, Lcom/fyber/ads/banners/BannerSize;->height:I

    iget v3, p1, Lcom/fyber/ads/banners/BannerSize;->height:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fyber/ads/banners/BannerSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fyber/ads/banners/BannerSize;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/fyber/ads/banners/BannerSize;->width:I

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/fyber/ads/banners/BannerSize;->height:I

    add-int/2addr v0, v1

    .line 116
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 123
    iget v0, p0, Lcom/fyber/ads/banners/BannerSize;->width:I

    if-ne v0, v3, :cond_0

    .line 124
    const-string v0, "full_width "

    .line 131
    :goto_0
    iget v1, p0, Lcom/fyber/ads/banners/BannerSize;->height:I

    if-ne v1, v3, :cond_2

    .line 132
    const-string v1, " full_height"

    .line 139
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    iget v0, p0, Lcom/fyber/ads/banners/BannerSize;->width:I

    if-ne v0, v2, :cond_1

    .line 126
    const-string v0, "smart_width "

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcom/fyber/ads/banners/BannerSize;->width:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/fyber/ads/banners/BannerSize;->height:I

    if-ne v1, v2, :cond_3

    .line 134
    const-string v1, " smart_height"

    goto :goto_1

    .line 136
    :cond_3
    iget v1, p0, Lcom/fyber/ads/banners/BannerSize;->height:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
