.class public abstract Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;
.super Landroid/os/Binder;
.source "ILGP2pEventListener.java"

# interfaces
.implements Lcom/lge/wifi/p2p/ILGP2pEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/ILGP2pEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.p2p.ILGP2pEventListener"

.field static final TRANSACTION_onConnectStatus:I = 0x3

.field static final TRANSACTION_onDiscoverResult:I = 0x2

.field static final TRANSACTION_onServiceRequested:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/p2p/ILGP2pEventListener;
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
    const-string v1, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/wifi/p2p/ILGP2pEventListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/wifi/p2p/ILGP2pEventListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_70

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_8
    return v3

    .line 45
    :sswitch_9
    const-string v4, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v4, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;->onServiceRequested(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string v4, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 63
    sget-object v4, Lcom/lge/wifi/p2p/LGP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 69
    .local v0, "_arg0":Lcom/lge/wifi/p2p/LGP2pDevice;
    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    move v1, v3

    .line 70
    .local v1, "_arg1":Z
    :goto_3a
    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;->onDiscoverResult(Lcom/lge/wifi/p2p/LGP2pDevice;Z)V

    goto :goto_8

    .line 66
    .end local v0    # "_arg0":Lcom/lge/wifi/p2p/LGP2pDevice;
    .end local v1    # "_arg1":Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/lge/wifi/p2p/LGP2pDevice;
    goto :goto_33

    .line 69
    :cond_40
    const/4 v1, 0x0

    goto :goto_3a

    .line 75
    .end local v0    # "_arg0":Lcom/lge/wifi/p2p/LGP2pDevice;
    :sswitch_42
    const-string v4, "com.lge.wifi.p2p.ILGP2pEventListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 80
    sget-object v4, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 86
    .local v1, "_arg1":Lcom/lge/wifi/p2p/LGP2pConnectStatus;
    :goto_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6d

    .line 87
    sget-object v4, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;

    .line 92
    .local v2, "_arg2":Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
    :goto_67
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;->onConnectStatus(Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pConnectStatus;Lcom/lge/wifi/p2p/LGP2pConnectionInfo;)V

    goto :goto_8

    .line 83
    .end local v1    # "_arg1":Lcom/lge/wifi/p2p/LGP2pConnectStatus;
    .end local v2    # "_arg2":Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
    :cond_6b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lge/wifi/p2p/LGP2pConnectStatus;
    goto :goto_59

    .line 90
    :cond_6d
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
    goto :goto_67

    .line 41
    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_42
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
