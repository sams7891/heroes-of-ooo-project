.class public Lcom/fyber/utils/i;
.super Ljava/lang/Object;
.source "HostInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/i$a;,
        Lcom/fyber/utils/i$b;,
        Lcom/fyber/utils/i$c;,
        Lcom/fyber/utils/i$d;,
        Lcom/fyber/utils/i$e;
    }
.end annotation


# static fields
.field private static a:Lcom/fyber/utils/i;


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Landroid/location/LocationManager;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/fyber/utils/i;->h:Z

    .line 83
    iput-boolean v1, p0, Lcom/fyber/utils/i;->n:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/utils/i;->r:Ljava/util/concurrent/CountDownLatch;

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A context is required to initialize HostInfo"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_9

    .line 106
    new-instance v0, Lcom/fyber/utils/j;

    const-string v3, "AdvertisingIdRetriever"

    invoke-direct {v0, p0, v3, p1}, Lcom/fyber/utils/j;-><init>(Lcom/fyber/utils/i;Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    invoke-virtual {v0}, Lcom/fyber/utils/j;->start()V

    .line 1145
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/i;->j:Ljava/lang/String;

    .line 1146
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/i;->i:Ljava/lang/String;

    .line 1148
    const-string v0, "phone"

    .line 1149
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1151
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/utils/i;->j:Ljava/lang/String;

    .line 1152
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/i;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2136
    :goto_1
    :try_start_1
    const-string v0, "connectivity"

    .line 2137
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/fyber/utils/i;->c:Landroid/net/ConnectivityManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2158
    :goto_2
    iget v0, p0, Lcom/fyber/utils/i;->e:I

    if-nez v0, :cond_1

    .line 2159
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2160
    const-string v0, "window"

    .line 2161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/fyber/utils/i;->b:Landroid/view/WindowManager;

    .line 2162
    iget-object v0, p0, Lcom/fyber/utils/i;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2163
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/fyber/utils/i;->d:I

    .line 2164
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/fyber/utils/i;->e:I

    .line 2165
    iget v0, v3, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/fyber/utils/i;->f:F

    .line 2166
    iget v0, v3, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/fyber/utils/i;->g:F

    .line 2173
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2175
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/utils/i;->k:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3127
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3128
    invoke-virtual {p0}, Lcom/fyber/utils/i;->c()I

    move-result v3

    .line 3130
    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_3

    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_5

    :cond_3
    if-eq v3, v1, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    :cond_4
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_a

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/fyber/utils/i;->h:Z

    .line 3275
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3276
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 3278
    const-string v0, "gps"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3279
    const-string v0, "passive"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3281
    :cond_6
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 3283
    const-string v0, "network"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3285
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3286
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/fyber/utils/i;->p:Landroid/location/LocationManager;

    .line 3287
    iput-object v1, p0, Lcom/fyber/utils/i;->q:Ljava/util/List;

    .line 123
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/i;->l:Ljava/lang/String;

    .line 124
    return-void

    .line 112
    :cond_9
    invoke-direct {p0, p1}, Lcom/fyber/utils/i;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2177
    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/i;->k:Ljava/lang/String;

    goto :goto_3

    :cond_a
    move v0, v2

    .line 3130
    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/fyber/utils/i;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fyber/utils/i;->d:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/fyber/utils/i;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/fyber/utils/i;->a:Lcom/fyber/utils/i;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/fyber/utils/i;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/fyber/utils/i;->a:Lcom/fyber/utils/i;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/fyber/utils/i;

    invoke-direct {v0, p0}, Lcom/fyber/utils/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fyber/utils/i;->a:Lcom/fyber/utils/i;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/fyber/utils/i;->a:Lcom/fyber/utils/i;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/fyber/utils/i;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/fyber/utils/i;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/fyber/utils/i;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fyber/utils/i;->e:I

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 196
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 198
    const-string v1, "getAdvertisingIdInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 199
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 204
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/utils/i;->m:Ljava/lang/String;

    .line 205
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/utils/i;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/i;->r:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 213
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "HostInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/i;->o:Ljava/lang/String;

    .line 4226
    iget-object v0, p0, Lcom/fyber/utils/i;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4227
    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/utils/i;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/fyber/utils/i;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fyber/utils/i;->f:F

    return v0
.end method

.method static synthetic d(Lcom/fyber/utils/i;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fyber/utils/i;->g:F

    return v0
.end method

.method static synthetic e(Lcom/fyber/utils/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fyber/utils/i;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/fyber/utils/i;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fyber/utils/i;->j()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/fyber/utils/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fyber/utils/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Lcom/fyber/utils/i;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/fyber/utils/i;->a:Lcom/fyber/utils/i;

    return-object v0
.end method

.method static synthetic h(Lcom/fyber/utils/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fyber/utils/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/fyber/utils/i;->r:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/i;->m:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/fyber/utils/i;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    .line 5182
    iget-object v0, p0, Lcom/fyber/utils/i;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 5183
    iget-object v0, p0, Lcom/fyber/utils/i;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5184
    if-eqz v0, :cond_1

    .line 5185
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 5186
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "wifi"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cellular"

    goto :goto_0

    .line 5190
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private j()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/fyber/utils/i;->r:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    iget-boolean v0, p0, Lcom/fyber/utils/i;->n:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/fyber/utils/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fyber/utils/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/fyber/utils/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fyber/utils/i;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/fyber/utils/i;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "portrait"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "landscape"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "portrait"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "landscape"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "portrait"

    aput-object v2, v1, v0

    .line 246
    invoke-virtual {p0}, Lcom/fyber/utils/i;->c()I

    move-result v0

    .line 247
    iget-boolean v2, p0, Lcom/fyber/utils/i;->h:Z

    if-eqz v2, :cond_0

    .line 248
    add-int/lit8 v0, v0, 0x1

    .line 250
    :cond_0
    aget-object v0, v1, v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fyber/utils/i;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/fyber/utils/i;->h:Z

    return v0
.end method

.method public final f()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/fyber/utils/i;->p:Landroid/location/LocationManager;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/fyber/utils/i;->q:Ljava/util/List;

    return-object v0
.end method
