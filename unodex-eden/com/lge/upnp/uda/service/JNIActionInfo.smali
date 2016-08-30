.class Lcom/lge/upnp/uda/service/JNIActionInfo;
.super Ljava/lang/Object;
.source "JNIActionInfo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AddActnInfoArgument(JJ)V
.end method

.method public static native AddUserHttpHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native CreateNativeInstance(Ljava/lang/String;[JJI[Lcom/lge/upnp/uda/http/IHttpHeader;)J
.end method

.method public static native GetActionName(J)Ljava/lang/String;
.end method

.method public static native GetArgumentList(J)[Lcom/lge/upnp/uda/service/IArgument;
.end method

.method public static native GetHeaderList(J)[Lcom/lge/upnp/uda/http/IHttpHeader;
.end method

.method public static native GetHeaderValue(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetQos(J)I
.end method

.method public static native SetActionName(JLjava/lang/String;)V
.end method

.method public static native SetQos(JI)V
.end method

.method public static native SetUserHeaderList(J[Lcom/lge/upnp/uda/http/IHttpHeader;)Z
.end method
