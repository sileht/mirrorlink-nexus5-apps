.class public Lcom/lge/internal/FingerprintProtector;
.super Ljava/lang/Object;
.source "FingerprintProtector.java"


# static fields
.field private static final LIST_OF_AVAILABLELAUNCH_BENCHMARK:[Ljava/lang/String;

.field private static final LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "FingerprintProtector"

.field private static sAlreadyCheckToFake:Z

.field private static final sFakeProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsReleaseVersion:Z

.field private static sShouldProtect:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    .line 17
    const-string v1, "benchmark.packet"

    aput-object v1, v0, v3

    const-string v1, "com.a1dev"

    aput-object v1, v0, v4

    const-string v1, "com.antutu"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 18
    const-string v2, "com.app3ho"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.aurorasoftworks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.bfield"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 19
    const-string v2, "com.glbenchmark"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.obkircherlukas"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.performance"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 20
    const-string v2, "com.quicinc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.rightware"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.smartbench"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 21
    const-string v2, "com.unstableapps"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "it.curciolab"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "net.warp7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 22
    const-string v2, "org.zwanoo"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ru.rdmobile"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "se.nena"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 23
    const-string v2, "air.com.n2degames"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.benchbee.AST"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 24
    const-string v2, "com.passmark.pt_mobile"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.greenecomputing.linpack"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 25
    const-string v2, "com.metricowireless.datumandroid"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "org.zwanoo.android.speedtest"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 26
    const-string v2, "com.primatelabs.geekbench"

    aput-object v2, v0, v1

    .line 16
    sput-object v0, Lcom/lge/internal/FingerprintProtector;->LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    .line 29
    const-string v1, "com.metricowireless.datumandroid"

    aput-object v1, v0, v3

    const-string v1, "org.zwanoo.android.speedtest"

    aput-object v1, v0, v4

    .line 28
    sput-object v0, Lcom/lge/internal/FingerprintProtector;->LIST_OF_AVAILABLELAUNCH_BENCHMARK:[Ljava/lang/String;

    .line 31
    sput-boolean v3, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    .line 32
    sput-boolean v3, Lcom/lge/internal/FingerprintProtector;->sAlreadyCheckToFake:Z

    .line 33
    sput-boolean v3, Lcom/lge/internal/FingerprintProtector;->sIsReleaseVersion:Z

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    .line 138
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.id"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.display.id"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.fingerprint"

    const-string v2, "Android/unknown/unknown:4.4/unknown/unknown:userdebug/release-keys"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.host"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.incremental"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.release"

    const-string v2, "4.4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.codename"

    const-string v2, "REL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.user"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.host"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.build.version.sdk"

    const-string v2, "19"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.name"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.device"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.board"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.brand"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.manufacturer"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.product.model"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.bootloader"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.hardware"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    const-string v1, "ro.serialno"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static FakeBuildInfo()V
    .registers 6

    .prologue
    const/16 v5, 0x13

    .line 167
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 168
    .local v0, "originalTags":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 169
    .local v1, "originalType":Ljava/lang/String;
    const-class v2, Landroid/os/Build;

    const-string v3, "ID"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-class v2, Landroid/os/Build;

    const-string v3, "DISPLAY"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-class v2, Landroid/os/Build;

    const-string v3, "PRODUCT"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-class v2, Landroid/os/Build;

    const-string v3, "DEVICE"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-class v2, Landroid/os/Build;

    const-string v3, "BOARD"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-class v2, Landroid/os/Build;

    const-string v3, "MANUFACTURER"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-class v2, Landroid/os/Build;

    const-string v3, "BRAND"

    const-string v4, "Android"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-class v2, Landroid/os/Build;

    const-string v3, "MODEL"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-class v2, Landroid/os/Build;

    const-string v3, "BOOTLOADER"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-class v2, Landroid/os/Build;

    const-string v3, "HARDWARE"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-class v2, Landroid/os/Build;

    const-string v3, "SERIAL"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "INCREMENTAL"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "RELEASE"

    const-string v4, "4.4"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "SDK"

    const-string v4, "19"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "SDK_INT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "CODENAME"

    const-string v4, "REL"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-class v2, Landroid/os/Build$VERSION;

    const-string v3, "RESOURCES_SDK_INT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-class v2, Landroid/os/Build;

    const-string v3, "USER"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-class v2, Landroid/os/Build;

    const-string v3, "HOST"

    const-string v4, "unknown"

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-class v2, Landroid/os/Build;

    const-string v3, "FINGERPRINT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Android/unknown/unknown:4.4/unknown/unknown:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lge/internal/FingerprintProtector;->put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method private static isAvailableLaunchBechmark(Ljava/lang/String;)Z
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "bisAvailable":Z
    const-string v4, "sys.lge.benchmarkEnable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    .local v1, "enableCheckList":Z
    if-eqz v1, :cond_1d

    .line 72
    sget-object v4, Lcom/lge/internal/FingerprintProtector;->LIST_OF_AVAILABLELAUNCH_BENCHMARK:[Ljava/lang/String;

    array-length v5, v4

    :goto_d
    if-lt v3, v5, :cond_10

    .line 81
    :goto_f
    return v0

    .line 72
    :cond_10
    aget-object v2, v4, v3

    .line 73
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 74
    const/4 v0, 0x1

    .line 75
    goto :goto_f

    .line 72
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 79
    .end local v2    # "s":Ljava/lang/String;
    :cond_1d
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isBenchmarkToBlock(Ljava/lang/String;)Z
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    if-nez p0, :cond_5

    .line 100
    :cond_4
    :goto_4
    return v2

    .line 86
    :cond_5
    sget-boolean v4, Lcom/lge/internal/FingerprintProtector;->sIsReleaseVersion:Z

    if-nez v4, :cond_4

    .line 88
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->isProductVersion()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 89
    sput-boolean v3, Lcom/lge/internal/FingerprintProtector;->sIsReleaseVersion:Z

    goto :goto_4

    .line 93
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "lowCasePackageName":Ljava/lang/String;
    sget-object v5, Lcom/lge/internal/FingerprintProtector;->LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

    array-length v6, v5

    move v4, v2

    :goto_1a
    if-ge v4, v6, :cond_4

    aget-object v1, v5, v4

    .line 95
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-static {v0}, Lcom/lge/internal/FingerprintProtector;->isAvailableLaunchBechmark(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_40

    .line 96
    const-string v2, "FingerprintProtector"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "benchmark pacakge was catched.(2) : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 97
    goto :goto_4

    .line 94
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a
.end method

.method private static isProductVersion()Z
    .registers 11

    .prologue
    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, "version":Ljava/lang/String;
    const-string v6, "ro.lge.swversion_short"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "swVersion":Ljava/lang/String;
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_31

    .line 108
    move-object v3, v2

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v9, :cond_27

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v10, :cond_27

    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    :cond_27
    :goto_27
    if-nez v3, :cond_5c

    .line 125
    const-string v5, "FingerprintProtector"

    const-string v6, "No SW version info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_30
    return v4

    .line 113
    :cond_31
    const-string v6, "ro.lge.factoryversion"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "factoryVersion":Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 115
    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "splitVersion":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x3

    if-le v6, v7, :cond_27

    .line 117
    aget-object v3, v1, v8

    .line 118
    aget-object v6, v1, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v9, :cond_27

    aget-object v6, v1, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v10, :cond_27

    .line 119
    aget-object v6, v1, v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_27

    .line 128
    .end local v0    # "factoryVersion":Ljava/lang/String;
    .end local v1    # "splitVersion":[Ljava/lang/String;
    :cond_5c
    const-string v6, "10"

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_66

    move v4, v5

    .line 129
    goto :goto_30

    .line 131
    :cond_66
    const-string v5, "FingerprintProtector"

    const-string v6, "This is not product version."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private static put(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fakeValue"    # Ljava/lang/Object;

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 194
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 200
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_c
    return-void

    .line 197
    :catch_d
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintProtector"

    const-string v3, "error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public static tryFakeBuildInfo(Ljava/lang/String;)V
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 36
    if-nez p0, :cond_5

    .line 63
    :cond_4
    :goto_4
    return-void

    .line 37
    :cond_5
    sget-boolean v3, Lcom/lge/internal/FingerprintProtector;->sAlreadyCheckToFake:Z

    if-nez v3, :cond_4

    .line 39
    sput-boolean v6, Lcom/lge/internal/FingerprintProtector;->sAlreadyCheckToFake:Z

    .line 40
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_4

    .line 44
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->isProductVersion()Z

    move-result v3

    if-nez v3, :cond_4

    .line 48
    const-string v3, "ro.lge.protect.fingerprint"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 49
    sput-boolean v6, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    .line 50
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->FakeBuildInfo()V

    goto :goto_4

    .line 53
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "lowCasePackageName":Ljava/lang/String;
    sget-object v3, Lcom/lge/internal/FingerprintProtector;->LIST_OF_BENCHMARK_TO_BLOCK:[Ljava/lang/String;

    array-length v4, v3

    :goto_2e
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    .line 55
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 56
    sput-boolean v6, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    .line 57
    invoke-static {}, Lcom/lge/internal/FingerprintProtector;->FakeBuildInfo()V

    .line 58
    const-string v2, "FingerprintProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "benchmark pacakge was catched(1) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v2, "http.agent"

    const-string v3, "Dalvik/1.6.0 (Linux; U; Android 4.4.2; XXXXXXX Build/KVT49L.XXXXXXXX)"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 54
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e
.end method

.method public static tryGetFakeProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "propName"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v0, Lcom/lge/internal/FingerprintProtector;->sShouldProtect:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 161
    sget-object v0, Lcom/lge/internal/FingerprintProtector;->sFakeProps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
