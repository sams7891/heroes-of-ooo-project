.class public Lcom/millennialmedia/internal/video/VASTParser$StaticResource;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticResource"
.end annotation


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field public creativeType:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "creativeType"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->backgroundColor:Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->creativeType:Ljava/lang/String;

    .line 291
    iput-object p3, p0, Lcom/millennialmedia/internal/video/VASTParser$StaticResource;->uri:Ljava/lang/String;

    .line 292
    return-void
.end method
