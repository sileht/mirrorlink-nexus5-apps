.class public abstract Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;
.super Landroid/os/Binder;
.source "ILGBleQmService.java"

# interfaces
.implements Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.bluetooth.le.quietmode.ILGBleQmService"

.field static final TRANSACTION_addClientIf:I = 0x8

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_isBleQmSupported:I = 0x7

.field static final TRANSACTION_isEnabled:I = 0x5

.field static final TRANSACTION_isMultiAdvertisementSupported:I = 0xa

.field static final TRANSACTION_isOffloadedFilteringSupported:I = 0xb

.field static final TRANSACTION_isOffloadedScanBatchingSupported:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerClient:I = 0xd

.field static final TRANSACTION_removeClientIf:I = 0x9

.field static final TRANSACTION_startMultiAdvertising:I = 0xf

.field static final TRANSACTION_stopMultiAdvertising:I = 0x10

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterClient:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_18a

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->registerCallback(Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;)Z

    move-result v4

    .line 51
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v4, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 57
    .end local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;
    .end local v4    # "_result":Z
    :sswitch_2b
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->unregisterCallback(Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;)Z

    move-result v4

    .line 61
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v4, :cond_42

    move v5, v6

    :cond_42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 67
    .end local v0    # "_arg0":Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;
    .end local v4    # "_result":Z
    :sswitch_46
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->enable()Z

    move-result v4

    .line 69
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v4, :cond_55

    move v5, v6

    :cond_55
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 75
    .end local v4    # "_result":Z
    :sswitch_59
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->disable()Z

    move-result v4

    .line 77
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_68

    move v5, v6

    :cond_68
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 83
    .end local v4    # "_result":Z
    :sswitch_6c
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->isEnabled()Z

    move-result v4

    .line 85
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v4, :cond_7b

    move v5, v6

    :cond_7b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 91
    .end local v4    # "_result":Z
    :sswitch_7f
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->getState()I

    move-result v4

    .line 93
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 99
    .end local v4    # "_result":I
    :sswitch_90
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->isBleQmSupported()Z

    move-result v4

    .line 101
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_9f

    move v5, v6

    :cond_9f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 107
    .end local v4    # "_result":Z
    :sswitch_a4
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->addClientIf(I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 116
    .end local v0    # "_arg0":I
    :sswitch_b5
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->removeClientIf(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 125
    .end local v0    # "_arg0":I
    :sswitch_c6
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->isMultiAdvertisementSupported()Z

    move-result v4

    .line 127
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v4, :cond_d5

    move v5, v6

    :cond_d5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v4    # "_result":Z
    :sswitch_da
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->isOffloadedFilteringSupported()Z

    move-result v4

    .line 135
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v4, :cond_e9

    move v5, v6

    :cond_e9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v4    # "_result":Z
    :sswitch_ee
    const-string v7, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->isOffloadedScanBatchingSupported()Z

    move-result v4

    .line 143
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v4, :cond_fd

    move v5, v6

    :cond_fd
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 149
    .end local v4    # "_result":Z
    :sswitch_102
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_125

    .line 152
    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 158
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    :goto_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v1

    .line 159
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    invoke-virtual {p0, v0, v1}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 155
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothGattCallback;
    :cond_125
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_115

    .line 165
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    :sswitch_127
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->unregisterClient(I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 174
    .end local v0    # "_arg0":I
    :sswitch_138
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_173

    .line 179
    sget-object v5, Lcom/lge/bluetooth/le/LGAdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/bluetooth/le/LGAdvertiseData;

    .line 185
    .local v1, "_arg1":Lcom/lge/bluetooth/le/LGAdvertiseData;
    :goto_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_175

    .line 186
    sget-object v5, Lcom/lge/bluetooth/le/LGAdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/bluetooth/le/LGAdvertiseData;

    .line 192
    .local v2, "_arg2":Lcom/lge/bluetooth/le/LGAdvertiseData;
    :goto_15d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_177

    .line 193
    sget-object v5, Landroid/bluetooth/le/AdvertiseSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/AdvertiseSettings;

    .line 198
    .local v3, "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :goto_16b
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->startMultiAdvertising(ILcom/lge/bluetooth/le/LGAdvertiseData;Lcom/lge/bluetooth/le/LGAdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 182
    .end local v1    # "_arg1":Lcom/lge/bluetooth/le/LGAdvertiseData;
    .end local v2    # "_arg2":Lcom/lge/bluetooth/le/LGAdvertiseData;
    .end local v3    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :cond_173
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/bluetooth/le/LGAdvertiseData;
    goto :goto_14f

    .line 189
    :cond_175
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lge/bluetooth/le/LGAdvertiseData;
    goto :goto_15d

    .line 196
    :cond_177
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    goto :goto_16b

    .line 204
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/lge/bluetooth/le/LGAdvertiseData;
    .end local v2    # "_arg2":Lcom/lge/bluetooth/le/LGAdvertiseData;
    .end local v3    # "_arg3":Landroid/bluetooth/le/AdvertiseSettings;
    :sswitch_179
    const-string v5, "com.lge.bluetooth.le.quietmode.ILGBleQmService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/bluetooth/le/quietmode/ILGBleQmService$Stub;->stopMultiAdvertising(I)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_18a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_46
        0x4 -> :sswitch_59
        0x5 -> :sswitch_6c
        0x6 -> :sswitch_7f
        0x7 -> :sswitch_90
        0x8 -> :sswitch_a4
        0x9 -> :sswitch_b5
        0xa -> :sswitch_c6
        0xb -> :sswitch_da
        0xc -> :sswitch_ee
        0xd -> :sswitch_102
        0xe -> :sswitch_127
        0xf -> :sswitch_138
        0x10 -> :sswitch_179
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
