.class Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "LGBluetoothLeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleScanCallbackWrapper"
.end annotation


# static fields
.field private static final REGISTRATION_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private mClientIf:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mResultStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mSettings:Landroid/bluetooth/le/ScanSettings;

.field final synthetic this$0:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;


# direct methods
.method public constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;Landroid/bluetooth/IBluetoothGatt;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;Ljava/util/List;)V
    .registers 8
    .param p2, "bluetoothGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p4, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "scanCallback"    # Landroid/bluetooth/le/ScanCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothGatt;",
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
    .line 268
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p6, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    .line 266
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 270
    iput-object p3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    .line 271
    iput-object p4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    .line 272
    iput-object p5, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    .line 274
    iput-object p6, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mResultStorages:Ljava/util/List;

    .line 275
    return-void
.end method

.method static synthetic access$0(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;)Landroid/bluetooth/le/ScanCallback;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-object v0
.end method


# virtual methods
.method flushPendingBatchResults()V
    .registers 5

    .prologue
    .line 315
    monitor-enter p0

    .line 316
    :try_start_1
    iget v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    if-gtz v1, :cond_1f

    .line 317
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error state, mLeHandle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_29

    .line 326
    :goto_1e
    return-void

    .line 321
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->flushPendingBatchResults(IZ)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_2c
    .catchall {:try_start_1f .. :try_end_27} :catchall_29

    .line 315
    :goto_27
    :try_start_27
    monitor-exit p0

    goto :goto_1e

    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v1

    .line 322
    :catch_2c
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2d
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to get pending scan results"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_29

    goto :goto_27
.end method

.method public onBatchScanResults(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 383
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$2;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public onClientRegistered(II)V
    .registers 11
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    const/4 v3, -0x1

    .line 333
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClientRegistered() - status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    monitor-enter p0

    .line 336
    :try_start_22
    iget v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    if-ne v0, v3, :cond_2f

    .line 337
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClientRegistered LE scan canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2f
    if-nez p1, :cond_65

    .line 341
    iput p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_62

    .line 343
    :try_start_33
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mFilters:Ljava/util/List;

    .line 344
    iget-object v5, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mResultStorages:Ljava/util/List;

    const/4 v6, 0x0

    .line 343
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_42} :catch_47
    .catchall {:try_start_33 .. :try_end_42} :catchall_62

    .line 353
    :goto_42
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit p0

    .line 355
    return-void

    .line 345
    :catch_47
    move-exception v7

    .line 346
    .local v7, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to start le scan: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    goto :goto_42

    .line 335
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_62
    move-exception v0

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_62

    throw v0

    .line 351
    :cond_65
    const/4 v0, -0x1

    :try_start_66
    iput v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_62

    goto :goto_42
.end method

.method public onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .registers 7
    .param p1, "onFound"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 394
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFoundOrLost() - onFound = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 395
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    monitor-enter p0

    .line 400
    :try_start_25
    iget v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    if-gtz v1, :cond_2b

    .line 401
    monitor-exit p0

    .line 416
    :goto_2a
    return-void

    .line 399
    :cond_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3e

    .line 403
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 404
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$3;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;ZLandroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 399
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 6
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 364
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScanResult() - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    monitor-enter p0

    .line 368
    :try_start_1b
    iget v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    if-gtz v1, :cond_21

    monitor-exit p0

    .line 378
    :goto_20
    return-void

    .line 367
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_34

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 371
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper$1;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    .line 367
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public startRegisteration()V
    .registers 6

    .prologue
    .line 278
    monitor-enter p0

    .line 280
    :try_start_1
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2c

    .line 296
    :goto_7
    return-void

    .line 282
    :cond_8
    :try_start_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 283
    .local v1, "uuid":Ljava/util/UUID;
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 284
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_1b} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_4c
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2c

    .line 289
    .end local v1    # "uuid":Ljava/util/UUID;
    :goto_1b
    :try_start_1b
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    if-lez v2, :cond_43

    .line 290
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->mLeScanClients:Ljava/util/Map;
    invoke-static {v2}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$2(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_2a
    monitor-exit p0

    goto :goto_7

    :catchall_2c
    move-exception v2

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_2c

    throw v2

    .line 285
    :catch_2f
    move-exception v2

    move-object v0, v2

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    :goto_31
    :try_start_31
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application registeration exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    const/4 v4, 0x3

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$1(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V

    goto :goto_1b

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeScanner;

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 293
    const/4 v4, 0x2

    .line 292
    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->postCallbackError(Landroid/bluetooth/le/ScanCallback;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$1(Lcom/lge/bluetooth/le/LGBluetoothLeScanner;Landroid/bluetooth/le/ScanCallback;I)V
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_2c

    goto :goto_2a

    .line 285
    :catch_4c
    move-exception v2

    move-object v0, v2

    goto :goto_31
.end method

.method public stopLeScan()V
    .registers 5

    .prologue
    .line 299
    monitor-enter p0

    .line 300
    :try_start_1
    iget v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    if-gtz v1, :cond_1f

    .line 301
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error state, mLeHandle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_33

    .line 312
    :goto_1e
    return-void

    .line 305
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    .line 306
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_36
    .catchall {:try_start_1f .. :try_end_2e} :catchall_33

    .line 310
    :goto_2e
    const/4 v1, -0x1

    :try_start_2f
    iput v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeScanner$BleScanCallbackWrapper;->mClientIf:I

    .line 299
    monitor-exit p0

    goto :goto_1e

    :catchall_33
    move-exception v1

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v1

    .line 307
    :catch_36
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_37
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeScanner;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to stop scan and unregister"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_33

    goto :goto_2e
.end method
