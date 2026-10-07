.class public Lcom/millennialmedia/internal/video/VASTParser$WrapperAd;
.super Lcom/millennialmedia/internal/video/VASTParser$Ad;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperAd"
.end annotation


# instance fields
.field public adTagURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/millennialmedia/internal/video/VASTParser$Ad;-><init>()V

    return-void
.end method
