.class public Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;
.super Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
.source "OrangeServerAdapter.java"


# static fields
.field public static PLAYLIST_REQUEST_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "/admax/sdk/playlist/1"

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->PLAYLIST_REQUEST_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->buildAdRequest(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static buildAdRequest(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "adPlacementMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "ver"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v2, "app"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->buildAppInfoJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v2, "env"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->buildEnvironmentInfoJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v2, "req"

    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->buildRequestInfoJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v2, "user"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->buildUserInfoJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v2, "testing"

    invoke-static {}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->buildTestingJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 300
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Error creating JSON request"

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static buildAppInfoJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "appId"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "name"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    return-object v0
.end method

.method private static buildEnvironmentInfoJSON()Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v5, "json":Lorg/json/JSONObject;
    const-string v8, "os"

    const-string v9, "android"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v8, "osv"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v8, "model"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v8, "sdkVer"

    const-string v9, "6.1.0-5323db4"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    sget-object v8, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 70
    const-string v8, "sdkPlugins"

    sget-object v9, Lcom/millennialmedia/MMSDK;->registeredPlugins:Ljava/util/Map;

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_0
    const-string v8, "mcc"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMcc()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v8, "mnc"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMnc()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v8, "lang"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v8, "country"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v8, "ua"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAdInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 82
    .local v1, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "aaid":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 84
    const-string v8, "ifa"

    invoke-virtual {v5, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v8, "lmt"

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isLimitAdTrackingEnabled(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    :goto_0
    const-string v8, "w"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v8, "h"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v8, "screenScale"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v9

    float-to-double v10, v9

    invoke-virtual {v5, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 95
    const-string v8, "ppi"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensityDpi()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v8, "natOrient"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNaturalConfigOrientationString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v8, "storage"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableStorageSize()J

    move-result-wide v10

    invoke-virtual {v5, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    const-string v8, "vol"

    const/4 v9, 0x3

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getVolume(I)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string v8, "headphones"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->areHeadphonesPluggedIn()Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 102
    const-string v8, "charging"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isDevicePlugged()Z

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 103
    const-string v8, "charge"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryLevel()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v8, "connectionType"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v8, "cellSignalDbm"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCellSignalDbm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v8, "carrier"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v8, "ip"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getIpAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v8, "apMac"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 114
    .local v6, "location":Landroid/location/Location;
    if-eqz v6, :cond_5

    sget-boolean v8, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    if-eqz v8, :cond_5

    .line 115
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v7, "locationJson":Lorg/json/JSONObject;
    const-string v8, "lat"

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    const-string v8, "lon"

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 119
    const-string v8, "src"

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v8, "ts"

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v6}, Landroid/location/Location;->hasAccuracy()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 125
    const-string v8, "horizAcc"

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    float-to-double v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 128
    :cond_1
    invoke-virtual {v6}, Landroid/location/Location;->hasSpeed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 129
    const-string v8, "speed"

    invoke-virtual {v6}, Landroid/location/Location;->getSpeed()F

    move-result v9

    float-to-double v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 132
    :cond_2
    invoke-virtual {v6}, Landroid/location/Location;->hasBearing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 133
    const-string v8, "bearing"

    invoke-virtual {v6}, Landroid/location/Location;->getBearing()F

    move-result v9

    float-to-double v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 136
    :cond_3
    invoke-virtual {v6}, Landroid/location/Location;->hasAltitude()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 137
    const-string v8, "alt"

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 140
    :cond_4
    const-string v8, "loc"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .end local v7    # "locationJson":Lorg/json/JSONObject;
    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v3, "deviceFeatures":Lorg/json/JSONObject;
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableCameras()Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;

    move-result-object v2

    .line 146
    .local v2, "availableCameras":Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    iget-boolean v8, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->frontCamera:Z

    if-eqz v8, :cond_6

    .line 147
    const-string v8, "cameraFront"

    const-string v9, "true"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_6
    iget-boolean v8, v2, Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;->backCamera:Z

    if-eqz v8, :cond_7

    .line 151
    const-string v8, "cameraRear"

    const-string v9, "true"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_7
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasNfc()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 155
    const-string v8, "nfc"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasNfcPermission()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_8
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasBluetooth()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 159
    const-string v8, "bt"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasBluetoothPermission()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_9
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophone()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 163
    const-string v8, "mic"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_a
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasGps()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 167
    const-string v8, "gps"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasFineLocationPermission()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_b
    const-string v8, "deviceFeatures"

    invoke-virtual {v5, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getExistingIds()Ljava/util/List;

    move-result-object v4

    .line 173
    .local v4, "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 174
    const-string v8, "existIds"

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_c
    return-object v5

    .line 87
    .end local v2    # "availableCameras":Lcom/millennialmedia/internal/utils/EnvironmentUtils$AvailableCameras;
    .end local v3    # "deviceFeatures":Lorg/json/JSONObject;
    .end local v4    # "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "location":Landroid/location/Location;
    :cond_d
    const-string v8, "dpidmd5"

    const-string v9, "MD5"

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v8, "dpidsha1"

    const-string v9, "SHA1"

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method

.method private static buildRequestInfoJSON(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "adPlacementMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v2, "json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getAppInfo()Lcom/millennialmedia/AppInfo;

    move-result-object v0

    .line 187
    .local v0, "appInfo":Lcom/millennialmedia/AppInfo;
    if-eqz v0, :cond_0

    .line 188
    const-string v5, "coppa"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getCoppa()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v5, "dcn"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getSiteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v5, "mediator"

    invoke-virtual {v0}, Lcom/millennialmedia/AppInfo;->getMediator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :cond_0
    if-eqz p0, :cond_3

    .line 194
    const-string v5, "posType"

    const-string v6, "placementType"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v6, "orients"

    const-string v5, "supportedOrientations"

    .line 197
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 196
    invoke-static {v5}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v6, "keywords"

    const-string v5, "keywords"

    .line 200
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 199
    invoke-static {v5}, Lcom/millennialmedia/internal/utils/Utils;->splitCommaSeparateString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v5, "posId"

    const-string v6, "placementId"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v5, "width"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 205
    .local v4, "placementWidth":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    .line 207
    const-string v5, "w"

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "placementWidth":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    :cond_1
    const-string v5, "height"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 211
    .local v3, "placementHeight":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_2

    .line 213
    const-string v5, "h"

    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "placementHeight":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 216
    :cond_2
    const-string v5, "refreshRate"

    const-string v6, "refreshRate"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v5, "nativeTypes"

    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 220
    .local v1, "attributes":Lorg/json/JSONObject;
    const-string v6, "nativeType"

    const-string v5, "nativeTypes"

    .line 221
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    .line 220
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v5, "posTypeAttrs"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    .end local v1    # "attributes":Lorg/json/JSONObject;
    :cond_3
    const-string v5, "curOrient"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    return-object v2
.end method

.method private static buildTestingJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getTestInfo()Lcom/millennialmedia/TestInfo;

    move-result-object v1

    .line 268
    .local v1, "testInfo":Lcom/millennialmedia/TestInfo;
    if-eqz v1, :cond_0

    .line 269
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 270
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "bidder"

    iget-object v3, v1, Lcom/millennialmedia/TestInfo;->bidder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v2, "creativeId"

    iget-object v3, v1, Lcom/millennialmedia/TestInfo;->creativeId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildUserInfoJSON()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getUserData()Lcom/millennialmedia/UserData;

    move-result-object v2

    .line 236
    .local v2, "userData":Lcom/millennialmedia/UserData;
    if-eqz v2, :cond_1

    .line 237
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 238
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "age"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getAge()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v3, "kids"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getChildren()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v3, "hhi"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getIncome()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v3, "edu"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getEducation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v3, "eth"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getEthnicity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v3, "gender"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v3, "keywords"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getKeywords()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/Utils;->splitCommaSeparateString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/internal/utils/JSONUtils;->buildFromList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v3, "marital"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getMarital()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v3, "politics"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getPolitics()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v3, "zip"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getDob()Ljava/util/Date;

    move-result-object v0

    .line 250
    .local v0, "dateOfBirth":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 251
    const-string v3, "dob"

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_0
    const-string v3, "state"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v3, "country"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v3, "dma"

    invoke-virtual {v2}, Lcom/millennialmedia/UserData;->getDma()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    .end local v0    # "dateOfBirth":Ljava/util/Date;
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static parsePlayListResponse(Ljava/lang/String;)Lcom/millennialmedia/internal/PlayList;
    .locals 20
    .param p0, "adResponse"    # Ljava/lang/String;

    .prologue
    .line 359
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 361
    .local v10, "playListJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 362
    sget-object v17, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "playlist = \n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    new-instance v6, Lcom/millennialmedia/internal/PlayList;

    invoke-direct {v6}, Lcom/millennialmedia/internal/PlayList;-><init>()V

    .line 366
    .local v6, "playList":Lcom/millennialmedia/internal/PlayList;
    const-string v17, "ver"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/millennialmedia/internal/PlayList;->playListVersion:Ljava/lang/String;

    .line 367
    iget-object v0, v6, Lcom/millennialmedia/internal/PlayList;->playListVersion:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 368
    sget-object v17, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    const-string v18, "Playlist response does not match requested version"

    invoke-static/range {v17 .. v18}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v6, 0x0

    .line 458
    .end local v6    # "playList":Lcom/millennialmedia/internal/PlayList;
    .end local v10    # "playListJSON":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object v6

    .line 373
    .restart local v6    # "playList":Lcom/millennialmedia/internal/PlayList;
    .restart local v10    # "playListJSON":Lorg/json/JSONObject;
    :cond_2
    const-string v17, "config"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    .line 377
    iget-object v0, v6, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v6, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getConfig()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 378
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/internal/Handshake;->request(Z)V

    .line 381
    :cond_3
    const-string v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    .line 382
    const-string v17, "posId"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/millennialmedia/internal/PlayList;->placementId:Ljava/lang/String;

    .line 383
    const-string v17, "pos"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/millennialmedia/internal/PlayList;->placementName:Ljava/lang/String;

    .line 384
    const-string v17, "dcn"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    .line 391
    const-string v17, "DoNotReport"

    iget-object v0, v6, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 392
    invoke-virtual {v6}, Lcom/millennialmedia/internal/PlayList;->enableReporting()V

    .line 397
    :cond_4
    :goto_1
    const-string v17, "playlist"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 398
    .local v9, "playListItemsJSON":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_1

    .line 400
    :try_start_1
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 401
    .local v8, "playListItemJSON":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 402
    .local v14, "type":Ljava/lang/String;
    const-string v17, "item"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "itemId":Ljava/lang/String;
    const-string v17, "client_mediation"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 405
    const-string v17, "adnet"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "networkId":Ljava/lang/String;
    const-string v17, "req"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 407
    .local v11, "requestInfo":Lorg/json/JSONObject;
    const-string v17, "site"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 408
    .local v12, "siteId":Ljava/lang/String;
    const-string v17, "posId"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 409
    .local v13, "spaceId":Ljava/lang/String;
    new-instance v7, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;

    invoke-direct {v7, v4, v5, v12, v13}, Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v7, "playListItem":Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;
    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    .end local v4    # "itemId":Ljava/lang/String;
    .end local v5    # "networkId":Ljava/lang/String;
    .end local v7    # "playListItem":Lcom/millennialmedia/internal/PlayList$ClientMediationPlayListItem;
    .end local v8    # "playListItemJSON":Lorg/json/JSONObject;
    .end local v11    # "requestInfo":Lorg/json/JSONObject;
    .end local v12    # "siteId":Ljava/lang/String;
    .end local v13    # "spaceId":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 393
    .end local v3    # "i":I
    .end local v9    # "playListItemsJSON":Lorg/json/JSONArray;
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 394
    sget-object v17, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    const-string v18, "Playlist dcn is <DoNotReport> -- reporting disabled"

    invoke-static/range {v17 .. v18}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 454
    .end local v6    # "playList":Lcom/millennialmedia/internal/PlayList;
    .end local v10    # "playListJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Lorg/json/JSONException;
    sget-object v17, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    const-string v18, "Unable to parse play list"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 414
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v3    # "i":I
    .restart local v4    # "itemId":Ljava/lang/String;
    .restart local v6    # "playList":Lcom/millennialmedia/internal/PlayList;
    .restart local v8    # "playListItemJSON":Lorg/json/JSONObject;
    .restart local v9    # "playListItemsJSON":Lorg/json/JSONArray;
    .restart local v10    # "playListJSON":Lorg/json/JSONObject;
    .restart local v14    # "type":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string v17, "server_mediation"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 415
    const-string v17, "req"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 416
    .restart local v11    # "requestInfo":Lorg/json/JSONObject;
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 417
    .local v15, "url":Ljava/lang/String;
    new-instance v7, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;

    invoke-direct {v7, v4, v15}, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v7, "playListItem":Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;
    const-string v17, "validRegex"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->validateRegex:Ljava/lang/String;

    .line 422
    const-string v17, "postBody"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->postBody:Ljava/lang/String;

    .line 423
    const-string v17, "postType"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;->postContentType:Ljava/lang/String;

    .line 425
    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 447
    .end local v4    # "itemId":Ljava/lang/String;
    .end local v7    # "playListItem":Lcom/millennialmedia/internal/PlayList$ServerMediationPlayListItem;
    .end local v8    # "playListItemJSON":Lorg/json/JSONObject;
    .end local v11    # "requestInfo":Lorg/json/JSONObject;
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 448
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v17, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to parse play list item<"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 427
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "itemId":Ljava/lang/String;
    .restart local v8    # "playListItemJSON":Lorg/json/JSONObject;
    .restart local v14    # "type":Ljava/lang/String;
    :cond_8
    :try_start_5
    const-string v17, "exchange"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 428
    const-string v17, "req"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 429
    .restart local v11    # "requestInfo":Lorg/json/JSONObject;
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 430
    .restart local v15    # "url":Ljava/lang/String;
    new-instance v7, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;

    invoke-direct {v7, v4, v15}, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v7, "playListItem":Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;
    const-string v17, "postBody"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->postBody:Ljava/lang/String;

    .line 435
    const-string v17, "postType"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;->postContentType:Ljava/lang/String;

    .line 437
    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V

    goto/16 :goto_3

    .line 439
    .end local v7    # "playListItem":Lcom/millennialmedia/internal/PlayList$ExchangeMediationPlayListItem;
    .end local v11    # "requestInfo":Lorg/json/JSONObject;
    .end local v15    # "url":Ljava/lang/String;
    :cond_9
    const-string v17, "ad_content"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 440
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 441
    .local v16, "value":Ljava/lang/String;
    new-instance v7, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;

    move-object/from16 v0, v16

    invoke-direct {v7, v4, v0}, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .local v7, "playListItem":Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;
    invoke-virtual {v6, v7}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method public loadPlayList(Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V
    .locals 1
    .param p2, "adapterLoadListener"    # Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "adPlacementMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter$1;-><init>(Lcom/millennialmedia/internal/playlistserver/OrangeServerAdapter;Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method
