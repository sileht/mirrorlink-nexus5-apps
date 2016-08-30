.class public Lcom/lge/upnp/uda/device/HostDevice;
.super Ljava/lang/Object;
.source "HostDevice.java"


# instance fields
.field private m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 423
    const-string v0, "lgupnp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public constructor <init>(Lcom/lge/upnp/uda/device/IHostDeviceListener;)V
    .registers 6
    .param p1, "hdListner"    # Lcom/lge/upnp/uda/device/IHostDeviceListener;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    if-eqz p1, :cond_17

    .line 45
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->Initialize(Lcom/lge/upnp/uda/device/IHostDeviceListener;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 47
    :cond_17
    return-void
.end method


# virtual methods
.method public announce(Ljava/util/List;II)Ljava/util/ArrayList;
    .registers 12
    .param p2, "freq"    # I
    .param p3, "maxAge"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "ipAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3f

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 124
    if-ltz p2, :cond_3f

    if-ltz p3, :cond_3f

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 127
    .local v0, "arrIpList":[Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    iget-object v3, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v0, p2, p3}, Lcom/lge/upnp/uda/device/JNIHostDevice;->Announce(J[Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3f

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_34
    if-lt v3, v4, :cond_37

    .line 138
    .end local v0    # "arrIpList":[Ljava/lang/String;
    .end local v2    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_36
    return-object v2

    .line 131
    .restart local v0    # "arrIpList":[Ljava/lang/String;
    .restart local v2    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_37
    aget-object v1, v0, v3

    .line 132
    .local v1, "ip":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 138
    .end local v0    # "arrIpList":[Ljava/lang/String;
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3f
    const/4 v2, 0x0

    goto :goto_36
.end method

.method public announce(Ljava/util/List;[Lcom/lge/upnp/uda/http/IHttpHeader;I)Ljava/util/ArrayList;
    .registers 12
    .param p2, "httpheaders"    # [Lcom/lge/upnp/uda/http/IHttpHeader;
    .param p3, "freq"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/lge/upnp/uda/http/IHttpHeader;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "ipAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3f

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3f

    .line 163
    if-ltz p3, :cond_3f

    if-eqz p2, :cond_3f

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 166
    .local v0, "arrIpList":[Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 167
    iget-object v3, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v0, p2, p3}, Lcom/lge/upnp/uda/device/JNIHostDevice;->Announce(J[Ljava/lang/String;[Lcom/lge/upnp/uda/http/IHttpHeader;I)[Ljava/lang/String;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_3f

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_34
    if-lt v3, v4, :cond_37

    .line 177
    .end local v0    # "arrIpList":[Ljava/lang/String;
    .end local v2    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_36
    return-object v2

    .line 170
    .restart local v0    # "arrIpList":[Ljava/lang/String;
    .restart local v2    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_37
    aget-object v1, v0, v3

    .line 171
    .local v1, "ip":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 177
    .end local v0    # "arrIpList":[Ljava/lang/String;
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3f
    const/4 v2, 0x0

    goto :goto_36
.end method

.method public byebye(Ljava/util/List;)Lcom/lge/upnp/uda/service/Result;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lge/upnp/uda/service/Result;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "ipAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_28

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 193
    .local v0, "arrIpList":[Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/lge/upnp/uda/device/JNIHostDevice;->ByeBye(J[Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;

    move-result-object v1

    .line 197
    .end local v0    # "arrIpList":[Ljava/lang/String;
    :goto_27
    return-object v1

    :cond_28
    new-instance v1, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v1}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_27
.end method

.method public changePortRangeSize(Ljava/lang/String;ZI)Lcom/lge/upnp/uda/service/Result;
    .registers 10
    .param p1, "localIPAddress"    # Ljava/lang/String;
    .param p2, "isUDP"    # Z
    .param p3, "size"    # I

    .prologue
    .line 402
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    const/4 v1, 0x1

    if-lt p3, v1, :cond_21

    const/16 v1, 0xff

    if-gt p3, v1, :cond_21

    .line 403
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    int-to-short v1, p3

    invoke-static {v2, v3, p1, p2, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->changePortRangeSize(JLjava/lang/String;ZS)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 406
    :goto_20
    return-object v0

    .line 405
    :cond_21
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lge/upnp/uda/service/Result;-><init>(I)V

    .line 406
    .local v0, "res":Lcom/lge/upnp/uda/service/Result;
    goto :goto_20
.end method

.method public declared-synchronized destroy()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 338
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 339
    iget-object v2, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 340
    .local v0, "objId":J
    iget-object v2, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 341
    invoke-static {v0, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->destroy(J)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 343
    .end local v0    # "objId":J
    :cond_1d
    monitor-exit p0

    return-void

    .line 338
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 412
    :try_start_2
    iget-object v2, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 413
    iget-object v2, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 414
    .local v0, "objId":J
    iget-object v2, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 415
    invoke-static {v0, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->destroy(J)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_20

    .line 418
    .end local v0    # "objId":J
    :cond_1c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 420
    return-void

    .line 417
    :catchall_20
    move-exception v2

    .line 418
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 419
    throw v2
.end method

.method public getDeviceInfo()Lcom/lge/upnp/uda/service/IDeviceInfo;
    .registers 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 277
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->GetDeviceInfo(J)Lcom/lge/upnp/uda/service/IDeviceInfo;

    move-result-object v0

    .line 279
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getServerName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 328
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->GetServerName(J)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isMediaTransferInProgress()Z
    .registers 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 291
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->IsMediaTransferInProgress(J)Z

    move-result v0

    .line 293
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isRunning()Z
    .registers 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 305
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->IsRunning(J)Z

    move-result v0

    .line 307
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public loadDeviceDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "descriptionXml"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    if-eqz p2, :cond_27

    .line 242
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 243
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/device/JNIHostDevice;->loadDeviceDescription(JLjava/lang/String;Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 246
    :goto_26
    return-object v0

    :cond_27
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_26
.end method

.method public loadServiceDescription(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;
    .registers 7
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "serviceXml"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 264
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 265
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/device/JNIHostDevice;->loadServiceDescription(JLjava/lang/String;Ljava/lang/String;)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 267
    :goto_26
    return-object v0

    :cond_27
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_26
.end method

.method public sendEventNotification(Lcom/lge/upnp/uda/service/IServiceInfo;[Lcom/lge/upnp/uda/service/IStateVarInfo;Ljava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
    .registers 12
    .param p1, "serviceInfo"    # Lcom/lge/upnp/uda/service/IServiceInfo;
    .param p2, "stateVarInfoList"    # [Lcom/lge/upnp/uda/service/IStateVarInfo;
    .param p3, "AppData"    # Ljava/lang/Object;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 214
    array-length v7, p2

    .line 215
    .local v7, "length":I
    new-array v4, v7, [J

    .line 217
    .local v4, "stVarInfoListObjId":[J
    const/4 v6, 0x0

    .local v6, "idx":I
    :goto_14
    if-lt v6, v7, :cond_28

    .line 220
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 221
    check-cast p1, Lcom/lge/upnp/uda/service/ServiceInfo;

    .end local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/ServiceInfo;->getObjectId()J

    move-result-wide v2

    move-object v5, p3

    .line 220
    invoke-static/range {v0 .. v5}, Lcom/lge/upnp/uda/device/JNIHostDevice;->SendEventNotification(JJ[JLjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 224
    .end local v4    # "stVarInfoListObjId":[J
    .end local v6    # "idx":I
    .end local v7    # "length":I
    :goto_27
    return-object v0

    .line 218
    .restart local v4    # "stVarInfoListObjId":[J
    .restart local v6    # "idx":I
    .restart local v7    # "length":I
    .restart local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    :cond_28
    aget-object v0, p2, v6

    check-cast v0, Lcom/lge/upnp/uda/service/StateVarInfo;

    invoke-virtual {v0}, Lcom/lge/upnp/uda/service/StateVarInfo;->GetObjectId()J

    move-result-wide v0

    aput-wide v0, v4, v6

    .line 217
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 224
    .end local v4    # "stVarInfoListObjId":[J
    .end local v6    # "idx":I
    .end local v7    # "length":I
    :cond_35
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_27
.end method

.method public setServerName(Ljava/lang/String;)V
    .registers 6
    .param p1, "strServerName"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 317
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->SetServerName(JLjava/lang/String;)V

    .line 319
    :cond_15
    return-void
.end method

.method public setSourcePortRange(Ljava/lang/String;ZII)Lcom/lge/upnp/uda/service/Result;
    .registers 12
    .param p1, "localIPAddress"    # Ljava/lang/String;
    .param p2, "isUDP"    # Z
    .param p3, "startingPort"    # I
    .param p4, "size"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    if-ltz p3, :cond_2b

    const v0, 0xffff

    if-gt p3, v0, :cond_2b

    const/4 v0, 0x1

    if-lt p4, v0, :cond_2b

    const/16 v0, 0xff

    if-gt p4, v0, :cond_2b

    .line 385
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    int-to-short v5, p4

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/lge/upnp/uda/device/JNIHostDevice;->setSourcePortRange(JLjava/lang/String;ZIS)Lcom/lge/upnp/uda/service/Result;

    move-result-object v6

    .line 388
    :goto_2a
    return-object v6

    .line 387
    :cond_2b
    new-instance v6, Lcom/lge/upnp/uda/service/Result;

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Lcom/lge/upnp/uda/service/Result;-><init>(I)V

    .line 388
    .local v6, "res":Lcom/lge/upnp/uda/service/Result;
    goto :goto_2a
.end method

.method public start()Lcom/lge/upnp/uda/service/Result;
    .registers 7

    .prologue
    .line 362
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    .line 363
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/lge/upnp/uda/device/JNIHostDevice;->Start(J)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 366
    :goto_16
    return-object v0

    .line 365
    :cond_17
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lge/upnp/uda/service/Result;-><init>(I)V

    .line 366
    .local v0, "res":Lcom/lge/upnp/uda/service/Result;
    goto :goto_16
.end method

.method public start(IZ)Lcom/lge/upnp/uda/service/Result;
    .registers 9
    .param p1, "httpPort"    # I
    .param p2, "reuse"    # Z

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    .line 74
    iget-object v1, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/lge/upnp/uda/device/JNIHostDevice;->Start(JIZ)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 81
    :cond_16
    :goto_16
    return-object v0

    .line 77
    :cond_17
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    .line 78
    .local v0, "result":Lcom/lge/upnp/uda/service/Result;
    if-eqz p2, :cond_16

    if-nez p1, :cond_16

    .line 79
    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/lge/upnp/uda/service/Result;->setResultCode(I)V

    goto :goto_16
.end method

.method public stop()Lcom/lge/upnp/uda/service/Result;
    .registers 5

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 100
    iget-object v0, p0, Lcom/lge/upnp/uda/device/HostDevice;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/device/JNIHostDevice;->Stop(J)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 103
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_16
.end method
