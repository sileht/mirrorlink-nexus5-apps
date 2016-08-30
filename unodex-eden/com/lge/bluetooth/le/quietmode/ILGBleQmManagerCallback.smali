.class public interface abstract Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback;
.super Ljava/lang/Object;
.source "ILGBleQmManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/quietmode/ILGBleQmManagerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBleQmServiceDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBleQmServiceUp(Lcom/lge/bluetooth/le/quietmode/ILGBleQmService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
