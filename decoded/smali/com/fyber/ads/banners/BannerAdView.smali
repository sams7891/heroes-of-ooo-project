.class public Lcom/fyber/ads/banners/BannerAdView;
.super Landroid/widget/FrameLayout;
.source "BannerAdView.java"

# interfaces
.implements Lcom/fyber/ads/banners/BannerAdListener;
.implements Lcom/fyber/requesters/AdRequestCallback;


# instance fields
.field private a:Lcom/fyber/requesters/BannerRequester;

.field private b:Z

.field private c:Landroid/app/Activity;

.field private d:Lcom/fyber/ads/banners/BannerAdListener;

.field private e:Lcom/fyber/ads/banners/BannerAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/banners/BannerAdView;->b:Z

    .line 37
    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    .line 38
    invoke-static {p0}, Lcom/fyber/requesters/BannerRequester;->create(Lcom/fyber/requesters/AdRequestCallback;)Lcom/fyber/requesters/BannerRequester;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyber/ads/banners/BannerAdView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/ads/banners/BannerAdView;->b:Z

    .line 47
    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    .line 48
    invoke-static {p0}, Lcom/fyber/requesters/BannerRequester;->create(Lcom/fyber/requesters/AdRequestCallback;)Lcom/fyber/requesters/BannerRequester;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    .line 49
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 133
    iput-object v2, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    .line 134
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->e:Lcom/fyber/ads/banners/BannerAd;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->e:Lcom/fyber/ads/banners/BannerAd;

    invoke-virtual {v0}, Lcom/fyber/ads/banners/BannerAd;->destroy()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v0, "BannerAdView"

    const-string v1, "This BannerAdView appears to have been already destroyed"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "The \"destroy()\" method appears to have been already called"

    invoke-virtual {p0, v2, v0}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public load()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-boolean v0, p0, Lcom/fyber/ads/banners/BannerAdView;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/BannerRequester;->request(Landroid/content/Context;)V

    .line 121
    iput-object v2, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "There\'s no BannerWrapper for this BannerAd - this banner will not be shown"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "The \"destroy()\" method appears to have been already called"

    invoke-virtual {p0, v2, v0}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadOnAttach()Lcom/fyber/ads/banners/BannerAdView;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/banners/BannerAdView;->b:Z

    .line 112
    :goto_0
    return-object p0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "BannerAdView"

    const-string v1, "This BannerAdView appears to be already displayed - this will have no effect on this instance"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "BannerAdView"

    const-string v1, "This BannerAdView appears to have been already destroyed"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    const-string v1, "The \"destroy()\" method appears to have been already called"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdAvailable(Lcom/fyber/ads/Ad;)V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/fyber/ads/Ad;->getAdFormat()Lcom/fyber/ads/AdFormat;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/AdFormat;->BANNER:Lcom/fyber/ads/AdFormat;

    if-ne v0, v1, :cond_0

    .line 159
    check-cast p1, Lcom/fyber/ads/banners/BannerAd;

    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAdView;->e:Lcom/fyber/ads/banners/BannerAd;

    .line 160
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->e:Lcom/fyber/ads/banners/BannerAd;

    invoke-virtual {v0, p0}, Lcom/fyber/ads/banners/BannerAd;->displayInView(Landroid/view/ViewGroup;)Lcom/fyber/ads/banners/BannerAd;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p0}, Lcom/fyber/ads/banners/BannerAd;->withListener(Lcom/fyber/ads/banners/BannerAdListener;)Lcom/fyber/ads/banners/BannerAd;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    .line 162
    invoke-virtual {v0, v1}, Lcom/fyber/ads/banners/BannerAd;->start(Landroid/app/Activity;)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "The ad received is not a Banner. \u00af\\_(\u30c4)_/\u00af "

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    const-string v1, "Error occurred while requesting a banner"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdClicked(Lcom/fyber/ads/banners/BannerAd;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/BannerAdListener;->onAdClicked(Lcom/fyber/ads/banners/BannerAd;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "onAdClicked was called"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p1, p2}, Lcom/fyber/ads/banners/BannerAdListener;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "onAdError was called"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdLeftApplication(Lcom/fyber/ads/banners/BannerAd;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/BannerAdListener;->onAdLeftApplication(Lcom/fyber/ads/banners/BannerAd;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "onAdLeftApplication was called"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdLoaded(Lcom/fyber/ads/banners/BannerAd;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/BannerAdListener;->onAdLoaded(Lcom/fyber/ads/banners/BannerAd;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "onAdLoaded was called"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    sget-object v0, Lcom/fyber/ads/AdFormat;->BANNER:Lcom/fyber/ads/AdFormat;

    if-ne p1, v0, :cond_0

    .line 172
    const-string v0, "No banner available"

    invoke-virtual {p0, v2, v0}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v0, "BannerAdView"

    const-string v1, "The ad received is not a Banner. \u00af\\_(\u30c4)_/\u00af "

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "Error occurred while requesting a banner"

    invoke-virtual {p0, v2, v0}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 149
    iget-boolean v0, p0, Lcom/fyber/ads/banners/BannerAdView;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/BannerRequester;->request(Landroid/content/Context;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    .line 153
    :cond_0
    return-void
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 3

    .prologue
    .line 181
    const-string v0, "BannerAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while requesting - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/requesters/RequestError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occurred while requesting a banner - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/requesters/RequestError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public withListener(Lcom/fyber/ads/banners/BannerAdListener;)Lcom/fyber/ads/banners/BannerAdView;
    .locals 0
    .param p1    # Lcom/fyber/ads/banners/BannerAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fyber/ads/banners/BannerAdView;->d:Lcom/fyber/ads/banners/BannerAdListener;

    .line 76
    return-object p0
.end method

.method public withNetworkSize(Lcom/fyber/ads/banners/NetworkBannerSize;)Lcom/fyber/ads/banners/BannerAdView;
    .locals 2
    .param p1    # Lcom/fyber/ads/banners/NetworkBannerSize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    invoke-virtual {v0, p1}, Lcom/fyber/requesters/BannerRequester;->withNetworkSize(Lcom/fyber/ads/banners/NetworkBannerSize;)Lcom/fyber/requesters/BannerRequester;

    .line 66
    :goto_0
    return-object p0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "BannerAdView"

    const-string v1, "This BannerAdView appears to be already displayed - this will have no effect on this instance"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "BannerAdView"

    const-string v1, "This BannerAdView appears to have been already destroyed"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    const-string v1, "The \"destroy()\" method appears to have been already called"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public withPlacementId(Ljava/lang/String;)Lcom/fyber/ads/banners/BannerAdView;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->a:Lcom/fyber/requesters/BannerRequester;

    invoke-virtual {v0, p1}, Lcom/fyber/requesters/BannerRequester;->withPlacementId(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    :goto_0
    return-object p0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAdView;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "BannerAdView"

    const-string v1, "This BannerAdView appears to be already displayed - this will have no effect on this instance"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    const-string v0, "BannerAdView"

    const-string v1, "This BannerAdView appears to have been already destroyed"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    const-string v1, "The \"destroy()\" method appears to have been already called"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/banners/BannerAdView;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    goto :goto_0
.end method
