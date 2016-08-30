.class public interface abstract Lcom/lge/wifi/p2p/LGP2pManager$LGP2pEventListener;
.super Ljava/lang/Object;
.source "LGP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LGP2pEventListener"
.end annotation


# virtual methods
.method public abstract onChannelDisconnected()V
.end method

.method public abstract onConnectStatus(Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pConnectStatus;Lcom/lge/wifi/p2p/LGP2pConnectionInfo;)V
.end method

.method public abstract onDiscoverResult(Lcom/lge/wifi/p2p/LGP2pDevice;Z)V
.end method

.method public abstract onServiceRequested(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSystemServiceRestarted()V
.end method
