.class public Lcom/lge/hardware/LGCamera;
.super Ljava/lang/Object;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hardware/LGCamera$CameraDataCallback;,
        Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;,
        Lcom/lge/hardware/LGCamera$EventHandler;,
        Lcom/lge/hardware/LGCamera$LGParameters;,
        Lcom/lge/hardware/LGCamera$ProxyData;,
        Lcom/lge/hardware/LGCamera$ProxyDataListener;
    }
.end annotation


# static fields
.field private static final CAMERA_META_DATA_FLASH_INDICATOR:I = 0x8

.field private static final CAMERA_META_DATA_HDR_INDICATOR:I = 0x4

.field private static final CAMERA_META_DATA_MANUAL_MODE_INDICATOR:I = 0x10

.field private static final CAMERA_MSG_LGE_META_DATA:I = 0x20000

.field private static final CAMERA_MSG_LGE_PROXY_DATA:I = 0x80000

.field private static final CAMERA_MSG_LGE_STATS_DATA:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "LGCamera"

.field private static sSplitAreaMethod:Ljava/lang/Object;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

.field private mCameraDataCallbackLock:Ljava/lang/Object;

.field private mCameraId:I

.field private mEnabledMetaData:I

.field private mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

.field private mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

.field private mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

.field private mManualModeMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

.field private mMetaDataCallbackLock:Ljava/lang/Object;

.field private mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

.field private mProxyDataListenerLock:Ljava/lang/Object;

.field private mProxyDataRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 29
    const-string v0, "lgcamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 294
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v1, "splitArea"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lge/util/ProxyUtil;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/lge/hardware/LGCamera;->sSplitAreaMethod:Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "cameraId"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallbackLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListenerLock:Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    .line 73
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/lge/hardware/LGCamera;->cameraInit(ILandroid/hardware/Camera;)V

    .line 74
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallbackLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListenerLock:Ljava/lang/Object;

    .line 90
    invoke-static {p1, p2}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    .line 92
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/lge/hardware/LGCamera;->cameraInit(ILandroid/hardware/Camera;)V

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 292
    sget-object v0, Lcom/lge/hardware/LGCamera;->sSplitAreaMethod:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

    return-object v0
.end method

.method static synthetic access$4([BI)I
    .registers 3

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/lge/hardware/LGCamera;->byteToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/lge/hardware/LGCamera;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    return v0
.end method

.method static synthetic access$6(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mManualModeMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    return-object v0
.end method

.method private static byteToInt([BI)I
    .registers 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v3, 0x4

    if-lt v0, v3, :cond_6

    .line 143
    return v2

    .line 140
    :cond_6
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 141
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private cameraInit(ILandroid/hardware/Camera;)V
    .registers 6
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p2}, Lcom/lge/hardware/LGCamera;->native_change_listener(Ljava/lang/Object;Landroid/hardware/Camera;)V

    .line 97
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .line 98
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

    .line 99
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 100
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 101
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mManualModeMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 103
    iput p1, p0, Lcom/lge/hardware/LGCamera;->mCameraId:I

    .line 106
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_26

    .line 107
    new-instance v1, Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/lge/hardware/LGCamera$EventHandler;-><init>(Lcom/lge/hardware/LGCamera;Lcom/lge/hardware/LGCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    .line 113
    :goto_25
    return-void

    .line 108
    :cond_26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 109
    new-instance v1, Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/lge/hardware/LGCamera$EventHandler;-><init>(Lcom/lge/hardware/LGCamera;Lcom/lge/hardware/LGCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    goto :goto_25

    .line 111
    :cond_34
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    goto :goto_25
.end method

.method private final native native_change_listener(Ljava/lang/Object;Landroid/hardware/Camera;)V
.end method

.method private final native native_enableProxyDataListener(Landroid/hardware/Camera;Z)V
.end method

.method private final native native_setISPDataCallbackMode(Landroid/hardware/Camera;Z)V
.end method

.method private final native native_setMetadataCb(Landroid/hardware/Camera;Z)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 907
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/hardware/LGCamera;

    .line 908
    .local v0, "c":Lcom/lge/hardware/LGCamera;
    if-nez v0, :cond_b

    .line 916
    :cond_a
    :goto_a
    return-void

    .line 912
    :cond_b
    iget-object v2, v0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    if-eqz v2, :cond_a

    .line 913
    iget-object v2, v0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lge/hardware/LGCamera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 914
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-virtual {v2, v1}, Lcom/lge/hardware/LGCamera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 129
    iput-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    .line 132
    :cond_c
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    if-eqz v0, :cond_15

    .line 133
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-virtual {v0, v1}, Lcom/lge/hardware/LGCamera$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    :cond_15
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;
    .registers 2

    .prologue
    .line 288
    new-instance v0, Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-direct {v0, p0}, Lcom/lge/hardware/LGCamera$LGParameters;-><init>(Lcom/lge/hardware/LGCamera;)V

    .line 289
    .local v0, "p":Lcom/lge/hardware/LGCamera$LGParameters;
    return-object v0
.end method

.method public final setFlashdataCb(Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_3
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 215
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 220
    if-nez p1, :cond_1c

    .line 221
    :try_start_8
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 222
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    if-nez v0, :cond_18

    .line 223
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_18} :catch_29

    .line 233
    :cond_18
    :goto_18
    return-void

    .line 215
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0

    .line 226
    :cond_1c
    :try_start_1c
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 227
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_28} :catch_29

    goto :goto_18

    .line 230
    :catch_29
    move-exception v0

    const-string v0, "LGCamera"

    const-string v1, "setFlashdataCb failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    goto :goto_18
.end method

.method public final setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_3
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .line 273
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_f

    .line 277
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v1, v0}, Lcom/lge/hardware/LGCamera;->native_setISPDataCallbackMode(Landroid/hardware/Camera;Z)V

    .line 278
    return-void

    .line 273
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0

    .line 277
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final setLGManualModedataCb(Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_3
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mManualModeMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 243
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 247
    if-nez p1, :cond_1c

    .line 248
    :try_start_8
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 249
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    if-nez v0, :cond_18

    .line 250
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_18} :catch_29

    .line 260
    :cond_18
    :goto_18
    return-void

    .line 243
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0

    .line 253
    :cond_1c
    :try_start_1c
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 254
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_28} :catch_29

    goto :goto_18

    .line 257
    :catch_29
    move-exception v0

    const-string v0, "LGCamera"

    const-string v1, "setLGManualModedataCb failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    goto :goto_18
.end method

.method public final setMetadataCb(Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_3
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 187
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 192
    if-nez p1, :cond_1c

    .line 193
    :try_start_8
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 194
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    if-nez v0, :cond_18

    .line 195
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_18} :catch_29

    .line 205
    :cond_18
    :goto_18
    return-void

    .line 187
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0

    .line 198
    :cond_1c
    :try_start_1c
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 199
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_28} :catch_29

    goto :goto_18

    .line 202
    :catch_29
    move-exception v0

    const-string v0, "LGCamera"

    const-string v1, "setMetadataCb failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    goto :goto_18
.end method

.method public final setProxyDataListener(Lcom/lge/hardware/LGCamera$ProxyDataListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/lge/hardware/LGCamera$ProxyDataListener;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 974
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 975
    :try_start_5
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

    .line 974
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16

    .line 978
    if-eqz p1, :cond_19

    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    if-nez v0, :cond_19

    .line 979
    iput-boolean v3, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 980
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0, v3}, Lcom/lge/hardware/LGCamera;->native_enableProxyDataListener(Landroid/hardware/Camera;Z)V

    .line 985
    :cond_15
    :goto_15
    return-void

    .line 974
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 981
    :cond_19
    if-nez p1, :cond_15

    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    if-eqz v0, :cond_15

    .line 982
    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 983
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0, v2}, Lcom/lge/hardware/LGCamera;->native_enableProxyDataListener(Landroid/hardware/Camera;Z)V

    goto :goto_15
.end method
