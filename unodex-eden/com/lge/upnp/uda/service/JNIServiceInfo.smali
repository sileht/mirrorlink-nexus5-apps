.class Lcom/lge/upnp/uda/service/JNIServiceInfo;
.super Ljava/lang/Object;
.source "JNIServiceInfo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetActionInfoList(J)[Lcom/lge/upnp/uda/service/IActionInfo;
.end method

.method public static native GetControlURL(J)Ljava/lang/String;
.end method

.method public static native GetEventSubURL(J)Ljava/lang/String;
.end method

.method public static native GetSCPDURL(J)Ljava/lang/String;
.end method

.method public static native GetServiceId(J)Ljava/lang/String;
.end method

.method public static native GetServiceType(J)Ljava/lang/String;
.end method

.method public static native GetStateVarInfoList(J)[Lcom/lge/upnp/uda/service/IStateVarInfo;
.end method

.method public static native GetSubScriberCount(J)I
.end method
