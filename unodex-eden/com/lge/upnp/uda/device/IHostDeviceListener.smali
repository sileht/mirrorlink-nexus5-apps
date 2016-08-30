.class public interface abstract Lcom/lge/upnp/uda/device/IHostDeviceListener;
.super Ljava/lang/Object;
.source "IHostDeviceListener.java"


# virtual methods
.method public abstract onActionRequested(Lcom/lge/upnp/uda/service/ActionReqInfo;Lcom/lge/upnp/uda/service/INetworkInfo;)V
.end method

.method public abstract onError(Lcom/lge/upnp/uda/service/EError;Ljava/lang/Object;)V
.end method

.method public abstract onHttpTransferProgress(Lcom/lge/upnp/uda/http/IHttpResponse;Lcom/lge/upnp/uda/service/ProgressInfo;)V
.end method

.method public abstract onPrepareHttpResponse(Lcom/lge/upnp/uda/http/IHttpRequest;Lcom/lge/upnp/uda/http/IHttpResponse;Lcom/lge/upnp/uda/service/INetworkInfo;)V
.end method

.method public abstract onSearchRequested(Ljava/lang/String;Lcom/lge/upnp/uda/service/INetworkInfo;[Lcom/lge/upnp/uda/http/IHttpHeader;Lcom/lge/upnp/uda/service/Bool;)V
.end method

.method public abstract onStartCompleted(Lcom/lge/upnp/uda/service/EError;I)V
.end method

.method public abstract onStopCompleted()V
.end method

.method public abstract onSubscriptionRequested(Lcom/lge/upnp/uda/service/EError;Lcom/lge/upnp/uda/service/ISubscriberInfo;Lcom/lge/upnp/uda/service/INetworkInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/upnp/uda/service/EError;",
            "Lcom/lge/upnp/uda/service/ISubscriberInfo;",
            "Lcom/lge/upnp/uda/service/INetworkInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/service/IStateVarInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUnSubscriptionRequested(Lcom/lge/upnp/uda/service/EError;Lcom/lge/upnp/uda/service/ISubscriberInfo;Lcom/lge/upnp/uda/service/INetworkInfo;)V
.end method
