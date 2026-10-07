.class final Lcom/fyber/ads/videos/q;
.super Landroid/webkit/WebChromeClient;
.source "RewardedVideoClient.java"


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/d;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 814
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js alert - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js alert - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->t(Lcom/fyber/ads/videos/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0, v4}, Lcom/fyber/ads/videos/d;->a(Lcom/fyber/ads/videos/d;Z)Z

    .line 1824
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->j(Lcom/fyber/ads/videos/d;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1825
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_FORFEIT_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/s;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "OK"

    new-instance v3, Lcom/fyber/ads/videos/t;

    invoke-direct {v3, p0}, Lcom/fyber/ads/videos/t;-><init>(Lcom/fyber/ads/videos/q;)V

    .line 1826
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Cancel"

    new-instance v3, Lcom/fyber/ads/videos/s;

    invoke-direct {v3, p0}, Lcom/fyber/ads/videos/s;-><init>(Lcom/fyber/ads/videos/q;)V

    .line 1832
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/fyber/ads/videos/r;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/r;-><init>(Lcom/fyber/ads/videos/q;)V

    .line 1837
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1843
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 816
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 817
    return v4

    .line 1824
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/q;->a:Lcom/fyber/ads/videos/d;

    invoke-static {v0}, Lcom/fyber/ads/videos/d;->q(Lcom/fyber/ads/videos/d;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    goto :goto_0
.end method
