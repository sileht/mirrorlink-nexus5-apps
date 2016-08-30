.class public abstract Landroid/net/IConnectivityManagerEx$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManagerEx.java"

# interfaces
.implements Landroid/net/IConnectivityManagerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManagerEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManagerEx"

.field static final TRANSACTION_ePDGHandOverStatus:I = 0x6

.field static final TRANSACTION_ePDGPrefTechdone:I = 0x5

.field static final TRANSACTION_ePDGlisten:I = 0x3

.field static final TRANSACTION_getDebugInfo:I = 0x7

.field static final TRANSACTION_getLteRssi:I = 0x9

.field static final TRANSACTION_getNetPrefer:I = 0x8

.field static final TRANSACTION_setFQDN:I = 0x4

.field static final TRANSACTION_startusingEPDGFeature:I = 0x1

.field static final TRANSACTION_stopusingEPDGFeature:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.net.IConnectivityManagerEx"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManagerEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManagerEx;
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
    const-string v1, "android.net.IConnectivityManagerEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IConnectivityManagerEx;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/net/IConnectivityManagerEx;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/net/IConnectivityManagerEx$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManagerEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_c8

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 42
    :sswitch_9
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManagerEx$Stub;->startusingEPDGFeature(Ljava/lang/String;)I

    move-result v2

    .line 51
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_23
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManagerEx$Stub;->stopusingEPDGFeature(Ljava/lang/String;)I

    move-result v2

    .line 61
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 67
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_37
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IePDGStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IePDGStateListener;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Landroid/net/IePDGStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManagerEx$Stub;->ePDGlisten(Landroid/net/IePDGStateListener;I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 78
    .end local v0    # "_arg0":Landroid/net/IePDGStateListener;
    .end local v1    # "_arg1":I
    :sswitch_4f
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_66

    move v0, v3

    .line 82
    .local v0, "_arg0":Z
    :goto_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManagerEx$Stub;->setFQDN(ZLjava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 80
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_66
    const/4 v0, 0x0

    goto :goto_5b

    .line 89
    :sswitch_68
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManagerEx$Stub;->ePDGPrefTechdone(I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 98
    .end local v0    # "_arg0":I
    :sswitch_78
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManagerEx$Stub;->ePDGHandOverStatus(I)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 107
    .end local v0    # "_arg0":I
    :sswitch_88
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManagerEx$Stub;->getDebugInfo(II)[D

    move-result-object v2

    .line 113
    .local v2, "_result":[D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_8

    .line 119
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[D
    :sswitch_a1
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManagerEx$Stub;->getNetPrefer(Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 129
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_b6
    const-string v4, "android.net.IConnectivityManagerEx"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Landroid/net/IConnectivityManagerEx$Stub;->getLteRssi()I

    move-result v2

    .line 131
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 38
    nop

    :sswitch_data_c8
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_23
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_68
        0x6 -> :sswitch_78
        0x7 -> :sswitch_88
        0x8 -> :sswitch_a1
        0x9 -> :sswitch_b6
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
