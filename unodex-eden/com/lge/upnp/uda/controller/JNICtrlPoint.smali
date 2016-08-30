.class Lcom/lge/upnp/uda/controller/JNICtrlPoint;
.super Ljava/lang/Object;
.source "JNICtrlPoint.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AddToSearchIPFilter(JLjava/lang/String;)Z
.end method

.method public static native CancelFindDevice(JJ)Lcom/lge/upnp/uda/service/ResultData;
.end method

.method public static native CancelHttpReq(JJ)Lcom/lge/upnp/uda/service/ResultData;
.end method

.method public static native CancelLoadServiceDescription(JJ)Lcom/lge/upnp/uda/service/ResultData;
.end method

.method public static native CancelSubscribe(JJ)Lcom/lge/upnp/uda/service/ResultData;
.end method

.method public static native CancelUnSubscribe(JJ)Lcom/lge/upnp/uda/service/ResultData;
.end method

.method public static native FilterUUID(J[Ljava/lang/String;)V
.end method

.method public static native FindDevice(JLjava/lang/String;Lcom/lge/upnp/uda/service/NetworkInfo;Z)J
.end method

.method public static native FindDeviceByUuid(JLjava/lang/String;Lcom/lge/upnp/uda/service/IDeviceInfo;)Z
.end method

.method public static native ForceSearch(J[Ljava/lang/String;Ljava/lang/String;IZLjava/lang/Object;)[Ljava/lang/String;
.end method

.method public static native GetUserAgent(J)Ljava/lang/String;
.end method

.method public static native GetUserHeaderList(J)[Lcom/lge/upnp/uda/http/IHttpHeader;
.end method

.method public static native Initialize(Lcom/lge/upnp/uda/controller/IControlPointListener;)J
.end method

.method public static native IsRunning(J)Z
.end method

.method public static native IsSubscribed(JJ)Z
.end method

.method public static native LoadServiceDescription(JJLjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native RefreshNetworks(J)V
.end method

.method public static native ReleaseDevice(JLjava/lang/String;)V
.end method

.method public static native RemoveFilterUUID(J[Ljava/lang/String;)V
.end method

.method public static native RemoveFromSearchIPFilter(JLjava/lang/String;)Z
.end method

.method public static native Search(J[Ljava/lang/String;Ljava/lang/String;IZLjava/lang/Object;)[Ljava/lang/String;
.end method

.method public static native SendHttpReq(JJLcom/lge/upnp/uda/service/NetworkInfo;Ljava/lang/Object;)J
.end method

.method public static native SetUserAgent(JLjava/lang/String;)V
.end method

.method public static native SetUserHeaderList(J[Lcom/lge/upnp/uda/http/IHttpHeader;)Z
.end method

.method public static native Start(JIIZ)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native Start(JIZ)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native Stop(J)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native Subscribe(JJILjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native UnSubscribe(JJLjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native cancelSendAction(JJ)Lcom/lge/upnp/uda/service/ResultData;
.end method

.method public static native changePortRangeSize(JLjava/lang/String;ZS)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native destroy(J)V
.end method

.method public static native getDevices(JLjava/lang/String;I)[Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public static native releaseDevices(J[J)V
.end method

.method public static native sendAction(JJJLjava/lang/Object;)J
.end method

.method public static native setSourcePortRange(JLjava/lang/String;ZIS)Lcom/lge/upnp/uda/service/Result;
.end method
