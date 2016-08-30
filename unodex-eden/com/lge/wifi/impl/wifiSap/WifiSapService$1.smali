.class Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/wifiSap/WifiSapService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    .line 492
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 499
    const-string v1, "WifiSapService"

    const-string v2, "WifiSapService [ACTION_BOOT_COMPLETED]"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 507
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 508
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$4(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SyncConfigVaules()V

    .line 561
    :cond_37
    :goto_37
    return-void

    .line 514
    :cond_38
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 524
    const-string v1, "WifiSapService"

    const-string v2, "BroadcastReceiver : WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$5(Lcom/lge/wifi/impl/wifiSap/WifiSapService;I)V

    .line 529
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiApState:I
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$3(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6a

    .line 530
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiSapHandler:Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$6(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_37

    .line 532
    :cond_6a
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiApState:I
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$3(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)I

    move-result v1

    if-ne v1, v3, :cond_37

    .line 533
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiSapHandler:Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$6(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_37

    .line 537
    :cond_81
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 538
    const-string v1, "wifi.lge.mhp"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_37

    .line 547
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$7(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 548
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$7(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    if-eq v1, v2, :cond_b3

    .line 549
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->access$7(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v3, v1, :cond_37

    .line 551
    :cond_b3
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiSapService;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->removeMacFilterDenyList()I

    goto/16 :goto_37

    .line 558
    :cond_ba
    const-string v1, "WifiSapService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BroadcastReceiver : unknown Intent ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37
.end method
