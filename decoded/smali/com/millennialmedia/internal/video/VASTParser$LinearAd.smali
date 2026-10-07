.class public Lcom/millennialmedia/internal/video/VASTParser$LinearAd;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearAd"
.end annotation


# instance fields
.field public mediaFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field public skipOffset:Ljava/lang/String;

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

.field public videoClicks:Lcom/millennialmedia/internal/video/VASTParser$VideoClicks;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipOffset"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$LinearAd;->skipOffset:Ljava/lang/String;

    .line 97
    return-void
.end method
