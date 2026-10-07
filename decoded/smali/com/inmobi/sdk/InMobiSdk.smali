.class public final Lcom/inmobi/sdk/InMobiSdk;
.super Ljava/lang/Object;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/sdk/InMobiSdk$2;,
        Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;,
        Lcom/inmobi/sdk/InMobiSdk$AgeGroup;,
        Lcom/inmobi/sdk/InMobiSdk$Gender;,
        Lcom/inmobi/sdk/InMobiSdk$Education;,
        Lcom/inmobi/sdk/InMobiSdk$Ethnicity;,
        Lcom/inmobi/sdk/InMobiSdk$ImIdType;,
        Lcom/inmobi/sdk/InMobiSdk$LogLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/inmobi/sdk/InMobiSdk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->initComponents()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->deInitComponents()V

    return-void
.end method

.method public static final addIdType(Lcom/inmobi/sdk/InMobiSdk$ImIdType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_1

    .line 360
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/e;->n(Ljava/lang/String;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_0

    .line 362
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/e;->o(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static clearCachedData(Landroid/content/Context;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 248
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "carbpreference"

    aput-object v1, v0, v2

    const-string v1, "IMAdMLtvpRuleCache"

    aput-object v1, v0, v7

    const-string v1, "inmobiAppAnalyticsSession"

    aput-object v1, v0, v8

    const-string v1, "aeskeygenerate"

    aput-object v1, v0, v9

    const-string v1, "impref"

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const-string v3, "IMAdTrackerStatusUpload"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "IMAdMMediationCache"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "inmobiAppAnalyticsAppId"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "inmobiAppAnalyticsSession"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "inmobisdkaid"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "IMAdTrackerStatusUpload"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "testAppPref"

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 249
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/signals/a;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {}, Lcom/inmobi/commons/core/configs/c;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {}, Lcom/inmobi/commons/core/utilities/a/a;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {}, Lcom/inmobi/rendering/mraid/i;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 251
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 252
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/shared_prefs/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".xml"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 251
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 257
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 258
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/shared_prefs/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".xml"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 257
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 265
    :cond_3
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "inmobi.cache"

    aput-object v1, v0, v2

    const-string v1, "inmobi.cache.data"

    aput-object v1, v0, v7

    const-string v1, "inmobi.cache.data.events.number"

    aput-object v1, v0, v8

    const-string v1, "inmobi.cache.data.events.timestamp"

    aput-object v1, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 266
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 268
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 266
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 275
    :cond_5
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "eventlog"

    aput-object v1, v0, v2

    const-string v1, "imai_click_events"

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 276
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 277
    const-string v0, "data"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 278
    new-instance v4, Ljava/io/File;

    const-string v0, "data"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 276
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 287
    :cond_7
    const-string v0, "adcache.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 288
    const-string v0, "appengage.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 289
    const-string v0, "im.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 290
    const-string v0, "ltvp.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 291
    const-string v0, "analytics.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 294
    const-string v0, "com.im.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 295
    return-void
.end method

.method private static deInitComponents()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->c()V

    .line 317
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/a;->c()V

    .line 318
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->c()V

    .line 319
    invoke-static {}, Lcom/inmobi/ads/i;->a()Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->c()V

    .line 320
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasSdkVersionChanged(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 298
    invoke-static {p0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    :cond_0
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {}, Lcom/inmobi/commons/a/b;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The minimum supported Android API level is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/commons/a/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SDK could not be initialized."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    if-nez p0, :cond_2

    .line 162
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "Context supplied as null, SDK could not be initialized."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 167
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "Account ID cannot be null or empty. Please provide a valid Account ID."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a/b;->a()[B
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.inmobi.rendering.InMobiAdActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 202
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "The activity com.inmobi.rendering.InMobiAdActivity not present in AndroidManifest. SDK could not be initialized."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered an internal error, SDK could not be initialized."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "SDK encountered an internal error, SDK could not be initialized."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_6

    .line 211
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v3, "Invalid account id passed to init. Please provide a valid account id"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_6
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 215
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk;->TAG:Ljava/lang/String;

    const-string v2, "SDK already initialized"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_7
    invoke-static {p0}, Lcom/inmobi/sdk/InMobiSdk;->hasSdkVersionChanged(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 220
    invoke-static {p0}, Lcom/inmobi/sdk/InMobiSdk;->clearCachedData(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/inmobi/commons/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    :cond_8
    invoke-static {p0, v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->b()V

    .line 226
    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->initComponents()V

    .line 227
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->d()V

    .line 229
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Lcom/inmobi/sdk/InMobiSdk$1;

    invoke-direct {v1}, Lcom/inmobi/sdk/InMobiSdk$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/utilities/a;->a(Lcom/inmobi/commons/core/utilities/a$b;)V

    goto/16 :goto_0
.end method

.method private static initComponents()V
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/c;->b()V

    .line 306
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/c;->d()V

    .line 307
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/b;->b()V

    .line 308
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c;->b()V

    .line 309
    invoke-static {}, Lcom/inmobi/commons/core/a/c;->a()V

    .line 310
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/a;->b()V

    .line 311
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->b()V

    .line 312
    invoke-static {}, Lcom/inmobi/ads/i;->a()Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->b()V

    .line 313
    return-void
.end method

.method public static final removeIdType(Lcom/inmobi/sdk/InMobiSdk$ImIdType;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_1

    .line 374
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/e;->n(Ljava/lang/String;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    if-ne p0, v0, :cond_0

    .line 376
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/e;->o(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setAge(I)V
    .locals 0

    .prologue
    .line 386
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->a(I)V

    .line 387
    return-void
.end method

.method public static final setAgeGroup(Lcom/inmobi/sdk/InMobiSdk$AgeGroup;)V
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public static final setAreaCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 404
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->b(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static final setEducation(Lcom/inmobi/sdk/InMobiSdk$Education;)V
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Education;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->i(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public static final setEthnicity(Lcom/inmobi/sdk/InMobiSdk$Ethnicity;)V
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->h(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public static final setGender(Lcom/inmobi/sdk/InMobiSdk$Gender;)V
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Gender;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->g(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public static final setHouseHoldIncome(Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;)V
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->k(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public static final setIncome(I)V
    .locals 0

    .prologue
    .line 480
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->c(I)V

    .line 481
    return-void
.end method

.method public static final setInterests(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 498
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->l(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public static final setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 471
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->j(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public static final setLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 516
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Landroid/location/Location;)V

    .line 517
    return-void
.end method

.method public static final setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 424
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->d(Ljava/lang/String;)V

    .line 425
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/e;->e(Ljava/lang/String;)V

    .line 426
    invoke-static {p2}, Lcom/inmobi/commons/core/utilities/info/e;->f(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$2;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    return-void

    .line 340
    :pswitch_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->NONE:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 343
    :pswitch_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 346
    :pswitch_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final setNationality(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 507
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->m(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public static final setPostalCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 413
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->c(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public static final setYearOfBirth(I)V
    .locals 0

    .prologue
    .line 435
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->b(I)V

    .line 436
    return-void
.end method
