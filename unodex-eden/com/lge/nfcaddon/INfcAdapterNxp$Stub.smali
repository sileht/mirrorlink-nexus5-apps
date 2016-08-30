.class public abstract Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;
.super Landroid/os/Binder;
.source "INfcAdapterNxp.java"

# interfaces
.implements Lcom/lge/nfcaddon/INfcAdapterNxp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/nfcaddon/INfcAdapterNxp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.nfcaddon.INfcAdapterNxp"

.field static final TRANSACTION_DefaultRouteSet:I = 0x4

.field static final TRANSACTION_MifareCLTRouteSet:I = 0x5

.field static final TRANSACTION_MifareDesfireRouteSet:I = 0x3

.field static final TRANSACTION_getNfcSecureElementInterface:I = 0x6

.field static final TRANSACTION_setScreenOffCondition:I = 0x2

.field static final TRANSACTION_setVzwAidList:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p0, p0, v0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/nfcaddon/INfcAdapterNxp;
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
    const-string v1, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/nfcaddon/INfcAdapterNxp;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/nfcaddon/INfcAdapterNxp;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_dc

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 45
    :sswitch_a
    const-string v5, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v7, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    sget-object v7, Lcom/vzw/nfc/RouteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vzw/nfc/RouteEntry;

    .line 53
    .local v0, "_arg0":[Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0    # "_arg0":[Lcom/vzw/nfc/RouteEntry;
    .end local v4    # "_result":Z
    :sswitch_2b
    const-string v7, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    move v0, v6

    .line 63
    .local v0, "_arg0":Z
    :goto_37
    invoke-virtual {p0, v0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->setScreenOffCondition(Z)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_3e
    move v0, v5

    .line 62
    goto :goto_37

    .line 69
    :sswitch_40
    const-string v7, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_65

    move v1, v6

    .line 75
    .local v1, "_arg1":Z
    :goto_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_67

    move v2, v6

    .line 77
    .local v2, "_arg2":Z
    :goto_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_69

    move v3, v6

    .line 78
    .local v3, "_arg3":Z
    :goto_5e
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->MifareDesfireRouteSet(IZZZ)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_65
    move v1, v5

    .line 73
    goto :goto_50

    .restart local v1    # "_arg1":Z
    :cond_67
    move v2, v5

    .line 75
    goto :goto_57

    .restart local v2    # "_arg2":Z
    :cond_69
    move v3, v5

    .line 77
    goto :goto_5e

    .line 84
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_6b
    const-string v7, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_91

    move v1, v6

    .line 90
    .restart local v1    # "_arg1":Z
    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_93

    move v2, v6

    .line 92
    .restart local v2    # "_arg2":Z
    :goto_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_95

    move v3, v6

    .line 93
    .restart local v3    # "_arg3":Z
    :goto_89
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->DefaultRouteSet(IZZZ)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_91
    move v1, v5

    .line 88
    goto :goto_7b

    .restart local v1    # "_arg1":Z
    :cond_93
    move v2, v5

    .line 90
    goto :goto_82

    .restart local v2    # "_arg2":Z
    :cond_95
    move v3, v5

    .line 92
    goto :goto_89

    .line 99
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_97
    const-string v7, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_bd

    move v1, v6

    .line 105
    .restart local v1    # "_arg1":Z
    :goto_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_bf

    move v2, v6

    .line 107
    .restart local v2    # "_arg2":Z
    :goto_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c1

    move v3, v6

    .line 108
    .restart local v3    # "_arg3":Z
    :goto_b5
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->MifareCLTRouteSet(IZZZ)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Z
    :cond_bd
    move v1, v5

    .line 103
    goto :goto_a7

    .restart local v1    # "_arg1":Z
    :cond_bf
    move v2, v5

    .line 105
    goto :goto_ae

    .restart local v2    # "_arg2":Z
    :cond_c1
    move v3, v5

    .line 107
    goto :goto_b5

    .line 114
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_c3
    const-string v5, "com.lge.nfcaddon.INfcAdapterNxp"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/nfcaddon/INfcAdapterNxp$Stub;->getNfcSecureElementInterface()Lcom/lge/nfcaddon/INfcSecureElement;

    move-result-object v4

    .line 116
    .local v4, "_result":Lcom/lge/nfcaddon/INfcSecureElement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v4, :cond_da

    invoke-interface {v4}, Lcom/lge/nfcaddon/INfcSecureElement;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_d5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    :cond_da
    const/4 v5, 0x0

    goto :goto_d5

    .line 41
    :sswitch_data_dc
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_40
        0x4 -> :sswitch_6b
        0x5 -> :sswitch_97
        0x6 -> :sswitch_c3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
