.class public abstract Lcom/lge/nfcaddon/IGsmaNfcController$Stub;
.super Landroid/os/Binder;
.source "IGsmaNfcController.java"

# interfaces
.implements Lcom/lge/nfcaddon/IGsmaNfcController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/IGsmaNfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/IGsmaNfcController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.IGsmaNfcController"

.field static final TRANSACTION_commitGsmaOffHostService:I = 0x8

.field static final TRANSACTION_disableNfcCardCallback:I = 0x4

.field static final TRANSACTION_enableMultiEvt_transactionReception:I = 0x5

.field static final TRANSACTION_enableNfcCardCallback:I = 0x3

.field static final TRANSACTION_enableNfcControllerCallback:I = 0x1

.field static final TRANSACTION_enableNfcControllerPopupCallback:I = 0x2

.field static final TRANSACTION_getActiveSecureElement:I = 0xc

.field static final TRANSACTION_getGsmaOffHostService:I = 0xb

.field static final TRANSACTION_getProperty:I = 0xd

.field static final TRANSACTION_isAvailableToAddService:I = 0xa

.field static final TRANSACTION_isGSMACertificateAllowed:I = 0x6

.field static final TRANSACTION_isGSMACertificateAllowedArray:I = 0x7

.field static final TRANSACTION_releaseGsmaOffHostService:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p0, p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/IGsmaNfcController;
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
    const-string v1, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/nfcaddon/IGsmaNfcController;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/IGsmaNfcController;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/nfcaddon/IGsmaNfcController$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_152

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v2, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v4, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->enableNfcControllerCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z

    move-result v1

    .line 54
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v1, :cond_27

    move v2, v3

    :cond_27
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0    # "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .end local v1    # "_result":Z
    :sswitch_2b
    const-string v4, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->enableNfcControllerPopupCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z

    move-result v1

    .line 64
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v1, :cond_42

    move v2, v3

    :cond_42
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 70
    .end local v0    # "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .end local v1    # "_result":Z
    :sswitch_46
    const-string v4, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->enableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z

    move-result v1

    .line 74
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v1, :cond_5d

    move v2, v3

    :cond_5d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .end local v1    # "_result":Z
    :sswitch_61
    const-string v4, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/nfcaddon/IGsmaNfcControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;

    move-result-object v0

    .line 83
    .restart local v0    # "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->disableNfcCardCallback(Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;)Z

    move-result v1

    .line 84
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v1, :cond_78

    move v2, v3

    :cond_78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 90
    .end local v0    # "_arg0":Lcom/lge/nfcaddon/IGsmaNfcControllerCallback;
    .end local v1    # "_result":Z
    :sswitch_7c
    const-string v2, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->enableMultiEvt_transactionReception(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 99
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8d
    const-string v4, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->isGSMACertificateAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 103
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v1, :cond_a0

    move v2, v3

    :cond_a0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 109
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_a5
    const-string v2, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->isGSMACertificateAllowedArray([Ljava/lang/String;)[Z

    move-result-object v1

    .line 113
    .local v1, "_result":[Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_result":[Z
    :sswitch_ba
    const-string v2, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d5

    .line 122
    sget-object v2, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 127
    .local v0, "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_cd
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->commitGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 125
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_d5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_cd

    .line 133
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :sswitch_d7
    const-string v2, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f2

    .line 136
    sget-object v2, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 141
    .restart local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_ea
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->releaseGsmaOffHostService(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 139
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_f2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_ea

    .line 147
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :sswitch_f4
    const-string v4, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_116

    .line 150
    sget-object v4, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 155
    .restart local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_107
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->isAvailableToAddService(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v1

    .line 156
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v1, :cond_111

    move v2, v3

    :cond_111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 153
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "_result":Z
    :cond_116
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_107

    .line 162
    .end local v0    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    :sswitch_118
    const-string v2, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->getGsmaOffHostService()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 170
    .end local v1    # "_result":Ljava/util/List;
    :sswitch_129
    const-string v2, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->getActiveSecureElement()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 178
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_13a
    const-string v4, "com.lge.nfcaddon.IGsmaNfcController"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/IGsmaNfcController$Stub;->getProperty(I)Z

    move-result v1

    .line 182
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v1, :cond_14d

    move v2, v3

    :cond_14d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    :sswitch_data_152
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_46
        0x4 -> :sswitch_61
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_8d
        0x7 -> :sswitch_a5
        0x8 -> :sswitch_ba
        0x9 -> :sswitch_d7
        0xa -> :sswitch_f4
        0xb -> :sswitch_118
        0xc -> :sswitch_129
        0xd -> :sswitch_13a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
