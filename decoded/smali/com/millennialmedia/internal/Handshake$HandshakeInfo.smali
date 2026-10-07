.class public Lcom/millennialmedia/internal/Handshake$HandshakeInfo;
.super Ljava/lang/Object;
.source "Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandshakeInfo"
.end annotation


# instance fields
.field public volatile activePlaylistServerBaseUrl:Ljava/lang/String;

.field public volatile activePlaylistServerName:Ljava/lang/String;

.field public volatile clientMediationTimeout:I

.field public volatile config:Ljava/lang/String;

.field public volatile exchangeTimeout:I

.field public volatile handshakeBaseUrl:Ljava/lang/String;

.field public volatile handshakeTtl:I

.field public volatile inlineTimeout:I

.field public volatile interstitialExpirationDuration:I

.field public volatile interstitialTimeout:I

.field public volatile minInlineRefreshRate:I

.field public volatile nativeExpirationDuration:I

.field public volatile nativeTimeout:I

.field public volatile nativeTypeDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/internal/Handshake$NativeTypeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field public volatile reportingBaseUrl:Ljava/lang/String;

.field public volatile reportingBatchFrequency:I

.field public volatile reportingBatchSize:I

.field public volatile sdkEnabled:Z

.field public volatile serverToServerTimeout:I

.field public volatile vastVideoSkipOffsetMax:I

.field public volatile vastVideoSkipOffsetMin:I

.field public volatile version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/internal/Handshake$HandshakeInfo;->sdkEnabled:Z

    return-void
.end method
