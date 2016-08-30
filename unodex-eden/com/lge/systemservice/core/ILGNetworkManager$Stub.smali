.class public abstract Lcom/lge/systemservice/core/ILGNetworkManager$Stub;
.super Landroid/os/Binder;
.source "ILGNetworkManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/ILGNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/ILGNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ILGNetworkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.ILGNetworkManager"

.field static final TRANSACTION_acceptPacket:I = 0x5

.field static final TRANSACTION_addRouteWithMetric:I = 0x15

.field static final TRANSACTION_addUpstreamV6Interface:I = 0x13

.field static final TRANSACTION_appendRouteWithMetric:I = 0x12

.field static final TRANSACTION_blockIpv6Interface:I = 0xf

.field static final TRANSACTION_delSrcRoute:I = 0x17

.field static final TRANSACTION_dropPacket:I = 0x4

.field static final TRANSACTION_enableUdpForwarding:I = 0x1c

.field static final TRANSACTION_getUsbClient:I = 0x1b

.field static final TRANSACTION_packetList_Indrop:I = 0x19

.field static final TRANSACTION_packetList_Indrop_view:I = 0x1a

.field static final TRANSACTION_removeImsRoute:I = 0x18

.field static final TRANSACTION_removeUpstreamV6Interface:I = 0x14

.field static final TRANSACTION_replaceSrcRoute:I = 0x16

.field static final TRANSACTION_resetPacketDrop:I = 0x6

.field static final TRANSACTION_runClearNatRule:I = 0x9

.field static final TRANSACTION_runClearPortFilterRule:I = 0xb

.field static final TRANSACTION_runClearPortForwardRule:I = 0xd

.field static final TRANSACTION_runSetNatForwardRule:I = 0x8

.field static final TRANSACTION_runSetPortFilterRule:I = 0xa

.field static final TRANSACTION_runSetPortForwardRule:I = 0xc

.field static final TRANSACTION_runSetPortRedirectRule:I = 0xe

.field static final TRANSACTION_runShellCommand:I = 0x1

.field static final TRANSACTION_setFirewallEgressProtoRule:I = 0x1d

.field static final TRANSACTION_setInterfaceAlias:I = 0x7

.field static final TRANSACTION_setIpFamilyTypeForInterface:I = 0x11

.field static final TRANSACTION_setMdmIptables:I = 0x2

.field static final TRANSACTION_setMdmIptablesFile:I = 0x3

.field static final TRANSACTION_unblockIpv6Interface:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/ILGNetworkManager;
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
    const-string v1, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/ILGNetworkManager;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/lge/systemservice/core/ILGNetworkManager;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/ILGNetworkManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_292

    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 42
    :sswitch_a
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runShellCommand(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 56
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->setMdmIptables(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->setMdmIptablesFile(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_40
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->dropPacket(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_50
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->acceptPacket(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_60
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->resetPacketDrop()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 99
    :sswitch_6c
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->setInterfaceAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_80
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runSetNatForwardRule(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_91
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runClearNatRule()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 126
    :sswitch_9e
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runSetPortFilterRule(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 137
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_b3
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runClearPortFilterRule()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 144
    :sswitch_c0
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runSetPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 159
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :sswitch_dd
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runClearPortForwardRule()V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 166
    :sswitch_ea
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->runSetPortRedirectRule(Ljava/lang/String;I)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 177
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_ff
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->blockIpv6Interface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 186
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_110
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->unblockIpv6Interface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 195
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_121
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_140

    move v1, v5

    .line 201
    .local v1, "_arg1":Z
    :goto_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_142

    move v2, v5

    .line 202
    .local v2, "_arg2":Z
    :goto_138
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->setIpFamilyTypeForInterface(Ljava/lang/String;ZZ)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :cond_140
    move v1, v6

    .line 199
    goto :goto_131

    .restart local v1    # "_arg1":Z
    :cond_142
    move v2, v6

    .line 201
    goto :goto_138

    .line 208
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :sswitch_144
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16e

    .line 215
    sget-object v7, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 220
    .local v2, "_arg2":Landroid/net/RouteInfo;
    :goto_15f
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->appendRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v4

    .line 221
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v4, :cond_169

    move v6, v5

    :cond_169
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 218
    .end local v2    # "_arg2":Landroid/net/RouteInfo;
    .end local v4    # "_result":Z
    :cond_16e
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/net/RouteInfo;
    goto :goto_15f

    .line 227
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/net/RouteInfo;
    :sswitch_170
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->addUpstreamV6Interface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 236
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_181
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 245
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_192
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1bc

    .line 252
    sget-object v7, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 257
    .restart local v2    # "_arg2":Landroid/net/RouteInfo;
    :goto_1ad
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z

    move-result v4

    .line 258
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v4, :cond_1b7

    move v6, v5

    :cond_1b7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 255
    .end local v2    # "_arg2":Landroid/net/RouteInfo;
    .end local v4    # "_result":Z
    :cond_1bc
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/net/RouteInfo;
    goto :goto_1ad

    .line 264
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/net/RouteInfo;
    :sswitch_1be
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 270
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 272
    .local v2, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 273
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z

    move-result v4

    .line 274
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v4, :cond_1dd

    move v6, v5

    :cond_1dd
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 280
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_1e2
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 284
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->delSrcRoute([BI)Z

    move-result v4

    .line 286
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v4, :cond_1f9

    move v6, v5

    :cond_1f9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 292
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_1fe
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_221

    .line 299
    sget-object v6, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 304
    .local v2, "_arg2":Landroid/net/RouteInfo;
    :goto_219
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->removeImsRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 302
    .end local v2    # "_arg2":Landroid/net/RouteInfo;
    :cond_221
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/net/RouteInfo;
    goto :goto_219

    .line 310
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/net/RouteInfo;
    :sswitch_223
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->packetList_Indrop()Z

    move-result v4

    .line 312
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v4, :cond_232

    move v6, v5

    :cond_232
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 318
    .end local v4    # "_result":Z
    :sswitch_237
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->packetList_Indrop_view()V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 325
    :sswitch_244
    const-string v6, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->getUsbClient(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 334
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_255
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_275

    move v0, v5

    .line 338
    .local v0, "_arg0":Z
    :goto_261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :cond_275
    move v0, v6

    .line 336
    goto :goto_261

    .line 349
    :sswitch_277
    const-string v7, "com.lge.systemservice.core.ILGNetworkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_28f

    move v1, v5

    .line 354
    .local v1, "_arg1":Z
    :goto_287
    invoke-virtual {p0, v0, v1}, Lcom/lge/systemservice/core/ILGNetworkManager$Stub;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    :cond_28f
    move v1, v6

    .line 353
    goto :goto_287

    .line 38
    nop

    :sswitch_data_292
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_50
        0x6 -> :sswitch_60
        0x7 -> :sswitch_6c
        0x8 -> :sswitch_80
        0x9 -> :sswitch_91
        0xa -> :sswitch_9e
        0xb -> :sswitch_b3
        0xc -> :sswitch_c0
        0xd -> :sswitch_dd
        0xe -> :sswitch_ea
        0xf -> :sswitch_ff
        0x10 -> :sswitch_110
        0x11 -> :sswitch_121
        0x12 -> :sswitch_144
        0x13 -> :sswitch_170
        0x14 -> :sswitch_181
        0x15 -> :sswitch_192
        0x16 -> :sswitch_1be
        0x17 -> :sswitch_1e2
        0x18 -> :sswitch_1fe
        0x19 -> :sswitch_223
        0x1a -> :sswitch_237
        0x1b -> :sswitch_244
        0x1c -> :sswitch_255
        0x1d -> :sswitch_277
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
