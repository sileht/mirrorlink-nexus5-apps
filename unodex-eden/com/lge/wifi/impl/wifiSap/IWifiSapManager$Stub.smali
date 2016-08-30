.class public abstract Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;
.super Landroid/os/Binder;
.source "IWifiSapManager.java"

# interfaces
.implements Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.impl.wifiSap.IWifiSapManager"

.field static final TRANSACTION_MacFilterremoveAllowedList:I = 0x1e

.field static final TRANSACTION_MacFilterremoveDeniedList:I = 0x1d

.field static final TRANSACTION_addMacFilterAllowList:I = 0x19

.field static final TRANSACTION_addMacFilterDenyList:I = 0x18

.field static final TRANSACTION_enableSoftAp:I = 0x1

.field static final TRANSACTION_enableSoftApWifiCfg:I = 0x2

.field static final TRANSACTION_getAllAssocMacList:I = 0x15

.field static final TRANSACTION_getAllAssocMacListATT:I = 0x17

.field static final TRANSACTION_getAllAssocMacListVZW:I = 0x16

.field static final TRANSACTION_getAssoStaMacListCount:I = 0x14

.field static final TRANSACTION_getAssocIPAddress:I = 0x3d

.field static final TRANSACTION_getAutoShutOffTime:I = 0x6

.field static final TRANSACTION_getChannel:I = 0xa

.field static final TRANSACTION_getCountryCode:I = 0xe

.field static final TRANSACTION_getHiddenSsid:I = 0x10

.field static final TRANSACTION_getMacFilterByIndex:I = 0x23

.field static final TRANSACTION_getMacFilterCount:I = 0x21

.field static final TRANSACTION_getMacFilterMode:I = 0x1b

.field static final TRANSACTION_getMaxNumOfClients:I = 0x34

.field static final TRANSACTION_getOperationMode:I = 0xc

.field static final TRANSACTION_getPrivacySeparator:I = 0x12

.field static final TRANSACTION_getSecurityType:I = 0x26

.field static final TRANSACTION_getSoftApStatus:I = 0x4

.field static final TRANSACTION_getSsid:I = 0x8

.field static final TRANSACTION_getWepKey1:I = 0x2f

.field static final TRANSACTION_getWepKey2:I = 0x30

.field static final TRANSACTION_getWepKey3:I = 0x31

.field static final TRANSACTION_getWepKey4:I = 0x32

.field static final TRANSACTION_getWepKeyIndex:I = 0x2a

.field static final TRANSACTION_getWpaKey:I = 0x28

.field static final TRANSACTION_getWpsNfcConfTokenFromAP:I = 0x3b

.field static final TRANSACTION_getWpsNfcHandoverSelect:I = 0x3c

.field static final TRANSACTION_removeAlltheList:I = 0x1f

.field static final TRANSACTION_removeMacFilterAllowList:I = 0x20

.field static final TRANSACTION_setAutoShutOffTime:I = 0x5

.field static final TRANSACTION_setChannel:I = 0x9

.field static final TRANSACTION_setCountryCode:I = 0xd

.field static final TRANSACTION_setDisassociateStation:I = 0x13

.field static final TRANSACTION_setHiddenSsid:I = 0xf

.field static final TRANSACTION_setMacFilterByIndex:I = 0x22

.field static final TRANSACTION_setMacFilterCount:I = 0x1c

.field static final TRANSACTION_setMacFilterMode:I = 0x1a

.field static final TRANSACTION_setMacaddracl:I = 0x35

.field static final TRANSACTION_setMaxNumOfClients:I = 0x33

.field static final TRANSACTION_setNstartMonitoring:I = 0x3

.field static final TRANSACTION_setOperationMode:I = 0xb

.field static final TRANSACTION_setPrivacySeparator:I = 0x11

.field static final TRANSACTION_setSecurityType:I = 0x25

.field static final TRANSACTION_setSoftApWifiCfg:I = 0x24

.field static final TRANSACTION_setSsid:I = 0x7

.field static final TRANSACTION_setTxPower:I = 0x36

.field static final TRANSACTION_setWepKey1:I = 0x2b

.field static final TRANSACTION_setWepKey2:I = 0x2c

.field static final TRANSACTION_setWepKey3:I = 0x2d

.field static final TRANSACTION_setWepKey4:I = 0x2e

.field static final TRANSACTION_setWepKeyIndex:I = 0x29

.field static final TRANSACTION_setWpaKey:I = 0x27

.field static final TRANSACTION_setWpsCancel:I = 0x38

.field static final TRANSACTION_setWpsNfcPwToken:I = 0x3a

.field static final TRANSACTION_setWpsNfcReportHandover:I = 0x3e

.field static final TRANSACTION_setWpsPbc:I = 0x39

.field static final TRANSACTION_setWpsPin:I = 0x37


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_5dc

    .line 699
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 45
    :sswitch_a
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2a

    move v0, v6

    .line 53
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->enableSoftAp(Z)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_26

    move v7, v6

    :cond_26
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_2a
    move v0, v7

    .line 52
    goto :goto_1c

    .line 60
    :sswitch_2c
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5c

    move v0, v6

    .line 64
    .restart local v0    # "_arg0":Z
    :goto_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5e

    .line 65
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 71
    .local v1, "_arg1":Landroid/net/wifi/WifiConfiguration;
    :goto_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->enableSoftApWifiCfg(ZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 75
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v4, :cond_58

    move v7, v6

    :cond_58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :cond_5c
    move v0, v7

    .line 62
    goto :goto_38

    .line 68
    .restart local v0    # "_arg0":Z
    :cond_5e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/net/wifi/WifiConfiguration;
    goto :goto_46

    .line 81
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/net/wifi/WifiConfiguration;
    :sswitch_60
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_91

    move v0, v6

    .line 85
    .restart local v0    # "_arg0":Z
    :goto_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_93

    .line 86
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 92
    .restart local v1    # "_arg1":Landroid/net/wifi/WifiConfiguration;
    :goto_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z

    move-result v4

    .line 96
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v4, :cond_8c

    move v7, v6

    :cond_8c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :cond_91
    move v0, v7

    .line 83
    goto :goto_6c

    .line 89
    .restart local v0    # "_arg0":Z
    :cond_93
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/net/wifi/WifiConfiguration;
    goto :goto_7a

    .line 102
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/net/wifi/WifiConfiguration;
    :sswitch_95
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getSoftApStatus()Z

    move-result v4

    .line 104
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v4, :cond_a4

    move v7, v6

    :cond_a4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 110
    .end local v4    # "_result":Z
    :sswitch_a9
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setAutoShutOffTime(I)Z

    move-result v4

    .line 114
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v4, :cond_bc

    move v7, v6

    :cond_bc
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_c1
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getAutoShutOffTime()I

    move-result v4

    .line 122
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 128
    .end local v4    # "_result":I
    :sswitch_d2
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setSsid(Ljava/lang/String;)Z

    move-result v4

    .line 132
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v4, :cond_e5

    move v7, v6

    :cond_e5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 138
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_ea
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getSsid()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 146
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_fb
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setChannel(I)Z

    move-result v4

    .line 150
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v4, :cond_10e

    move v7, v6

    :cond_10e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 156
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_113
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getChannel()I

    move-result v4

    .line 158
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 164
    .end local v4    # "_result":I
    :sswitch_124
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_146

    .line 167
    sget-object v8, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    .line 172
    .local v0, "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    :goto_137
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setOperationMode(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;)Z

    move-result v4

    .line 173
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v4, :cond_141

    move v7, v6

    :cond_141
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 170
    .end local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    .end local v4    # "_result":Z
    :cond_146
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    goto :goto_137

    .line 179
    .end local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    :sswitch_148
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getOperationMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    move-result-object v4

    .line 181
    .local v4, "_result":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v4, :cond_15e

    .line 183
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v4, p3, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 187
    :cond_15e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 193
    .end local v4    # "_result":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    :sswitch_163
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setCountryCode(Ljava/lang/String;)Z

    move-result v4

    .line 197
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v4, :cond_176

    move v7, v6

    :cond_176
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_17b
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 211
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_18c
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1a7

    move v0, v6

    .line 214
    .local v0, "_arg0":Z
    :goto_198
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setHiddenSsid(Z)Z

    move-result v4

    .line 215
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v4, :cond_1a2

    move v7, v6

    :cond_1a2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1a7
    move v0, v7

    .line 213
    goto :goto_198

    .line 221
    :sswitch_1a9
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getHiddenSsid()Z

    move-result v4

    .line 223
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    if-eqz v4, :cond_1b8

    move v7, v6

    :cond_1b8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 229
    .end local v4    # "_result":Z
    :sswitch_1bd
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1d8

    move v0, v6

    .line 232
    .restart local v0    # "_arg0":Z
    :goto_1c9
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setPrivacySeparator(Z)Z

    move-result v4

    .line 233
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v4, :cond_1d3

    move v7, v6

    :cond_1d3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_1d8
    move v0, v7

    .line 231
    goto :goto_1c9

    .line 239
    :sswitch_1da
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getPrivacySeparator()Z

    move-result v4

    .line 241
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v4, :cond_1e9

    move v7, v6

    :cond_1e9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 247
    .end local v4    # "_result":Z
    :sswitch_1ee
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setDisassociateStation(Ljava/lang/String;)Z

    move-result v4

    .line 251
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v4, :cond_201

    move v7, v6

    :cond_201
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_206
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getAssoStaMacListCount()I

    move-result v4

    .line 259
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 265
    .end local v4    # "_result":I
    :sswitch_217
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getAllAssocMacList()[Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 273
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_228
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getAllAssocMacListVZW()Ljava/util/List;

    move-result-object v5

    .line 275
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 281
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_239
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getAllAssocMacListATT()Ljava/util/List;

    move-result-object v5

    .line 283
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 289
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_24a
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 294
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->addMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v4

    .line 295
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v4, :cond_261

    move v7, v6

    :cond_261
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 301
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_266
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->addMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v4

    .line 307
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_27d

    move v7, v6

    :cond_27d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 313
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_282
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2a4

    .line 316
    sget-object v8, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    .line 321
    .local v0, "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    :goto_295
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;)Z

    move-result v4

    .line 322
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    if-eqz v4, :cond_29f

    move v7, v6

    :cond_29f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 319
    .end local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    .end local v4    # "_result":Z
    :cond_2a4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    goto :goto_295

    .line 328
    .end local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    :sswitch_2a6
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    move-result-object v4

    .line 330
    .local v4, "_result":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v4, :cond_2bc

    .line 332
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    invoke-virtual {v4, p3, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 336
    :cond_2bc
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 342
    .end local v4    # "_result":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    :sswitch_2c1
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setMacFilterCount(I)Z

    move-result v4

    .line 346
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v4, :cond_2d4

    move v7, v6

    :cond_2d4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 352
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_2d9
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->MacFilterremoveDeniedList(Ljava/lang/String;)I

    move-result v4

    .line 356
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 362
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_2ee
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->MacFilterremoveAllowedList(Ljava/lang/String;)I

    move-result v4

    .line 366
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 372
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_303
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->removeAlltheList()I

    move-result v4

    .line 374
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 380
    .end local v4    # "_result":I
    :sswitch_314
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->removeMacFilterAllowList()I

    move-result v4

    .line 382
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 388
    .end local v4    # "_result":I
    :sswitch_325
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getMacFilterCount()I

    move-result v4

    .line 390
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 396
    .end local v4    # "_result":I
    :sswitch_336
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 400
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setMacFilterByIndex(ILjava/lang/String;)Z

    move-result v4

    .line 402
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    if-eqz v4, :cond_34d

    move v7, v6

    :cond_34d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 408
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_352
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 411
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 418
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_367
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_398

    .line 421
    sget-object v8, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 427
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_37a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 431
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_39a

    move v3, v6

    .line 432
    .local v3, "_arg3":Z
    :goto_389
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;IIZ)Z

    move-result v4

    .line 433
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v4, :cond_393

    move v7, v6

    :cond_393
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 424
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Z
    :cond_398
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_37a

    .restart local v1    # "_arg1":I
    .restart local v2    # "_arg2":I
    :cond_39a
    move v3, v7

    .line 431
    goto :goto_389

    .line 439
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_39c
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3be

    .line 442
    sget-object v8, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    .line 447
    .local v0, "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :goto_3af
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;)Z

    move-result v4

    .line 448
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    if-eqz v4, :cond_3b9

    move v7, v6

    :cond_3b9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 445
    .end local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    .end local v4    # "_result":Z
    :cond_3be
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    goto :goto_3af

    .line 454
    .end local v0    # "_arg0":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :sswitch_3c0
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getSecurityType()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    move-result-object v4

    .line 456
    .local v4, "_result":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v4, :cond_3d6

    .line 458
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    invoke-virtual {v4, p3, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 462
    :cond_3d6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 468
    .end local v4    # "_result":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :sswitch_3db
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWpaKey(Ljava/lang/String;)Z

    move-result v4

    .line 472
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v4, :cond_3ee

    move v7, v6

    :cond_3ee
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 478
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_3f3
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWpaKey()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 486
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_404
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 489
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWepKeyIndex(I)Z

    move-result v4

    .line 490
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v4, :cond_417

    move v7, v6

    :cond_417
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 496
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_41c
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWepKeyIndex()I

    move-result v4

    .line 498
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 504
    .end local v4    # "_result":I
    :sswitch_42d
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWepKey1(Ljava/lang/String;)Z

    move-result v4

    .line 508
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v4, :cond_440

    move v7, v6

    :cond_440
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 514
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_445
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWepKey2(Ljava/lang/String;)Z

    move-result v4

    .line 518
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v4, :cond_458

    move v7, v6

    :cond_458
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 524
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_45d
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWepKey3(Ljava/lang/String;)Z

    move-result v4

    .line 528
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    if-eqz v4, :cond_470

    move v7, v6

    :cond_470
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 534
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_475
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 537
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWepKey4(Ljava/lang/String;)Z

    move-result v4

    .line 538
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v4, :cond_488

    move v7, v6

    :cond_488
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 544
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_48d
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWepKey1()Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 552
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_49e
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWepKey2()Ljava/lang/String;

    move-result-object v4

    .line 554
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 560
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4af
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWepKey3()Ljava/lang/String;

    move-result-object v4

    .line 562
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 568
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4c0
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWepKey4()Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 576
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4d1
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 579
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setMaxNumOfClients(I)Z

    move-result v4

    .line 580
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v4, :cond_4e4

    move v7, v6

    :cond_4e4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 586
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_4e9
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getMaxNumOfClients()I

    move-result v4

    .line 588
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 594
    .end local v4    # "_result":I
    :sswitch_4fa
    const-string v8, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 597
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setMacaddracl(I)Z

    move-result v4

    .line 598
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    if-eqz v4, :cond_50d

    move v7, v6

    :cond_50d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 604
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_512
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 607
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setTxPower(I)I

    move-result v4

    .line 608
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 614
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_527
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 619
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWpsPin(Ljava/lang/String;I)I

    move-result v4

    .line 620
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 626
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_540
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWpsCancel()I

    move-result v4

    .line 628
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 634
    .end local v4    # "_result":I
    :sswitch_551
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWpsPbc()I

    move-result v4

    .line 636
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 642
    .end local v4    # "_result":I
    :sswitch_562
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 646
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 648
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 649
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWpsNfcPwToken(Ljava/lang/String;II)I

    move-result v4

    .line 650
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 656
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_57f
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 660
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 661
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWpsNfcConfTokenFromAP(II)Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 668
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_598
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 671
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getWpsNfcHandoverSelect(I)Ljava/lang/String;

    move-result-object v4

    .line 672
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 678
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5ad
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 682
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 688
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5c2
    const-string v7, "com.lge.wifi.impl.wifiSap.IWifiSapManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;->setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 694
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_5dc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_60
        0x4 -> :sswitch_95
        0x5 -> :sswitch_a9
        0x6 -> :sswitch_c1
        0x7 -> :sswitch_d2
        0x8 -> :sswitch_ea
        0x9 -> :sswitch_fb
        0xa -> :sswitch_113
        0xb -> :sswitch_124
        0xc -> :sswitch_148
        0xd -> :sswitch_163
        0xe -> :sswitch_17b
        0xf -> :sswitch_18c
        0x10 -> :sswitch_1a9
        0x11 -> :sswitch_1bd
        0x12 -> :sswitch_1da
        0x13 -> :sswitch_1ee
        0x14 -> :sswitch_206
        0x15 -> :sswitch_217
        0x16 -> :sswitch_228
        0x17 -> :sswitch_239
        0x18 -> :sswitch_24a
        0x19 -> :sswitch_266
        0x1a -> :sswitch_282
        0x1b -> :sswitch_2a6
        0x1c -> :sswitch_2c1
        0x1d -> :sswitch_2d9
        0x1e -> :sswitch_2ee
        0x1f -> :sswitch_303
        0x20 -> :sswitch_314
        0x21 -> :sswitch_325
        0x22 -> :sswitch_336
        0x23 -> :sswitch_352
        0x24 -> :sswitch_367
        0x25 -> :sswitch_39c
        0x26 -> :sswitch_3c0
        0x27 -> :sswitch_3db
        0x28 -> :sswitch_3f3
        0x29 -> :sswitch_404
        0x2a -> :sswitch_41c
        0x2b -> :sswitch_42d
        0x2c -> :sswitch_445
        0x2d -> :sswitch_45d
        0x2e -> :sswitch_475
        0x2f -> :sswitch_48d
        0x30 -> :sswitch_49e
        0x31 -> :sswitch_4af
        0x32 -> :sswitch_4c0
        0x33 -> :sswitch_4d1
        0x34 -> :sswitch_4e9
        0x35 -> :sswitch_4fa
        0x36 -> :sswitch_512
        0x37 -> :sswitch_527
        0x38 -> :sswitch_540
        0x39 -> :sswitch_551
        0x3a -> :sswitch_562
        0x3b -> :sswitch_57f
        0x3c -> :sswitch_598
        0x3d -> :sswitch_5ad
        0x3e -> :sswitch_5c2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
