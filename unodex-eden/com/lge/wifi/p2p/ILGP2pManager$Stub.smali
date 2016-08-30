.class public abstract Lcom/lge/wifi/p2p/ILGP2pManager$Stub;
.super Landroid/os/Binder;
.source "ILGP2pManager.java"

# interfaces
.implements Lcom/lge/wifi/p2p/ILGP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/ILGP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/ILGP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.wifi.p2p.ILGP2pManager"

.field static final TRANSACTION_deinitEventListener:I = 0x3

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_initEventListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.lge.wifi.p2p.ILGP2pManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/wifi/p2p/ILGP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/p2p/ILGP2pManager;
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
    const-string v1, "com.lge.wifi.p2p.ILGP2pManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/lge/wifi/p2p/ILGP2pManager;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/lge/wifi/p2p/ILGP2pManager;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/lge/wifi/p2p/ILGP2pManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/wifi/p2p/ILGP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_52

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 45
    :sswitch_9
    const-string v3, "com.lge.wifi.p2p.ILGP2pManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v3, "com.lge.wifi.p2p.ILGP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/ILGP2pManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 52
    .local v1, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v1, :cond_24

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v1, p3, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 58
    :cond_24
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 64
    .end local v1    # "_result":Landroid/os/Messenger;
    :sswitch_29
    const-string v3, "com.lge.wifi.p2p.ILGP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/wifi/p2p/ILGP2pEventListener;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Lcom/lge/wifi/p2p/ILGP2pEventListener;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/ILGP2pManager$Stub;->initEventListener(Lcom/lge/wifi/p2p/ILGP2pEventListener;)I

    move-result v1

    .line 68
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 74
    .end local v0    # "_arg0":Lcom/lge/wifi/p2p/ILGP2pEventListener;
    .end local v1    # "_result":I
    :sswitch_41
    const-string v3, "com.lge.wifi.p2p.ILGP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/ILGP2pManager$Stub;->deinitEventListener(I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_29
        0x3 -> :sswitch_41
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
