.class public final Lcom/lge/bluetooth/le/LGAdvertiseData;
.super Ljava/lang/Object;
.source "LGAdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/bluetooth/le/LGAdvertiseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIncludeDeviceAddress:Z

.field private final mIncludeDeviceName:Z

.field private final mIncludeTxPowerLevel:Z

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 215
    new-instance v0, Lcom/lge/bluetooth/le/LGAdvertiseData$1;

    invoke-direct {v0}, Lcom/lge/bluetooth/le/LGAdvertiseData$1;-><init>()V

    .line 214
    sput-object v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 267
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZZLandroid/util/SparseArray;)V
    .registers 8
    .param p4, "includeTxPowerLevel"    # Z
    .param p5, "includeDeviceName"    # Z
    .param p6, "includeDeviceAddress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;ZZZ",
            "Landroid/util/SparseArray",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    .local p7, "userSpecificData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceUuids:Ljava/util/List;

    .line 67
    iput-object p2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 68
    iput-object p3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    .line 69
    iput-boolean p4, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeTxPowerLevel:Z

    .line 70
    iput-boolean p5, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceName:Z

    .line 71
    iput-boolean p6, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceAddress:Z

    .line 72
    iput-object p7, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZZLandroid/util/SparseArray;Lcom/lge/bluetooth/le/LGAdvertiseData;)V
    .registers 9

    .prologue
    .line 59
    invoke-direct/range {p0 .. p7}, Lcom/lge/bluetooth/le/LGAdvertiseData;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZZLandroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_5

    .line 142
    :cond_4
    :goto_4
    return v1

    .line 138
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 139
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/lge/bluetooth/le/LGAdvertiseData;

    .line 142
    .local v0, "other":Lcom/lge/bluetooth/le/LGAdvertiseData;
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceUuids:Ljava/util/List;

    iget-object v4, v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 143
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 144
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    iget-object v4, v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 145
    iget-boolean v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceName:Z

    iget-boolean v4, v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceName:Z

    if-ne v3, v4, :cond_50

    .line 146
    iget-boolean v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeTxPowerLevel:Z

    iget-boolean v4, v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeTxPowerLevel:Z

    if-ne v3, v4, :cond_50

    .line 147
    iget-boolean v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceAddress:Z

    iget-boolean v4, v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceAddress:Z

    if-ne v3, v4, :cond_50

    .line 148
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_50
    move v1, v2

    .line 142
    goto :goto_4
.end method

.method public getIncludeDeviceAddress()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceAddress:Z

    return v0
.end method

.method public getIncludeDeviceName()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceName:Z

    return v0
.end method

.method public getIncludeTxPowerLevel()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeTxPowerLevel:Z

    return v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getUserSpecificData()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceUuids:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 130
    iget-boolean v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceName:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeTxPowerLevel:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceAddress:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LGAdvertiseData [mServiceUuids="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string v1, ", mIncludeTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeTxPowerLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIncludeDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIncludeDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mIncludeDeviceAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    const-string v1, ", mUserSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/lge/bluetooth/le/LGBluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 168
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 171
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_66

    .line 183
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8a

    .line 195
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v3

    if-eqz v3, :cond_ac

    move v3, v4

    :goto_39
    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 196
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getIncludeDeviceName()Z

    move-result v3

    if-eqz v3, :cond_ae

    move v3, v4

    :goto_44
    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/LGAdvertiseData;->getIncludeDeviceAddress()Z

    move-result v3

    if-eqz v3, :cond_b0

    move v3, v4

    :goto_4f
    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v1, 0x0

    :goto_5d
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v1, v3, :cond_b2

    .line 212
    return-void

    .line 173
    :cond_66
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 175
    .local v0, "data":[B
    if-nez v0, :cond_7f

    .line 176
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 178
    :cond_7f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    array-length v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_7c

    .line 184
    .end local v0    # "data":[B
    :cond_8a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 185
    .local v2, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v6, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 187
    .restart local v0    # "data":[B
    if-nez v0, :cond_a1

    .line 188
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 190
    :cond_a1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    array-length v6, v0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2c

    .end local v0    # "data":[B
    .end local v2    # "uuid":Landroid/os/ParcelUuid;
    :cond_ac
    move v3, v5

    .line 195
    goto :goto_39

    :cond_ae
    move v3, v5

    .line 196
    goto :goto_44

    :cond_b0
    move v3, v5

    .line 197
    goto :goto_4f

    .line 202
    :cond_b2
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v3, p0, Lcom/lge/bluetooth/le/LGAdvertiseData;->mUserSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 204
    .restart local v0    # "data":[B
    if-nez v0, :cond_cb

    .line 205
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    :goto_c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 207
    :cond_cb
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    array-length v3, v0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_c8
.end method
