.class Lcom/lge/upnp/uda/device/JNIHostDevice;
.super Ljava/lang/Object;
.source "JNIHostDevice.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Announce(J[Ljava/lang/String;II)[Ljava/lang/String;
.end method

.method public static native Announce(J[Ljava/lang/String;[Lcom/lge/upnp/uda/http/IHttpHeader;I)[Ljava/lang/String;
.end method

.method public static native ByeBye(J[Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native GetDeviceInfo(J)Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public static native GetServerName(J)Ljava/lang/String;
.end method

.method public static native Initialize(Lcom/lge/upnp/uda/device/IHostDeviceListener;)J
.end method

.method public static native IsMediaTransferInProgress(J)Z
.end method

.method public static native IsRunning(J)Z
.end method

.method public static native SendEventNotification(JJ[JLjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native SetServerName(JLjava/lang/String;)V
.end method

.method public static native Start(J)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native Start(JIZ)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native Stop(J)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native changePortRangeSize(JLjava/lang/String;ZS)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native destroy(J)V
.end method

.method public static native loadDeviceDescription(JLjava/lang/String;Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native loadServiceDescription(JLjava/lang/String;Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;
.end method

.method public static native setSourcePortRange(JLjava/lang/String;ZIS)Lcom/lge/upnp/uda/service/Result;
.end method
