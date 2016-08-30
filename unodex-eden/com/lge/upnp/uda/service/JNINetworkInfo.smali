.class Lcom/lge/upnp/uda/service/JNINetworkInfo;
.super Ljava/lang/Object;
.source "JNINetworkInfo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetInterfaceName(J)Ljava/lang/String;
.end method

.method public static native GetLocalIPAddress(J)Ljava/lang/String;
.end method

.method public static native GetLocalPort(J)I
.end method

.method public static native GetRemoteIPAddress(J)Ljava/lang/String;
.end method

.method public static native GetRemoteMACAddress(J)Ljava/lang/String;
.end method

.method public static native GetRemotePort(J)I
.end method
