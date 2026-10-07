.class public Lcom/millennialmedia/internal/video/VASTParser$Background;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Background"
.end annotation


# instance fields
.field public hideButtons:Z

.field public staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;

.field public webResource:Lcom/millennialmedia/internal/video/VASTParser$WebResource;


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "hideButtons"    # Z

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-boolean p1, p0, Lcom/millennialmedia/internal/video/VASTParser$Background;->hideButtons:Z

    .line 380
    return-void
.end method
