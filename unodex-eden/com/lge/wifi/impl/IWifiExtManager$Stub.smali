.class public abstract Lcom/lge/wifi/impl/IWifiExtManager$Stub;
.super Landroid/os/Binder;
.source "IWifiExtManager.java"

# interfaces
.implements Lcom/lge/wifi/impl/IWifiExtManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/IWifiExtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/IWifiExtManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.impl.IWifiExtManager"

.field static final TRANSACTION_getCallingWifiUid:I = 0xc

.field static final TRANSACTION_getConnectionExtInfo:I = 0x1

.field static final TRANSACTION_getMacAddress:I = 0x4

.field static final TRANSACTION_getP2pState:I = 0x3

.field static final TRANSACTION_getPrepOobConnection:I = 0xe

.field static final TRANSACTION_getSecurityType:I = 0x2

.field static final TRANSACTION_getSoftApMaxScb:I = 0xa

.field static final TRANSACTION_isInternetCheckAvailable:I = 0x6

.field static final TRANSACTION_isVZWMobileHotspotEnabled:I = 0x8

.field static final TRANSACTION_setCallingWifiUid:I = 0xb

.field static final TRANSACTION_setDlnaUsing:I = 0x5

.field static final TRANSACTION_setPrepOobConnection:I = 0xd

.field static final TRANSACTION_setProvisioned:I = 0x7

.field static final TRANSACTION_setVZWMobileHotspot:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/IWifiExtManager;
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
    const-string v1, "com.lge.wifi.impl.IWifiExtManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/wifi/impl/IWifiExtManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/wifi/impl/IWifiExtManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/wifi/impl/IWifiExtManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_130

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 45
    :sswitch_a
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getConnectionExtInfo()Lcom/lge/wifi/impl/WifiExtInfo;

    move-result-object v1

    .line 52
    .local v1, "_result":Lcom/lge/wifi/impl/WifiExtInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_25

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v1, p3, v2}, Lcom/lge/wifi/impl/WifiExtInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 58
    :cond_25
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 64
    .end local v1    # "_result":Lcom/lge/wifi/impl/WifiExtInfo;
    :sswitch_29
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getSecurityType()I

    move-result v1

    .line 66
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v1    # "_result":I
    :sswitch_39
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getP2pState()I

    move-result v1

    .line 74
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v1    # "_result":I
    :sswitch_49
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 88
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_73

    move v0, v2

    .line 91
    .local v0, "_arg0":Z
    :goto_65
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setDlnaUsing(Z)Z

    move-result v1

    .line 92
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v1, :cond_6f

    move v3, v2

    :cond_6f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_73
    move v0, v3

    .line 90
    goto :goto_65

    .line 98
    :sswitch_75
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->isInternetCheckAvailable()Z

    move-result v1

    .line 100
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v1, :cond_84

    move v3, v2

    :cond_84
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 106
    .end local v1    # "_result":Z
    :sswitch_88
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    move v0, v2

    .line 109
    .restart local v0    # "_arg0":Z
    :goto_94
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setProvisioned(Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_9c
    move v0, v3

    .line 108
    goto :goto_94

    .line 115
    :sswitch_9e
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->isVZWMobileHotspotEnabled()Z

    move-result v1

    .line 117
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v1, :cond_ad

    move v3, v2

    :cond_ad
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 123
    .end local v1    # "_result":Z
    :sswitch_b2
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cd

    move v0, v2

    .line 126
    .restart local v0    # "_arg0":Z
    :goto_be
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setVZWMobileHotspot(Z)Z

    move-result v1

    .line 127
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v1, :cond_c8

    move v3, v2

    :cond_c8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_cd
    move v0, v3

    .line 125
    goto :goto_be

    .line 133
    :sswitch_cf
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getSoftApMaxScb(I)I

    move-result v1

    .line 137
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 143
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_e4
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setCallingWifiUid(I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":I
    :sswitch_f5
    const-string v3, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getCallingWifiUid()I

    move-result v1

    .line 154
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v1    # "_result":I
    :sswitch_106
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11a

    move v0, v2

    .line 163
    .local v0, "_arg0":Z
    :goto_112
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->setPrepOobConnection(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_11a
    move v0, v3

    .line 162
    goto :goto_112

    .line 169
    :sswitch_11c
    const-string v4, "com.lge.wifi.impl.IWifiExtManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/lge/wifi/impl/IWifiExtManager$Stub;->getPrepOobConnection()Z

    move-result v1

    .line 171
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v1, :cond_12b

    move v3, v2

    :cond_12b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    :sswitch_data_130
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x3 -> :sswitch_39
        0x4 -> :sswitch_49
        0x5 -> :sswitch_59
        0x6 -> :sswitch_75
        0x7 -> :sswitch_88
        0x8 -> :sswitch_9e
        0x9 -> :sswitch_b2
        0xa -> :sswitch_cf
        0xb -> :sswitch_e4
        0xc -> :sswitch_f5
        0xd -> :sswitch_106
        0xe -> :sswitch_11c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
