.class public interface abstract Lcom/lge/wifi/p2p/ILGP2pEventListener;
.super Ljava/lang/Object;
.source "ILGP2pEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/ILGP2pEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnectStatus(Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pConnectStatus;Lcom/lge/wifi/p2p/LGP2pConnectionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDiscoverResult(Lcom/lge/wifi/p2p/LGP2pDevice;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceRequested(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
