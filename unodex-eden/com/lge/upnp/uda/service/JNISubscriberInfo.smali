.class Lcom/lge/upnp/uda/service/JNISubscriberInfo;
.super Ljava/lang/Object;
.source "JNISubscriberInfo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetDeviceInfo(J)Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public static native GetEventKeyValue(J)I
.end method

.method public static native GetHeaderValue(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetServiceInfo(J)Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public static native GetSid(J)Ljava/lang/String;
.end method

.method public static native GetTimeout(J)I
.end method

.method public static native GetUserHeaderList(J)[Lcom/lge/upnp/uda/http/IHttpHeader;
.end method

.method public static native SetTimeout(JI)V
.end method
