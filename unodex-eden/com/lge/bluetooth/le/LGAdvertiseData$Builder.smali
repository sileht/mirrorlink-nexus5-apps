.class public final Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
.super Ljava/lang/Object;
.source "LGAdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/LGAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIncludeDeviceAddress:Z

.field private mIncludeDeviceName:Z

.field private mIncludeTxPowerLevel:Z

.field private mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 276
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    .line 280
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mUserSpecificData:Landroid/util/SparseArray;

    .line 272
    return-void
.end method


# virtual methods
.method public addManufacturerData(I[B)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    .registers 6
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerSpecificData"    # [B

    .prologue
    .line 326
    if-gez p1, :cond_17

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid manufacturerId - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_17
    if-nez p2, :cond_21

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "manufacturerSpecificData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_21
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    return-object p0
.end method

.method public addServiceData(Landroid/os/ParcelUuid;[B)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    .registers 5
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .prologue
    .line 305
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 306
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 307
    const-string v1, "serviceDataUuid or serviceDataUuid is null"

    .line 306
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_c
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-object p0
.end method

.method public addServiceUuid(Landroid/os/ParcelUuid;)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    .registers 4
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 289
    if-nez p1, :cond_a

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serivceUuids are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_a
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-object p0
.end method

.method public addUserSpecificData(I[B)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    .registers 6
    .param p1, "adType"    # I
    .param p2, "userSpecificData"    # [B

    .prologue
    .line 371
    if-gez p1, :cond_1b

    const/16 v0, 0xff

    if-le p1, v0, :cond_1b

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid adType - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_1b
    if-nez p2, :cond_25

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userSpecificData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_25
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mUserSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    return-object p0
.end method

.method public build()Lcom/lge/bluetooth/le/LGAdvertiseData;
    .registers 10

    .prologue
    .line 385
    new-instance v0, Lcom/lge/bluetooth/le/LGAdvertiseData;

    iget-object v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    .line 386
    iget-boolean v4, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    iget-boolean v5, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mIncludeDeviceName:Z

    iget-boolean v6, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mIncludeDeviceAddress:Z

    iget-object v7, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mUserSpecificData:Landroid/util/SparseArray;

    .line 385
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/lge/bluetooth/le/LGAdvertiseData;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZZLandroid/util/SparseArray;Lcom/lge/bluetooth/le/LGAdvertiseData;)V

    return-object v0
.end method

.method public setIncludeDeviceAddress(Z)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    .registers 2
    .param p1, "includeDeviceAddress"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mIncludeDeviceAddress:Z

    .line 359
    return-object p0
.end method

.method public setIncludeDeviceName(Z)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    .registers 2
    .param p1, "includeDeviceName"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mIncludeDeviceName:Z

    .line 351
    return-object p0
.end method

.method public setIncludeTxPowerLevel(Z)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    .registers 2
    .param p1, "includeTxPowerLevel"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    .line 343
    return-object p0
.end method
