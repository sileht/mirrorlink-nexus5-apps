.class public final Lcom/lge/bluetooth/le/LGBluetoothLeScanner;
.super Ljava/lang/Object;
.source "LGBluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

.field private final mBleQmManager:Lcom/lge/systemservice/core/IBleQmManager;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/ScanCallback;",
            "Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-class v0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/IBleQmManager;)V
    .registers 4
    .param p1, "bluetoothManager"    # Lcom/lge/systemservice/core/IBleQmManager;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBleQmManager:Lcom/lge/systemservice/core/IBleQmManager;

    .line 99
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getBleQmAdapter()Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    .line 100
    invoke-direct {p0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->getBtManagerService()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    .line 104
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    .registers 3

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    return-object v0
.end method

.method private getBtManagerService()Landroid/bluetooth/IBluetoothManager;
    .registers 5

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 109
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 110
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 114
    :goto_d
    return-object v1

    .line 112
    :cond_e
    sget-object v2, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;

    const-string v3, "Bluetooth binder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .registers 8
    .param p1, "settings"    # Landroid/bluetooth/le/ScanSettings;

    .prologue
    const/4 v1, 0x1

    .line 429
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-virtual {v2}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->isOffloadedFilteringSupported()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 438
    :cond_9
    :goto_9
    return v1

    .line 432
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    .line 434
    .local v0, "callbackType":I
    if-ne v0, v1, :cond_1a

    .line 435
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 438
    :cond_1a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .param p2, "errorCode"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$1;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method

.method private startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V
    .registers 13
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p4, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->checkAdapterStateOn(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V

    .line 151
    if-eqz p2, :cond_9

    if-nez p3, :cond_11

    .line 152
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "settings or callback is null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_11
    iget-object v7, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v7

    .line 155
    :try_start_14
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 156
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    .line 157
    monitor-exit v7
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_30

    .line 178
    :goto_21
    return-void

    .line 161
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_33
    .catchall {:try_start_22 .. :try_end_27} :catchall_30

    move-result-object v2

    .line 165
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_28
    if-nez v2, :cond_36

    .line 166
    const/4 v1, 0x3

    :try_start_2b
    invoke-direct {p0, p3, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    .line 167
    monitor-exit v7

    goto :goto_21

    .line 154
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catchall_30
    move-exception v1

    monitor-exit v7
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_30

    throw v1

    .line 163
    :catch_33
    move-exception v1

    const/4 v2, 0x0

    .restart local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    goto :goto_28

    .line 169
    :cond_36
    :try_start_36
    invoke-direct {p0, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->isSettingsConfigAllowedForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 171
    const/4 v1, 0x4

    .line 170
    invoke-direct {p0, p3, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V

    .line 172
    monitor-exit v7

    goto :goto_21

    .line 174
    :cond_42
    new-instance v0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    .line 176
    .local v0, "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;
    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->startRegisteration()V

    .line 154
    monitor-exit v7
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_30

    goto :goto_21
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 247
    return-void
.end method

.method public flushPendingScanResults(Landroid/bluetooth/le/ScanCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->checkAdapterStateOn(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V

    .line 209
    if-nez p1, :cond_f

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_f
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 213
    :try_start_12
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    .line 214
    .local v0, "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v0, :cond_1e

    .line 215
    monitor-exit v2

    .line 219
    :goto_1d
    return-void

    .line 217
    :cond_1e
    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->flushPendingBatchResults()V

    .line 212
    monitor-exit v2

    goto :goto_1d

    .end local v0    # "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public startScan(Landroid/bluetooth/le/ScanCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 127
    if-nez p1, :cond_a

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_a
    const/4 v0, 0x0

    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 131
    return-void
.end method

.method public startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .registers 5
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    .line 146
    return-void
.end method

.method public startTruncatedScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    .registers 10
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p3, "callback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/TruncatedFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Landroid/bluetooth/le/ScanCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "truncatedFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TruncatedFilter;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 230
    .local v1, "filterSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v2, "scanFilters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v3, "scanStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 237
    invoke-direct {p0, v2, p2, p3, v3}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V

    .line 238
    return-void

    .line 233
    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/TruncatedFilter;

    .line 234
    .local v0, "filter":Landroid/bluetooth/le/TruncatedFilter;
    invoke-virtual {v0}, Landroid/bluetooth/le/TruncatedFilter;->getFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v0}, Landroid/bluetooth/le/TruncatedFilter;->getStorageDescriptors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method public stopScan(Landroid/bluetooth/le/ScanCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/le/ScanCallback;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->checkAdapterStateOn(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V

    .line 189
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    .line 190
    :try_start_8
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;

    .line 191
    .local v0, "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;
    if-nez v0, :cond_1b

    .line 192
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;

    const-string v3, "could not find callback wrapper"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v2

    .line 197
    :goto_1a
    return-void

    .line 195
    :cond_1b
    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->stopLeScan()V

    .line 189
    monitor-exit v2

    goto :goto_1a

    .end local v0    # "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v1
.end method
