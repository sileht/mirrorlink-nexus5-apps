.class public final Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "LGBluetoothLeAdvertiser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    }
.end annotation


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final SERVICE_DATA_UUID_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

.field private final mBleQmManager:Lcom/lge/systemservice/core/IBleQmManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mLeAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-class v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/lge/systemservice/core/IBleQmManager;)V
    .registers 4
    .param p1, "bluetoothManager"    # Lcom/lge/systemservice/core/IBleQmManager;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBleQmManager:Lcom/lge/systemservice/core/IBleQmManager;

    .line 96
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->getBleQmAdapter()Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    .line 98
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V
    .registers 3

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->addClientIf(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 3

    .prologue
    .line 456
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V
    .registers 3

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->removeClientIf(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V

    return-void
.end method

.method static synthetic access$5(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 3

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method private addClientIf(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V
    .registers 6
    .param p1, "service"    # Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    .param p2, "clientIf"    # I

    .prologue
    .line 478
    if-eqz p1, :cond_5

    .line 479
    :try_start_2
    invoke-interface {p1, p2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->addClientIf(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 484
    :cond_5
    :goto_5
    return-void

    .line 481
    :catch_6
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v2, "addClientIf:  "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private byteLength([B)I
    .registers 3
    .param p1, "array"    # [B

    .prologue
    .line 319
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    array-length v0, p1

    goto :goto_3
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "error"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$1;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 5
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p2, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$2;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method

.method private removeClientIf(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;I)V
    .registers 6
    .param p1, "service"    # Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    .param p2, "clientIf"    # I

    .prologue
    .line 488
    if-eqz p1, :cond_5

    .line 489
    :try_start_2
    invoke-interface {p1, p2}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;->removeClientIf(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 494
    :cond_5
    :goto_5
    return-void

    .line 491
    :catch_6
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v2, "removeClientIf:  "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private totalBytes(ZLcom/lge/bluetooth/le/LGAdvertiseData;Z)I
    .registers 14
    .param p1, "isScanResponse"    # Z
    .param p2, "data"    # Lcom/lge/bluetooth/le/LGAdvertiseData;
    .param p3, "isFlagsIncluded"    # Z

    .prologue
    const/4 v4, 0x0

    .line 238
    if-nez p2, :cond_4

    .line 315
    :cond_3
    :goto_3
    return v4

    .line 241
    :cond_4
    if-nez p1, :cond_190

    .line 242
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v8, "===  Advertising Data  ============="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_d
    if-eqz p3, :cond_10

    const/4 v4, 0x3

    .line 249
    .local v4, "size":I
    :cond_10
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ Flag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_70

    .line 252
    const/4 v2, 0x0

    .line 253
    .local v2, "num16BitUuids":I
    const/4 v3, 0x0

    .line 254
    .local v3, "num32BitUuids":I
    const/4 v1, 0x0

    .line 255
    .local v1, "num128BitUuids":I
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_199

    .line 265
    if-eqz v2, :cond_48

    .line 267
    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 270
    :cond_48
    if-eqz v3, :cond_4f

    .line 272
    mul-int/lit8 v7, v3, 0x4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 275
    :cond_4f
    if-eqz v1, :cond_56

    .line 277
    mul-int/lit8 v7, v1, 0x10

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 279
    :cond_56
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ Service uuid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v1    # "num128BitUuids":I
    .end local v2    # "num16BitUuids":I
    .end local v3    # "num32BitUuids":I
    :cond_70
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_a6

    .line 282
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_86
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1b7

    .line 286
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ Service data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_a6
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_d5

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b1
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lt v0, v7, :cond_1d0

    .line 293
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ Manufacturer data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v0    # "i":I
    :cond_d5
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v7

    if-eqz v7, :cond_f7

    .line 296
    add-int/lit8 v4, v4, 0x3

    .line 297
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ Tx power level"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_f7
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getIncludeDeviceName()Z

    move-result v7

    if-eqz v7, :cond_13d

    iget-object v7, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13d

    .line 301
    move v5, v4

    .line 302
    .local v5, "tempSize":I
    iget-object v7, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    .line 303
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Temp size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ Device name ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v5    # "tempSize":I
    :cond_13d
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getIncludeDeviceAddress()Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 306
    add-int/lit8 v4, v4, 0x9

    .line 307
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ Device address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_15f
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getUserSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 310
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_16a
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getUserSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lt v0, v7, :cond_1e5

    .line 313
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "size =  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   +++ User data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 244
    .end local v0    # "i":I
    .end local v4    # "size":I
    :cond_190
    sget-object v7, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v8, "===  ScanResponse Data  ============"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 255
    .restart local v1    # "num128BitUuids":I
    .restart local v2    # "num16BitUuids":I
    .restart local v3    # "num32BitUuids":I
    .restart local v4    # "size":I
    :cond_199
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 256
    .local v6, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_1a9

    .line 257
    add-int/lit8 v2, v2, 0x1

    .line 258
    goto/16 :goto_3b

    :cond_1a9
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_1b3

    .line 259
    add-int/lit8 v3, v3, 0x1

    .line 260
    goto/16 :goto_3b

    .line 261
    :cond_1b3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3b

    .line 282
    .end local v1    # "num128BitUuids":I
    .end local v2    # "num16BitUuids":I
    .end local v3    # "num32BitUuids":I
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    :cond_1b7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 284
    .restart local v6    # "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v4, v7

    goto/16 :goto_86

    .line 291
    .end local v6    # "uuid":Landroid/os/ParcelUuid;
    .restart local v0    # "i":I
    :cond_1d0
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v4, v7

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b1

    .line 311
    :cond_1e5
    invoke-virtual {p2}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getUserSpecificData()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16a
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 222
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v1, "finalize:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_7
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->cleanup()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 233
    return-void

    .line 230
    :catchall_e
    move-exception v0

    .line 231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 232
    throw v0
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Lcom/lge/bluetooth/le/LGAdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 5
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Lcom/lge/bluetooth/le/LGAdvertiseData;
    .param p3, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Lcom/lge/bluetooth/le/LGAdvertiseData;Lcom/lge/bluetooth/le/LGAdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    .line 127
    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Lcom/lge/bluetooth/le/LGAdvertiseData;Lcom/lge/bluetooth/le/LGAdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 15
    .param p1, "settings"    # Landroid/bluetooth/le/AdvertiseSettings;
    .param p2, "advertiseData"    # Lcom/lge/bluetooth/le/LGAdvertiseData;
    .param p3, "scanResponse"    # Lcom/lge/bluetooth/le/LGAdvertiseData;
    .param p4, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    const/16 v4, 0x1f

    .line 144
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startAdvertising:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v9, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v9

    .line 146
    :try_start_19
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->checkAdapterStateOn(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V

    .line 147
    if-nez p4, :cond_2b

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :catchall_28
    move-exception v1

    monitor-exit v9
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw v1

    .line 150
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-virtual {v1}, Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;->isMultipleAdvertisementSupported()Z

    move-result v1

    if-nez v1, :cond_39

    .line 152
    const/4 v1, 0x5

    .line 151
    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 153
    monitor-exit v9

    .line 194
    :goto_38
    return-void

    .line 155
    :cond_39
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v8

    .line 156
    .local v8, "isConnectable":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2, v8}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->totalBytes(ZLcom/lge/bluetooth/le/LGAdvertiseData;Z)I

    move-result v1

    if-gt v1, v4, :cond_4c

    .line 157
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->totalBytes(ZLcom/lge/bluetooth/le/LGAdvertiseData;Z)I

    move-result v1

    if-le v1, v4, :cond_52

    .line 158
    :cond_4c
    const/4 v1, 0x1

    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 159
    monitor-exit v9

    goto :goto_38

    .line 161
    :cond_52
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 162
    const/4 v1, 0x3

    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 163
    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_2b .. :try_end_5f} :catchall_28

    goto :goto_38

    .line 179
    :cond_60
    :try_start_60
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBleQmManager:Lcom/lge/systemservice/core/IBleQmManager;

    invoke-interface {v1}, Lcom/lge/systemservice/core/IBleQmManager;->getBleQmService()Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_75
    .catchall {:try_start_60 .. :try_end_65} :catchall_28

    move-result-object v6

    .line 185
    .local v6, "qmService":Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    if-nez v6, :cond_83

    .line 186
    :try_start_68
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v2, "Ble Quietmode Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 188
    monitor-exit v9

    goto :goto_38

    .line 180
    .end local v6    # "qmService":Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    :catch_75
    move-exception v7

    .line 181
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get BleQmService - "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v1, 0x4

    invoke-direct {p0, p4, v1}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    .line 183
    monitor-exit v9

    goto :goto_38

    .line 190
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "qmService":Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    :cond_83
    new-instance v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;-><init>(Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Lcom/lge/bluetooth/le/LGAdvertiseData;Lcom/lge/bluetooth/le/LGAdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V

    .line 192
    .local v0, "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->startRegisteration()V

    .line 145
    monitor-exit v9
    :try_end_91
    .catchall {:try_start_68 .. :try_end_91} :catchall_28

    goto :goto_38
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/bluetooth/le/AdvertiseCallback;

    .prologue
    .line 205
    sget-object v1, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopAdvertising:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    monitor-enter v2

    .line 207
    :try_start_17
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mBleQmAdapter:Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->checkAdapterStateOn(Lcom/lge/bluetooth/le/quietmode/LGBleQmAdapter;)V

    .line 208
    if-nez p1, :cond_29

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_26

    throw v1

    .line 211
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser;->mLeAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;

    .line 212
    .local v0, "wrapper":Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;
    if-nez v0, :cond_35

    monitor-exit v2

    .line 215
    :goto_34
    return-void

    .line 213
    :cond_35
    invoke-virtual {v0}, Lcom/lge/bluetooth/le/LGBluetoothLeAdvertiser$AdvertiseCallbackWrapper;->stopAdvertising()V

    .line 206
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_26

    goto :goto_34
.end method
