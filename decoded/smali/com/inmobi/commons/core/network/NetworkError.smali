.class public Lcom/inmobi/commons/core/network/NetworkError;
.super Ljava/lang/Object;
.source "NetworkError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;
    }
.end annotation


# instance fields
.field private a:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/inmobi/commons/core/network/NetworkError;->a:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    .line 56
    iput-object p2, p0, Lcom/inmobi/commons/core/network/NetworkError;->b:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkError;->a:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkError;->b:Ljava/lang/String;

    return-object v0
.end method
