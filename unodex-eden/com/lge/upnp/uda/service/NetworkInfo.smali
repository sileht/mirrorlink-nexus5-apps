.class public Lcom/lge/upnp/uda/service/NetworkInfo;
.super Lcom/lge/upnp/uda/service/INetworkInfo;
.source "NetworkInfo.java"


# instance fields
.field private mLocalIPAddr:Ljava/lang/String;

.field private mLocalPort:I

.field private mRemoteIPAddr:Ljava/lang/String;

.field private mRemotePort:I

.field private m_ObjId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/INetworkInfo;-><init>()V

    .line 33
    const-string v0, "0"

    iput-object v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalIPAddr:Ljava/lang/String;

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemoteIPAddr:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalPort:I

    .line 37
    iput v1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemotePort:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    .line 39
    return-void
.end method

.method public constructor <init>(J)V
    .registers 8
    .param p1, "ObjId"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/lge/upnp/uda/service/INetworkInfo;-><init>()V

    .line 47
    cmp-long v0, p1, v2

    if-nez v0, :cond_19

    .line 48
    const-string v0, "0"

    iput-object v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalIPAddr:Ljava/lang/String;

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemoteIPAddr:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalPort:I

    .line 52
    iput v1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemotePort:I

    .line 53
    iput-wide v2, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    .line 57
    :goto_18
    return-void

    .line 55
    :cond_19
    iput-wide p1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    goto :goto_18
.end method


# virtual methods
.method public getInterfaceName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_9
    return-object v0

    :cond_a
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNINetworkInfo;->GetInterfaceName(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getLocalIPAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 67
    iget-object v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalIPAddr:Ljava/lang/String;

    .line 70
    :goto_a
    return-object v0

    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNINetworkInfo;->GetLocalIPAddress(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getLocalPort()I
    .registers 5

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 81
    iget v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalPort:I

    .line 84
    :goto_a
    return v0

    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNINetworkInfo;->GetLocalPort(J)I

    move-result v0

    goto :goto_a
.end method

.method public getRemoteIPAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 95
    iget-object v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemoteIPAddr:Ljava/lang/String;

    .line 98
    :goto_a
    return-object v0

    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNINetworkInfo;->GetRemoteIPAddress(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getRemoteMACAddress()Ljava/lang/String;
    .registers 5

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_9
    return-object v0

    :cond_a
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNINetworkInfo;->GetRemoteMACAddress(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getRemotePort()I
    .registers 5

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 136
    iget v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemotePort:I

    .line 139
    :goto_a
    return v0

    :cond_b
    iget-wide v0, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->m_ObjId:J

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/service/JNINetworkInfo;->GetRemotePort(J)I

    move-result v0

    goto :goto_a
.end method

.method public setLocalIPAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "localIP"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalIPAddr:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setLocalPort(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mLocalPort:I

    .line 176
    return-void
.end method

.method public setRemoteIPAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "remoteIP"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemoteIPAddr:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setRemotePort(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/lge/upnp/uda/service/NetworkInfo;->mRemotePort:I

    .line 158
    return-void
.end method
