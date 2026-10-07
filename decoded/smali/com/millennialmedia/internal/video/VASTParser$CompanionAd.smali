.class public Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompanionAd"
.end annotation


# instance fields
.field public assetHeight:I

.field public assetWidth:I

.field public companionClickThrough:Ljava/lang/String;

.field public companionClickTracking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public hideButtons:Z

.field public htmlResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

.field public id:Ljava/lang/String;

.field public iframeResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;

.field public staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

.field public trackingEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackableEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$TrackingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public width:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "assetWidth"    # I
    .param p5, "assetHeight"    # I
    .param p6, "hideButtons"    # Z

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->id:Ljava/lang/String;

    .line 269
    iput p2, p0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->width:I

    .line 270
    iput p3, p0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->height:I

    .line 271
    iput p4, p0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->assetWidth:I

    .line 272
    iput p5, p0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->assetHeight:I

    .line 273
    iput-boolean p6, p0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->hideButtons:Z

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/video/VASTParser$CompanionAd;->companionClickTracking:Ljava/util/List;

    .line 275
    return-void
.end method
