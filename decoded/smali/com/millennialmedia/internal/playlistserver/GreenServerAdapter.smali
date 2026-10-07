.class public Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;
.super Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;
.source "GreenServerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->buildAdRequestUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "urlBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, "valueString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    sget-object v3, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add parameter due to empty value for key <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> and value <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    :goto_0
    return-void

    .line 249
    :cond_3
    :try_start_0
    const-string v3, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 253
    const-string v3, "&"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1    # "entry":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    sget-object v3, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Error occurred when trying to inject ad url request parameter"

    invoke-static {v3, v4, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static buildAdRequestUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 28
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
    .line 45
    .local p0, "adPlacementMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v14, "parametersBuilder":Ljava/lang/StringBuilder;
    const-string v23, "dm"

    sget-object v24, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v23, "dv"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Android"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    const-string v23, "ua"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAdInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    .line 53
    .local v3, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAaid(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "aaid":Ljava/lang/String;
    if-eqz v2, :cond_12

    .line 55
    const-string v23, "aaid"

    move-object/from16 v0, v23

    invoke-static {v14, v0, v2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v24, "ate"

    .line 57
    invoke-static {v3}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isLimitAdTrackingEnabled(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z

    move-result v23

    if-nez v23, :cond_11

    const/16 v23, 0x1

    :goto_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    .line 56
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :cond_0
    :goto_1
    const-string v23, "density"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayDensity()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v23, "hpx"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayHeight()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v23, "wpx"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getDisplayWidth()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v23, "do"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v23, "olock"

    const-string v24, "false"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v23, "sk"

    const-string v24, "false"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v23, "vol"

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getVolume(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v23, "headphones"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->areHeadphonesPluggedIn()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophone()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 78
    const-string v23, "mic"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasMicrophonePermission()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_1
    const-string v23, "language"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v23, "country"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v23, "pkid"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v23, "pknm"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v23, "bl"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getBatteryLevel()Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v23, "plugged"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isDevicePlugged()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v23, "space"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getAvailableStorageSize()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v23, "conn"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v23, "celldbm"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCellSignalDbm()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMcc()Ljava/lang/Integer;

    move-result-object v10

    .line 92
    .local v10, "mcc":Ljava/lang/Integer;
    if-eqz v10, :cond_2

    .line 93
    const-string v23, "mcc"

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMnc()Ljava/lang/Integer;

    move-result-object v12

    .line 97
    .local v12, "mnc":Ljava/lang/Integer;
    if-eqz v12, :cond_3

    .line 98
    const-string v23, "mnc"

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_3
    const-string v23, "pip"

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getIpAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "networkOperatorName":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 105
    const-string v23, "cn"

    move-object/from16 v0, v23

    invoke-static {v14, v0, v13}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_4
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getLocation()Landroid/location/Location;

    move-result-object v9

    .line 110
    .local v9, "location":Landroid/location/Location;
    if-eqz v9, :cond_13

    sget-boolean v23, Lcom/millennialmedia/MMSDK;->locationEnabled:Z

    if-eqz v23, :cond_13

    .line 111
    const-string v23, "lat"

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v23, "long"

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v9}, Landroid/location/Location;->hasAccuracy()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 115
    const-string v23, "ha"

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_5
    invoke-virtual {v9}, Landroid/location/Location;->hasSpeed()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 119
    const-string v23, "spd"

    invoke-virtual {v9}, Landroid/location/Location;->getSpeed()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    :cond_6
    invoke-virtual {v9}, Landroid/location/Location;->hasBearing()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 123
    const-string v23, "brg"

    invoke-virtual {v9}, Landroid/location/Location;->getBearing()F

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    :cond_7
    invoke-virtual {v9}, Landroid/location/Location;->hasAltitude()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 127
    const-string v23, "alt"

    invoke-virtual {v9}, Landroid/location/Location;->getAltitude()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_8
    const-string v23, "tslr"

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v23, "loc"

    const-string v24, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v23, "lsrc"

    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :goto_2
    const-string v23, "sdkversion"

    const-string v24, "6.1.0-5323db4.a"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v23, "video"

    const-string v24, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v23, "cachedvideo"

    const-string v24, "true"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getAppInfo()Lcom/millennialmedia/AppInfo;

    move-result-object v4

    .line 146
    .local v4, "appInfo":Lcom/millennialmedia/AppInfo;
    if-eqz v4, :cond_9

    .line 147
    const-string v23, "vendor"

    invoke-virtual {v4}, Lcom/millennialmedia/AppInfo;->getMediator()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v23, "coppa"

    invoke-virtual {v4}, Lcom/millennialmedia/AppInfo;->getCoppa()Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_9
    const-string v23, "placementId"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 153
    .local v17, "placementId":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 154
    const-string v23, "apid"

    check-cast v17, Ljava/lang/String;

    .end local v17    # "placementId":Ljava/lang/Object;
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    :cond_a
    const-string v23, "placementType"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 158
    .local v18, "placementTypeObject":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_14

    check-cast v18, Ljava/lang/String;

    .end local v18    # "placementTypeObject":Ljava/lang/Object;
    const-string v23, "interstitial"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 159
    const-string v23, "at"

    const-string v24, "i"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string v23, "reqtype"

    const-string v24, "fetch"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    :goto_3
    const-string v23, "width"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 168
    .local v19, "placementWidth":Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v23, v19

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    if-lez v23, :cond_b

    .line 170
    const-string v23, "hswd"

    check-cast v19, Ljava/lang/Integer;

    .end local v19    # "placementWidth":Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    :cond_b
    const-string v23, "height"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 174
    .local v16, "placementHeight":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v23, v16

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    if-lez v23, :cond_c

    .line 176
    const-string v23, "hsht"

    check-cast v16, Ljava/lang/Integer;

    .end local v16    # "placementHeight":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/millennialmedia/internal/utils/ViewUtils;->convertPixelsToDips(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :cond_c
    const-string v23, "refreshrate"

    const-string v24, "refreshRate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v23, "keywords"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 182
    .local v8, "keywordsObject":Ljava/lang/Object;
    instance-of v0, v8, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 183
    const-string v23, "keywords"

    check-cast v8, Ljava/lang/String;

    .end local v8    # "keywordsObject":Ljava/lang/Object;
    move-object/from16 v0, v23

    invoke-static {v14, v0, v8}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_d
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getUserData()Lcom/millennialmedia/UserData;

    move-result-object v22

    .line 188
    .local v22, "userData":Lcom/millennialmedia/UserData;
    if-eqz v22, :cond_f

    .line 189
    const-string v23, "age"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getAge()Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string v23, "children"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getChildren()Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v23, "education"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getEducation()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v23, "ethnicity"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getEthnicity()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v23, "gender"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getGender()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v23, "income"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getIncome()Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v23, "marital"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getMarital()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const-string v23, "politics"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getPolitics()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v23, "zip"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getPostalCode()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const-string v23, "state"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getState()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getDob()Ljava/util/Date;

    move-result-object v6

    .line 201
    .local v6, "dateOfBirth":Ljava/util/Date;
    if-eqz v6, :cond_e

    .line 202
    const-string v23, "dob"

    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "yyyyMMdd"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    :cond_e
    const-string v23, "dma"

    invoke-virtual/range {v22 .. v22}, Lcom/millennialmedia/UserData;->getDma()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    .end local v6    # "dateOfBirth":Ljava/util/Date;
    :cond_f
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getExistingIds()Ljava/util/List;

    move-result-object v7

    .line 210
    .local v7, "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v23, "appsids"

    const-string v24, ","

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/millennialmedia/MMSDK;->getTestInfo()Lcom/millennialmedia/TestInfo;

    move-result-object v21

    .line 213
    .local v21, "testInfo":Lcom/millennialmedia/TestInfo;
    if-eqz v21, :cond_10

    .line 214
    const-string v23, "acid"

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/millennialmedia/TestInfo;->creativeId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    :cond_10
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 218
    .local v15, "paramsString":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 219
    const/16 v23, 0x0

    .line 229
    :goto_4
    return-object v23

    .line 57
    .end local v4    # "appInfo":Lcom/millennialmedia/AppInfo;
    .end local v7    # "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "location":Landroid/location/Location;
    .end local v10    # "mcc":Ljava/lang/Integer;
    .end local v12    # "mnc":Ljava/lang/Integer;
    .end local v13    # "networkOperatorName":Ljava/lang/String;
    .end local v15    # "paramsString":Ljava/lang/String;
    .end local v21    # "testInfo":Lcom/millennialmedia/TestInfo;
    .end local v22    # "userData":Lcom/millennialmedia/UserData;
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 60
    :cond_12
    const-string v23, "MD5"

    invoke-static/range {v23 .. v23}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, "md5DeviceId":Ljava/lang/String;
    const-string v23, "SHA1"

    invoke-static/range {v23 .. v23}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getHashedDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 63
    .local v20, "sha1DeviceId":Ljava/lang/String;
    if-eqz v11, :cond_0

    if-eqz v20, :cond_0

    .line 64
    const-string v23, "mmdid"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mmh_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 137
    .end local v11    # "md5DeviceId":Ljava/lang/String;
    .end local v20    # "sha1DeviceId":Ljava/lang/String;
    .restart local v9    # "location":Landroid/location/Location;
    .restart local v10    # "mcc":Ljava/lang/Integer;
    .restart local v12    # "mnc":Ljava/lang/Integer;
    .restart local v13    # "networkOperatorName":Ljava/lang/String;
    :cond_13
    const-string v23, "loc"

    const-string v24, "false"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 163
    .restart local v4    # "appInfo":Lcom/millennialmedia/AppInfo;
    :cond_14
    const-string v23, "at"

    const-string v24, "b"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v23, "reqtype"

    const-string v24, "getad"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v14, v0, v1}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;->addParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 222
    .restart local v7    # "existingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "paramsString":Ljava/lang/String;
    .restart local v21    # "testInfo":Lcom/millennialmedia/TestInfo;
    .restart local v22    # "userData":Lcom/millennialmedia/UserData;
    :cond_15
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getActivePlaylistServerBaseUrl()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "baseRequestUrl":Ljava/lang/String;
    if-nez v5, :cond_16

    .line 224
    const/16 v23, 0x0

    goto :goto_4

    .line 229
    :cond_16
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_4
.end method

.method static parsePlayListResponse(Ljava/lang/String;)Lcom/millennialmedia/internal/PlayList;
    .locals 8
    .param p0, "adResponse"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "timestamp":Ljava/lang/String;
    new-instance v0, Lcom/millennialmedia/internal/PlayList;

    invoke-direct {v0}, Lcom/millennialmedia/internal/PlayList;-><init>()V

    .line 311
    .local v0, "playList":Lcom/millennialmedia/internal/PlayList;
    const-string v3, "1"

    iput-object v3, v0, Lcom/millennialmedia/internal/PlayList;->playListVersion:Ljava/lang/String;

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handshakeId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/millennialmedia/internal/PlayList;->handshakeConfig:Ljava/lang/String;

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/millennialmedia/internal/PlayList;->responseId:Ljava/lang/String;

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placementId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/millennialmedia/internal/PlayList;->placementId:Ljava/lang/String;

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placementName_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/millennialmedia/internal/PlayList;->placementName:Ljava/lang/String;

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siteId_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/millennialmedia/internal/PlayList;->siteId:Ljava/lang/String;

    .line 318
    new-instance v1, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;

    const-string v3, "itemId"

    invoke-direct {v1, v3, p0}, Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .local v1, "playListItem":Lcom/millennialmedia/internal/PlayList$AdContentPlayListItem;
    invoke-virtual {v0, v1}, Lcom/millennialmedia/internal/PlayList;->addItem(Lcom/millennialmedia/internal/PlayList$PlayListItem;)V

    .line 322
    return-object v0
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
    .line 270
    .local p1, "adPlacementMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter$1;-><init>(Lcom/millennialmedia/internal/playlistserver/GreenServerAdapter;Ljava/util/Map;Lcom/millennialmedia/internal/playlistserver/PlayListServerAdapter$AdapterLoadListener;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method
