.class Lcom/lge/bluetooth/le/LGAdvertiseData$1;
.super Ljava/lang/Object;
.source "LGAdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/LGAdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/bluetooth/le/LGAdvertiseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/bluetooth/le/LGAdvertiseData;
    .registers 22
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 223
    new-instance v3, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    invoke-direct {v3}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;-><init>()V

    .line 225
    .local v3, "builder":Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;
    const-class v18, Landroid/os/ParcelUuid;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v17

    .line 226
    .local v17, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-eqz v17, :cond_1f

    .line 227
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_19
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_72

    .line 231
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 232
    .local v8, "manufacturerSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-lt v4, v8, :cond_7e

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 242
    .local v11, "serviceDataSize":I
    const/4 v4, 0x0

    :goto_2b
    if-lt v4, v11, :cond_9f

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_cd

    const/16 v18, 0x1

    :goto_3b
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d1

    const/16 v18, 0x1

    :goto_4e
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->setIncludeDeviceName(Z)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d5

    const/16 v18, 0x1

    :goto_61
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->setIncludeDeviceAddress(Z)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 256
    .local v15, "userDataSize":I
    const/4 v4, 0x0

    :goto_6b
    if-lt v4, v15, :cond_d8

    .line 265
    invoke-virtual {v3}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->build()Lcom/lge/bluetooth/le/LGAdvertiseData;

    move-result-object v18

    return-object v18

    .line 227
    .end local v4    # "i":I
    .end local v8    # "manufacturerSize":I
    .end local v11    # "serviceDataSize":I
    .end local v15    # "userDataSize":I
    :cond_72
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .line 228
    .local v16, "uuid":Landroid/os/ParcelUuid;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    goto :goto_19

    .line 233
    .end local v16    # "uuid":Landroid/os/ParcelUuid;
    .restart local v4    # "i":I
    .restart local v8    # "manufacturerSize":I
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 234
    .local v7, "manufacturerId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9c

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 236
    .local v6, "manufacturerDataLength":I
    new-array v5, v6, [B

    .line 237
    .local v5, "manufacturerData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 238
    invoke-virtual {v3, v7, v5}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->addManufacturerData(I[B)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    .line 232
    .end local v5    # "manufacturerData":[B
    .end local v6    # "manufacturerDataLength":I
    :cond_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 244
    .end local v7    # "manufacturerId":I
    .restart local v11    # "serviceDataSize":I
    :cond_9f
    const-class v18, Landroid/os/ParcelUuid;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    .line 243
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/os/ParcelUuid;

    .line 245
    .local v12, "serviceDataUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c9

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 247
    .local v10, "serviceDataLength":I
    new-array v9, v10, [B

    .line 248
    .local v9, "serviceData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readByteArray([B)V

    .line 249
    invoke-virtual {v3, v12, v9}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    .line 242
    .end local v9    # "serviceData":[B
    .end local v10    # "serviceDataLength":I
    :cond_c9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2b

    .line 252
    .end local v12    # "serviceDataUuid":Landroid/os/ParcelUuid;
    :cond_cd
    const/16 v18, 0x0

    goto/16 :goto_3b

    .line 253
    :cond_d1
    const/16 v18, 0x0

    goto/16 :goto_4e

    .line 254
    :cond_d5
    const/16 v18, 0x0

    goto :goto_61

    .line 257
    .restart local v15    # "userDataSize":I
    :cond_d8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, "adType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f6

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 260
    .local v14, "userDataLength":I
    new-array v13, v14, [B

    .line 261
    .local v13, "userData":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->readByteArray([B)V

    .line 262
    invoke-virtual {v3, v2, v13}, Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;->addUserSpecificData(I[B)Lcom/lge/bluetooth/le/LGAdvertiseData$Builder;

    .line 256
    .end local v13    # "userData":[B
    .end local v14    # "userDataLength":I
    :cond_f6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6b
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/bluetooth/le/LGAdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/bluetooth/le/LGAdvertiseData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/bluetooth/le/LGAdvertiseData;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 218
    new-array v0, p1, [Lcom/lge/bluetooth/le/LGAdvertiseData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/bluetooth/le/LGAdvertiseData$1;->newArray(I)[Lcom/lge/bluetooth/le/LGAdvertiseData;

    move-result-object v0

    return-object v0
.end method
