.class public Lcom/millennialmedia/internal/MMActivity;
.super Landroid/app/Activity;
.source "MMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/MMActivity$MMActivityListener;,
        Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;,
        Lcom/millennialmedia/internal/MMActivity$ActivityState;
    }
.end annotation


# static fields
.field private static final ACTIVITY_STATE_ID_KEY:Ljava/lang/String; = "activity_state_id"

.field private static final ON_CREATE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

.field private rootView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    return-void
.end method

.method static synthetic access$600(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/internal/MMActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->enableImmersiveMode()V

    return-void
.end method

.method private enableImmersiveMode()V
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, "decorView":Landroid/view/View;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    sget-object v1, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling immersive mode:\ndecorView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 352
    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityConfig"    # Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    .param p2, "activityListener"    # Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    .prologue
    .line 178
    if-nez p2, :cond_0

    .line 179
    sget-object v5, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    const-string v6, "Unable to launch MMActivity, provided MMActivityListener instance is null"

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 184
    :cond_0
    if-nez p1, :cond_2

    .line 185
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 186
    sget-object v5, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    const-string v6, "No MMActivity Configuration specified, creating default activity Configuration."

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    new-instance p1, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    .end local p1    # "activityConfig":Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    invoke-direct {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    .line 191
    .restart local p1    # "activityConfig":Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;
    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;

    const/4 v5, 0x0

    invoke-direct {v0, p2, p1, v5}, Lcom/millennialmedia/internal/MMActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$1;)V

    .line 192
    .local v0, "activityState":Lcom/millennialmedia/internal/MMActivity$ActivityState;
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)I

    move-result v1

    .line 193
    .local v1, "activityStateCacheId":I
    if-nez v1, :cond_3

    .line 194
    sget-object v5, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    const-string v6, "Unable to launch MMActivity, failed to cache activity state"

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onLaunchFailed()V

    goto :goto_0

    .line 200
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/millennialmedia/internal/MMActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "activity_state_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 204
    :cond_4
    const/4 v2, 0x0

    .line 205
    .local v2, "enterAnimationId":I
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 206
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 209
    :cond_5
    const/4 v3, 0x0

    .line 210
    .local v3, "exitAnimationId":I
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 211
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 215
    :cond_6
    invoke-static {p0, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 214
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 223
    .end local v2    # "enterAnimationId":I
    .end local v3    # "exitAnimationId":I
    :goto_1
    new-instance v5, Lcom/millennialmedia/internal/MMActivity$1;

    invoke-direct {v5, v0}, Lcom/millennialmedia/internal/MMActivity$1;-><init>(Lcom/millennialmedia/internal/MMActivity$ActivityState;)V

    invoke-static {v5}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 218
    :cond_7
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private loadActivityState()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 438
    .local v2, "launchIntent":Landroid/content/Intent;
    const-string v4, "activity_state_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 440
    .local v0, "activityStateCacheId":I
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 441
    .local v1, "cachedItem":Ljava/lang/Object;
    instance-of v4, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-nez v4, :cond_0

    .line 447
    .end local v1    # "cachedItem":Ljava/lang/Object;
    :goto_0
    return v3

    .line 445
    .restart local v1    # "cachedItem":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;

    .end local v1    # "cachedItem":Ljava/lang/Object;
    iput-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    .line 447
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private saveActivityState()Z
    .locals 4

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 454
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "activity_state_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)I

    move-result v0

    .line 457
    .local v0, "activityStateCacheId":I
    if-nez v0, :cond_0

    .line 458
    const/4 v2, 0x0

    .line 463
    :goto_0
    return v2

    .line 461
    :cond_0
    const-string v2, "activity_state_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 425
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    .line 426
    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    .line 427
    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    .line 430
    invoke-static {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 429
    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/MMActivity;->overridePendingTransition(II)V

    .line 432
    :cond_1
    return-void
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 479
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    const/4 v9, -0x1

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->loadActivityState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 246
    sget-object v6, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load activity state, aborting activity launch <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 256
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->getRequestedOrientation()I

    move-result v3

    .line 257
    .local v3, "currentRequestedOrientation":I
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v6}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$300(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result v5

    .line 259
    .local v5, "desiredRequestedOrientation":I
    if-eq v3, v5, :cond_2

    .line 261
    invoke-virtual {p0, v5}, Lcom/millennialmedia/internal/MMActivity;->setRequestedOrientation(I)V

    .line 268
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result v2

    .line 270
    .local v2, "currentConfigOrientation":I
    invoke-static {v5}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getConfigOrientationFromRequestedOrientation(I)I

    move-result v4

    .line 272
    .local v4, "desiredConfigOrientation":I
    if-eq v2, v4, :cond_2

    .line 273
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    sget-object v6, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested orientation will force orientation change:\n\tCurrent requested orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\tDesired requested orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\tCurrent config orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\tDesired config orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v2    # "currentConfigOrientation":I
    .end local v4    # "desiredConfigOrientation":I
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 286
    sget-object v6, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New activity created with orientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 287
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-static {v6, v7}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_3
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v6}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$400(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result v6

    if-eq v6, v9, :cond_4

    .line 291
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v6}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$400(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/millennialmedia/internal/MMActivity;->setVolumeControlStream(I)V

    .line 294
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_6

    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v6}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$500(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 295
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->enableImmersiveMode()V

    .line 303
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/millennialmedia/internal/MMActivity$2;

    invoke-direct {v7, p0}, Lcom/millennialmedia/internal/MMActivity$2;-><init>(Lcom/millennialmedia/internal/MMActivity;)V

    .line 304
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 323
    :cond_5
    :goto_1
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    .line 326
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v6}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$700(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v0, 0x0

    .line 327
    .local v0, "alpha":I
    :goto_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 328
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 329
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/millennialmedia/internal/MMActivity;->setContentView(Landroid/view/View;)V

    .line 336
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    invoke-virtual {v6, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V

    goto/16 :goto_0

    .line 315
    .end local v0    # "alpha":I
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_6
    iget-object v6, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v6, v6, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v6}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$500(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 316
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/millennialmedia/internal/MMActivity;->requestWindowFeature(I)Z

    .line 318
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 319
    invoke-virtual {v6, v10, v10}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1

    .line 326
    :cond_7
    const/16 v0, 0xa0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 387
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->saveActivityState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    sget-object v0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

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

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onDestroy(Lcom/millennialmedia/internal/MMActivity;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 378
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onPause(Lcom/millennialmedia/internal/MMActivity;)V

    .line 379
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 369
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onResume(Lcom/millennialmedia/internal/MMActivity;)V

    .line 370
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 404
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: hasFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityState.configuration.immersive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v2, v2, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$500(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    .line 413
    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$500(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->enableImmersiveMode()V

    .line 417
    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$302(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;I)I

    .line 359
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/MMActivity;->setRequestedOrientation(I)V

    .line 361
    :cond_0
    return-void
.end method
