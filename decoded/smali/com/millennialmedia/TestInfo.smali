.class public Lcom/millennialmedia/TestInfo;
.super Ljava/lang/Object;
.source "TestInfo.java"


# instance fields
.field public bidder:Ljava/lang/String;

.field public creativeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/millennialmedia/MMSDK;->initialized:Z

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create TestInfo instance, SDK must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public setBidder(Ljava/lang/String;)V
    .locals 0
    .param p1, "bidder"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/millennialmedia/TestInfo;->bidder:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "creativeId"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/millennialmedia/TestInfo;->creativeId:Ljava/lang/String;

    .line 49
    return-void
.end method
