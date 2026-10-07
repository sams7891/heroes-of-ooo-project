.class abstract Lcom/inmobi/ads/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/inmobi/ads/g$a;
.implements Lcom/inmobi/commons/core/configs/b$b;
.implements Lcom/inmobi/rendering/RenderView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/AdUnit$AdState;,
        Lcom/inmobi/ads/AdUnit$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/AdUnit$AdState;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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

.field private g:Lcom/inmobi/ads/b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Z

.field private l:Lcom/inmobi/ads/AdUnit$a;

.field private m:Lcom/inmobi/rendering/RenderView;

.field private n:Lcom/inmobi/ads/r;

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->k:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->p:J

    .line 89
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->c:Landroid/content/Context;

    .line 90
    iput-wide p2, p0, Lcom/inmobi/ads/AdUnit;->d:J

    .line 91
    iput-object p4, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/AdUnit$a;

    .line 92
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->x()V

    .line 93
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 94
    return-void
.end method

.method private x()V
    .locals 3

    .prologue
    .line 298
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    .line 299
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/configs/f;

    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/f;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 300
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 302
    new-instance v0, Lcom/inmobi/ads/r;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/r;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/r;

    .line 305
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 306
    return-void
.end method

.method private y()Lcom/inmobi/ads/h;
    .locals 4

    .prologue
    .line 313
    new-instance v0, Lcom/inmobi/ads/h;

    invoke-direct {v0}, Lcom/inmobi/ads/h;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->b(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Ljava/util/Map;)V

    .line 316
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/h;->a(J)V

    .line 317
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->c(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/b;->a(Ljava/lang/String;)Lcom/inmobi/ads/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/b$a;)V

    .line 319
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->b(Ljava/util/Map;)V

    .line 320
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->d(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(I)V

    .line 323
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->e(Ljava/lang/String;)V

    .line 325
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/d;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->o()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 326
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/commons/core/utilities/uid/d;)V

    .line 327
    return-object v0
.end method

.method private z()V
    .locals 4

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->u()V

    .line 414
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/r;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->j()Lcom/inmobi/ads/b$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$e;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/r;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Lcom/inmobi/ads/AdUnit$AdState;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    .line 136
    return-void
.end method

.method final a(Lcom/inmobi/ads/AdUnit$a;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/AdUnit$a;

    .line 148
    return-void
.end method

.method public a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4

    .prologue
    .line 196
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad fetch failed. Status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 200
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_0

    .line 201
    const-string v0, "InternalError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method protected a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 207
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 212
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 213
    const-string v0, "NoFill"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 215
    const-string v0, "ServerError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 217
    const-string v0, "NetworkUnreachable"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 219
    const-string v0, "AdActive"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_6

    .line 221
    const-string v0, "RequestPending"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_6
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_7

    .line 223
    const-string v0, "RequestInvalid"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_7
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_8

    .line 225
    const-string v0, "RequestTimedOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 227
    const-string v0, "EarlyRefreshRequest"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Ad fetch successful"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v0, "ParsingFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/h;)V
    .locals 2

    .prologue
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->o:J

    .line 332
    new-instance v0, Lcom/inmobi/ads/g;

    invoke-direct {v0, p1, p0}, Lcom/inmobi/ads/g;-><init>(Lcom/inmobi/ads/h;Lcom/inmobi/ads/g$a;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/g;->a()V

    .line 333
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 3

    .prologue
    .line 83
    check-cast p1, Lcom/inmobi/ads/b;

    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    .line 84
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    return-void
.end method

.method public a(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 352
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Render view signaled ad ready"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public a(Lcom/inmobi/rendering/RenderView;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/rendering/RenderView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad reward action completed. Params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/inmobi/ads/AdUnit$a;->b(Ljava/util/Map;)V

    .line 398
    return-void

    .line 396
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/util/Map;

    .line 239
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/inmobi/ads/AdUnit;->k:Z

    .line 275
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "json"

    return-object v0
.end method

.method public b(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Render view signaled ad failed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "RenderFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public b(Lcom/inmobi/rendering/RenderView;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/rendering/RenderView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad interaction. Params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/inmobi/ads/AdUnit$a;->a(Ljava/util/Map;)V

    .line 404
    return-void

    .line 402
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->p:J

    .line 288
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->z()V

    .line 290
    return-void
.end method

.method public b(Lcom/inmobi/ads/a;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 155
    const-string v1, "pubContent"

    .line 159
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->d()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/AdUnit;->j:J

    .line 162
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 163
    new-instance v2, Ljava/lang/String;

    const-string v3, "pubContent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    const-string v2, "@__imm_aft@"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/inmobi/ads/AdUnit;->o:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    const/4 v0, 0x1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v4, "Exception while parsing received ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 171
    :catch_1
    move-exception v1

    .line 172
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v4, "Invalid Base64 encoding in received ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 363
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "RenderView completed loading ad content"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 440
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderTimeOut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    const-string v1, "renderLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->p:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdLoadFailed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 448
    return-void
.end method

.method protected abstract d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
.end method

.method public d(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 368
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Renderview visible"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 452
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdShowFailed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 457
    return-void
.end method

.method protected e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 374
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Ad displayed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method protected f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->c:Landroid/content/Context;

    return-object v0
.end method

.method public f(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 379
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Ad dismissed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public g()Lcom/inmobi/ads/AdUnit$AdState;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    return-object v0
.end method

.method public g(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 408
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "User left application"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->d()V

    .line 410
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    return-object v0
.end method

.method i()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->j:J

    return-wide v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/lang/String;

    .line 132
    return-void
.end method

.method protected final l()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/b;

    return-object v0
.end method

.method protected final m()Lcom/inmobi/ads/AdUnit$a;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/AdUnit$a;

    return-object v0
.end method

.method protected final n()Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdLoadRequested"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    invoke-static {}, Lcom/inmobi/commons/core/utilities/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 271
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_2

    .line 252
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v4}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 253
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_3

    .line 258
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v4}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 259
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 265
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->b:Lcom/inmobi/ads/AdUnit$AdState;

    .line 267
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->i()V

    .line 268
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()V

    .line 269
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->s()V

    .line 270
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->y()Lcom/inmobi/ads/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/h;)V

    goto :goto_0
.end method

.method protected p()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->k:Z

    return v0
.end method

.method protected q()V
    .locals 4

    .prologue
    .line 282
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/rendering/RenderingProperties;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/rendering/RenderingProperties;-><init>(Lcom/inmobi/rendering/RenderingProperties$PlacementType;)V

    invoke-direct {v0, v1, v2}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderingProperties;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    .line 283
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->j()Lcom/inmobi/ads/b$e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->l()Lcom/inmobi/ads/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->k()Lcom/inmobi/ads/b$c;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$b;Lcom/inmobi/ads/b$e;Lcom/inmobi/ads/b$c;)V

    .line 284
    return-void
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Lcom/inmobi/rendering/RenderView;

    const-string v1, "inmobi.recordEvent(120,null);"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method s()V
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/c;->e()V

    .line 310
    return-void
.end method

.method protected t()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 340
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->removeAllViews()V

    .line 341
    if-eqz v0, :cond_0

    .line 344
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 346
    :cond_0
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->destroy()V

    .line 348
    :cond_1
    return-void
.end method

.method protected u()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/r;->removeMessages(I)V

    .line 419
    return-void
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 422
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->a:Ljava/lang/String;

    const-string v2, "Renderview timed out."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 426
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 427
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 429
    :cond_0
    return-void
.end method

.method protected w()V
    .locals 6

    .prologue
    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 433
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v1, "renderLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->p:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdLoadSuccessful"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 436
    return-void
.end method
