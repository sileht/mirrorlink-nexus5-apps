.class public abstract Lcom/lge/upnp/uda/service/ISubscriberInfo;
.super Ljava/lang/Object;
.source "ISubscriberInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeviceInfo()Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public abstract getEventKeyValue()I
.end method

.method public abstract getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getServiceInfo()Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public abstract getSid()Ljava/lang/String;
.end method

.method public abstract getTimeout()I
.end method

.method public abstract getUserHeaderList()[Lcom/lge/upnp/uda/http/IHttpHeader;
.end method

.method public abstract setTimeout(I)V
.end method
