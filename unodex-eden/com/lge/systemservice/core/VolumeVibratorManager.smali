.class public Lcom/lge/systemservice/core/VolumeVibratorManager;
.super Ljava/lang/Object;
.source "VolumeVibratorManager.java"

# interfaces
.implements Lcom/lge/loader/volumevibrator/IVolumeVibratorLoader;


# static fields
.field public static final FEATURE_NAME:Ljava/lang/String; = "com.lge.software.volumevibrator"

.field private static final TAG:Ljava/lang/String;

.field public static final VIBRATE_DEFAULT_VOLUME:I = 0x5

.field public static final VIBRATE_MAX_VOLUME:I = 0x7

.field public static final VIBRATE_NONE_VOLUME:I = -0x1

.field public static final VIBRATE_NUM_TYPE:I = 0x3

.field public static final VIBRATE_TYPE_HAPTIC:I = 0x2

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RING:I

.field private static sVIBRATE_TYPE_ALIAS:[I

.field private static sVIBRATE_TYPE_ALIAS_Ex:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

.field private final mToken:Landroid/os/Binder;

.field private mVolumeValue:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 23
    const-class v0, Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    .line 69
    new-array v0, v3, [I

    .line 71
    aput v2, v0, v2

    .line 72
    aput v1, v0, v1

    .line 69
    sput-object v0, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS:[I

    .line 76
    new-array v0, v3, [I

    .line 79
    aput v1, v0, v1

    .line 76
    sput-object v0, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS_Ex:[I

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    .line 63
    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x1

    .line 64
    const/16 v5, 0x7d0

    aput v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0xbb8

    aput v5, v3, v4

    const/16 v4, 0xfa0

    aput v4, v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x1388

    aput v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x17ed

    aput v5, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0x1d6b

    aput v5, v3, v4

    const/4 v4, 0x7

    const v5, 0x13880

    aput v5, v3, v4

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    .line 91
    const-string v3, "ro.lge.vib_magnitude_index"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "vibrateVolume":Ljava/lang/String;
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_61

    .line 93
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ro.lge.vib_magnitude_index = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "vibteteVolumeIndex":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5e
    array-length v3, v2

    if-lt v0, v3, :cond_72

    .line 100
    .end local v0    # "i":I
    .end local v2    # "vibteteVolumeIndex":[Ljava/lang/String;
    :cond_61
    iput-object p1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    .line 104
    sget v3, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v3, v6, :cond_71

    .line 106
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS_Ex:[I

    sput-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS:[I

    .line 109
    :cond_71
    return-void

    .line 96
    .restart local v0    # "i":I
    .restart local v2    # "vibteteVolumeIndex":[Ljava/lang/String;
    :cond_72
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 97
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Initialize mVolumeValue["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e
.end method

.method static synthetic access$0(Lcom/lge/systemservice/core/VolumeVibratorManager;Lcom/lge/systemservice/core/IVolumeVibratorManager;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    return-void
.end method

.method private getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    if-nez v0, :cond_23

    .line 113
    const-string v0, "volumevibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/systemservice/core/IVolumeVibratorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    .line 114
    iget-object v0, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    if-eqz v0, :cond_23

    .line 116
    :try_start_14
    iget-object v0, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    invoke-interface {v0}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/lge/systemservice/core/VolumeVibratorManager$1;

    invoke-direct {v1, p0}, Lcom/lge/systemservice/core/VolumeVibratorManager$1;-><init>(Lcom/lge/systemservice/core/VolumeVibratorManager;)V

    .line 119
    const/4 v2, 0x0

    .line 116
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_26

    .line 123
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    return-object v0

    .line 120
    :catch_26
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mService:Lcom/lge/systemservice/core/IVolumeVibratorManager;

    goto :goto_23
.end method

.method private static usageForAttributes(Landroid/media/AudioAttributes;)I
    .registers 2
    .param p0, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 392
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 265
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_7

    .line 273
    :goto_6
    return-void

    .line 268
    :cond_7
    :try_start_7
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "cancel()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_6

    .line 270
    :catch_14
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to cancel vibration."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public getVibrateVolume()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 305
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_8

    .line 312
    :goto_7
    return v2

    .line 308
    :cond_8
    :try_start_8
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "getVibrateVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-interface {v1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->getVibrateVolume()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_14

    move-result v2

    goto :goto_7

    .line 310
    :catch_14
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to getVibrateVolume."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public getVibrateVolume(I)I
    .registers 8
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 353
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_8

    .line 364
    :goto_7
    return v2

    .line 356
    :cond_8
    if-ltz p1, :cond_37

    const/4 v3, 0x3

    if-ge p1, v3, :cond_37

    .line 359
    :try_start_d
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVibrateVolume vibrateType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS:[I

    aget v3, v3, p1

    invoke-interface {v1, v3}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->getVibrateVolumeType(I)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2c} :catch_2e

    move-result v2

    goto :goto_7

    .line 362
    :catch_2e
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to setVibrateVolume."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public setVibrateMute(Z)V
    .registers 8
    .param p1, "state"    # Z

    .prologue
    .line 378
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "callingPackage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v2

    .line 380
    .local v2, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v2, :cond_d

    .line 389
    :goto_c
    return-void

    .line 384
    :cond_d
    :try_start_d
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setVibrateMute() change to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    invoke-interface {v2, p1, v0, v3}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateMute(ZLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_30} :catch_31

    goto :goto_c

    .line 386
    :catch_31
    move-exception v1

    .line 387
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to setVibrateMute."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public setVibrateVolume(I)V
    .registers 7
    .param p1, "volumeIndex"    # I

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 283
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_7

    .line 295
    :goto_6
    return-void

    .line 285
    :cond_7
    if-ltz p1, :cond_2d

    const/4 v2, 0x7

    if-gt p1, v2, :cond_2d

    .line 287
    :try_start_c
    invoke-interface {v1, p1}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateVolume(I)V

    .line 288
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setVibrateVolume() volumeIndex "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_6

    .line 289
    :catch_24
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to setVibrateVolume."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public setVibrateVolume(II)V
    .registers 8
    .param p1, "vibrateType"    # I
    .param p2, "volumeIndex"    # I

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 326
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_7

    .line 342
    :goto_6
    return-void

    .line 328
    :cond_7
    if-ltz p2, :cond_44

    const/4 v2, 0x7

    if-gt p2, v2, :cond_44

    .line 329
    if-ltz p1, :cond_44

    const/4 v2, 0x3

    if-ge p1, v2, :cond_44

    .line 332
    :try_start_11
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS:[I

    aget v2, v2, p1

    invoke-interface {v1, v2, p2}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->setVibrateVolumeType(II)V

    .line 334
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setVibrateVolume vibrateType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/lge/systemservice/core/VolumeVibratorManager;->sVIBRATE_TYPE_ALIAS:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_3a} :catch_3b

    goto :goto_6

    .line 336
    :catch_3b
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to setVibrateVolume."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 340
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public vibrate(JI)V
    .registers 5
    .param p1, "milliseconds"    # J
    .param p3, "volumeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate(JILandroid/media/AudioAttributes;)V

    .line 139
    return-void
.end method

.method public vibrate(JILandroid/media/AudioAttributes;)V
    .registers 14
    .param p1, "milliseconds"    # J
    .param p3, "volumeIndex"    # I
    .param p4, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v1

    .line 159
    .local v1, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v1, :cond_7

    .line 174
    :goto_6
    return-void

    .line 161
    :cond_7
    if-ltz p3, :cond_54

    const/4 v2, 0x7

    if-gt p3, v2, :cond_54

    .line 163
    :try_start_c
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vibrate() packageName "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    const-string v4, " volumeIndex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    .line 166
    iget-object v4, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v6, v4, p3

    invoke-static {p4}, Lcom/lge/systemservice/core/VolumeVibratorManager;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v7

    iget-object v8, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    move-wide v4, p1

    .line 165
    invoke-interface/range {v1 .. v8}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->vibrate(ILjava/lang/String;JIILandroid/os/IBinder;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_4a} :catch_4b

    goto :goto_6

    .line 168
    :catch_4b
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to vibrate."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_54
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public vibrate([JI[I)V
    .registers 5
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "volumeIndex"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate([JI[ILandroid/media/AudioAttributes;)V

    .line 203
    return-void
.end method

.method public vibrate([JI[ILandroid/media/AudioAttributes;)V
    .registers 15
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "volumeIndex"    # [I
    .param p4, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getService()Lcom/lge/systemservice/core/IVolumeVibratorManager;

    move-result-object v0

    .line 235
    .local v0, "service":Lcom/lge/systemservice/core/IVolumeVibratorManager;
    if-nez v0, :cond_7

    .line 255
    :goto_6
    return-void

    .line 240
    :cond_7
    array-length v1, p1

    if-ge p2, v1, :cond_5e

    array-length v1, p1

    array-length v2, p3

    if-ne v1, v2, :cond_5e

    .line 242
    :try_start_e
    array-length v1, p3

    new-array v5, v1, [I

    .line 243
    .local v5, "NaturalVolumeIndex":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_12
    array-length v1, p3

    if-lt v9, v1, :cond_53

    .line 246
    sget-object v1, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vibratePattern() packageName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " volumeIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mPackageName:Ljava/lang/String;

    .line 248
    invoke-static {p4}, Lcom/lge/systemservice/core/VolumeVibratorManager;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mToken:Landroid/os/Binder;

    move-object v3, p1

    move v4, p2

    .line 247
    invoke-interface/range {v0 .. v7}, Lcom/lge/systemservice/core/IVolumeVibratorManager;->vibratePattern(ILjava/lang/String;[JI[IILandroid/os/IBinder;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_49} :catch_4a

    goto :goto_6

    .line 249
    .end local v5    # "NaturalVolumeIndex":[I
    .end local v9    # "i":I
    :catch_4a
    move-exception v8

    .line 250
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/systemservice/core/VolumeVibratorManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 244
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v5    # "NaturalVolumeIndex":[I
    .restart local v9    # "i":I
    :cond_53
    :try_start_53
    iget-object v1, p0, Lcom/lge/systemservice/core/VolumeVibratorManager;->mVolumeValue:[I

    aget v2, p3, v9

    aget v1, v1, v2

    aput v1, v5, v9
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5b} :catch_4a

    .line 243
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 253
    .end local v5    # "NaturalVolumeIndex":[I
    .end local v9    # "i":I
    :cond_5e
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method
