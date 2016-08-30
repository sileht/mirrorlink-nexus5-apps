.class public interface abstract Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback;
.super Ljava/lang/Object;
.source "ILGBleQmServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/quietmode/ILGBleQmServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBleQmStateChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
