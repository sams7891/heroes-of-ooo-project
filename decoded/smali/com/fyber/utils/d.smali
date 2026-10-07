.class public final Lcom/fyber/utils/d;
.super Ljava/lang/Object;
.source "FyberBaseUrlProvider.java"


# static fields
.field private static a:Lcom/fyber/utils/d;


# instance fields
.field private b:Lcom/fyber/utils/u;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/fyber/utils/d;

    invoke-direct {v0}, Lcom/fyber/utils/d;-><init>()V

    sput-object v0, Lcom/fyber/utils/d;->a:Lcom/fyber/utils/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/fyber/utils/e;

    invoke-direct {v0, p0}, Lcom/fyber/utils/e;-><init>(Lcom/fyber/utils/d;)V

    iput-object v0, p0, Lcom/fyber/utils/d;->c:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    sget-object v1, Lcom/fyber/utils/d;->a:Lcom/fyber/utils/d;

    .line 1040
    const/4 v0, 0x0

    .line 1041
    iget-object v2, v1, Lcom/fyber/utils/d;->b:Lcom/fyber/utils/u;

    if-eqz v2, :cond_0

    .line 1042
    iget-object v0, v1, Lcom/fyber/utils/d;->b:Lcom/fyber/utils/u;

    invoke-interface {v0}, Lcom/fyber/utils/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 1044
    :cond_0
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1045
    iget-object v0, v1, Lcom/fyber/utils/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    :cond_1
    return-object v0
.end method
