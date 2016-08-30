.class Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
.super Landroid/bluetooth/BluetoothGattCallbackWrapper;
.source "LGBluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertiseCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

.field private final mAdvertisement:Lcom/lge/bluetooth/le/LGAdvertiseData;

.field private final mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

.field private mClientIf:I

.field private mIsAdvertising:Z

.field private final mScanResponse:Lcom/lge/bluetooth/le/LGAdvertiseData;

.field private final mSettings:Landroid/bluetooth/le/AdvertiseSettings;

.field final synthetic this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;


# direct methods
.method public constructor <init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Lcom/lge/bluetooth/le/LGAdvertiseData;Lcom/lge/bluetooth/le/LGAdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V
    .registers 8
    .param p2, "advertiseCallback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "advertiseData"    # Lcom/lge/bluetooth/le/LGAdvertiseData;
    .param p4, "scanResponse"    # Lcom/lge/bluetooth/le/LGAdvertiseData;
    .param p5, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p6, "qmService"    # Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    .prologue
    const/4 v0, 0x0

    .line 343
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    .line 340
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallbackWrapper;-><init>()V

    .line 338
    iput-boolean v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 344
    iput-object p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 345
    iput-object p3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Lcom/lge/bluetooth/le/LGAdvertiseData;

    .line 346
    iput-object p4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Lcom/lge/bluetooth/le/LGAdvertiseData;

    .line 347
    iput-object p5, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 349
    iput-object p6, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    .line 350
    iput v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 351
    return-void
.end method


# virtual methods
.method public onClientRegistered(II)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    .line 407
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClientRegistered() - status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-enter p0

    .line 409
    if-nez p1, :cond_3e

    .line 410
    :try_start_23
    iput p2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_46

    .line 412
    :try_start_25
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertisement:Lcom/lge/bluetooth/le/LGAdvertiseData;

    .line 413
    iget-object v4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mScanResponse:Lcom/lge/bluetooth/le/LGAdvertiseData;

    iget-object v5, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mSettings:Landroid/bluetooth/le/AdvertiseSettings;

    .line 412
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->startMultiAdvertising(ILcom/lge/bluetooth/le/LGAdvertiseData;Lcom/lge/bluetooth/le/LGAdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_32} :catch_34
    .catchall {:try_start_25 .. :try_end_32} :catchall_46

    .line 414
    :try_start_32
    monitor-exit p0

    .line 423
    :goto_33
    return-void

    .line 415
    :catch_34
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to start advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3e
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 408
    monitor-exit p0

    goto :goto_33

    :catchall_46
    move-exception v1

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "isStart"    # Z
    .param p3, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 428
    monitor-enter p0

    .line 429
    if-eqz p2, :cond_1f

    .line 430
    if-nez p1, :cond_14

    .line 432
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 433
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    invoke-static {v1, v2, p3}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$5(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 450
    :goto_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 428
    monitor-exit p0

    .line 453
    return-void

    .line 436
    :cond_14
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v1, v2, p1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$3(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    goto :goto_f

    .line 428
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw v1

    .line 441
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    iget v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->removeClientIf(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$4(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V

    .line 442
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->unregisterClient(I)V

    .line 443
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    .line 444
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    .line 445
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$1(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_40} :catch_41
    .catchall {:try_start_1f .. :try_end_40} :catchall_1c

    goto :goto_f

    .line 446
    :catch_41
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_42
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote exception when unregistering"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_1c

    goto :goto_f
.end method

.method public startRegisteration()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 354
    monitor-enter p0

    .line 355
    :try_start_2
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-ne v2, v3, :cond_8

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_51

    .line 382
    :goto_7
    return-void

    .line 358
    :cond_8
    :try_start_8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 359
    .local v1, "uuid":Ljava/util/UUID;
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mBleQmService:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3, p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 361
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_33} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_33} :catch_83
    .catchall {:try_start_8 .. :try_end_33} :catchall_51

    .line 365
    .end local v1    # "uuid":Ljava/util/UUID;
    :goto_33
    :try_start_33
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-lez v2, :cond_60

    iget-boolean v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mIsAdvertising:Z

    if-eqz v2, :cond_60

    .line 366
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$1(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    iget v4, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->addClientIf(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$2(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V

    .line 354
    :goto_4f
    monitor-exit p0

    goto :goto_7

    :catchall_51
    move-exception v2

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_51

    throw v2

    .line 362
    :catch_54
    move-exception v2

    move-object v0, v2

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    :goto_56
    :try_start_56
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to start registeration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_60
    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    if-gtz v2, :cond_6d

    .line 370
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    .line 371
    const/4 v4, 0x4

    .line 370
    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    invoke-static {v2, v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$3(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_6c
    .catchall {:try_start_56 .. :try_end_6c} :catchall_51

    goto :goto_4f

    .line 375
    :cond_6d
    :try_start_6d
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    iget v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v2, v3}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->unregisterClient(I)V

    .line 376
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_77} :catch_78
    .catchall {:try_start_6d .. :try_end_77} :catchall_51

    goto :goto_4f

    .line 377
    :catch_78
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_79
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "remote exception when unregistering"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_51

    goto :goto_4f

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_83
    move-exception v2

    move-object v0, v2

    goto :goto_56
.end method

.method public stopAdvertising()V
    .registers 5

    .prologue
    .line 385
    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    iget v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    invoke-interface {v1, v2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->stopMultiAdvertising(I)V

    .line 388
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_40
    .catchall {:try_start_1 .. :try_end_d} :catchall_3d

    .line 395
    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$1(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 396
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;
    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$1(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/le/AdvertiseCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->this$0:Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mBleQmService:Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    iget v3, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->mClientIf:I

    # invokes: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->removeClientIf(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V
    invoke-static {v1, v2, v3}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$4(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V

    .line 385
    :cond_2f
    monitor-exit p0

    .line 400
    return-void

    .line 389
    :catch_31
    move-exception v1

    move-object v0, v1

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    :goto_33
    # getter for: Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to stop advertising"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_3d

    throw v1

    .line 389
    :catch_40
    move-exception v1

    move-object v0, v1

    goto :goto_33
.end method
