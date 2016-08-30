.class public final Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;
.super Ljava/lang/Object;
.source "LGBleQmAdapter.java"


# static fields
.field public static final ACTION_BLEQM_MANAGER_SERVICE_RESTART:Ljava/lang/String; = "com.lge.bluetooth.le.quietmode.adapter.action.BLEQM_MANAGER_SERVICE_RESTART"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.lge.bluetooth.le.quietmode.adapter.action.STATE_CHANGED"

.field private static final BLEQM_MANAGER_SERVICE:Ljava/lang/String; = "ble_quietmode"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "com.lge.bluetooth.le.quietmode.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.lge.bluetooth.le.quietmode.adapter.extra.STATE"

.field public static final STATE_OFF:I = 0x5a

.field public static final STATE_ON:I = 0x5c

.field public static final STATE_TURNING_OFF:I = 0x5d

.field public static final STATE_TURNING_ON:I = 0x5b

.field private static final TAG:Ljava/lang/String;

.field private static sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

.field private static sBluetoothLeAdvertiser:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

.field private static sBluetoothLeScanner:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

.field private final mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

.field private mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private constructor <init>(Lcom/lge/systemservice/core/IBleQmManager;)V
    .registers 5
    .param p1, "managerService"    # Lcom/lge/systemservice/core/IBleQmManager;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mLock:Ljava/lang/Object;

    .line 291
    new-instance v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;

    invoke-direct {v1, p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter$1;-><init>(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V

    iput-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    .line 111
    if-nez p1, :cond_22

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bleqm manager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    invoke-interface {p1, v1}, Lcom/lge/systemservice/core/IBleQmManager;->registerAdapter(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_2d

    .line 119
    :goto_2a
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    .line 120
    return-void

    .line 116
    :catch_2d
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    return-void
.end method

.method static synthetic access$3(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    return-object v0
.end method

.method public static declared-synchronized getBleQmAdapter()Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;
    .registers 6

    .prologue
    .line 97
    const-class v3, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getBleQmAdapter:  sAdapter:  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    if-nez v2, :cond_30

    .line 99
    const-string v2, "ble_quietmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_34

    .line 101
    invoke-static {v0}, Lcom/lge/systemservice/core/IBleQmManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IBleQmManager;

    move-result-object v1

    .line 102
    .local v1, "managerService":Lcom/lge/systemservice/core/IBleQmManager;
    new-instance v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-direct {v2, v1}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;-><init>(Lcom/lge/systemservice/core/IBleQmManager;)V

    sput-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    .line 107
    .end local v1    # "managerService":Lcom/lge/systemservice/core/IBleQmManager;
    :cond_30
    :goto_30
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3c

    monitor-exit v3

    return-object v2

    .line 104
    :cond_34
    :try_start_34
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Ble Quietmode binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3c

    goto :goto_30

    .line 97
    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isBleQmSupported()Z
    .registers 4

    .prologue
    .line 83
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v2, "0000 isBleQmSupported:  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "supported":Z
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isBRCMSolution()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 86
    const/4 v0, 0x1

    .line 87
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "brcm : ble quietmode supported= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_23
    :goto_23
    return v0

    .line 88
    :cond_24
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isMTKSolution()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 89
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mtk : ble quietmode supported= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 90
    :cond_3f
    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->isQCTSolution()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 91
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "qct : ble quietmode supported= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method


# virtual methods
.method public cleanup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 266
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v1, "0000 cleanup:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sput-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    .line 268
    iput-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    .line 270
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeAdvertiser:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    if-eqz v0, :cond_17

    .line 271
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeAdvertiser:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->cleanup()V

    .line 272
    sput-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeAdvertiser:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    .line 275
    :cond_17
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeScanner:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    if-eqz v0, :cond_22

    .line 276
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeScanner:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->cleanup()V

    .line 277
    sput-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeScanner:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    .line 279
    :cond_22
    return-void
.end method

.method public disable()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 174
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000 disable:  mManagerService:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->isBleQmSupported()Z

    move-result v2

    if-nez v2, :cond_25

    .line 176
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Ble quietmode is not supported.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_24
    return v1

    .line 181
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    if-eqz v2, :cond_30

    .line 182
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IBleQmManager;->disable()Z

    move-result v1

    goto :goto_24

    .line 184
    :cond_30
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "mManagerService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_37} :catch_38

    goto :goto_24

    .line 186
    :catch_38
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public enable()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000 enable:  mManagerService:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->isBleQmSupported()Z

    move-result v2

    if-nez v2, :cond_25

    .line 152
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Ble quietmode is not supported.."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_24
    return v1

    .line 156
    :cond_25
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 157
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v2, "enable(): Ble quietmode is already enabled..!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x1

    goto :goto_24

    .line 162
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    if-eqz v2, :cond_3f

    .line 163
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    invoke-interface {v2}, Lcom/lge/systemservice/core/IBleQmManager;->enable()Z

    move-result v1

    goto :goto_24

    .line 165
    :cond_3f
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "mManagerService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_46} :catch_47

    goto :goto_24

    .line 167
    :catch_47
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    invoke-interface {v1, v2}, Lcom/lge/systemservice/core/IBleQmManager;->unregisterAdapter(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_b
    .catchall {:try_start_0 .. :try_end_7} :catchall_17

    .line 287
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 289
    :goto_a
    return-void

    .line 284
    :catch_b
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_c
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_17

    .line 287
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_a

    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_17
    move-exception v1

    .line 287
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 288
    throw v1
.end method

.method getBleQmManager()Lcom/lge/systemservice/core/IBleQmManager;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    return-object v0
.end method

.method public getBluetoothLeAdvertiser()Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getState()I

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_a

    .line 134
    :cond_9
    :goto_9
    return-object v0

    .line 126
    :cond_a
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->isMultipleAdvertisementSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_13
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeAdvertiser:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    if-nez v0, :cond_20

    .line 131
    new-instance v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    invoke-direct {v0, v2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;-><init>(Lcom/lge/systemservice/core/IBleQmManager;)V

    sput-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeAdvertiser:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    .line 129
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_24

    .line 134
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeAdvertiser:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    goto :goto_9

    .line 129
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public getBluetoothLeScanner()Lcom/lge/bluetooth/le/LGBluetoothLeScanner;
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getState()I

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_a

    .line 139
    const/4 v0, 0x0

    .line 146
    :goto_9
    return-object v0

    .line 141
    :cond_a
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_d
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeScanner:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    if-nez v0, :cond_1a

    .line 143
    new-instance v0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerService:Lcom/lge/systemservice/core/IBleQmManager;

    invoke-direct {v0, v2}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;-><init>(Lcom/lge/systemservice/core/IBleQmManager;)V

    sput-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeScanner:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    .line 141
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1e

    .line 146
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->sBluetoothLeScanner:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    goto :goto_9

    .line 141
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method getBluetoothService(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    .registers 5
    .param p1, "cb"    # Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    monitor-enter v1

    .line 339
    if-nez p1, :cond_10

    .line 340
    :try_start_5
    sget-object v0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_c
    :goto_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1e

    .line 345
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    return-object v0

    .line 341
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 342
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 338
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getState()I
    .registers 7

    .prologue
    .line 207
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000 getState:  mService:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_16
    iget-object v3, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    monitor-enter v3
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_47

    .line 210
    :try_start_19
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    if-eqz v2, :cond_39

    .line 211
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-interface {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->getState()I

    move-result v1

    .line 212
    .local v1, "state":I
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getState(). Returning "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit v3

    .line 220
    .end local v1    # "state":I
    :goto_38
    return v1

    .line 209
    :cond_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_44

    .line 219
    :goto_3a
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "getState() :  mService = null. Returning STATE_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v1, 0x5a

    goto :goto_38

    .line 209
    :catchall_44
    move-exception v2

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_47} :catch_47

    .line 216
    :catch_47
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method

.method public isEnabled()Z
    .registers 5

    .prologue
    .line 193
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0000 isEnabled:  mService:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_16
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    monitor-enter v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_2b

    .line 196
    :try_start_19
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    if-eqz v1, :cond_25

    .line 197
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-interface {v1}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->isEnabled()Z

    move-result v1

    monitor-exit v2

    .line 203
    :goto_24
    return v1

    .line 195
    :cond_25
    monitor-exit v2

    .line 203
    :goto_26
    const/4 v1, 0x0

    goto :goto_24

    .line 195
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2b} :catch_2b

    .line 200
    :catch_2b
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public isMultipleAdvertisementSupported()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getState()I

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_a

    .line 234
    :cond_9
    :goto_9
    return v1

    .line 228
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    if-eqz v2, :cond_9

    .line 229
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-interface {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->isMultiAdvertisementSupported()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result v1

    goto :goto_9

    .line 231
    :catch_15
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "failed to get isMultipleAdvertisementSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isOffloadedFilteringSupported()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getState()I

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_a

    .line 248
    :cond_9
    :goto_9
    return v1

    .line 242
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    if-eqz v2, :cond_9

    .line 243
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-interface {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->isOffloadedFilteringSupported()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result v1

    goto :goto_9

    .line 245
    :catch_15
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "failed to get isOffloadedFilteringSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public isOffloadedScanBatchingSupported()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getState()I

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_a

    .line 262
    :cond_9
    :goto_9
    return v1

    .line 256
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    if-eqz v2, :cond_9

    .line 257
    iget-object v2, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-interface {v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->isOffloadedScanBatchingSupported()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result v1

    goto :goto_9

    .line 259
    :catch_15
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->TAG:Ljava/lang/String;

    const-string v3, "failed to get isOffloadedScanBatchingSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method removeServiceStateCallback(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    .prologue
    .line 349
    iget-object v1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mManagerCallback:Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;

    monitor-enter v1

    .line 350
    :try_start_3
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v1

    .line 352
    return-void

    .line 349
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
