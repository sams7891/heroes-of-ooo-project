.class public interface abstract Lcom/globalfun/adventuretime/free/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field public static final CHECK_ORIENTATION:Z = false

.field public static final DEVICE_CLASS:I = 0x0

.field public static final DEVICE_MEMORY:I = 0x0

.field public static final DEVICE_SPEED:I = 0x0

.field public static final FRAME_LATENCY:I = 0x0

.field public static final HAS_TOUCHSCREEN:Z = true

.field public static final HIGH:I = 0x0

.field public static final LANDSCAPE:I = 0x1

.field public static final LARGE:I = 0x1

.field public static final LAUNCH_DEC:[I

.field public static final LAUNCH_INC:[I

.field public static final LIMITED_PALETTE:Z = false

.field public static final LOW:I = 0x2

.field public static final MEDIUM:I = 0x2

.field public static final MODERATE:I = 0x1

.field public static final MOTOROLA:I = 0x3

.field public static final NOKIA_S40:I = 0x1

.field public static final NOKIA_S60:I = 0x2

.field public static final PORTRAIT:I = 0x0

.field public static final SCREEN_ORIENT:I = 0x0

.field public static final SCREEN_SIZE:I = 0x0

.field public static final SMALL:I = 0x3

.field public static final SONY_ERICSSON:I = 0x0

.field public static final SOUND_VOLUME:I = 0x64

.field public static final SQUARE:I = 0x2

.field public static final XLARGE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/globalfun/adventuretime/free/DeviceConfig;->LAUNCH_INC:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/globalfun/adventuretime/free/DeviceConfig;->LAUNCH_DEC:[I

    return-void

    .line 46
    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0x9
        0xb
        0xd
    .end array-data

    .line 47
    :array_1
    .array-data 4
        -0x5
        -0x8
        -0xb
        -0xe
        -0x11
        -0x14
    .end array-data
.end method
