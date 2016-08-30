.class public interface abstract Lcom/lge/wfds/send/main/WfdsSendMainIface;
.super Ljava/lang/Object;
.source "WfdsSendMainIface.java"


# virtual methods
.method public abstract cancelCurrentFile(Ljava/lang/String;)V
.end method

.method public abstract closeSendService()V
.end method

.method public abstract closeSendServiceAndReStart()V
.end method

.method public abstract getTotFileSize()J
.end method

.method public abstract initialize(Landroid/content/Context;Lcom/lge/wfds/send/main/IWfdsSendMainEventListener;Lcom/lge/wfds/send/main/IWfdsSendPushEventListener;Lcom/lge/wfds/send/main/IWfdsSendBeamEventListener;)V
.end method

.method public abstract isBinding()Z
.end method

.method public abstract isFileSending()Z
.end method

.method public abstract isPushMode()Z
.end method

.method public abstract receiverCancelCurrentFile()V
.end method

.method public abstract sendFiles(Ljava/util/ArrayList;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract sendFilesFromMac(Ljava/lang/String;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract serviceUnbind()V
.end method

.method public abstract setAutoAccept(Z)V
.end method

.method public abstract setFileDir(Ljava/lang/String;)V
.end method

.method public abstract setTimeOut(I)V
.end method

.method public abstract setUserInputResult(Z)V
.end method

.method public abstract smartShareBeamOff()V
.end method

.method public abstract smartShareBeamOn()V
.end method

.method public abstract startFileTransferTx(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract startReceiver(ZLjava/lang/String;)V
.end method

.method public abstract startTransmitter()I
.end method
