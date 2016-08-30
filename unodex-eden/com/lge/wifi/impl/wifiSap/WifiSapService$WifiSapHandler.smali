.class Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;
.super Landroid/os/Handler;
.source "WifiSapService.java"

# interfaces
.implements Lcom/lge/wifi/impl/wifiSap/WifiSapTypes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiSapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSapHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiSapService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    .line 151
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_3f4

    .line 360
    :cond_9
    :goto_9
    return-void

    .line 159
    :pswitch_a
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_AP_ENABLED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v21

    const-string v22, "CMCC"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_29

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v21

    const-string v22, "CMO"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5b

    .line 166
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$1(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/telephony/TelephonyManager;

    move-result-object v21

    if-eqz v21, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$1(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v21

    if-nez v21, :cond_5b

    .line 168
    const-string v21, "WifiSapService"

    const-string v22, "Enable Mobile Data"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$1(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/telephony/TelephonyManager;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5b} :catch_78

    .line 181
    :cond_5b
    :goto_5b
    new-instance v9, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.ENABLED"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v9, "intentApEnabled":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_9

    .line 173
    .end local v9    # "intentApEnabled":Landroid/content/Intent;
    :catch_78
    move-exception v21

    const-string v21, "WifiSapService"

    const-string v22, "Enable Mobile Data Exception"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 186
    :pswitch_81
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_AP_DISABLED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v8, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.DISABLED"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v8, "intentApDisabled":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 194
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v21

    if-eqz v21, :cond_c9

    .line 195
    const-string v21, "WifiSapService"

    const-string v22, "[LG Common UI] mStations.clear()"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$2(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setAllAssocMacListSize(I)V

    .line 207
    :cond_c9
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v21

    const-string v22, "VZW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_db

    .line 208
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 211
    :cond_db
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v21

    const-string v22, "US"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$2(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setAllAssocMacListSize(I)V

    goto/16 :goto_9

    .line 220
    .end local v8    # "intentApDisabled":Landroid/content/Intent;
    :pswitch_101
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_STA_ASSOCIATED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v21

    if-nez v21, :cond_114

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 226
    :cond_114
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v21

    if-eqz v21, :cond_121

    .line 227
    const-string v21, "WifiSapService"

    const-string v22, "[LG Common UI] handleMessage [MESSAGE_STA_ASSOCIATED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->updateApClientList()Z

    .line 231
    new-instance v16, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v16, "intentStaAss":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 239
    .end local v16    # "intentStaAss":Landroid/content/Intent;
    :pswitch_14c
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_STA_DISASSOCIATED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v21

    if-nez v21, :cond_15f

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 245
    :cond_15f
    const/16 v21, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiApState:I
    invoke-static/range {v22 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$3(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17a

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->updateApClientList()Z

    .line 249
    :cond_17a
    new-instance v17, Landroid/content/Intent;

    .line 250
    const-string v21, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    .line 249
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v17, "intentStaDisass":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 257
    .end local v17    # "intentStaDisass":Landroid/content/Intent;
    :pswitch_19c
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_STA_MAX_REACHED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->updateApClientList()Z

    .line 263
    new-instance v18, Landroid/content/Intent;

    .line 264
    const-string v21, "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

    .line 263
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v18, "intentStaMaxReached":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 270
    .end local v18    # "intentStaMaxReached":Landroid/content/Intent;
    :pswitch_1d4
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_HOSTAPD_CONNECTED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v21

    const-string v22, "TMO"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1f3

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v21

    const-string v22, "MPCS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b1

    :cond_1f3
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v21

    const-string v22, "US"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b1

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "wifi_ap_broadcast_channel"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 276
    .local v5, "defaultChannel":I
    new-instance v6, Landroid/content/IntentFilter;

    const-string v21, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 277
    .local v6, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 278
    .local v3, "BatteryState":Landroid/content/Intent;
    const-string v21, "status"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 279
    .local v4, "chargeState":I
    const-string v21, "WifiSapService"

    const-string v22, "[txPowerMode] Charging : 2 FULL : 5"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v21, "WifiSapService"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "[txPowerMode] Current State : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    packed-switch v4, :pswitch_data_412

    .line 293
    :pswitch_25e
    const-string v21, "WifiSapService"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "[txPowerMode] Current State : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "wifi_ap_power_mode_high"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 297
    .local v20, "txPowerMode":I
    :goto_28a
    const-string v21, "WifiSapService"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "[txPowerMode] : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    move/from16 v0, v20

    invoke-static {v0, v5}, Lcom/lge/wifi/config/LgeWifiConfig;->getTxPowerValue(II)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setTxPower(I)I

    .line 301
    .end local v3    # "BatteryState":Landroid/content/Intent;
    .end local v4    # "chargeState":I
    .end local v5    # "defaultChannel":I
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v20    # "txPowerMode":I
    :cond_2b1
    new-instance v14, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v14, "intentHostapdConnected":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 285
    .end local v14    # "intentHostapdConnected":Landroid/content/Intent;
    .restart local v3    # "BatteryState":Landroid/content/Intent;
    .restart local v4    # "chargeState":I
    .restart local v5    # "defaultChannel":I
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    :pswitch_2cf
    const-string v21, "WifiSapService"

    const-string v22, "[txPowerMode]Charging : 2 FULL : 5"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "wifi_ap_power_mode_high_with_usb"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 287
    .restart local v20    # "txPowerMode":I
    goto :goto_28a

    .line 308
    .end local v3    # "BatteryState":Landroid/content/Intent;
    .end local v4    # "chargeState":I
    .end local v5    # "defaultChannel":I
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v20    # "txPowerMode":I
    :pswitch_2ed
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_PBC_ACTIVE]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v19, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_WPS_PBC_ACTIVE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v19, "intentpbcActive":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 315
    .end local v19    # "intentpbcActive":Landroid/content/Intent;
    :pswitch_316
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_DISABLE]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v10, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_DISABLE"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v10, "intentEventDisable":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 322
    .end local v10    # "intentEventDisable":Landroid/content/Intent;
    :pswitch_33b
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_TIMEOUT]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v13, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_TIMEOUT"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v13, "intentEventTimeout":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 329
    .end local v13    # "intentEventTimeout":Landroid/content/Intent;
    :pswitch_360
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_SUCCESS]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_SUCCESS"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v12, "intentEventSuccess":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 336
    .end local v12    # "intentEventSuccess":Landroid/content/Intent;
    :pswitch_385
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_FAIL]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v11, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_FAIL"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v11, "intentEventFail":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 343
    .end local v11    # "intentEventFail":Landroid/content/Intent;
    :pswitch_3aa
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_HOSTAPD_WPS_EVENT_REG_SUCCESS]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v15, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_WPS_EVENT_REG_SUCCES"

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v15, "intentRegSuccess":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 352
    .end local v15    # "intentRegSuccess":Landroid/content/Intent;
    :pswitch_3cf
    const-string v21, "WifiSapService"

    const-string v22, "handleMessage [MESSAGE_SAP_DRIVER_HUNG_EVENT]"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.lge.wifi.sap.WIFI_SAP_DRIVER_HUNG_EVENT"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v7, "hangEvent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 156
    :pswitch_data_3f4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_81
        :pswitch_101
        :pswitch_14c
        :pswitch_19c
        :pswitch_1d4
        :pswitch_2ed
        :pswitch_316
        :pswitch_33b
        :pswitch_360
        :pswitch_385
        :pswitch_3aa
        :pswitch_3cf
    .end packed-switch

    .line 282
    :pswitch_data_412
    .packed-switch 0x2
        :pswitch_2cf
        :pswitch_25e
        :pswitch_25e
        :pswitch_2cf
    .end packed-switch
.end method
