.class public Lcom/fyber/mediation/adcolony/rv/VideoProxyActivity;
.super Landroid/app/Activity;
.source "VideoProxyActivity.java"


# instance fields
.field private shouldStartAd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/rv/VideoProxyActivity;->shouldStartAd:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/rv/VideoProxyActivity;->shouldStartAd:Z

    .line 18
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 37
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 24
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 26
    iget-boolean v0, p0, Lcom/fyber/mediation/adcolony/rv/VideoProxyActivity;->shouldStartAd:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/rv/VideoProxyActivity;->shouldStartAd:Z

    .line 28
    sget-object v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show()V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/VideoProxyActivity;->finish()V

    goto :goto_0
.end method
