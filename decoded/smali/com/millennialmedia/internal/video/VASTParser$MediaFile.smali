.class public Lcom/millennialmedia/internal/video/VASTParser$MediaFile;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFile"
.end annotation


# instance fields
.field public bitrate:I

.field public contentType:Ljava/lang/String;

.field public delivery:Ljava/lang/String;

.field public height:I

.field public maintainAspectRatio:Z

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "delivery"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "bitrate"    # I
    .param p7, "maintainAspectRatio"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->url:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->contentType:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->delivery:Ljava/lang/String;

    .line 118
    iput p4, p0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->width:I

    .line 119
    iput p5, p0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->height:I

    .line 120
    iput p6, p0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->bitrate:I

    .line 121
    iput-boolean p7, p0, Lcom/millennialmedia/internal/video/VASTParser$MediaFile;->maintainAspectRatio:Z

    .line 122
    return-void
.end method
