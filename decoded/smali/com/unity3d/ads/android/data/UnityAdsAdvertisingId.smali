.class public Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;
.super Ljava/lang/Object;
.source "UnityAdsAdvertisingId.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private limitedAdvertisingTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z

    return-void
.end method

.method private fetchAdvertisingId(Landroid/app/Activity;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    :try_start_0
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    const-string v3, "isGooglePlayServicesAvailable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    const-string v3, "getAdvertisingIdInfo"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 59
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 62
    const-string v0, "getId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 65
    const-string v0, "isLimitAdTrackingEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z

    move v0, v1

    .line 75
    :goto_0
    return v0

    .line 70
    :cond_0
    const-string v0, "Google Play Services not integrated, using fallback"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 71
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception while trying to access Google Play Services "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V

    move v0, v2

    .line 75
    goto :goto_0
.end method

.method private fetchAdvertisingIdFallback(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    new-instance v1, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;-><init>(Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$1;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {v1}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->Create(Landroid/os/IBinder;)Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 89
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "Couldn\'t get advertising info"

    invoke-static {v0}, Lcom/unity3d/ads/android/UnityAdsDeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method private static getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    invoke-direct {v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;-><init>()V

    sput-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    .line 33
    :cond_0
    sget-object v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->impl:Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    return-object v0
.end method

.method public static getLimitedAdTracking()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->limitedAdvertisingTracking:Z

    return v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->fetchAdvertisingId(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->getImpl()Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId;->fetchAdvertisingIdFallback(Landroid/content/Context;)V

    .line 40
    :cond_0
    return-void
.end method
