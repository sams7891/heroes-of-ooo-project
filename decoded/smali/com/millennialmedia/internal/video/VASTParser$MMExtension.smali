.class public Lcom/millennialmedia/internal/video/VASTParser$MMExtension;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MMExtension"
.end annotation


# instance fields
.field public background:Lcom/millennialmedia/internal/video/VASTParser$Background;

.field public buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$Button;",
            ">;"
        }
    .end annotation
.end field

.field public overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/VASTParser$Overlay;Lcom/millennialmedia/internal/video/VASTParser$Background;Ljava/util/List;)V
    .locals 0
    .param p1, "overlay"    # Lcom/millennialmedia/internal/video/VASTParser$Overlay;
    .param p2, "background"    # Lcom/millennialmedia/internal/video/VASTParser$Background;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/internal/video/VASTParser$Overlay;",
            "Lcom/millennialmedia/internal/video/VASTParser$Background;",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/video/VASTParser$Button;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/internal/video/VASTParser$Button;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->overlay:Lcom/millennialmedia/internal/video/VASTParser$Overlay;

    .line 318
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->background:Lcom/millennialmedia/internal/video/VASTParser$Background;

    .line 319
    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTParser$MMExtension;->buttons:Ljava/util/List;

    .line 320
    return-void
.end method
