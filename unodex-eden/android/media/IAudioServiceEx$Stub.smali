.class public abstract Landroid/media/IAudioServiceEx$Stub;
.super Landroid/os/Binder;
.source "IAudioServiceEx.java"

# interfaces
.implements Landroid/media/IAudioServiceEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioServiceEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioServiceEx"

.field static final TRANSACTION_getActiveStreamType:I = 0x8

.field static final TRANSACTION_getAuxGenderState:I = 0x3

.field static final TRANSACTION_getAvrcpAbsVolSupported:I = 0xd

.field static final TRANSACTION_getPlayerList:I = 0x7

.field static final TRANSACTION_getPlayerPlayBackState:I = 0x6

.field static final TRANSACTION_getRemoteStreamMaxVolume:I = 0xb

.field static final TRANSACTION_getRemoteStreamVolume:I = 0xc

.field static final TRANSACTION_getSafeMediaVolumeState:I = 0x15

.field static final TRANSACTION_getStreamDeviceVolume:I = 0x12

.field static final TRANSACTION_getTwinHeadsetAvrcpAbsVolSupported:I = 0x10

.field static final TRANSACTION_isBluetoothA2dpInputOn:I = 0xa

.field static final TRANSACTION_isSpeakerOnForMedia:I = 0x1

.field static final TRANSACTION_setAbsoluteRecoverVolume:I = 0xe

.field static final TRANSACTION_setAuxGenderState:I = 0x4

.field static final TRANSACTION_setAvrcpAbsVol:I = 0x13

.field static final TRANSACTION_setAvrcpAbsVolMax:I = 0x17

.field static final TRANSACTION_setAvrcpAbsVolSupported:I = 0xf

.field static final TRANSACTION_setBluetoothA2dpInputOn:I = 0x9

.field static final TRANSACTION_setSpeakerOnForMedia:I = 0x2

.field static final TRANSACTION_setStreamVolumeAll:I = 0x5

.field static final TRANSACTION_setTwinHeadsetAvrcpAbsVolSupported:I = 0x11

.field static final TRANSACTION_setTwinHeadsetOn:I = 0x14

.field static final TRANSACTION_setTwinHeadsetSafeMediaVolumeDevices:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.media.IAudioServiceEx"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioServiceEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServiceEx;
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
    const-string v1, "android.media.IAudioServiceEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/IAudioServiceEx;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/media/IAudioServiceEx;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/media/IAudioServiceEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioServiceEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_1da

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 42
    :sswitch_a
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->isSpeakerOnForMedia()Z

    move-result v3

    .line 49
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v3    # "_result":Z
    :sswitch_23
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_36

    move v0, v6

    .line 58
    .local v0, "_arg0":Z
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setSpeakerOnForMedia(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_36
    move v0, v5

    .line 57
    goto :goto_2f

    .line 64
    :sswitch_38
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getAuxGenderState()Z

    move-result v3

    .line 66
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_47

    move v5, v6

    :cond_47
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v3    # "_result":Z
    :sswitch_4b
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5e

    move v0, v6

    .line 75
    .restart local v0    # "_arg0":Z
    :goto_57
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setAuxGenderState(Z)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_5e
    move v0, v5

    .line 74
    goto :goto_57

    .line 81
    :sswitch_60
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioServiceEx$Stub;->setStreamVolumeAll(III)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 94
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_78
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getPlayerPlayBackState()Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 102
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_88
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getPlayerList()Ljava/util/List;

    move-result-object v4

    .line 104
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 110
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_99
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->getActiveStreamType(I)I

    move-result v3

    .line 114
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_ae
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c9

    move v0, v6

    .line 123
    .local v0, "_arg0":Z
    :goto_ba
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setBluetoothA2dpInputOn(Z)Z

    move-result v3

    .line 124
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v3, :cond_c4

    move v5, v6

    :cond_c4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_c9
    move v0, v5

    .line 122
    goto :goto_ba

    .line 130
    :sswitch_cb
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->isBluetoothA2dpInputOn()Z

    move-result v3

    .line 132
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v3, :cond_da

    move v5, v6

    :cond_da
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 138
    .end local v3    # "_result":Z
    :sswitch_df
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getRemoteStreamMaxVolume()I

    move-result v3

    .line 140
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 146
    .end local v3    # "_result":I
    :sswitch_f0
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getRemoteStreamVolume()I

    move-result v3

    .line 148
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 154
    .end local v3    # "_result":I
    :sswitch_101
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getAvrcpAbsVolSupported()Z

    move-result v3

    .line 156
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v3, :cond_110

    move v5, v6

    :cond_110
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 162
    .end local v3    # "_result":Z
    :sswitch_115
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setAbsoluteRecoverVolume(I)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 171
    .end local v0    # "_arg0":I
    :sswitch_126
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13a

    move v0, v6

    .line 174
    .local v0, "_arg0":Z
    :goto_132
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setAvrcpAbsVolSupported(Z)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_13a
    move v0, v5

    .line 173
    goto :goto_132

    .line 180
    :sswitch_13c
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getTwinHeadsetAvrcpAbsVolSupported()Z

    move-result v3

    .line 182
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v3, :cond_14b

    move v5, v6

    :cond_14b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 188
    .end local v3    # "_result":Z
    :sswitch_150
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_164

    move v0, v6

    .line 191
    .restart local v0    # "_arg0":Z
    :goto_15c
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setTwinHeadsetAvrcpAbsVolSupported(Z)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_164
    move v0, v5

    .line 190
    goto :goto_15c

    .line 197
    :sswitch_166
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/media/IAudioServiceEx$Stub;->getStreamDeviceVolume(II)I

    move-result v3

    .line 203
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 209
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":I
    :sswitch_17f
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setAvrcpAbsVol(I)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 218
    .end local v0    # "_arg0":I
    :sswitch_190
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a4

    move v0, v6

    .line 221
    .local v0, "_arg0":Z
    :goto_19c
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setTwinHeadsetOn(Z)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1a4
    move v0, v5

    .line 220
    goto :goto_19c

    .line 227
    :sswitch_1a6
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->getSafeMediaVolumeState()I

    move-result v3

    .line 229
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 235
    .end local v3    # "_result":I
    :sswitch_1b7
    const-string v7, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1cb

    move v0, v6

    .line 238
    .restart local v0    # "_arg0":Z
    :goto_1c3
    invoke-virtual {p0, v0}, Landroid/media/IAudioServiceEx$Stub;->setTwinHeadsetSafeMediaVolumeDevices(Z)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1cb
    move v0, v5

    .line 237
    goto :goto_1c3

    .line 244
    :sswitch_1cd
    const-string v5, "android.media.IAudioServiceEx"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/media/IAudioServiceEx$Stub;->setAvrcpAbsVolMax()V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_1da
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_38
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_60
        0x6 -> :sswitch_78
        0x7 -> :sswitch_88
        0x8 -> :sswitch_99
        0x9 -> :sswitch_ae
        0xa -> :sswitch_cb
        0xb -> :sswitch_df
        0xc -> :sswitch_f0
        0xd -> :sswitch_101
        0xe -> :sswitch_115
        0xf -> :sswitch_126
        0x10 -> :sswitch_13c
        0x11 -> :sswitch_150
        0x12 -> :sswitch_166
        0x13 -> :sswitch_17f
        0x14 -> :sswitch_190
        0x15 -> :sswitch_1a6
        0x16 -> :sswitch_1b7
        0x17 -> :sswitch_1cd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
