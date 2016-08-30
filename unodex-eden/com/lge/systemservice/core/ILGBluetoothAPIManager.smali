.class public interface abstract Lcom/lge/systemservice/core/ILGBluetoothAPIManager;
.super Ljava/lang/Object;
.source "ILGBluetoothAPIManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/ILGBluetoothAPIManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)Lcom/lge/bluetooth/ILGBluetoothAPIAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterAdapter(Lcom/lge/bluetooth/ILGBluetoothAPIAdapterCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
