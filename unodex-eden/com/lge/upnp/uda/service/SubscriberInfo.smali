.class Lcom/lge/upnp/uda/service/SubscriberInfo;
.super Lcom/lge/upnp/uda/service/ISubscriberInfo;
.source "SubscriberInfo.java"


# instance fields
.field private m_ObjId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/ISubscriberInfo;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    .line 28
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "ObjId"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/ISubscriberInfo;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    .line 37
    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/lge/upnp/uda/service/IDeviceInfo;
    .registers 5

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 133
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->GetDeviceInfo(J)Lcom/lge/upnp/uda/service/IDeviceInfo;

    move-result-object v0

    .line 135
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getEventKeyValue()I
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->GetEventKeyValue(J)I

    move-result v0

    return v0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 118
    if-eqz p1, :cond_9

    .line 119
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->GetHeaderValue(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getServiceInfo()Lcom/lge/upnp/uda/service/IServiceInfo;
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->GetServiceInfo(J)Lcom/lge/upnp/uda/service/IServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->GetSid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->GetTimeout(J)I

    move-result v0

    return v0
.end method

.method public getUserHeaderList()[Lcom/lge/upnp/uda/http/IHttpHeader;
    .registers 3

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->GetUserHeaderList(J)[Lcom/lge/upnp/uda/http/IHttpHeader;

    move-result-object v0

    return-object v0
.end method

.method public setTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 91
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-gez p1, :cond_7

    .line 92
    const/16 p1, 0x708

    .line 95
    :cond_7
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/SubscriberInfo;->m_ObjId:J

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/service/JNISubscriberInfo;->SetTimeout(JI)V

    .line 96
    return-void
.end method
