.class public Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;
.super Lcom/lge/loader/InstanceCreator;
.source "VolumeVibratorManagerCreator.java"


# static fields
.field private static LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

.field private static VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

.field private static sVolumeVibratorManagerConstructor:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 13
    const-string v1, "/system/framework/com.lge.systemservice.core.jar"

    .line 12
    sput-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

    .line 15
    const-string v1, "com.lge.systemservice.core.volumevibratormanager.VolumeVibratorManager"

    .line 14
    sput-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

    .line 18
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->LGSYSTEM_SERVICE_CORE_LIB:Ljava/lang/String;

    .line 19
    const-class v2, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 22
    .local v0, "cloader":Ljava/lang/ClassLoader;
    :try_start_15
    sget-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    sput-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->sVolumeVibratorManagerConstructor:Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 27
    :goto_1e
    return-void

    .line 25
    :catch_1f
    move-exception v1

    const-string v1, "VolumeVibratorLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->VOL_VIBRATOR_MANAGER_CLASS:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " don\'t exist in library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lge/loader/InstanceCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # Ljava/lang/Object;

    .prologue
    .line 32
    :try_start_0
    sget-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->sVolumeVibratorManagerConstructor:Ljava/lang/Class;

    if-eqz v1, :cond_f

    .line 33
    sget-object v1, Lcom/lge/loader/volumevibrator/VolumeVibratorManagerCreator;->sVolumeVibratorManagerConstructor:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_16

    move-result-object v1

    .line 42
    :goto_a
    return-object v1

    .line 35
    :catch_b
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f
    :goto_f
    const/4 v1, 0x0

    goto :goto_a

    .line 37
    :catch_11
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_f

    .line 39
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_16
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_f
.end method
