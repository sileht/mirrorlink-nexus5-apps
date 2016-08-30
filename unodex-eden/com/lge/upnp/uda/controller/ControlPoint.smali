.class public Lcom/lge/upnp/uda/controller/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"


# instance fields
.field private m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 805
    const-string v0, "lgupnp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method public constructor <init>(Lcom/lge/upnp/uda/controller/IControlPointListener;)V
    .registers 6
    .param p1, "cpListner"    # Lcom/lge/upnp/uda/controller/IControlPointListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    if-eqz p1, :cond_15

    .line 63
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->Initialize(Lcom/lge/upnp/uda/controller/IControlPointListener;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 65
    :cond_15
    return-void
.end method


# virtual methods
.method public addToSearchIPFilter(Ljava/lang/String;)Z
    .registers 6
    .param p1, "strIPAddr"    # Ljava/lang/String;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 682
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->AddToSearchIPFilter(JLjava/lang/String;)Z

    move-result v0

    .line 684
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public cancelFindDevice(J)Lcom/lge/upnp/uda/service/ResultData;
    .registers 8
    .param p1, "iHandle"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1b

    .line 624
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->CancelFindDevice(JJ)Lcom/lge/upnp/uda/service/ResultData;

    move-result-object v0

    .line 627
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lcom/lge/upnp/uda/service/ResultData;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/ResultData;-><init>()V

    goto :goto_1a
.end method

.method public cancelHttpReq(J)Lcom/lge/upnp/uda/service/ResultData;
    .registers 8
    .param p1, "httpReqHandle"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 590
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1b

    .line 591
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->CancelHttpReq(JJ)Lcom/lge/upnp/uda/service/ResultData;

    move-result-object v0

    .line 594
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lcom/lge/upnp/uda/service/ResultData;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/ResultData;-><init>()V

    goto :goto_1a
.end method

.method public cancelLoadServiceDescription(Lcom/lge/upnp/uda/service/IDeviceInfo;)Lcom/lge/upnp/uda/service/ResultData;
    .registers 6
    .param p1, "deviceInfo"    # Lcom/lge/upnp/uda/service/IDeviceInfo;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 345
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 346
    check-cast p1, Lcom/lge/upnp/uda/service/DeviceInfo;

    .end local p1    # "deviceInfo":Lcom/lge/upnp/uda/service/IDeviceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/DeviceInfo;->getObjectId()J

    move-result-wide v2

    .line 345
    invoke-static {v0, v1, v2, v3}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->CancelLoadServiceDescription(JJ)Lcom/lge/upnp/uda/service/ResultData;

    move-result-object v0

    .line 349
    :goto_1e
    return-object v0

    .restart local p1    # "deviceInfo":Lcom/lge/upnp/uda/service/IDeviceInfo;
    :cond_1f
    new-instance v0, Lcom/lge/upnp/uda/service/ResultData;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/ResultData;-><init>()V

    goto :goto_1e
.end method

.method public cancelSendAction(J)Lcom/lge/upnp/uda/service/ResultData;
    .registers 8
    .param p1, "hAction"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    cmp-long v0, p1, v2

    if-lez v0, :cond_1b

    .line 495
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->cancelSendAction(JJ)Lcom/lge/upnp/uda/service/ResultData;

    move-result-object v0

    .line 498
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lcom/lge/upnp/uda/service/ResultData;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/ResultData;-><init>()V

    goto :goto_1a
.end method

.method public cancelSubscribe(Lcom/lge/upnp/uda/service/IServiceInfo;)Lcom/lge/upnp/uda/service/ResultData;
    .registers 6
    .param p1, "serviceInfo"    # Lcom/lge/upnp/uda/service/IServiceInfo;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 399
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 400
    check-cast p1, Lcom/lge/upnp/uda/service/ServiceInfo;

    .end local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/ServiceInfo;->getObjectId()J

    move-result-wide v2

    .line 399
    invoke-static {v0, v1, v2, v3}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->CancelSubscribe(JJ)Lcom/lge/upnp/uda/service/ResultData;

    move-result-object v0

    .line 403
    :goto_1e
    return-object v0

    .restart local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    :cond_1f
    new-instance v0, Lcom/lge/upnp/uda/service/ResultData;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/ResultData;-><init>()V

    goto :goto_1e
.end method

.method public cancelUnSubscribe(Lcom/lge/upnp/uda/service/IServiceInfo;)Lcom/lge/upnp/uda/service/ResultData;
    .registers 6
    .param p1, "serviceInfo"    # Lcom/lge/upnp/uda/service/IServiceInfo;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 447
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 448
    check-cast p1, Lcom/lge/upnp/uda/service/ServiceInfo;

    .end local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/ServiceInfo;->getObjectId()J

    move-result-wide v2

    .line 447
    invoke-static {v0, v1, v2, v3}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->CancelUnSubscribe(JJ)Lcom/lge/upnp/uda/service/ResultData;

    move-result-object v0

    .line 451
    :goto_1e
    return-object v0

    .restart local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    :cond_1f
    new-instance v0, Lcom/lge/upnp/uda/service/ResultData;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/ResultData;-><init>()V

    goto :goto_1e
.end method

.method public changePortRangeSize(Ljava/lang/String;ZI)Lcom/lge/upnp/uda/service/Result;
    .registers 10
    .param p1, "localIPAddress"    # Ljava/lang/String;
    .param p2, "isUDP"    # Z
    .param p3, "size"    # I

    .prologue
    .line 784
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

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

    .line 785
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    int-to-short v1, p3

    invoke-static {v2, v3, p1, p2, v1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->changePortRangeSize(JLjava/lang/String;ZS)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 788
    :goto_20
    return-object v0

    .line 787
    :cond_21
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lge/upnp/uda/service/Result;-><init>(I)V

    .line 788
    .local v0, "res":Lcom/lge/upnp/uda/service/Result;
    goto :goto_20
.end method

.method public declared-synchronized destroy()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 635
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 636
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 637
    .local v0, "objId":J
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 638
    invoke-static {v0, v1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->destroy(J)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 640
    .end local v0    # "objId":J
    :cond_1d
    monitor-exit p0

    return-void

    .line 635
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

    .line 794
    :try_start_2
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 795
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 796
    .local v0, "objId":J
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 797
    invoke-static {v0, v1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->destroy(J)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_20

    .line 800
    .end local v0    # "objId":J
    :cond_1c
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 802
    return-void

    .line 799
    :catchall_20
    move-exception v2

    .line 800
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 801
    throw v2
.end method

.method public findDevice(Ljava/lang/String;Lcom/lge/upnp/uda/service/NetworkInfo;Z)J
    .registers 8
    .param p1, "strDevUrl"    # Ljava/lang/String;
    .param p2, "nwInfo"    # Lcom/lge/upnp/uda/service/NetworkInfo;
    .param p3, "loadServDesc"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 609
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    if-nez p2, :cond_15

    .line 613
    :cond_14
    :goto_14
    return-wide v0

    :cond_15
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->FindDevice(JLjava/lang/String;Lcom/lge/upnp/uda/service/NetworkInfo;Z)J

    move-result-wide v0

    goto :goto_14
.end method

.method public forceSearch(Ljava/util/List;Ljava/lang/String;IZLjava/lang/Object;)Ljava/util/ArrayList;
    .registers 14
    .param p2, "searchTarget"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "loadServDesc"    # Z
    .param p5, "appData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "ipAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_48

    if-eqz p1, :cond_48

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 276
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_48

    if-lez p3, :cond_48

    const/16 v0, 0x78

    if-gt p3, v0, :cond_48

    .line 277
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 278
    .local v2, "arrIpList":[Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->ForceSearch(J[Ljava/lang/String;Ljava/lang/String;IZLjava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 280
    if-eqz v2, :cond_48

    .line 281
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 285
    .end local v2    # "arrIpList":[Ljava/lang/String;
    :goto_47
    return-object v7

    :cond_48
    const/4 v7, 0x0

    goto :goto_47
.end method

.method public getDevices(Ljava/lang/String;I)[Lcom/lge/upnp/uda/service/IDeviceInfo;
    .registers 7
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "searchType"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    if-ltz p2, :cond_1c

    .line 522
    const/4 v0, 0x6

    if-gt p2, v0, :cond_1c

    .line 523
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->getDevices(JLjava/lang/String;I)[Lcom/lge/upnp/uda/service/IDeviceInfo;

    move-result-object v0

    .line 525
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 186
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->GetUserAgent(J)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getUserHeaderList()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/upnp/uda/http/IHttpHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    const/4 v2, 0x0

    .line 729
    .local v2, "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    iget-object v3, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_22

    .line 730
    iget-object v3, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->GetUserHeaderList(J)[Lcom/lge/upnp/uda/http/IHttpHeader;

    move-result-object v0

    .line 731
    .local v0, "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    if-eqz v0, :cond_22

    .line 732
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .restart local v2    # "tmpHdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    array-length v4, v0

    const/4 v3, 0x0

    :goto_20
    if-lt v3, v4, :cond_23

    .line 740
    .end local v0    # "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    :cond_22
    return-object v2

    .line 733
    .restart local v0    # "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    :cond_23
    aget-object v1, v0, v3

    .line 734
    .local v1, "hdr":Lcom/lge/upnp/uda/http/IHttpHeader;
    if-eqz v1, :cond_2a

    .line 735
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_20
.end method

.method public isRunning()Z
    .registers 5

    .prologue
    .line 664
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 665
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->IsRunning(J)Z

    move-result v0

    .line 667
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isSubscribed(Lcom/lge/upnp/uda/service/IServiceInfo;)Z
    .registers 6
    .param p1, "service"    # Lcom/lge/upnp/uda/service/IServiceInfo;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 651
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    check-cast p1, Lcom/lge/upnp/uda/service/ServiceInfo;

    .end local p1    # "service":Lcom/lge/upnp/uda/service/IServiceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/ServiceInfo;->getObjectId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->IsSubscribed(JJ)Z

    move-result v0

    .line 653
    :goto_1e
    return v0

    .restart local p1    # "service":Lcom/lge/upnp/uda/service/IServiceInfo;
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public loadServiceDescription(Lcom/lge/upnp/uda/service/IDeviceInfo;Ljava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
    .registers 7
    .param p1, "partialDevInfo"    # Lcom/lge/upnp/uda/service/IDeviceInfo;
    .param p2, "appData"    # Ljava/lang/Object;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 330
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 331
    check-cast p1, Lcom/lge/upnp/uda/service/DeviceInfo;

    .end local p1    # "partialDevInfo":Lcom/lge/upnp/uda/service/IDeviceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/DeviceInfo;->getObjectId()J

    move-result-wide v2

    .line 330
    invoke-static {v0, v1, v2, v3, p2}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->LoadServiceDescription(JJLjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 333
    :goto_1e
    return-object v0

    .restart local p1    # "partialDevInfo":Lcom/lge/upnp/uda/service/IDeviceInfo;
    :cond_1f
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_1e
.end method

.method public refreshNetworks()V
    .registers 5

    .prologue
    .line 747
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 748
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->RefreshNetworks(J)V

    .line 750
    :cond_15
    return-void
.end method

.method public releaseDevice(Ljava/lang/String;)V
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 557
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->ReleaseDevice(JLjava/lang/String;)V

    .line 559
    :cond_17
    return-void
.end method

.method public releaseDevices(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/upnp/uda/service/IDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "devInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/upnp/uda/service/IDeviceInfo;>;"
    iget-object v4, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2e

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2e

    .line 539
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [J

    .line 540
    .local v0, "arrDevInfo":[J
    const/4 v2, 0x0

    .line 541
    .local v2, "idx":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 544
    iget-object v4, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v0}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->releaseDevices(J[J)V

    .line 546
    .end local v0    # "arrDevInfo":[J
    .end local v2    # "idx":I
    :cond_2e
    return-void

    .line 541
    .restart local v0    # "arrDevInfo":[J
    .restart local v2    # "idx":I
    :cond_2f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/upnp/uda/service/IDeviceInfo;

    .line 542
    .local v1, "devInfo":Lcom/lge/upnp/uda/service/IDeviceInfo;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    check-cast v1, Lcom/lge/upnp/uda/service/DeviceInfo;

    .end local v1    # "devInfo":Lcom/lge/upnp/uda/service/IDeviceInfo;
    invoke-virtual {v1}, Lcom/lge/upnp/uda/service/DeviceInfo;->getObjectId()J

    move-result-wide v6

    aput-wide v6, v0, v2

    move v2, v3

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_1f
.end method

.method public removeFromSearchIPFilter(Ljava/lang/String;)Z
    .registers 6
    .param p1, "strIPAddr"    # Ljava/lang/String;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 699
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->RemoveFromSearchIPFilter(JLjava/lang/String;)Z

    move-result v0

    .line 701
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public search(Ljava/util/List;Ljava/lang/String;IZLjava/lang/Object;)Ljava/util/ArrayList;
    .registers 14
    .param p2, "searchTarget"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "loadServDesc"    # Z
    .param p5, "appData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "ipAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_48

    if-eqz p1, :cond_48

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 227
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_48

    if-lez p3, :cond_48

    const/16 v0, 0x78

    if-gt p3, v0, :cond_48

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 229
    .local v2, "arrIpList":[Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->Search(J[Ljava/lang/String;Ljava/lang/String;IZLjava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_48

    .line 232
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .end local v2    # "arrIpList":[Ljava/lang/String;
    :goto_47
    return-object v7

    :cond_48
    const/4 v7, 0x0

    goto :goto_47
.end method

.method public sendAction(Lcom/lge/upnp/uda/service/IServiceInfo;Lcom/lge/upnp/uda/service/ActionInfo;Ljava/lang/Object;)J
    .registers 11
    .param p1, "service"    # Lcom/lge/upnp/uda/service/IServiceInfo;
    .param p2, "actInfo"    # Lcom/lge/upnp/uda/service/ActionInfo;
    .param p3, "appData"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v0, 0x0

    .line 477
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_25

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    .line 478
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    check-cast p1, Lcom/lge/upnp/uda/service/ServiceInfo;

    .line 479
    .end local p1    # "service":Lcom/lge/upnp/uda/service/IServiceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/ServiceInfo;->getObjectId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/lge/upnp/uda/service/ActionInfo;->createNativeInstance()J

    move-result-wide v4

    move-object v6, p3

    .line 478
    invoke-static/range {v0 .. v6}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->sendAction(JJJLjava/lang/Object;)J

    move-result-wide v0

    .line 481
    :cond_25
    return-wide v0
.end method

.method public sendHttpReq(Lcom/lge/upnp/uda/http/HttpRequest;Lcom/lge/upnp/uda/service/NetworkInfo;Ljava/lang/Object;)J
    .registers 10
    .param p1, "HttpReq"    # Lcom/lge/upnp/uda/http/HttpRequest;
    .param p2, "nwInfo"    # Lcom/lge/upnp/uda/service/NetworkInfo;
    .param p3, "appData"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v0, 0x0

    .line 575
    iget-object v2, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_10

    if-eqz p1, :cond_10

    if-nez p2, :cond_11

    .line 579
    :cond_10
    :goto_10
    return-wide v0

    :cond_11
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/lge/upnp/uda/http/HttpRequest;->getObjectId()J

    move-result-wide v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->SendHttpReq(JJLcom/lge/upnp/uda/service/NetworkInfo;Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_10
.end method

.method public setSourcePortRange(Ljava/lang/String;ZII)Lcom/lge/upnp/uda/service/Result;
    .registers 12
    .param p1, "localIPAddress"    # Ljava/lang/String;
    .param p2, "isUDP"    # Z
    .param p3, "startingPort"    # I
    .param p4, "size"    # I

    .prologue
    .line 767
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

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

    .line 768
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    int-to-short v5, p4

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->setSourcePortRange(JLjava/lang/String;ZIS)Lcom/lge/upnp/uda/service/Result;

    move-result-object v6

    .line 771
    :goto_2a
    return-object v6

    .line 770
    :cond_2b
    new-instance v6, Lcom/lge/upnp/uda/service/Result;

    const/4 v0, -0x1

    invoke-direct {v6, v0}, Lcom/lge/upnp/uda/service/Result;-><init>(I)V

    .line 771
    .local v6, "res":Lcom/lge/upnp/uda/service/Result;
    goto :goto_2a
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 6
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 174
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->SetUserAgent(JLjava/lang/String;)V

    .line 176
    :cond_15
    return-void
.end method

.method public setUserHeaderList(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/upnp/uda/http/IHttpHeader;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "usrHdrList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/upnp/uda/http/IHttpHeader;>;"
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_23

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    if-eqz p1, :cond_18

    .line 714
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/lge/upnp/uda/http/IHttpHeader;

    .line 715
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 717
    :cond_18
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->SetUserHeaderList(J[Lcom/lge/upnp/uda/http/IHttpHeader;)Z

    move-result v1

    .line 719
    .end local v0    # "arrHdrList":[Lcom/lge/upnp/uda/http/IHttpHeader;
    :goto_22
    return v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public start(IIZ)Lcom/lge/upnp/uda/service/Result;
    .registers 10
    .param p1, "evtPort"    # I
    .param p2, "httpPort"    # I
    .param p3, "reuse"    # Z

    .prologue
    .line 134
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    .line 135
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->Start(JIIZ)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 140
    :goto_16
    return-object v0

    .line 138
    :cond_17
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    .line 140
    .local v0, "objRes":Lcom/lge/upnp/uda/service/Result;
    goto :goto_16
.end method

.method public start(IZ)Lcom/lge/upnp/uda/service/Result;
    .registers 9
    .param p1, "port"    # I
    .param p2, "reuse"    # Z

    .prologue
    .line 94
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    .line 95
    iget-object v1, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->Start(JIZ)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 100
    :goto_16
    return-object v0

    .line 98
    :cond_17
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    .line 100
    .local v0, "objRes":Lcom/lge/upnp/uda/service/Result;
    goto :goto_16
.end method

.method public stop()Lcom/lge/upnp/uda/service/Result;
    .registers 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 159
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->Stop(J)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 162
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_16
.end method

.method public subscribe(Lcom/lge/upnp/uda/service/IServiceInfo;ILjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
    .registers 10
    .param p1, "serviceInfo"    # Lcom/lge/upnp/uda/service/IServiceInfo;
    .param p2, "duration"    # I
    .param p3, "appData"    # Ljava/lang/Object;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    if-ltz p2, :cond_23

    .line 381
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    check-cast p1, Lcom/lge/upnp/uda/service/ServiceInfo;

    .line 382
    .end local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/ServiceInfo;->getObjectId()J

    move-result-wide v2

    move v4, p2

    move-object v5, p3

    .line 381
    invoke-static/range {v0 .. v5}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->Subscribe(JJILjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 384
    :goto_22
    return-object v0

    .restart local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    :cond_23
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_22
.end method

.method public unSubscribe(Lcom/lge/upnp/uda/service/IServiceInfo;Ljava/lang/Object;)Lcom/lge/upnp/uda/service/Result;
    .registers 7
    .param p1, "serviceInfo"    # Lcom/lge/upnp/uda/service/IServiceInfo;
    .param p2, "appData"    # Ljava/lang/Object;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 429
    iget-object v0, p0, Lcom/lge/upnp/uda/controller/ControlPoint;->m_ObjId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    check-cast p1, Lcom/lge/upnp/uda/service/ServiceInfo;

    .line 430
    .end local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    invoke-virtual {p1}, Lcom/lge/upnp/uda/service/ServiceInfo;->getObjectId()J

    move-result-wide v2

    .line 429
    invoke-static {v0, v1, v2, v3, p2}, Lcom/lge/upnp/uda/controller/JNICtrlPoint;->UnSubscribe(JJLjava/lang/Object;)Lcom/lge/upnp/uda/service/Result;

    move-result-object v0

    .line 432
    :goto_1e
    return-object v0

    .restart local p1    # "serviceInfo":Lcom/lge/upnp/uda/service/IServiceInfo;
    :cond_1f
    new-instance v0, Lcom/lge/upnp/uda/service/Result;

    invoke-direct {v0}, Lcom/lge/upnp/uda/service/Result;-><init>()V

    goto :goto_1e
.end method
