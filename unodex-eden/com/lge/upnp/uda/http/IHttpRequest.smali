.class public abstract Lcom/lge/upnp/uda/http/IHttpRequest;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_HEADER;,
        Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;
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

.method public abstract getContentLength()J
.end method

.method public abstract getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHttpVersion()Ljava/lang/String;
.end method

.method public abstract getRequestMethod()Ljava/lang/String;
.end method

.method public abstract getRequestURI()Ljava/lang/String;
.end method

.method public abstract setContent(Ljava/lang/String;)V
.end method

.method public abstract setContent([B)V
.end method

.method public abstract setContentLength(J)Z
.end method

.method public abstract setHttpPayloadListner(Lcom/lge/upnp/uda/http/IHttpPayloadListener;)V
.end method

.method public abstract setRequestMethod(Lcom/lge/upnp/uda/http/IHttpRequest$HTTP_REQUEST_METHODS;)V
.end method

.method public abstract setRequestURI(Ljava/lang/String;)V
.end method
