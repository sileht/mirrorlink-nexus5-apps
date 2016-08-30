.class public Lcom/lge/upnp/uda/service/ServiceInfo;
.super Lcom/lge/upnp/uda/service/IServiceInfo;
.source "ServiceInfo.java"


# instance fields
.field private m_ObjId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IServiceInfo;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    .line 26
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "Id"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/IServiceInfo;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    .line 35
    return-void
.end method


# virtual methods
.method public getActionInfoList()[Lcom/lge/upnp/uda/service/IActionInfo;
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetActionInfoList(J)[Lcom/lge/upnp/uda/service/IActionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getControlURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetControlURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventSubURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetEventSubURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    return-wide v0
.end method

.method public getSCPDURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetSCPDURL(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetServiceId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetServiceType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVarInfoList()[Lcom/lge/upnp/uda/service/IStateVarInfo;
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetStateVarInfoList(J)[Lcom/lge/upnp/uda/service/IStateVarInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubScriberCount()I
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/ServiceInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNIServiceInfo;->GetSubScriberCount(J)I

    move-result v0

    return v0
.end method
