.class public Lcom/globalfun/adventuretime/free/UtilsAndroid;
.super Ljava/lang/Object;
.source "UtilsAndroid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ShareGeneric(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    const-string v1, "android.intent.extra.SUBJECT"

    sget-object v2, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    invoke-virtual {v2}, Lcom/globalfun/adventuretime/free/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    sget-object v1, Lcom/globalfun/adventuretime/free/Main;->midlet:Lcom/globalfun/adventuretime/free/Main;

    const-string v2, "Share"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/globalfun/adventuretime/free/Main;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method static onEndSessionFlurry(Landroid/app/Activity;)V
    .locals 0
    .param p0, "main"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static onStartSessionFlurry(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "main"    # Landroid/app/Activity;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static sendFlurry(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static sendFlurryParams(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "f"    # Ljava/util/Map;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    return-void
.end method
