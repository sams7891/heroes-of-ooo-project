.class Lcom/inmobi/ads/n;
.super Lcom/inmobi/ads/AdUnit;
.source "InterstitialAdUnit.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    .line 27
    iput v0, p0, Lcom/inmobi/ads/n;->b:I

    .line 28
    iput-boolean v0, p0, Lcom/inmobi/ads/n;->c:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/n;->d:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/n;->e:J

    .line 34
    return-void
.end method


# virtual methods
.method A()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/n;->c:Z

    .line 136
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->p()V

    .line 139
    :cond_0
    return-void
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "int"

    return-object v0
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 104
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 106
    iput p1, p0, Lcom/inmobi/ads/n;->d:I

    .line 107
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->setFullScreenExitAnimation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->x()V

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    const-string v3, "The supplied resource id with show for animations is invalid"

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)V

    .line 159
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->b(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 169
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->u()V

    .line 171
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 172
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->w()V

    .line 174
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->a()V

    .line 175
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->r()V

    .line 177
    :cond_0
    return-void
.end method

.method public b(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/rendering/RenderView;)V

    .line 192
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->u()V

    .line 194
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 195
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 197
    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 183
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 184
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->FULL_SCREEN:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    return-object v0
.end method

.method protected e()Ljava/util/Map;
    .locals 3
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
    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v2, "preload-request"

    invoke-virtual {p0}, Lcom/inmobi/ads/n;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object v1

    .line 69
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized e(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 205
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_2

    .line 206
    iget v0, p0, Lcom/inmobi/ads/n;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/n;->b:I

    .line 207
    iget v0, p0, Lcom/inmobi/ads/n;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_1
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 212
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 213
    iget v0, p0, Lcom/inmobi/ads/n;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/n;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized f(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 221
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 222
    iget v0, p0, Lcom/inmobi/ads/n;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/n;->b:I

    .line 223
    iget v0, p0, Lcom/inmobi/ads/n;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 227
    iget v0, p0, Lcom/inmobi/ads/n;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/n;->b:I

    .line 228
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/n;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "IntClosed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->c()V

    .line 235
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 46
    iget-wide v0, p0, Lcom/inmobi/ads/n;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->f()I

    move-result v0

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/n;->e:J

    sub-long/2addr v2, v4

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 49
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad cannot be refreshed before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 50
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad cannot be refreshed before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 55
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v6}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 56
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/n;->e:J

    .line 62
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()V

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->q()V

    .line 39
    iget-boolean v0, p0, Lcom/inmobi/ads/n;->c:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->p()V

    .line 42
    :cond_0
    return-void
.end method

.method protected t()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/n;->d:I

    .line 77
    return-void
.end method

.method protected v()V
    .locals 3

    .prologue
    .line 241
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    const-string v2, "Renderview timed out."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->c(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 245
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 246
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 248
    :cond_0
    return-void
.end method

.method public x()V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->j()Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    const-string v2, "impId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "ShowInt"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->z()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    const-string v2, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "ShowIntBeforeReady"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->d(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 96
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 98
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->y()V

    goto :goto_0
.end method

.method y()V
    .locals 4

    .prologue
    .line 116
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to display interstitial ad ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/RenderView;)I

    move-result v0

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/ads/n;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_RENDERVIEW_INDEX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->f()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/n;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->f()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/inmobi/ads/n;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 127
    :cond_0
    return-void
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
