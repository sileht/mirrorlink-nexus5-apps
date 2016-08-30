.class public interface abstract Lcom/lge/wfds/send/transmitter/WfdsSendTransmitterIface;
.super Ljava/lang/Object;
.source "WfdsSendTransmitterIface.java"


# static fields
.field public static final MAC_DEVICE_ID:I = 0x2

.field public static final UUID_DEVICE_ID:I = 0x1


# virtual methods
.method public abstract cancelConnect(ILjava/lang/String;)I
.end method

.method public abstract cancelCurrentFileTx(Ljava/lang/String;)I
.end method

.method public abstract connect(Ljava/util/ArrayList;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract connectIndLGP2p(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract findSendDevice()I
.end method

.method public abstract findService()I
.end method

.method public abstract findWfdsDevice()I
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/lge/wfds/send/transmitter/ITransmitterEventListener;Z)V
.end method

.method public abstract isBinding()Z
.end method

.method public abstract isServiceAvailable()Z
.end method

.method public abstract serviceUnbind(Z)I
.end method

.method public abstract startFileTransfer(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation
.end method

.method public abstract stopFindSendDevice()I
.end method

.method public abstract stopFindService()I
.end method

.method public abstract stopFindWfdsDevice()I
.end method
