.class Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;
.super Landroid/content/BroadcastReceiver;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    .line 118
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "action":Ljava/lang/String;
    const-string v14, "com.lge.mobilehotspot.action.STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_85

    .line 125
    const-string v14, "com.lge.mobilehotspot.extra.MOBILEHOTSPOT_STATE"

    .line 126
    const/4 v15, -0x1

    .line 125
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 127
    .local v11, "state":I
    const-string v14, "MobileHotspotService"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, " ACTION_MOBILEHOTSPOT_STATE_CHANGED :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-static {v14, v11}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService;I)V

    .line 131
    const/16 v14, 0xc

    if-ne v11, v14, :cond_3d

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 410
    .end local v11    # "state":I
    :cond_3c
    :goto_3c
    return-void

    .line 135
    .restart local v11    # "state":I
    :cond_3d
    const/16 v14, 0xa

    if-ne v11, v14, :cond_3c

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mDeniedList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$2(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 141
    :try_start_54
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setBatteryUsageTime(I)Z
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5c} :catch_80

    .line 149
    :goto_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$3(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 150
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.lge.mobilehotspot.action.AP_POWER_ONOFF_CONFIG"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v7, "intentCmd":Landroid/content/Intent;
    const-string v14, "MobileHotspotService"

    const-string v15, "[MHP_AlanPark] AP_POWER_ONOF_CONFIG send in ACTION_MOBILEHOTSPOT_STATE_CHANGED"

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3c

    .line 142
    .end local v7    # "intentCmd":Landroid/content/Intent;
    :catch_80
    move-exception v5

    .line 144
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5c

    .line 157
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v11    # "state":I
    :cond_85
    const-string v14, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_LOG"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c2

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const-string v15, "persist.service.mhp.log"

    const-string v16, "0"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$5(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 160
    const-string v14, "MobileHotspotService"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] 3G Mobile Hotspot Logging On >> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    move-object/from16 v16, v0

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsLoging:Z
    invoke-static/range {v16 .. v16}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$6(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 162
    :cond_c2
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_179

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Landroid/content/Context;

    move-result-object v14

    .line 165
    const-string v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 164
    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 166
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isAirPlaneModeOn()Z
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$7(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v6

    .line 167
    .local v6, "enabled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-static {v14, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$8(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 169
    if-eqz v6, :cond_121

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$9(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 174
    :try_start_f5
    const-string v14, "MobileHotspotService"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] Airplane mode On, Hotspot off ==> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->disable(Z)Z

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$10(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_119} :catch_11b

    goto/16 :goto_3c

    .line 177
    :catch_11b
    move-exception v5

    .line 178
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3c

    .line 182
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mOffByAirplaneMode:Z
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$11(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v14

    if-eqz v14, :cond_170

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    if-nez v14, :cond_170

    .line 185
    invoke-static {}, Lcom/lge/wifi/extension/LgWifiManager;->getWifiServiceExtIface()Lcom/lge/wifi/extension/IWifiServiceExtension;

    move-result-object v13

    .line 186
    .local v13, "wifiSvcExt":Lcom/lge/wifi/extension/IWifiServiceExtension;
    if-eqz v13, :cond_13b

    .line 187
    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/lge/wifi/extension/IWifiServiceExtension;->setProvisioned(Z)V

    .line 191
    :cond_13b
    const-wide/16 v14, 0x7d0

    :try_start_13d
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_140
    .catch Ljava/lang/InterruptedException; {:try_start_13d .. :try_end_140} :catch_166

    .line 197
    :goto_140
    :try_start_140
    const-string v14, "MobileHotspotService"

    .line 198
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] Airplane mode Off, Restart Hotspot by previos state ==> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 198
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 197
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->enable(Z)Z
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_15c} :catch_16b

    .line 204
    :goto_15c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$10(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    goto/16 :goto_3c

    .line 192
    :catch_166
    move-exception v5

    .line 193
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_140

    .line 201
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catch_16b
    move-exception v5

    .line 202
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15c

    .line 206
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v13    # "wifiSvcExt":Lcom/lge/wifi/extension/IWifiServiceExtension;
    :cond_170
    const-string v14, "MobileHotspotService"

    .line 207
    const-string v15, "[MHS_NEZZIMOM] Don\'t turn on by airplane off(wifi enabled or previous state off)"

    .line 206
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 212
    .end local v6    # "enabled":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_179
    const-string v14, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_380

    .line 214
    const-string v14, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "apnType":Ljava/lang/String;
    if-eqz v3, :cond_3c

    .line 218
    const-string v14, "default"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19b

    const-string v14, "internet"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 220
    :cond_19b
    const-string v14, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "state":Ljava/lang/String;
    const-string v14, "networkUnvailable"

    const/4 v15, 0x1

    .line 221
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 224
    .local v4, "dataConnectivityImpossible":Z
    const-string v9, "INET"

    .line 225
    .local v9, "ipVersion":Ljava/lang/String;
    const-string v14, "iface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "interfaceName":Ljava/lang/String;
    const-string v14, "MobileHotspotService"

    .line 228
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] ACTION_ANY_DATA_CONNECTION_STATE_CHANGED dataConnectivityImpossible : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 228
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 227
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v14, "MobileHotspotService"

    .line 232
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] Change network interface (state : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", iface : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 234
    const-string v16, "iface"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 232
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 230
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz v3, :cond_3c

    if-eqz v9, :cond_3c

    .line 239
    const-string v14, "default"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20c

    const-string v14, "internet"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 240
    :cond_20c
    const-string v14, "INET"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_22f

    .line 245
    const-string v14, "MobileHotspotService"

    const-string v15, "[MHS_NEZZIMOM]  reset interface for MHP"

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$13(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 249
    :cond_22f
    if-eqz v8, :cond_3c

    .line 254
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_279

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_279

    .line 256
    const-string v14, "MobileHotspotService"

    .line 257
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] initial set network interface (old iface : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    move-object/from16 v16, v0

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", new iface : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 257
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 256
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-static {v14, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$13(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 265
    :cond_279
    :try_start_279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-virtual {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 267
    const-string v14, "MobileHotspotService"

    .line 268
    const-string v15, "[MHS_NEZZIMOM]  MobileHotSpot Currenttly On. Lets check if we change the upstreaming interface"

    .line 267
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2dc

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2dc

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2dc

    .line 273
    const-string v14, "MobileHotspotService"

    .line 274
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] Unchange network interface (old iface : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    move-object/from16 v16, v0

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", new iface : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 277
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 274
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 273
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 324
    :catch_2d9
    move-exception v14

    goto/16 :goto_3c

    .line 282
    :cond_2dc
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_307

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_307

    .line 284
    const-string v14, "MobileHotspotService"

    .line 285
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] Initial set network interface (iface : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 285
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 284
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_343

    .line 293
    const-string v14, "MobileHotspotService"

    .line 294
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] Change network interface (old iface : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    move-object/from16 v16, v0

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", new iface : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 297
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 294
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 293
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-static {v14, v8}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$13(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Ljava/lang/String;)V

    .line 303
    const-string v14, "MobileHotspotService"

    .line 304
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] p2pSetNetDynamicInterface (iface : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 304
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 303
    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$14(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetNetDynamicInterface(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-virtual {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isEnabled()Z
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_37e} :catch_2d9

    goto/16 :goto_3c

    .line 326
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "dataConnectivityImpossible":Z
    .end local v8    # "interfaceName":Ljava/lang/String;
    .end local v9    # "ipVersion":Ljava/lang/String;
    .end local v11    # "state":Ljava/lang/String;
    :cond_380
    const-string v14, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c4

    .line 328
    const-string v14, "phoneinECMState"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_3c

    .line 330
    const-string v14, "MobileHotspotService"

    const-string v15, "[MHS_NEZZIMOM] Exit Emergency call mode)"

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$15(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isRecoverAfterECM:Z
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$16(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 337
    :try_start_3ac
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$17(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->enable(Z)Z
    :try_end_3bc
    .catch Landroid/os/RemoteException; {:try_start_3ac .. :try_end_3bc} :catch_3be

    goto/16 :goto_3c

    .line 339
    :catch_3be
    move-exception v5

    .line 340
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3c

    .line 346
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_3c4
    const-string v14, "com.lge.mobilehotspot.action.MOBILEHOTSPOT_EMC_EVENT"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_407

    .line 348
    const-string v14, "MobileHotspotService"

    const-string v15, "[MHS_NEZZIMOM] Enter Emergency call mode)"

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$15(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIsMobileHotspotOn:Z
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$9(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v14

    if-eqz v14, :cond_3fd

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$17(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 356
    :try_start_3ed
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->disable(Z)Z
    :try_end_3f5
    .catch Landroid/os/RemoteException; {:try_start_3ed .. :try_end_3f5} :catch_3f7

    goto/16 :goto_3c

    .line 357
    :catch_3f7
    move-exception v5

    .line 358
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3c

    .line 362
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_3fd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$17(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    goto/16 :goto_3c

    .line 366
    :cond_407
    const-string v14, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_42f

    .line 367
    const-string v14, "MobileHotspotService"

    const-string v15, " WIFI_SAP_DHCP_INFO_CHANGED_ACTION"

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :try_start_416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-virtual {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # invokes: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->syncAllConectedDevices()V
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$18(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    :try_end_427
    .catch Landroid/os/RemoteException; {:try_start_416 .. :try_end_427} :catch_429

    goto/16 :goto_3c

    .line 373
    :catch_429
    move-exception v5

    .line 374
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3c

    .line 380
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_42f
    const-string v14, "com.lge.mobilehotspot.action.AP_POWER_ONOFF_CONFIG"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_483

    .line 384
    :try_start_437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isChangedConfigure:Z
    invoke-static {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$3(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Z

    move-result v14

    if-nez v14, :cond_46a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-virtual {v14}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_46a

    .line 385
    const-string v14, "MobileHotspotService"

    const-string v15, "[MHS_NEZZIMOM] Hotspot off because of re-setting configure"

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$19(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->disable(Z)Z
    :try_end_462
    .catch Landroid/os/RemoteException; {:try_start_437 .. :try_end_462} :catch_464

    goto/16 :goto_3c

    .line 393
    :catch_464
    move-exception v5

    .line 394
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3c

    .line 389
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_46a
    :try_start_46a
    const-string v14, "MobileHotspotService"

    const-string v15, "[MHS_NEZZIMOM] Hotspot on because of re-setting configure"

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$19(Lcom/lge/wifi/impl/mobilehotspot/MHPService;Z)V

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->enable(Z)Z
    :try_end_481
    .catch Landroid/os/RemoteException; {:try_start_46a .. :try_end_481} :catch_464

    goto/16 :goto_3c

    .line 398
    :cond_483
    const-string v14, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 399
    const-string v14, "wifi_state"

    .line 400
    const/16 v15, 0xe

    .line 399
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 402
    .local v10, "newWifiApState":I
    const-string v14, "MobileHotspotService"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[MHS_NEZZIMOM] WIFI_AP_STATE_CHANGED_ACTION : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v14, 0xb

    if-ne v10, v14, :cond_4b8

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/16 v15, 0xa

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService;I)V

    goto/16 :goto_3c

    .line 406
    :cond_4b8
    const/16 v14, 0xd

    if-ne v10, v14, :cond_3c

    .line 407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    const/16 v15, 0xc

    invoke-static {v14, v15}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService;I)V

    goto/16 :goto_3c
.end method
