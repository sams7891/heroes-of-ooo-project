.class public Lcom/millennialmedia/NativeAd$NativeErrorStatus;
.super Lcom/millennialmedia/internal/ErrorStatus;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeErrorStatus"
.end annotation


# static fields
.field public static final EXPIRED:I = 0x12d


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 193
    sget-object v0, Lcom/millennialmedia/NativeAd$NativeErrorStatus;->errorCodes:Ljava/util/Map;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EXPIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(I)V

    .line 200
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/internal/ErrorStatus;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method
