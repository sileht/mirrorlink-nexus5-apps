.class Lcom/lge/upnp/uda/service/JNIActionReqInfo;
.super Ljava/lang/Object;
.source "JNIActionReqInfo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetActionInfo(J)Lcom/lge/upnp/uda/service/ActionInfo;
.end method

.method public static native GetDeviceInfo(J)Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public static native GetServiceInfo(J)Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public static native get_ErrorString(J)Ljava/lang/String;
.end method

.method public static native get_SoapErrorCode(J)I
.end method

.method public static native set_ErrorString(JLjava/lang/String;)V
.end method

.method public static native set_SoapErrorCode(JI)V
.end method
