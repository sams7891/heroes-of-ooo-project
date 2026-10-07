.class public abstract Lcom/fyber/ads/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canStart()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getAdFormat()Lcom/fyber/ads/AdFormat;
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method

.method public abstract start(Landroid/app/Activity;)V
.end method
