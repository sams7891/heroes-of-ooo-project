.class public Lcom/millennialmedia/internal/video/VASTParser$Button;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Button"
.end annotation


# instance fields
.field public buttonClicks:Lcom/millennialmedia/internal/video/VASTParser$ButtonClicks;

.field public name:Ljava/lang/String;

.field public offset:Ljava/lang/String;

.field public position:I

.field public staticResource:Lcom/millennialmedia/internal/video/VASTParser$StaticResource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$Button;->name:Ljava/lang/String;

    .line 350
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$Button;->offset:Ljava/lang/String;

    .line 351
    iput p3, p0, Lcom/millennialmedia/internal/video/VASTParser$Button;->position:I

    .line 352
    return-void
.end method
