.class public Lcom/millennialmedia/internal/MMIntentWrapperActivity;
.super Landroid/app/Activity;
.source "MMIntentWrapperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;,
        Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;
    }
.end annotation


# static fields
.field private static final INTENT_WRAPPER_STATE_KEY:Ljava/lang/String; = "intent_wrapper_state_id"

.field private static final ON_CREATE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    return-void
.end method

.method public static launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentToWrap"    # Landroid/content/Intent;
    .param p2, "intentWrapperListener"    # Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    .prologue
    const/4 v3, 0x0

    .line 60
    if-nez p2, :cond_0

    .line 61
    sget-object v3, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    const-string v4, "Unable to launch MMIntentWrapperActivity, provided MMIntentWrapperListener instance is null"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    invoke-direct {v0, p2, p1, v3}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;)V

    .line 68
    .local v0, "activityState":Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;
    invoke-static {v0, v3}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)I

    move-result v1

    .line 69
    .local v1, "activityStateCacheId":I
    if-nez v1, :cond_1

    .line 70
    const-string v3, "Unable to launch MMIntentWrapperActivity, failed to cache activity state"

    invoke-interface {p2, v3}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/millennialmedia/internal/MMIntentWrapperActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v2, "wrapperIntent":Landroid/content/Intent;
    const-string v3, "intent_wrapper_state_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    new-instance v3, Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;

    invoke-direct {v3, v0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;-><init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;)V

    invoke-static {v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadActivityState()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 166
    .local v2, "launchIntent":Landroid/content/Intent;
    const-string v4, "intent_wrapper_state_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, "activityStateCacheId":I
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, "cachedItem":Ljava/lang/Object;
    instance-of v4, v1, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    if-nez v4, :cond_0

    .line 175
    .end local v1    # "cachedItem":Ljava/lang/Object;
    :goto_0
    return v3

    .line 173
    .restart local v1    # "cachedItem":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    .end local v1    # "cachedItem":Ljava/lang/Object;
    iput-object v1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    .line 175
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private saveActivityState()Z
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 182
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "intent_wrapper_state_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)I

    move-result v0

    .line 185
    .local v0, "activityStateCacheId":I
    if-nez v0, :cond_0

    .line 186
    const/4 v2, 0x0

    .line 191
    :goto_0
    return v2

    .line 189
    :cond_0
    const-string v2, "intent_wrapper_state_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    invoke-interface {v0, p3}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onData(Landroid/content/Intent;)V

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->finish()V

    .line 160
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity failed with result code <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->loadActivityState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load activity state, aborting activity launch <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->finish()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 120
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->wrappedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->wrappedIntent:Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->wrappedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start activity, aborting activity launch <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onError(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 140
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->saveActivityState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save activity state <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method
