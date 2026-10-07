.class public Lcom/millennialmedia/InlineAd$InlineErrorStatus;
.super Lcom/millennialmedia/internal/ErrorStatus;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineErrorStatus"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(I)V

    .line 170
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(ILjava/lang/String;)V

    .line 176
    return-void
.end method
