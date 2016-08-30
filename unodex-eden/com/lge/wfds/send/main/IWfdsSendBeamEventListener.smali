.class public abstract Lcom/lge/wfds/send/main/IWfdsSendBeamEventListener;
.super Ljava/lang/Object;
.source "IWfdsSendBeamEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAllFileComplete(Ljava/lang/String;)V
.end method

.method public abstract onEndTimeOut()V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onProgressStatus(Ljava/lang/String;Ljava/lang/String;IJ)V
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

.method public abstract onSendFileComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public abstract onStartTimeOut()V
.end method

.method public abstract onTransferStatus(Ljava/lang/String;Ljava/lang/String;)V
.end method
