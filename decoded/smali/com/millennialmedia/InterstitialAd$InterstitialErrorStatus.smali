.class public Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;
.super Lcom/millennialmedia/internal/ErrorStatus;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialErrorStatus"
.end annotation


# static fields
.field public static final ALREADY_LOADED:I = 0xcb

.field public static final EXPIRED:I = 0xc9

.field public static final NOT_LOADED:I = 0xca


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 143
    sget-object v0, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->errorCodes:Ljava/util/Map;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXPIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->errorCodes:Ljava/util/Map;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NOT_LOADED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/millennialmedia/InterstitialAd$InterstitialErrorStatus;->errorCodes:Ljava/util/Map;

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ALREADY_LOADED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(ILjava/lang/String;)V

    .line 152
    return-void
.end method
