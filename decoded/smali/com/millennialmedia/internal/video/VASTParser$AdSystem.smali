.class public Lcom/millennialmedia/internal/video/VASTParser$AdSystem;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdSystem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$AdSystem;->name:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$AdSystem;->version:Ljava/lang/String;

    .line 66
    return-void
.end method
