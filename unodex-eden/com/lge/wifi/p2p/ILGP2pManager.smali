.class public interface abstract Lcom/lge/wifi/p2p/ILGP2pManager;
.super Ljava/lang/Object;
.source "ILGP2pManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/ILGP2pManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract deinitEventListener(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMessenger()Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initEventListener(Lcom/lge/wifi/p2p/ILGP2pEventListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
