.class public Lcom/millennialmedia/internal/utils/EnvironmentUtils;
.super Ljava/lang/Object;
.source "EnvironmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    }
.end annotation


# static fields
.field private static final INTERNAL_CACHE_DIR:Ljava/lang/String; = "/.com.millennialmedia//.internal/"

.field private static final MILLENNIAL_DIRECTORY:Ljava/lang/String; = "/.com.millennialmedia/"

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final SCANNABLE_CACHE_DIR:Ljava/lang/String; = "/millennial_media_cache/"

.field private static final TAG:Ljava/lang/String;

.field private static application:Landroid/app/Application;

.field private static applicationContext:Landroid/content/Context;

.field private static availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

.field private static cellSignalDbm:Ljava/lang/Integer;

.field private static deviceId:Ljava/lang/String;

.field private static hasBluetoothPermission:Z

.field private static hasCalendarPermission:Z

.field private static hasExternalStoragePermission:Z

.field private static hasFineLocationPermission:Z

.field private static hasMicrophonePermission:Z

.field private static hasNfcPermission:Z

.field private static hasVibratePermission:Z

.field private static hasWifiStatePermission:Z

.field private static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->cellSignalDbm:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 66
    sput-object p0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->cellSignalDbm:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static areHeadphonesPluggedIn()Z
    .locals 3

    .prologue
    .line 978
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 980
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    return v1
.end method

.method public static getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;
    .locals 2
    .param p0, "adInfo"    # Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get aaid value"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAdInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-static {}, Lcom/millennialmedia/internal/utils/ThreadUtils;->isUiThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get AdInfo instance on UI thread!"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .local v1, "errorMessagePrefix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 278
    .end local v1    # "errorMessagePrefix":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    .line 280
    const-string v1, "Unable to get google play services advertising info, "

    .line 283
    .restart local v1    # "errorMessagePrefix":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get google play services advertising info, google play services (e.g., the old version of the service doesn\'t support getting advertising ID)"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get google play services advertising info, google play services is not available"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    .end local v0    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_2
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get google play services advertising info, illegal state"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 294
    .local v0, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get google play services advertising info, google play services is not installed, up-to-date, or enabled"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->application:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 465
    :try_start_0
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 466
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 468
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 473
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to determine package name"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getAvailableCameras()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    .locals 1

    .prologue
    .line 919
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    return-object v0
.end method

.method public static getAvailableExternalStorageSize()J
    .locals 2

    .prologue
    .line 551
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 555
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableInternalStorageSize()J
    .locals 2

    .prologue
    .line 545
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getAvailableSize(Ljava/lang/String;)J
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 572
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 573
    .local v2, "pathStats":Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v0, v3

    .line 575
    .local v0, "blockSize":J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    return-wide v4
.end method

.method public static getAvailableStorageSize()J
    .locals 4

    .prologue
    .line 561
    const-wide/16 v0, 0x0

    .line 563
    .local v0, "totalAvailableSize":J
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableInternalStorageSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 564
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableExternalStorageSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 566
    return-wide v0
.end method

.method private static getBatteryIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 539
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel()Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 503
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v1

    .line 504
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-object v4

    .line 508
    :cond_1
    const-string v5, "scale"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 509
    .local v3, "scale":I
    const-string v5, "level"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 511
    .local v2, "level":I
    if-eq v3, v6, :cond_0

    if-eq v2, v6, :cond_0

    .line 515
    int-to-float v4, v2

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 517
    .local v0, "batteryLevelScale":F
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0
.end method

.method public static getCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 996
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getExternalCacheDirectory(Z)Ljava/io/File;

    move-result-object v0

    .line 1000
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getInternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCellSignalDbm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->cellSignalDbm:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 739
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->cellSignalDbm:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfigOrientationFromRequestedOrientation(I)I
    .locals 1
    .param p0, "requestedOrientation"    # I

    .prologue
    .line 843
    packed-switch p0, :pswitch_data_0

    .line 863
    :pswitch_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientation()I

    move-result v0

    :goto_0
    return v0

    .line 849
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 856
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 860
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 843
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentConfigOrientation()I
    .locals 1

    .prologue
    .line 795
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getCurrentConfigOrientationString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 808
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientationString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 803
    :pswitch_0
    const-string v0, "portrait"

    goto :goto_0

    .line 805
    :pswitch_1
    const-string v0, "landscape"

    goto :goto_0

    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 353
    const-class v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->deviceId:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 354
    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->deviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .local v0, "androidId":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 357
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v7, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .restart local v0    # "androidId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "mmh_"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .local v1, "deviceIdBuilder":Ljava/lang/StringBuilder;
    :try_start_2
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 370
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 371
    .local v3, "hashBytes":[B
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v7, "SHA1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 375
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 376
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->deviceId:Ljava/lang/String;

    .line 386
    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 378
    .end local v3    # "hashBytes":[B
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception calculating device id hash with ANDROID_ID <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 353
    .end local v1    # "deviceIdBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getDisplayDensity()F
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDisplayDensityDpi()I
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getDisplayHeight()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 236
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 238
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 240
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 241
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 242
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 244
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 247
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static getDisplayWidth()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 254
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 256
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 258
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 259
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 260
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 262
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 265
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static getExternalCacheDirectory(Z)Ljava/io/File;
    .locals 4
    .param p0, "scannable"    # Z

    .prologue
    .line 1006
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1007
    .local v2, "externalStorageDir":Ljava/io/File;
    if-eqz v2, :cond_2

    .line 1008
    if-eqz p0, :cond_1

    const-string v1, "/millennial_media_cache/"

    .line 1009
    .local v1, "cacheDirName":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1010
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1011
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1017
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "cacheDirName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1008
    :cond_1
    const-string v1, "/.com.millennialmedia//.internal/"

    goto :goto_0

    .line 1017
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "hashType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 328
    const-class v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    .line 329
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "android_id"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 331
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 346
    :goto_0
    monitor-exit v6

    return-object v3

    .line 336
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 337
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 338
    .local v2, "hashBytes":[B
    invoke-static {v2}, Lcom/millennialmedia/internal/utils/Utils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 340
    .local v3, "hashedDeviceId":Ljava/lang/String;
    goto :goto_0

    .line 342
    .end local v2    # "hashBytes":[B
    .end local v3    # "hashedDeviceId":Ljava/lang/String;
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception calculating <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "> hashed device id with ANDROID_ID <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 328
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getInternalCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 1023
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/.com.millennialmedia//.internal/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1024
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 11

    .prologue
    .line 749
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    .line 750
    .local v6, "netInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 751
    .local v5, "netInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 752
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 753
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_1

    .line 757
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, "inetAddressHost":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 775
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v4    # "inetAddressHost":Ljava/lang/String;
    .end local v5    # "netInterface":Ljava/net/NetworkInterface;
    :goto_0
    return-object v4

    .line 761
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "inetAddressHost":Ljava/lang/String;
    .restart local v5    # "netInterface":Ljava/net/NetworkInterface;
    :cond_2
    const/16 v8, 0x25

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 763
    .local v2, "delimiter":I
    if-gez v2, :cond_3

    move-object v7, v4

    .local v7, "noInterfaceNameAddress":Ljava/lang/String;
    :goto_1
    move-object v4, v7

    .line 766
    goto :goto_0

    .line 763
    .end local v7    # "noInterfaceNameAddress":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .line 764
    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_1

    .line 771
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delimiter":I
    .end local v4    # "inetAddressHost":Ljava/lang/String;
    .end local v5    # "netInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v3

    .line 772
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v9, "Unable to determine IP address for device"

    invoke-static {v8, v9, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 775
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getLocaleCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 870
    sget-boolean v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasFineLocationPermission:Z

    if-eqz v1, :cond_0

    .line 871
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v2, "location"

    .line 872
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 874
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-eqz v0, :cond_0

    .line 875
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 879
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 781
    sget-boolean v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasWifiStatePermission:Z

    if-eqz v2, :cond_0

    .line 782
    sget-object v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 784
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 786
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 789
    :goto_0
    return-object v2

    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMcc()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 392
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 393
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    if-nez v3, :cond_1

    .line 394
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "networkOperator":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 397
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 408
    .end local v2    # "networkOperator":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 398
    .restart local v2    # "networkOperator":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse mcc from network operator"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to retrieve mcc"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v3, 0x0

    goto :goto_0

    .line 408
    .end local v2    # "networkOperator":Ljava/lang/String;
    :cond_1
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method public static getMillennialDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.com.millennialmedia/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 990
    return-object v0
.end method

.method public static getMnc()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 415
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 416
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_1

    .line 417
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "networkOperator":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 420
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 431
    .end local v2    # "networkOperator":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 421
    .restart local v2    # "networkOperator":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse mnc from network operator"

    invoke-static {v3, v4, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v4, "Unable to retrieve mnc"

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    .end local v2    # "networkOperator":Ljava/lang/String;
    :cond_1
    iget v3, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method public static getNaturalConfigOrientation()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 814
    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 816
    .local v2, "windowManager":Landroid/view/WindowManager;
    sget-object v5, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 817
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 819
    .local v1, "rotation":I
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_1

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v3

    .line 822
    :cond_1
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_2

    if-eq v1, v4, :cond_0

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    :cond_2
    move v3, v4

    .line 826
    goto :goto_0
.end method

.method public static getNaturalConfigOrientationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 833
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 834
    const-string v0, "landscape"

    .line 837
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method

.method public static getNetworkConnectionType()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 628
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v5, "connectivity"

    .line 629
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 631
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 632
    const-string v0, "unknown"

    .line 732
    :goto_0
    return-object v0

    .line 635
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 636
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 637
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 639
    .local v3, "type":I
    if-ne v3, v6, :cond_1

    .line 640
    const-string v0, "wifi"

    .local v0, "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 641
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 642
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 719
    const-string v0, "unknown"

    .line 721
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 644
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_0
    const-string v0, "1xrtt"

    .line 646
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 649
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "cdma"

    .line 651
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 654
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_2
    const-string v0, "edge"

    .line 656
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 659
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_3
    const-string v0, "ehrpd"

    .line 661
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 664
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_4
    const-string v0, "evdo_0"

    .line 666
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 669
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_5
    const-string v0, "evdo_a"

    .line 671
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 674
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_6
    const-string v0, "evdo_b"

    .line 676
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 679
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_7
    const-string v0, "gprs"

    .line 681
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 684
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_8
    const-string v0, "hsdpa"

    .line 686
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 689
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_9
    const-string v0, "hspa"

    .line 691
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 694
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_a
    const-string v0, "hspap"

    .line 696
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 699
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_b
    const-string v0, "hsupa"

    .line 701
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 704
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_c
    const-string v0, "iden"

    .line 706
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 709
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_d
    const-string v0, "lte"

    .line 711
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 714
    .end local v0    # "connectionType":Ljava/lang/String;
    :pswitch_e
    const-string v0, "umts"

    .line 716
    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 725
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 729
    .end local v0    # "connectionType":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_3
    const-string v0, "offline"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 438
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 439
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 446
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 487
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 488
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    .line 497
    :goto_0
    return-object v0

    .line 491
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 492
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    .line 497
    :goto_1
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    goto :goto_0

    .line 494
    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->userAgent:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getVolume(I)I
    .locals 5
    .param p0, "streamType"    # I

    .prologue
    .line 961
    sget-object v3, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 963
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 964
    .local v1, "maxValue":I
    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 965
    const/4 v3, 0x0

    .line 970
    :goto_0
    return v3

    .line 968
    :cond_0
    const/high16 v3, 0x42c80000    # 100.0f

    int-to-float v4, v1

    div-float v2, v3, v4

    .line 970
    .local v2, "valueRatio":F
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_0
.end method

.method public static hasBluetooth()Z
    .locals 2

    .prologue
    .line 937
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasBluetoothPermission()Z
    .locals 1

    .prologue
    .line 943
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasBluetoothPermission:Z

    return v0
.end method

.method public static hasCalendarPermission()Z
    .locals 1

    .prologue
    .line 925
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCalendarPermission:Z

    return v0
.end method

.method public static hasCamera()Z
    .locals 1

    .prologue
    .line 909
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v0, v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-eqz v0, :cond_1

    .line 910
    :cond_0
    const/4 v0, 0x1

    .line 913
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasFineLocationPermission()Z
    .locals 1

    .prologue
    .line 891
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasFineLocationPermission:Z

    return v0
.end method

.method public static hasGps()Z
    .locals 2

    .prologue
    .line 885
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMicrophone()Z
    .locals 2

    .prologue
    .line 897
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMicrophonePermission()Z
    .locals 1

    .prologue
    .line 903
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission:Z

    return v0
.end method

.method public static hasNfc()Z
    .locals 2

    .prologue
    .line 949
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNfcPermission()Z
    .locals 1

    .prologue
    .line 955
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasNfcPermission:Z

    return v0
.end method

.method public static hasVibratePermission()Z
    .locals 1

    .prologue
    .line 931
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasVibratePermission:Z

    return v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    sput-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->application:Landroid/app/Application;

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    .line 105
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 106
    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasExternalStoragePermission:Z

    .line 109
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    .line 110
    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasWifiStatePermission:Z

    .line 113
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.WRITE_CALENDAR"

    .line 114
    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCalendarPermission:Z

    .line 117
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 118
    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_3
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasFineLocationPermission:Z

    .line 121
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.VIBRATE"

    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_4
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasVibratePermission:Z

    .line 124
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    :goto_5
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasBluetoothPermission:Z

    .line 127
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.NFC"

    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_6
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasNfcPermission:Z

    .line 130
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v7, "android.permission.RECORD_AUDIO"

    .line 131
    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_7
    sput-boolean v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission:Z

    .line 135
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 136
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$1;

    invoke-direct {v4}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$1;-><init>()V

    const/16 v7, 0x100

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 155
    new-instance v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$2;

    invoke-direct {v4}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$2;-><init>()V

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 166
    new-instance v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    invoke-direct {v4}, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;-><init>()V

    sput-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    .line 167
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v6, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    .line 168
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v6, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    .line 170
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 171
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 172
    .local v2, "numCameras":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_a

    .line 173
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 174
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v5, :cond_9

    .line 175
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v5, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    .line 172
    :cond_0
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "i":I
    .end local v2    # "numCameras":I
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    move v4, v6

    .line 106
    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 110
    goto/16 :goto_1

    :cond_3
    move v4, v6

    .line 114
    goto/16 :goto_2

    :cond_4
    move v4, v6

    .line 118
    goto/16 :goto_3

    :cond_5
    move v4, v6

    .line 121
    goto :goto_4

    :cond_6
    move v4, v6

    .line 124
    goto :goto_5

    :cond_7
    move v4, v6

    .line 127
    goto :goto_6

    :cond_8
    move v4, v6

    .line 131
    goto :goto_7

    .line 176
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .restart local v1    # "i":I
    .restart local v2    # "numCameras":I
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    .line 177
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iput-boolean v5, v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    goto :goto_9

    .line 181
    :cond_a
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Environment initialized with the following data.\n\tMillennial Media Ad SDK version: 6.1.0-5323db4\n\tAndroid SDK version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tApplication name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 184
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tApplication id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 185
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tLocale country "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 186
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tLocale language: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tUser agent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tExternal storage available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 189
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isExternalStorageReadable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tDisplay width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 190
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tDisplay height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 191
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tDisplay density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 192
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tDisplay dpi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 193
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensityDpi()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tNatural screen orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tWRITE_EXTERNAL_STORAGE permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasExternalStoragePermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tACCESS_WIFI_STATE permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasWifiStatePermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tWRITE_CALENDAR permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCalendarPermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tACCESS_FINE_LOCATION permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasFineLocationPermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tVIBRATE permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasVibratePermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tBLUETOOTH permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasBluetoothPermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tNFC permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasNfcPermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tRECORD_AUDIO permission available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tFront camera available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v6, v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\tBack camera available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->availableCameras:Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    iget-boolean v6, v6, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {v4, v5}, Lcom/millennialmedia/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static isCalendarSupported()Z
    .locals 2

    .prologue
    .line 1044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDevicePlugged()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 523
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v2

    .line 528
    :cond_1
    const-string v3, "plugged"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 529
    .local v1, "isPlugged":I
    if-eqz v1, :cond_0

    .line 533
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 581
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "storageState":Ljava/lang/String;
    sget-boolean v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasExternalStoragePermission:Z

    if-eqz v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    .line 584
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageSupported()Z
    .locals 1

    .prologue
    .line 598
    sget-boolean v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasExternalStoragePermission:Z

    return v0
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "storageState":Ljava/lang/String;
    sget-boolean v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasExternalStoragePermission:Z

    if-eqz v1, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLimitAdTrackingEnabled(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z
    .locals 2
    .param p0, "adInfo"    # Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    sget-object v0, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get limit ad tracking value, ad info is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNetworkAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 604
    sget-object v4, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    const-string v5, "connectivity"

    .line 605
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 607
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return v3

    .line 610
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 611
    .local v2, "networkInfoList":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 613
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 614
    const/4 v3, 0x1

    goto :goto_0

    .line 612
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSmsSupported()Z
    .locals 2

    .prologue
    .line 1036
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1038
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isTelSupported()Z
    .locals 2

    .prologue
    .line 1050
    sget-object v1, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1052
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
