.class public interface abstract Lcom/lge/systemservice/core/IBleQmManager;
.super Ljava/lang/Object;
.source "IBleQmManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IBleQmManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract disable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBleQmService()Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerAdapter(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterAdapter(Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
