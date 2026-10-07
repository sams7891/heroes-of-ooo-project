.class public final Lcom/fyber/ads/interstitials/c;
.super Ljava/lang/Object;
.source "InterstitialClient.java"


# static fields
.field public static final a:Lcom/fyber/ads/interstitials/c;


# instance fields
.field private b:Ljava/util/Map;
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

.field private c:Lcom/fyber/ads/interstitials/e;

.field private d:Lcom/fyber/ads/interstitials/a;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/fyber/ads/interstitials/b;

.field private h:Lcom/fyber/requesters/RequestCallback;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/fyber/ads/interstitials/c;

    invoke-direct {v0}, Lcom/fyber/ads/interstitials/c;-><init>()V

    sput-object v0, Lcom/fyber/ads/interstitials/c;->a:Lcom/fyber/ads/interstitials/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    .line 73
    return-void
.end method

.method private a(Lcom/fyber/ads/interstitials/e;)V
    .locals 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    .line 156
    sget-object v0, Lcom/fyber/ads/interstitials/d;->a:[I

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v1}, Lcom/fyber/ads/interstitials/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public final a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    if-eqz p1, :cond_1

    .line 269
    invoke-static {p1, p2}, Lcom/fyber/b/k;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 273
    :goto_0
    sget-object v0, Lcom/fyber/ads/interstitials/d;->b:[I

    invoke-virtual {p2}, Lcom/fyber/ads/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 297
    :cond_0
    :goto_1
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/fyber/b/k;->a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    goto :goto_0

    .line 275
    :pswitch_0
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 276
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdClosed(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    goto :goto_1

    .line 281
    :pswitch_1
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 282
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    sget-object v1, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-interface {v0, v1}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdClosed(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    goto :goto_1

    .line 287
    :pswitch_2
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 288
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    invoke-interface {v0, p3}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdError(Ljava/lang/String;)V

    .line 292
    :cond_2
    :pswitch_3
    const-string v0, "InterstitialClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred. Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/fyber/ads/interstitials/a;)V
    .locals 4

    .prologue
    .line 189
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    sget-object v1, Lcom/fyber/ads/a/a;->b:Lcom/fyber/ads/a/a;

    invoke-static {v0, v1}, Lcom/fyber/b/k;->a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 192
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->d:Lcom/fyber/ads/interstitials/a;

    .line 193
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    const-class v3, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    .line 196
    :cond_0
    sget-object v0, Lcom/fyber/ads/interstitials/e;->d:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 207
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    sget-object v1, Lcom/fyber/ads/a/a;->c:Lcom/fyber/ads/a/a;

    invoke-static {v0, v1}, Lcom/fyber/b/k;->a(Ljava/lang/String;Lcom/fyber/ads/a/a;)V

    .line 201
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    .line 204
    :cond_2
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    goto :goto_0
.end method

.method public final a(Lcom/fyber/ads/interstitials/b;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    .line 314
    return-void
.end method

.method public final a(Lcom/fyber/requesters/RequestCallback;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    .line 306
    return-void
.end method

.method public final a(Lcom/fyber/requesters/RequestError;)V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 176
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->h:Lcom/fyber/requesters/RequestCallback;

    invoke-interface {v0, p1}, Lcom/fyber/requesters/RequestCallback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 179
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/fyber/ads/interstitials/e;->c:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 171
    invoke-static {p1}, Lcom/fyber/b/i;->a(Ljava/util/List;)V

    .line 172
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->c()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->d:Lcom/fyber/ads/interstitials/a;

    invoke-virtual {v0, p1, v1}, Lcom/fyber/mediation/d;->a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    .line 233
    if-eqz v0, :cond_1

    .line 234
    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->g:Lcom/fyber/ads/interstitials/b;

    invoke-interface {v1}, Lcom/fyber/ads/interstitials/b;->onInterstitialAdShown()V

    .line 237
    :cond_0
    sget-object v1, Lcom/fyber/ads/interstitials/e;->e:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v1}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 241
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 85
    .line 1109
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->c()Z

    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 2097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->d:Lcom/fyber/ads/interstitials/a;

    .line 2098
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    .line 2099
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    .line 2100
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/ads/interstitials/c;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/fyber/b/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2101
    sget-object v0, Lcom/fyber/ads/interstitials/e;->b:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 87
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    .line 89
    :cond_0
    const-string v0, "InterstitialClient"

    const-string v1, "FybInterstitialClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 143
    .line 3113
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->b()Z

    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->i:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 146
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 148
    :cond_0
    const-string v0, "InterstitialClient"

    const-string v1, "Cannot change the placement ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .line 2113
    iget-object v0, p0, Lcom/fyber/ads/interstitials/c;->c:Lcom/fyber/ads/interstitials/e;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/e;->b()Z

    move-result v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/fyber/ads/interstitials/c;->b:Ljava/util/Map;

    .line 127
    sget-object v0, Lcom/fyber/ads/interstitials/e;->a:Lcom/fyber/ads/interstitials/e;

    invoke-direct {p0, v0}, Lcom/fyber/ads/interstitials/c;->a(Lcom/fyber/ads/interstitials/e;)V

    .line 128
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 130
    :cond_0
    const-string v0, "InterstitialClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/fyber/ads/interstitials/a;)Z
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/fyber/mediation/d;->a:Lcom/fyber/mediation/d;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/c;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/mediation/d;->a(Landroid/content/Context;Lcom/fyber/ads/interstitials/a;)Z

    move-result v0

    return v0
.end method
