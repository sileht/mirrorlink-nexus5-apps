.class Lcom/lge/upnp/uda/http/HttpResponse;
.super Lcom/lge/upnp/uda/http/IHttpResponse;
.source "HttpResponse.java"


# instance fields
.field m_ObjId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/upnp/uda/http/IHttpResponse;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "ObjId"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/upnp/uda/http/IHttpResponse;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    .line 35
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "httpHeader"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->AddHeader(JLjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public getAllHeaders()[Lcom/lge/upnp/uda/http/IHttpHeader;
    .registers 3

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetAllHeaders(J)[Lcom/lge/upnp/uda/http/IHttpHeader;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .registers 3

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetContent(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getContentFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetContentFilePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetContentLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "httpHeader"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetHeaderValue(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQos()I
    .registers 3

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetQos(J)I

    move-result v0

    return v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetReasonPhrase(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStatus()Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->GetResponseStatus(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 4
    .param p1, "httpHeader"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->RemoveHeader(JLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p1, :cond_3

    .line 82
    :cond_2
    :goto_2
    return-void

    .line 78
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 79
    .local v0, "contentBuffer":[B
    if-eqz v0, :cond_2

    .line 80
    iget-wide v2, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v2, v3, v0}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContent(J[B)V

    goto :goto_2
.end method

.method public setContent([B)V
    .registers 4
    .param p1, "contentBuffer"    # [B

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContent(J[B)V

    .line 66
    return-void
.end method

.method public setContentFilePath(Ljava/lang/String;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContentFilePath(JLjava/lang/String;)V

    .line 173
    return-void
.end method

.method public setContentLength(J)Z
    .registers 6
    .param p1, "length"    # J

    .prologue
    .line 269
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    .line 270
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContentLength(JJ)V

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p1, :cond_3

    .line 127
    :goto_2
    return-void

    .line 126
    :cond_3
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContentType(JLjava/lang/String;)V

    goto :goto_2
.end method

.method public setHttpPayloadListner(Lcom/lge/upnp/uda/http/IHttpPayloadListener;)V
    .registers 4
    .param p1, "payloadlistner"    # Lcom/lge/upnp/uda/http/IHttpPayloadListener;

    .prologue
    .line 192
    if-nez p1, :cond_3

    .line 197
    :goto_2
    return-void

    .line 196
    :cond_3
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->setHttpPayloadListner(JLcom/lge/upnp/uda/http/IHttpPayloadListener;)V

    goto :goto_2
.end method

.method public setPartialContent(Ljava/lang/String;J)V
    .registers 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "length"    # J

    .prologue
    .line 92
    if-nez p1, :cond_3

    .line 100
    :cond_2
    :goto_2
    return-void

    .line 95
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 96
    .local v0, "contentBuffer":[B
    if-eqz v0, :cond_2

    .line 97
    iget-wide v2, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v2, v3, v0}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContent(J[B)V

    .line 98
    iget-wide v2, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v2, v3, p2, p3}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContentLength(JJ)V

    goto :goto_2
.end method

.method public setPartialContent([BJ)V
    .registers 6
    .param p1, "contentBuffer"    # [B
    .param p2, "length"    # J

    .prologue
    .line 110
    if-eqz p1, :cond_c

    .line 111
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContent(J[B)V

    .line 112
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p2, p3}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetContentLength(JJ)V

    .line 114
    :cond_c
    return-void
.end method

.method public setQos(I)V
    .registers 4
    .param p1, "qos"    # I

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetQos(JI)V

    .line 153
    return-void
.end method

.method public setResponseCode(Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;)V
    .registers 5
    .param p1, "response"    # Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/lge/upnp/uda/http/HttpResponse;->m_ObjId:J

    invoke-virtual {p1}, Lcom/lge/upnp/uda/http/IHttpResponse$HTTP_RESPONSES;->GetVal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lge/upnp/uda/http/JNIHttpResponse;->SetResponseCode(JI)V

    .line 137
    return-void
.end method
