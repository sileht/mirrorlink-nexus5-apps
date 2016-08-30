.class public Lcom/lge/wfds/WfdsNative;
.super Lcom/lge/wifi/p2p/WifiP2pExtNative;
.source "WfdsNative.java"


# static fields
.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/WifiP2pExtNative;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lcom/lge/wfds/WfdsNative;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public cancelAdvertise(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_CANCEL_ADVERTISE adv_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelConnect()Z
    .registers 2

    .prologue
    .line 265
    const-string v0, "P2P_CANCLE"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelSearch(I)Z
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_CANCEL_SEEK search_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public changeServiceStatus(III)Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "status"    # I
    .param p3, "forcedChannel"    # I

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_CHANGE_SERVICE_STATUS forced_channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, "adv_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearPdInformation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    const-string v0, "WFDS_CLEAR_PD_INFO"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public confirmService(ZLjava/lang/String;I)Z
    .registers 6
    .param p1, "accept"    # Z
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "config_method"    # I

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->p2pStopFind(Z)Z

    .line 240
    if-eqz p1, :cond_24

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_ACCEPT_REQUESTED_SERVICE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string v1, " config_method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 244
    :goto_23
    return v0

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_REJECT_REQUESTED_SERVICE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string v1, " config_method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_23
.end method

.method public deviceAuth(Landroid/net/wifi/p2p/WifiP2pConfigEx;)Ljava/lang/String;
    .registers 10
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfigEx;

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    .line 120
    .local v4, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget v5, v4, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v5, :pswitch_data_a4

    .line 150
    :goto_11
    :pswitch_11
    const-string v5, "auth"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfigEx;->groupOwnerIntent:I

    .line 155
    .local v2, "groupOwnerIntent":I
    if-ltz v2, :cond_21

    .line 156
    const/16 v5, 0xf

    if-gt v2, v5, :cond_21

    .line 157
    const/4 v5, 0x5

    if-le v2, v5, :cond_22

    .line 158
    :cond_21
    const/4 v2, 0x5

    .line 161
    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "go_intent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "P2P_CONNECT "

    .line 164
    .local v1, "command":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_85

    .line 168
    invoke-virtual {p0, v1}, Lcom/lge/wfds/WfdsNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 124
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "groupOwnerIntent":I
    :pswitch_45
    const-string v5, "pbc"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 127
    :pswitch_4b
    iget-object v5, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 128
    const-string v5, "pin"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_58
    const-string v5, "display"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 130
    :cond_5e
    iget-object v5, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 135
    :pswitch_64
    iget-object v5, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v5, "keypad"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 139
    :pswitch_6f
    iget-object v5, v4, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v5, "label"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 143
    :pswitch_7a
    const-string v5, "default"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v5, "persistent"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 164
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v2    # "groupOwnerIntent":I
    :cond_85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    .local v3, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    .line 122
    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_45
        :pswitch_4b
        :pswitch_64
        :pswitch_6f
        :pswitch_11
        :pswitch_7a
    .end packed-switch
.end method

.method public getAvailableSearchId()I
    .registers 2

    .prologue
    .line 204
    const-string v0, "WFDS_GET_SEARCHID"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCapabilies(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GET_CAPABILITY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigMethod()I
    .registers 2

    .prologue
    .line 291
    const-string v0, "WFDS_GET_CONFIG_METHOD"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConnectInformation(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_GET_CONNECT_INFO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getP2pMacAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const-string v0, "WFDS_GET_MAC_ADDRESS"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pFind(I)Z
    .registers 4
    .param p1, "channel"    # I

    .prologue
    .line 67
    invoke-static {}, Lcom/lge/wfds/WfdsLgP2pIface;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    iget-object v0, p0, Lcom/lge/wfds/WfdsNative;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/wfds/WfdsLgP2pIface;->getInstance(Landroid/content/Context;)Lcom/lge/wfds/WfdsLgP2pIface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsLgP2pIface;->p2pFind(I)Z

    move-result v0

    .line 73
    :goto_10
    return v0

    .line 70
    :cond_11
    const/4 v0, 0x1

    if-lt p1, v0, :cond_18

    const/16 v0, 0xb

    if-le p1, v0, :cond_20

    :cond_18
    const/16 v0, 0x24

    if-lt p1, v0, :cond_34

    const/16 v0, 0xa5

    if-gt p1, v0, :cond_34

    .line 71
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P2P_FIND type=one channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 73
    :cond_34
    const-string v0, "P2P_FIND"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public p2pFind(Z)Z
    .registers 3
    .param p1, "social"    # Z

    .prologue
    .line 55
    invoke-static {}, Lcom/lge/wfds/WfdsLgP2pIface;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/lge/wfds/WfdsNative;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/wfds/WfdsLgP2pIface;->getInstance(Landroid/content/Context;)Lcom/lge/wfds/WfdsLgP2pIface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsLgP2pIface;->p2pFind(Z)Z

    move-result v0

    .line 61
    :goto_10
    return v0

    .line 58
    :cond_11
    if-eqz p1, :cond_1a

    .line 59
    const-string v0, "P2P_FIND type=social"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 61
    :cond_1a
    const-string v0, "P2P_FIND"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public p2pFindBlock(Z)Z
    .registers 3
    .param p1, "bForced"    # Z

    .prologue
    .line 91
    invoke-static {}, Lcom/lge/wfds/WfdsLgP2pIface;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 92
    iget-object v0, p0, Lcom/lge/wfds/WfdsNative;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/wfds/WfdsLgP2pIface;->getInstance(Landroid/content/Context;)Lcom/lge/wfds/WfdsLgP2pIface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsLgP2pIface;->p2pFindBlock(Z)Z

    .line 94
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public p2pFlush()Z
    .registers 2

    .prologue
    .line 51
    const-string v0, "P2P_FLUSH"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListen()Z
    .registers 2

    .prologue
    .line 98
    const-string v0, "P2P_LISTEN"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListen(I)Z
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P2P_LISTEN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P2P_PEER "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pSetChannel(I)Z
    .registers 4
    .param p1, "channel"    # I

    .prologue
    .line 254
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0xb

    if-le p1, v0, :cond_f

    :cond_7
    const/16 v0, 0x24

    if-lt p1, v0, :cond_23

    const/16 v0, 0xa5

    if-gt p1, v0, :cond_23

    .line 255
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_SET listen_channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 257
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public p2pStopFind(Z)Z
    .registers 3
    .param p1, "bForced"    # Z

    .prologue
    .line 79
    invoke-static {}, Lcom/lge/wfds/WfdsLgP2pIface;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    iget-object v0, p0, Lcom/lge/wfds/WfdsNative;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/wfds/WfdsLgP2pIface;->getInstance(Landroid/content/Context;)Lcom/lge/wfds/WfdsLgP2pIface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsLgP2pIface;->p2pStopFind(Z)Z

    move-result v0

    .line 85
    :goto_10
    return v0

    .line 82
    :cond_11
    if-eqz p1, :cond_1a

    .line 83
    const-string v0, "P2P_STOP_FIND type=forced"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10

    .line 85
    :cond_1a
    const-string v0, "P2P_STOP_FIND"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public provisionTimeoutOccurred(Ljava/lang/String;)Z
    .registers 4
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_PD_TIMEOUT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestAdvertise(Ljava/lang/String;IIIILjava/lang/String;I)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "accept"    # I
    .param p3, "status"    # I
    .param p4, "role"    # I
    .param p5, "config"    # I
    .param p6, "info"    # Ljava/lang/String;
    .param p7, "forcedChannel"    # I

    .prologue
    .line 178
    if-nez p7, :cond_6

    .line 179
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->p2pSetChannel(I)Z

    .line 181
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_ADVERTISE forced_channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string v1, " service_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, " auto_accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    const-string v1, " network_role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    const-string v1, " network_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    const-string v1, " service_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    const-string v1, " service_information="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestSearch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "search"    # I
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "req"    # Ljava/lang/String;
    .param p5, "forcedChannel"    # I

    .prologue
    .line 208
    if-eqz p4, :cond_34

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_SEEK forced_channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v1, " exact_search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string v1, " service_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string v1, " service_information_request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    .line 215
    :goto_33
    return v0

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_SEEK forced_channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    const-string v1, " exact_search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const-string v1, " service_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string v1, " service_information_request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    goto :goto_33
.end method

.method public requestService(Ljava/lang/String;IILjava/lang/String;I)Z
    .registers 8
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "adv_id"    # I
    .param p3, "session_id"    # I
    .param p4, "session_info"    # Ljava/lang/String;
    .param p5, "capa"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/lge/wfds/WfdsNative;->p2pListen()Z

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_REQUEST_SERVICE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    const-string v1, " adv_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    const-string v1, " connect_capa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 234
    const-string v1, " session_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string v1, " session_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfigMethod(I)Z
    .registers 4
    .param p1, "method"    # I

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_SET_CONFIG_METHOD "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConnectionCapability(I)Z
    .registers 4
    .param p1, "val"    # I

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WFDS_SET_CAPA "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pDisable(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P2P_SET disabled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 299
    if-eqz p2, :cond_1c

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IFNAME="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P2P_SET ps 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 302
    :goto_1b
    return v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IFNAME="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P2P_SET ps 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1b
.end method

.method public setUpdateConfig(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_9

    .line 107
    const-string v0, "SET update_config 1"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 109
    :goto_8
    return v0

    :cond_9
    const-string v0, "SET update_config 0"

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    goto :goto_8
.end method

.method public setWfdsEnabled(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_18

    const-string v0, "TRUE"

    .line 173
    .local v0, "enabled":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WFDS_SET "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 172
    .end local v0    # "enabled":Ljava/lang/String;
    :cond_18
    const-string v0, "FLASE"

    goto :goto_4
.end method

.method public wfdsGroupAdd(ILjava/lang/String;)Z
    .registers 5
    .param p1, "channel"    # I
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P2P_GROUP_ADD persistent ssid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
