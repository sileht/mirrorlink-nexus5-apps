.class public abstract Lcom/lge/systemservice/core/IWfdManager$Stub;
.super Landroid/os/Binder;
.source "IWfdManager.java"

# interfaces
.implements Lcom/lge/systemservice/core/IWfdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/IWfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IWfdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.systemservice.core.IWfdManager"

.field static final TRANSACTION_cancelP2pConnect:I = 0x8

.field static final TRANSACTION_cancelWifiDisplayConnect:I = 0x4

.field static final TRANSACTION_checkIfInSavedList:I = 0xb

.field static final TRANSACTION_discoverWfdPeers:I = 0x6

.field static final TRANSACTION_getRtspState:I = 0xf

.field static final TRANSACTION_getWfdMode:I = 0xd

.field static final TRANSACTION_getWfdState:I = 0xe

.field static final TRANSACTION_informConnectionRequstedUdn:I = 0x5

.field static final TRANSACTION_registerWfdMediaController:I = 0x10

.field static final TRANSACTION_releaseWfdMediaController:I = 0x11

.field static final TRANSACTION_requestConnect:I = 0x7

.field static final TRANSACTION_setTransportType:I = 0xc

.field static final TRANSACTION_setUiStateOff:I = 0xa

.field static final TRANSACTION_setUiStateOn:I = 0x9

.field static final TRANSACTION_setWfdSinkEnabled:I = 0x3

.field static final TRANSACTION_setWifiDisplayEnabled:I = 0x1

.field static final TRANSACTION_setWifiDisplayEnabledWithPopUp:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdManager;
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
    const-string v1, "com.lge.systemservice.core.IWfdManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/systemservice/core/IWfdManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/systemservice/core/IWfdManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/systemservice/core/IWfdManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/IWfdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_17c

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 45
    :sswitch_a
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    move v0, v4

    .line 53
    .local v0, "_arg0":Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setWifiDisplayEnabled(Z)Z

    move-result v3

    .line 54
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_26

    move v5, v4

    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_2a
    move v0, v5

    .line 52
    goto :goto_1c

    .line 60
    :sswitch_2c
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    move v0, v4

    .line 63
    .restart local v0    # "_arg0":Z
    :goto_38
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setWifiDisplayEnabledWithPopUp(Z)Z

    move-result v3

    .line 64
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_42

    move v5, v4

    :cond_42
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_46
    move v0, v5

    .line 62
    goto :goto_38

    .line 70
    :sswitch_48
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    move v0, v4

    .line 73
    .restart local v0    # "_arg0":Z
    :goto_54
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setWfdSinkEnabled(Z)Z

    move-result v3

    .line 74
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v3, :cond_5e

    move v5, v4

    :cond_5e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_62
    move v0, v5

    .line 72
    goto :goto_54

    .line 80
    :sswitch_64
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->cancelWifiDisplayConnect()Z

    move-result v3

    .line 82
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_73

    move v5, v4

    :cond_73
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v3    # "_result":Z
    :sswitch_77
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->informConnectionRequstedUdn(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_87
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 100
    .local v0, "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->discoverWfdPeers(Lcom/lge/systemservice/core/IWfdServiceListener;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 106
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    :sswitch_9c
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v2

    .line 113
    .local v2, "_arg2":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/systemservice/core/IWfdManager$Stub;->requestConnect(Ljava/lang/String;ILcom/lge/systemservice/core/IWfdServiceListener;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/lge/systemservice/core/IWfdServiceListener;
    :sswitch_b9
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/systemservice/core/IWfdServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdServiceListener;

    move-result-object v0

    .line 122
    .local v0, "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->cancelP2pConnect(Lcom/lge/systemservice/core/IWfdServiceListener;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 128
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/IWfdServiceListener;
    :sswitch_ce
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setUiStateOn()I

    move-result v3

    .line 130
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 136
    .end local v3    # "_result":I
    :sswitch_df
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setUiStateOff(I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 145
    .end local v0    # "_arg0":I
    :sswitch_f0
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->checkIfInSavedList(Ljava/lang/String;)Z

    move-result v3

    .line 149
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    if-eqz v3, :cond_103

    move v5, v4

    :cond_103
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_108
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->setTransportType(I)Z

    move-result v3

    .line 159
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v3, :cond_11b

    move v5, v4

    :cond_11b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 165
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_120
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->getWfdMode()I

    move-result v3

    .line 167
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 173
    .end local v3    # "_result":I
    :sswitch_131
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->getWfdState()I

    move-result v3

    .line 175
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 181
    .end local v3    # "_result":I
    :sswitch_142
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->getRtspState()I

    move-result v3

    .line 183
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 189
    .end local v3    # "_result":I
    :sswitch_153
    const-string v6, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/systemservice/core/IWfdMediaCmdListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/systemservice/core/IWfdMediaCmdListener;

    move-result-object v0

    .line 192
    .local v0, "_arg0":Lcom/lge/systemservice/core/IWfdMediaCmdListener;
    invoke-virtual {p0, v0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->registerWfdMediaController(Lcom/lge/systemservice/core/IWfdMediaCmdListener;)Z

    move-result v3

    .line 193
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v3, :cond_16a

    move v5, v4

    :cond_16a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 199
    .end local v0    # "_arg0":Lcom/lge/systemservice/core/IWfdMediaCmdListener;
    .end local v3    # "_result":Z
    :sswitch_16f
    const-string v5, "com.lge.systemservice.core.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/lge/systemservice/core/IWfdManager$Stub;->releaseWfdMediaController()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 41
    :sswitch_data_17c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_48
        0x4 -> :sswitch_64
        0x5 -> :sswitch_77
        0x6 -> :sswitch_87
        0x7 -> :sswitch_9c
        0x8 -> :sswitch_b9
        0x9 -> :sswitch_ce
        0xa -> :sswitch_df
        0xb -> :sswitch_f0
        0xc -> :sswitch_108
        0xd -> :sswitch_120
        0xe -> :sswitch_131
        0xf -> :sswitch_142
        0x10 -> :sswitch_153
        0x11 -> :sswitch_16f
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
