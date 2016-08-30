.class public abstract Lcom/lge/wfds/send/receiver/IReceiverEventListener;
.super Ljava/lang/Object;
.source "IReceiverEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAllFileTransfered(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onInitialized(Z)V
.end method

.method public abstract onProgressEvent(Ljava/lang/String;Ljava/lang/String;IJ)V
.end method

.method public abstract onProgressUIStatus(Z)V
.end method

.method public abstract onRequestTransfer(Ljava/lang/String;Ljava/util/ArrayList;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onSingleFileTransfered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStartReceiver(Ljava/lang/String;Ljava/util/ArrayList;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract onTerminated()V
.end method

.method public abstract onTimerExpired()V
.end method

.method public abstract onTransferStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method
