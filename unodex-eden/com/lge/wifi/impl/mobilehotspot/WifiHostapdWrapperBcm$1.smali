.class Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiHostapdWrapperBcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, "notivalue":I
    const-string v3, "com.lge.wifi.sap.ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 75
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_ENABLED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 78
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_READY:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 80
    if-eqz v2, :cond_2d

    .line 81
    :try_start_24
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 174
    :cond_2d
    :goto_2d
    return-void

    .line 83
    :catch_2e
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_33
    const-string v3, "com.lge.wifi.sap.DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 90
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_DISABLED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 93
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STOP:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 95
    if-eqz v2, :cond_2d

    .line 96
    :try_start_52
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5b} :catch_5c

    goto :goto_2d

    .line 98
    :catch_5c
    move-exception v1

    .line 99
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d

    .line 103
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_61
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 105
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_STATION_ASSOC_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 111
    :cond_71
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 113
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_STATION_DISASSOC_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 116
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_DISASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 118
    if-eqz v2, :cond_2d

    .line 119
    :try_start_90
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_99} :catch_9a

    goto :goto_2d

    .line 121
    :catch_9a
    move-exception v1

    .line 122
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d

    .line 125
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9f
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_DHCP_INFO_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 127
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_DHCP_INFO_CHANGED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 132
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_CREATE_LINK_COMPLETE:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 134
    if-eqz v2, :cond_2d

    .line 135
    :try_start_be
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c7} :catch_c9

    goto/16 :goto_2d

    .line 137
    :catch_c9
    move-exception v1

    .line 138
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2d

    .line 141
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_cf
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_HOSTAPD_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 143
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_HOSTAPD_CONNECTED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 146
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_HOSTAPD_CONNECTED:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 148
    if-eqz v2, :cond_2d

    .line 149
    :try_start_ee
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_f7} :catch_f9

    goto/16 :goto_2d

    .line 151
    :catch_f9
    move-exception v1

    .line 152
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2d

    .line 155
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_ff
    const-string v3, "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 157
    const-string v3, "WifiHostapdWrapperBcm"

    const-string v4, "BroadcastReceiver : WIFI_SAP_MAX_REACHED_ACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 160
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->BCMP2P_NOTIF_SOFTAP_STA_DISASSOC:Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMHPCmd$BCMP2P_NOTIFICATION_CODE;->getVal()I

    move-result v2

    .line 162
    if-eqz v2, :cond_2d

    .line 163
    :try_start_11e
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm$1;->this$0:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->mMhpManager:Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->access$0(Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;)Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;->sendP2PNotificaiton(I)V
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_127} :catch_129

    goto/16 :goto_2d

    .line 165
    :catch_129
    move-exception v1

    .line 166
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2d

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12f
    const-string v3, "WifiHostapdWrapperBcm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BroadcastReceiver : unknown Intent ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d
.end method
