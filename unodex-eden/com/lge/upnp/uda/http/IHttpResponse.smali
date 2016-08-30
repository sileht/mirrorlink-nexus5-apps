.class public abstract Lcom/lge/upnp/uda/http/IHttpResponse;
.super Ljava/lang/Object;
.source "IHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_CONTENT_HEADERS;,
        Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;,
        Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSE_HEADERS;,
        Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_VERSION;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAllHeaders()[Lcom/lge/upnp/uda/http/IHttpHeader;
.end method

.method public abstract getContent()[B
.end method

.method public abstract getContentFilePath()Ljava/lang/String;
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getQos()I
.end method

.method public abstract getReasonPhrase()Ljava/lang/String;
.end method

.method public abstract getResponseStatus()Ljava/lang/String;
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract setContent(Ljava/lang/String;)V
.end method

.method public abstract setContent([B)V
.end method

.method public abstract setContentFilePath(Ljava/lang/String;)V
.end method

.method public abstract setContentLength(J)Z
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setHttpPayloadListner(Lcom/lge/upnp/uda/http/IHttpPayloadListener;)V
.end method

.method public abstract setPartialContent(Ljava/lang/String;J)V
.end method

.method public abstract setPartialContent([BJ)V
.end method

.method public abstract setQos(I)V
.end method

.method public abstract setResponseCode(Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;)V
.end method
