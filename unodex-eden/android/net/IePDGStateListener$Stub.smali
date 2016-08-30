.class public abstract Landroid/net/IePDGStateListener$Stub;
.super Landroid/os/Binder;
.source "IePDGStateListener.java"

# interfaces
.implements Landroid/net/IePDGStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IePDGStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IePDGStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IePDGStateListener"

.field static final TRANSACTION_onCBSErrorStatusChanged:I = 0x5

.field static final TRANSACTION_onConnectionParamStatus:I = 0x4

.field static final TRANSACTION_onErrorStatusChanged:I = 0x3

.field static final TRANSACTION_onPDPStateChanged:I = 0x1

.field static final TRANSACTION_onWiFiStatusChanged:I = 0x2

.field static final TRANSACTION_onePDGBlockStatusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.IePDGStateListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/IePDGStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IePDGStateListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.net.IePDGStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IePDGStateListener;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/net/IePDGStateListener;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/net/IePDGStateListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IePDGStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_62

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 43
    :sswitch_9
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 48
    :sswitch_f
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 51
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onPDPStateChanged([I)V

    goto :goto_8

    .line 56
    .end local v0    # "_arg0":[I
    :sswitch_1c
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2c

    move v0, v1

    .line 59
    .local v0, "_arg0":Z
    :goto_28
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onWiFiStatusChanged(Z)V

    goto :goto_8

    .line 58
    .end local v0    # "_arg0":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_28

    .line 64
    :sswitch_2e
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onErrorStatusChanged(I)V

    goto :goto_8

    .line 72
    .end local v0    # "_arg0":I
    :sswitch_3b
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onConnectionParamStatus([Ljava/lang/String;)V

    goto :goto_8

    .line 80
    .end local v0    # "_arg0":[Ljava/lang/String;
    :sswitch_48
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onCBSErrorStatusChanged(I)V

    goto :goto_8

    .line 88
    .end local v0    # "_arg0":I
    :sswitch_55
    const-string v2, "android.net.IePDGStateListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IePDGStateListener$Stub;->onePDGBlockStatusChanged(I)V

    goto :goto_8

    .line 39
    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_2e
        0x4 -> :sswitch_3b
        0x5 -> :sswitch_48
        0x6 -> :sswitch_55
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
