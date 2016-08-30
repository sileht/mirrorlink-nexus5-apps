.class public Lcom/lge/wfds/WfdsPeerList;
.super Ljava/lang/Object;
.source "WfdsPeerList.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdsPeerList"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPeers:Lcom/lge/wfds/WfdsDeviceList;

.field private mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

.field private mWfdsNative:Lcom/lge/wfds/WfdsNative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/wfds/WfdsEvent;Lcom/lge/wfds/WfdsNative;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfdsEvent"    # Lcom/lge/wfds/WfdsEvent;
    .param p3, "wfdsNative"    # Lcom/lge/wfds/WfdsNative;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 20
    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 21
    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    .line 24
    iput-object p1, p0, Lcom/lge/wfds/WfdsPeerList;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    .line 26
    iput-object p3, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    .line 27
    new-instance v0, Lcom/lge/wfds/WfdsDeviceList;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDeviceList;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    .line 28
    return-void
.end method

.method private parseHex(Ljava/lang/String;)I
    .registers 6
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "num":I
    if-nez p1, :cond_5

    .line 165
    const/4 v1, 0x0

    .line 176
    :goto_4
    return v1

    .line 167
    :cond_5
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "0X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 168
    :cond_15
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 172
    :cond_1a
    const/16 v1, 0x10

    :try_start_1c
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1f} :catch_22

    move-result v0

    :goto_20
    move v1, v0

    .line 176
    goto :goto_4

    .line 174
    :catch_22
    move-exception v1

    const-string v1, "WfdsPeerList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse hex string "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private sendWfdsPeerLostBroadcast(Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceAddr"    # Ljava/lang/String;

    .prologue
    .line 180
    if-nez p1, :cond_3

    .line 190
    :goto_2
    return-void

    .line 184
    :cond_3
    const-string v1, "WfdsPeerList"

    const-string v2, "WfdsPeersLostBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.wfds.DEVICE_LOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const-string v1, "wifiP2pDevice"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method


# virtual methods
.method public addPeerDevice(Lcom/lge/wfds/WfdsDevice;)V
    .registers 4
    .param p1, "wfdsDevice"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 45
    if-nez p1, :cond_3

    .line 52
    :goto_2
    return-void

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 50
    :try_start_6
    iget-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDeviceList;->update(Lcom/lge/wfds/WfdsDevice;)V

    .line 49
    monitor-exit v1

    goto :goto_2

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public clearAndNotifyPeerDevice()V
    .registers 7

    .prologue
    .line 79
    iget-object v2, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v2

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 88
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDeviceList;->clear()Z

    .line 79
    monitor-exit v2

    .line 90
    return-void

    .line 80
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 81
    .local v0, "devEx":Lcom/lge/wfds/WfdsDevice;
    const-string v3, "WfdsPeerList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearAndNotifyPeerDevice ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v3, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v3, :cond_4b

    .line 83
    iget-object v3, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 84
    iget-object v3, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/lge/wfds/WfdsEvent;->notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V

    .line 86
    :cond_4b
    iget-object v3, v0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/lge/wfds/WfdsPeerList;->sendWfdsPeerLostBroadcast(Ljava/lang/String;)V

    goto :goto_d

    .line 79
    .end local v0    # "devEx":Lcom/lge/wfds/WfdsDevice;
    :catchall_51
    move-exception v1

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public clearPeerDevice()V
    .registers 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 74
    :try_start_3
    iget-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDeviceList;->clear()Z

    .line 73
    monitor-exit v1

    .line 76
    return-void

    .line 73
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getP2pPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;
    .registers 10
    .param p1, "peerAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 116
    if-nez p1, :cond_5

    .line 158
    :cond_4
    :goto_4
    return-object v1

    .line 120
    :cond_5
    iget-object v5, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsNative:Lcom/lge/wfds/WfdsNative;

    invoke-virtual {v5, p1}, Lcom/lge/wfds/WfdsNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "info":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 126
    const-string v5, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2})\\npri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+)\\ndevice_name=(.*)\\nmanufacturer=(.*)\\nmodel_name=(.*)\\nmodel_number=(.*)\\nserial_number=(.*)\\nconfig_methods=(0x[0-9a-fA-F]+)\\ndev_capab=(0x[0-9a-fA-F]+)\\ngroup_capab=(0x[0-9a-fA-F]+)($|\\n.*)"

    .line 125
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 138
    .local v0, "detailedDevicePattern":Ljava/util/regex/Pattern;
    const-string v5, "[ \n]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "tokens":[Ljava/lang/String;
    array-length v5, v4

    if-ge v5, v6, :cond_24

    .line 140
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Malformed Peer Info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 143
    :cond_24
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 144
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_36

    .line 145
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Malformed Peer Info Pattern"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_36
    new-instance v1, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v1}, Lcom/lge/wfds/WfdsDevice;-><init>()V

    .line 149
    .local v1, "dev":Lcom/lge/wfds/WfdsDevice;
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    .line 150
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lge/wfds/WfdsDevice;->primaryDeviceType:Ljava/lang/String;

    .line 151
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    .line 152
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsPeerList;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/lge/wfds/WfdsDevice;->wpsConfigMethodsSupported:I

    .line 153
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsPeerList;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/lge/wfds/WfdsDevice;->deviceCapability:I

    .line 154
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/wfds/WfdsPeerList;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    .line 156
    const-string v5, "WfdsPeerList"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get Device Info: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public getPeerDevice(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    if-nez p1, :cond_5

    .line 34
    const/4 v1, 0x0

    .line 41
    :goto_4
    return-object v1

    .line 37
    :cond_5
    iget-object v2, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v2

    .line 38
    :try_start_8
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v1, p1}, Lcom/lge/wfds/WfdsDeviceList;->get(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;

    move-result-object v0

    .line 37
    monitor-exit v2

    move-object v1, v0

    .line 41
    goto :goto_4

    .line 37
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public removePeerDevice(Lcom/lge/wfds/WfdsDevice;)V
    .registers 4
    .param p1, "wfdsDevice"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 63
    if-nez p1, :cond_3

    .line 70
    :goto_2
    return-void

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v1

    .line 68
    :try_start_6
    iget-object v0, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDeviceList;->remove(Lcom/lge/wfds/WfdsDevice;)Z

    .line 67
    monitor-exit v1

    goto :goto_2

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public updatePeerList(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 12
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 93
    iget-object v5, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    monitor-enter v5

    .line 94
    :try_start_3
    iget-object v4, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v4}, Lcom/lge/wfds/WfdsDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_15

    .line 93
    monitor-exit v5

    .line 113
    return-void

    .line 94
    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wfds/WfdsDevice;

    .line 95
    .local v1, "devEx":Lcom/lge/wfds/WfdsDevice;
    iget-object v6, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 96
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v0, :cond_6a

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    sub-long v2, v6, v8

    .line 98
    .local v2, "timeDiff":J
    const-wide/16 v6, 0x7d0

    cmp-long v6, v2, v6

    if-lez v6, :cond_d

    .line 99
    const-string v6, "WfdsPeerList"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WFDS device is lost (updatePeersList) ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v6, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 102
    iget-object v6, v1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    if-eqz v6, :cond_61

    .line 103
    iget-object v6, v1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    const/4 v7, 0x2

    iput v7, v6, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 104
    iget-object v6, p0, Lcom/lge/wfds/WfdsPeerList;->mWfdsEvent:Lcom/lge/wfds/WfdsEvent;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v1}, Lcom/lge/wfds/WfdsEvent;->notifySearchResultToService(ILcom/lge/wfds/WfdsDevice;)V

    .line 106
    :cond_61
    iget-object v6, v1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/wfds/WfdsPeerList;->sendWfdsPeerLostBroadcast(Ljava/lang/String;)V

    goto :goto_d

    .line 93
    .end local v0    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "devEx":Lcom/lge/wfds/WfdsDevice;
    .end local v2    # "timeDiff":J
    :catchall_67
    move-exception v4

    monitor-exit v5
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v4

    .line 109
    .restart local v0    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    .restart local v1    # "devEx":Lcom/lge/wfds/WfdsDevice;
    :cond_6a
    :try_start_6a
    iget-object v6, p0, Lcom/lge/wfds/WfdsPeerList;->mPeers:Lcom/lge/wfds/WfdsDeviceList;

    invoke-virtual {v6, v0}, Lcom/lge/wfds/WfdsDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_67

    goto :goto_d
.end method
