.class Lcom/lge/upnp/uda/http/JNIHttpRequest;
.super Ljava/lang/Object;
.source "JNIHttpRequest.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AddHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native GetAllHeaders(J)[Lcom/lge/upnp/uda/http/IHttpHeader;
.end method

.method public static native GetContent(J)[B
.end method

.method public static native GetContentLength(J)J
.end method

.method public static native GetHeaderValue(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetHttpVersion(J)Ljava/lang/String;
.end method

.method public static native GetRequestMethod(J)Ljava/lang/String;
.end method

.method public static native GetRequestURI(J)Ljava/lang/String;
.end method

.method public static native SetContent(J[B)V
.end method

.method public static native SetContentLength(JJ)V
.end method

.method public static native SetRequestMethod(JI)V
.end method

.method public static native SetRequestMethod(JLjava/lang/String;)V
.end method

.method public static native SetRequestURI(JLjava/lang/String;)V
.end method

.method public static native createNativeInstance()J
.end method

.method public static native destroy(J)V
.end method

.method public static native setHttpPayloadListner(JLcom/lge/upnp/uda/http/IHttpPayloadListener;)V
.end method
