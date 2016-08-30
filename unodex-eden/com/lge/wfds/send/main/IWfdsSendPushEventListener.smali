.class public abstract Lcom/lge/wfds/send/main/IWfdsSendPushEventListener;
.super Ljava/lang/Object;
.source "IWfdsSendPushEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onFinishConnect(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V
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

.method public abstract onSearchResult(Lcom/lge/wfds/send/tx/SearchedData;)V
.end method

.method public abstract onUPnPDeviceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onWFDSDeviceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onWIFISearchResult(Lcom/lge/wfds/send/tx/SearchedData;)V
.end method
