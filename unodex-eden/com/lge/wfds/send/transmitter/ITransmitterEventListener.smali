.class public abstract Lcom/lge/wfds/send/transmitter/ITransmitterEventListener;
.super Ljava/lang/Object;
.source "ITransmitterEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAPModeDeviceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onAPModeSearchResult(Lcom/lge/wfds/send/transmitter/SearchedData;)V
.end method

.method public abstract onAllFileTransfered(Ljava/lang/String;)V
.end method

.method public abstract onCancelConnectCompleted(Z)V
.end method

.method public abstract onConnectCompleted(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onInitialized(Z)V
.end method

.method public abstract onProgressEvent(Ljava/lang/String;Ljava/lang/String;IJ)V
.end method

.method public abstract onProgressUIStatus(Z)V
.end method

.method public abstract onSingleFileTransfered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTerminated()V
.end method

.method public abstract onTransferStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onWFDSDeviceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onWFDSSearchResult(Lcom/lge/wfds/send/transmitter/SearchedData;)V
.end method
