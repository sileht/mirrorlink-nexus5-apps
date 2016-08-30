.class public abstract Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;
.super Landroid/os/Binder;
.source "IWiFiOffloading.java"

# interfaces
.implements Lcom/lge/wifi/impl/offloading/IWiFiOffloading;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/IWiFiOffloading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.impl.offloading.IWiFiOffloading"

.field static final TRANSACTION_disableWifi:I = 0x6

.field static final TRANSACTION_disableWifioffloadTimerReminder:I = 0x13

.field static final TRANSACTION_disable_background:I = 0xf

.field static final TRANSACTION_enable:I = 0x2

.field static final TRANSACTION_enable_background:I = 0x5

.field static final TRANSACTION_getAutoAP_ssid:I = 0xe

.field static final TRANSACTION_getWifiOffloadingStart:I = 0x18

.field static final TRANSACTION_getisAutoOn:I = 0xa

.field static final TRANSACTION_getisNotifyMe:I = 0x9

.field static final TRANSACTION_getisWifiAPOn:I = 0xb

.field static final TRANSACTION_getisWifiOn:I = 0x8

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_isOffloadingReminder_on:I = 0x12

.field static final TRANSACTION_isOffloadingTimer_on:I = 0x11

.field static final TRANSACTION_isWifiAPOn:I = 0xc

.field static final TRANSACTION_isWifiOffloadingEnabled:I = 0x10

.field static final TRANSACTION_resetWifioffloadTimerReminder:I = 0x15

.field static final TRANSACTION_setWifiOffloadOngoing:I = 0x16

.field static final TRANSACTION_setWifiOffloadingStart:I = 0x17

.field static final TRANSACTION_setisWifiAPOn:I = 0xd

.field static final TRANSACTION_setisWifiOn:I = 0x7

.field static final TRANSACTION_start:I = 0x3

.field static final TRANSACTION_start_background:I = 0x4

.field static final TRANSACTION_stopWifioffloadTimer:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/impl/offloading/IWiFiOffloading;
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
    const-string v1, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/wifi/impl/offloading/IWiFiOffloading;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_1e4

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->init()Z

    move-result v1

    .line 52
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 58
    .end local v1    # "_result":Z
    :sswitch_23
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->enable()Z

    move-result v1

    .line 60
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v1, :cond_32

    move v2, v3

    :cond_32
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v1    # "_result":Z
    :sswitch_36
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    move v0, v3

    .line 69
    .local v0, "_arg0":Z
    :goto_42
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->start(Z)Z

    move-result v1

    .line 70
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v1, :cond_4c

    move v2, v3

    :cond_4c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_50
    move v0, v2

    .line 68
    goto :goto_42

    .line 76
    :sswitch_52
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    move v0, v3

    .line 79
    .restart local v0    # "_arg0":Z
    :goto_5e
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->start_background(Z)Z

    move-result v1

    .line 80
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v1, :cond_68

    move v2, v3

    :cond_68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :cond_6c
    move v0, v2

    .line 78
    goto :goto_5e

    .line 86
    :sswitch_6e
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->enable_background()Z

    move-result v1

    .line 88
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v1, :cond_7d

    move v2, v3

    :cond_7d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v1    # "_result":Z
    :sswitch_81
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->disableWifi()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 101
    :sswitch_8e
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a2

    move v0, v3

    .line 104
    .restart local v0    # "_arg0":Z
    :goto_9a
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setisWifiOn(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_a2
    move v0, v2

    .line 103
    goto :goto_9a

    .line 110
    :sswitch_a4
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisWifiOn()Z

    move-result v1

    .line 112
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v1, :cond_b3

    move v2, v3

    :cond_b3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 118
    .end local v1    # "_result":Z
    :sswitch_b8
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisNotifyMe()Z

    move-result v1

    .line 120
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v1, :cond_c7

    move v2, v3

    :cond_c7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 126
    .end local v1    # "_result":Z
    :sswitch_cc
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisAutoOn()Z

    move-result v1

    .line 128
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v1, :cond_db

    move v2, v3

    :cond_db
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 134
    .end local v1    # "_result":Z
    :sswitch_e0
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getisWifiAPOn()Z

    move-result v1

    .line 136
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v1, :cond_ef

    move v2, v3

    :cond_ef
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 142
    .end local v1    # "_result":Z
    :sswitch_f4
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isWifiAPOn()Z

    move-result v1

    .line 144
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v1, :cond_103

    move v2, v3

    :cond_103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 150
    .end local v1    # "_result":Z
    :sswitch_108
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11c

    move v0, v3

    .line 153
    .restart local v0    # "_arg0":Z
    :goto_114
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setisWifiAPOn(Z)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_11c
    move v0, v2

    .line 152
    goto :goto_114

    .line 159
    :sswitch_11e
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getAutoAP_ssid()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 167
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_12f
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->disable_background()Z

    move-result v1

    .line 169
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v1, :cond_13e

    move v2, v3

    :cond_13e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 175
    .end local v1    # "_result":Z
    :sswitch_143
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isWifiOffloadingEnabled()I

    move-result v1

    .line 177
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 183
    .end local v1    # "_result":I
    :sswitch_154
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isOffloadingTimer_on()Z

    move-result v1

    .line 185
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_163

    move v2, v3

    :cond_163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 191
    .end local v1    # "_result":Z
    :sswitch_168
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->isOffloadingReminder_on()I

    move-result v1

    .line 193
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 199
    .end local v1    # "_result":I
    :sswitch_179
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->disableWifioffloadTimerReminder()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 206
    :sswitch_186
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->stopWifioffloadTimer()V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 213
    :sswitch_193
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->resetWifioffloadTimerReminder(I)Z

    move-result v1

    .line 217
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v1, :cond_1a6

    move v2, v3

    :cond_1a6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 223
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_1ab
    const-string v4, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1bf

    move v0, v3

    .line 226
    .local v0, "_arg0":Z
    :goto_1b7
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setWifiOffloadOngoing(Z)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1bf
    move v0, v2

    .line 225
    goto :goto_1b7

    .line 232
    :sswitch_1c1
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 235
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->setWifiOffloadingStart(I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 241
    .end local v0    # "_arg0":I
    :sswitch_1d2
    const-string v2, "com.lge.wifi.impl.offloading.IWiFiOffloading"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/lge/wifi/impl/offloading/IWiFiOffloading$Stub;->getWifiOffloadingStart()I

    move-result v1

    .line 243
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    nop

    :sswitch_data_1e4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_52
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_81
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_a4
        0x9 -> :sswitch_b8
        0xa -> :sswitch_cc
        0xb -> :sswitch_e0
        0xc -> :sswitch_f4
        0xd -> :sswitch_108
        0xe -> :sswitch_11e
        0xf -> :sswitch_12f
        0x10 -> :sswitch_143
        0x11 -> :sswitch_154
        0x12 -> :sswitch_168
        0x13 -> :sswitch_179
        0x14 -> :sswitch_186
        0x15 -> :sswitch_193
        0x16 -> :sswitch_1ab
        0x17 -> :sswitch_1c1
        0x18 -> :sswitch_1d2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
