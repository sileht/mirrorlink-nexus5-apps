.class public interface abstract Lcom/lge/upnp/uda/controller/IControlPointListener;
.super Ljava/lang/Object;
.source "IControlPointListener.java"


# virtual methods
.method public abstract onActionSent(Lcom/lge/upnp/uda/service/EError;Lcom/lge/upnp/uda/service/ActionReqInfo;Ljava/lang/Object;)V
.end method

.method public abstract onDeviceAdded(Lcom/lge/upnp/uda/service/IDeviceInfo;)V
.end method

.method public abstract onDeviceFound(Lcom/lge/upnp/uda/service/EError;Lcom/lge/upnp/uda/service/IDeviceInfo;J)V
.end method

.method public abstract onDeviceRemoved(Ljava/lang/String;)V
.end method

.method public abstract onError(Lcom/lge/upnp/uda/service/EError;Ljava/lang/Object;)V
.end method

.method public abstract onEventNotified(Lcom/lge/upnp/uda/service/ISubscriberInfo;[Lcom/lge/upnp/uda/service/IStateVarInfo;Ljava/lang/Object;)V
.end method

.method public abstract onHttpResponse(Lcom/lge/upnp/uda/http/IHttpRequest;Lcom/lge/upnp/uda/http/IHttpResponse;Ljava/lang/Object;)V
.end method

.method public abstract onHttpTransferProgress(Lcom/lge/upnp/uda/http/IHttpResponse;Lcom/lge/upnp/uda/service/ProgressInfo;)V
.end method

.method public abstract onPrepareHttpResponse(Lcom/lge/upnp/uda/http/IHttpRequest;Lcom/lge/upnp/uda/http/IHttpResponse;Lcom/lge/upnp/uda/service/INetworkInfo;)V
.end method

.method public abstract onSearchCompleted(Lcom/lge/upnp/uda/service/EError;Ljava/lang/Object;)V
.end method

.method public abstract onServiceDescLoaded(Lcom/lge/upnp/uda/service/EError;Lcom/lge/upnp/uda/service/IDeviceInfo;Ljava/lang/Object;)V
.end method

.method public abstract onStartCompleted(Lcom/lge/upnp/uda/service/EError;I)V
.end method

.method public abstract onStartCompleted(Lcom/lge/upnp/uda/service/EError;II)V
.end method

.method public abstract onStopCompleted()V
.end method

.method public abstract onSubscribeCompleted(Lcom/lge/upnp/uda/service/EError;Lcom/lge/upnp/uda/service/ISubscriberInfo;Ljava/lang/Object;)V
.end method

.method public abstract onUnSubscribeCompleted(Lcom/lge/upnp/uda/service/EError;Lcom/lge/upnp/uda/service/ISubscriberInfo;Ljava/lang/Object;)V
.end method
