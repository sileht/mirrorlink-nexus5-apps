.class Lcom/lge/upnp/uda/http/JNIHttpResponse;
.super Ljava/lang/Object;
.source "JNIHttpResponse.java"


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

.method public static native GetContentFilePath(J)Ljava/lang/String;
.end method

.method public static native GetContentLength(J)J
.end method

.method public static native GetHeaderValue(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetQos(J)I
.end method

.method public static native GetReasonPhrase(J)Ljava/lang/String;
.end method

.method public static native GetResponseStatus(J)Ljava/lang/String;
.end method

.method public static native RemoveHeader(JLjava/lang/String;)V
.end method

.method public static native SetContent(J[B)V
.end method

.method public static native SetContentFilePath(JLjava/lang/String;)V
.end method

.method public static native SetContentLength(JJ)V
.end method

.method public static native SetContentType(JLjava/lang/String;)V
.end method

.method public static native SetPartialContent(J[BJ)V
.end method

.method public static native SetQos(JI)V
.end method

.method public static native SetResponseCode(JI)V
.end method

.method public static native setHttpPayloadListner(JLcom/lge/upnp/uda/http/IHttpPayloadListener;)V
.end method
