.class Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;
.super Landroid/os/Handler;
.source "MHPManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MHPRcvLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    .line 1236
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1237
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0xa

    .line 1242
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1244
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MHPRcvLoop::handleMesage >>>>> msg.what=>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_READY:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_6f

    .line 1248
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg value=>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_READY:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetNetDynamicInterface()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 1252
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pGetNetDynamicInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pMssChange(Ljava/lang/String;)I

    .line 1256
    :cond_5d
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onMobileHotspotStateChanged(I)V

    .line 1257
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$2(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Z)V

    .line 1311
    :cond_6e
    :goto_6e
    return-void

    .line 1260
    :cond_6f
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STOP:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-eq v1, v2, :cond_83

    .line 1261
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_FAIL:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_d7

    .line 1263
    :cond_83
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BCMP2P_NOTIF_SOFTAP_FAIL/BCMP2P_NOTIF_SOFTAP_STOP : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-eq v1, v4, :cond_bb

    .line 1268
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_bb

    .line 1269
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STOP:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_bb

    .line 1271
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_STOP while SoftAP is enabling!!  --> ignore!"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 1274
    :cond_bb
    const-string v1, "MHPManager"

    const-string v2, "close softap\n"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->closeSoftAP()I

    .line 1285
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onMobileHotspotStateChanged(I)V

    .line 1286
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$2(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Z)V

    goto :goto_6e

    .line 1289
    :cond_d7
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_ASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_e9

    .line 1291
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_STA_ASSOC"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 1294
    :cond_e9
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_CREATE_LINK_COMPLETE:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_107

    .line 1296
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_CREATE_LINK_COMPLETE"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onStationStatusChanged(I)V

    goto/16 :goto_6e

    .line 1300
    :cond_107
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_DISASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_125

    .line 1303
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_STA_DISASSOC"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onStationStatusChanged(I)V

    goto/16 :goto_6e

    .line 1307
    :cond_125
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_HOSTAPD_CONNECTED:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    if-ne v1, v2, :cond_6e

    .line 1308
    const-string v1, "MHPManager"

    const-string v2, "BCMP2P_NOTIF_SOFTAP_HOSTAPD_CONNECTED"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;->onHostapdConnected()V

    goto/16 :goto_6e
.end method
