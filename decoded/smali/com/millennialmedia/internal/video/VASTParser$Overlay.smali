.class public Lcom/millennialmedia/internal/video/VASTParser$Overlay;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Overlay"
.end annotation


# instance fields
.field public hideButtons:Z

.field public uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "hideButtons"    # Z

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->uri:Ljava/lang/String;

    .line 333
    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/VASTParser$Overlay;->hideButtons:Z

    .line 334
    return-void
.end method
