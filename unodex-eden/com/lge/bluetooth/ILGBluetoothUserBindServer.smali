.class public interface abstract Lcom/lge/bluetooth/ILGBluetoothUserBindServer;
.super Ljava/lang/Object;
.source "ILGBluetoothUserBindServer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/ILGBluetoothUserBindServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkNapRole(Landroid/bluetooth/BluetoothDevice;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTrustState(Landroid/bluetooth/BluetoothDevice;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPasskey(Landroid/bluetooth/BluetoothDevice;ZII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setTrustState(Landroid/bluetooth/BluetoothDevice;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startAlertSound()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
