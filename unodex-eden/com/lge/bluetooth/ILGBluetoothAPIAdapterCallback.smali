.class public interface abstract Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;
.super Ljava/lang/Object;
.source "ILGBluetoothAPIAdapterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBluetoothServiceDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBluetoothServiceUp(Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
