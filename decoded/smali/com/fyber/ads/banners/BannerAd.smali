.class public Lcom/fyber/ads/banners/BannerAd;
.super Lcom/fyber/ads/Ad;
.source "BannerAd.java"

# interfaces
.implements Lcom/fyber/ads/banners/mediation/BannerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/ads/banners/BannerAd$a;
    }
.end annotation


# static fields
.field public static final POSITION_BOTTOM:I = 0x50

.field public static final POSITION_TOP:I = 0x30


# instance fields
.field protected a:Landroid/view/ViewGroup;

.field protected b:Lcom/fyber/ads/banners/BannerAdListener;

.field private final c:Lcom/fyber/ads/banners/a/c;

.field private d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Landroid/widget/FrameLayout;

.field private g:I


# direct methods
.method private constructor <init>(Lcom/fyber/ads/banners/BannerAd$a;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fyber/ads/Ad;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    const/16 v0, 0x50

    iput v0, p0, Lcom/fyber/ads/banners/BannerAd;->g:I

    .line 55
    iget-object v0, p1, Lcom/fyber/ads/banners/BannerAd$a;->a:Lcom/fyber/ads/banners/a/c;

    iput-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    .line 56
    iget-object v0, p1, Lcom/fyber/ads/banners/BannerAd$a;->b:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    iput-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    .line 57
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->setBannerEventListener(Lcom/fyber/ads/banners/mediation/BannerEventListener;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/ads/banners/BannerAd$a;B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/fyber/ads/banners/BannerAd;-><init>(Lcom/fyber/ads/banners/BannerAd$a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/banners/BannerAd;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/banners/BannerAd;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAd;->f:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    const-string v0, "BannerAd"

    invoke-static {v0, p1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    const-string v1, "The \"destroy()\" method appears to have been already called"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/banners/BannerAd;->onBannerError(Landroid/view/View;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method static synthetic b(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    return-object v0
.end method

.method static synthetic c(Lcom/fyber/ads/banners/BannerAd;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fyber/ads/banners/BannerAd;->g:I

    return v0
.end method

.method static synthetic d(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/a/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    return-object v0
.end method

.method static synthetic e(Lcom/fyber/ads/banners/BannerAd;)Lcom/fyber/ads/banners/mediation/BannerWrapper;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    return-object v0
.end method


# virtual methods
.method public canStart()Z
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/fyber/ads/banners/a/a;->a()Lcom/fyber/ads/banners/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/d;

    invoke-direct {v0, p0}, Lcom/fyber/ads/banners/d;-><init>(Lcom/fyber/ads/banners/BannerAd;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/c;)V

    .line 230
    const-string v0, "BannerAd"

    const-string v1, "\"destroy()\" has been called on this BannerAd instance"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "\"destroy()\" was already called on this BannerAd instance"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displayAtBottom()Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->withPosition(I)Lcom/fyber/ads/banners/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method public displayAtTop()Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->withPosition(I)Lcom/fyber/ads/banners/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method public displayInView(Landroid/view/ViewGroup;)Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->a(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-object p0

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAd;->a:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getAdFormat()Lcom/fyber/ads/AdFormat;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/fyber/ads/AdFormat;->BANNER:Lcom/fyber/ads/AdFormat;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/a;

    invoke-direct {v0, p0}, Lcom/fyber/ads/banners/a;-><init>(Lcom/fyber/ads/banners/BannerAd;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/c;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBannerClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    sget-object v1, Lcom/fyber/ads/a/a;->h:Lcom/fyber/ads/a/a;

    invoke-static {v0, v1}, Lcom/fyber/b/e;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 268
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fyber/ads/banners/BannerAdListener;->onAdClicked(Lcom/fyber/ads/banners/BannerAd;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onBannerError(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    sget-object v1, Lcom/fyber/ads/a/a;->j:Lcom/fyber/ads/a/a;

    invoke-static {v0, v1}, Lcom/fyber/b/e;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;)V

    .line 276
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p0, p2}, Lcom/fyber/ads/banners/BannerAdListener;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    .line 279
    :cond_0
    return-void
.end method

.method public onBannerLeftApplication(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fyber/ads/banners/BannerAdListener;->onAdLeftApplication(Lcom/fyber/ads/banners/BannerAd;)V

    .line 286
    :cond_0
    return-void
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    sget-object v1, Lcom/fyber/ads/a/a;->g:Lcom/fyber/ads/a/a;

    const-string v2, "position"

    iget-object v3, p0, Lcom/fyber/ads/banners/BannerAd;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 258
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 257
    invoke-static {v0, v1, v2}, Lcom/fyber/b/e;->a(Lcom/fyber/ads/a/b;Lcom/fyber/ads/a/a;Ljava/util/Map;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p0}, Lcom/fyber/ads/banners/BannerAdListener;->onAdLoaded(Lcom/fyber/ads/banners/BannerAd;)V

    .line 263
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/b;

    invoke-direct {v0, p0}, Lcom/fyber/ads/banners/b;-><init>(Lcom/fyber/ads/banners/BannerAd;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/c;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "There\'s no BannerWrapper for this BannerAd - this banner will not be shown"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->a(Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/fyber/ads/banners/a/a;->a()Lcom/fyber/ads/banners/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Lcom/fyber/ads/banners/a/b;->d:Lcom/fyber/ads/banners/a/b;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/banners/a/b;)Z

    .line 173
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/c;

    invoke-direct {v0, p0, p1}, Lcom/fyber/ads/banners/c;-><init>(Lcom/fyber/ads/banners/BannerAd;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/c;)V

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x0

    const-string v1, "A banner is already being displayed"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/banners/BannerAd;->onBannerError(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public withListener(Lcom/fyber/ads/banners/BannerAdListener;)Lcom/fyber/ads/banners/BannerAd;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAd;->b:Lcom/fyber/ads/banners/BannerAdListener;

    .line 68
    return-object p0
.end method

.method public withPosition(I)Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->d:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-nez v0, :cond_1

    .line 94
    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->a(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-object p0

    .line 97
    :cond_1
    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 98
    :cond_2
    iput p1, p0, Lcom/fyber/ads/banners/BannerAd;->g:I

    goto :goto_0
.end method
