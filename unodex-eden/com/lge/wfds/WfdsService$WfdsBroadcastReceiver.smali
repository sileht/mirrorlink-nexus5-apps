.class Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsService;


# direct methods
.method public constructor <init>(Lcom/lge/wfds/WfdsService;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    .line 271
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 272
    return-void
.end method

.method private processP2pConnectionChanged(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 353
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 354
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v1, "wifiP2pInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-static {v2, v1}, Lcom/lge/wfds/WfdsService;->access$9(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 356
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 357
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mGroupInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$12(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 358
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$10(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$11(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$13(Lcom/lge/wfds/WfdsService;)Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 360
    :cond_48
    if-eqz v0, :cond_87

    .line 361
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isConnected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_87

    .line 363
    const-string v1, "WfdsService"

    const-string v2, "Connection Failed from P2pService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v2

    const v3, 0x901007

    invoke-virtual {v2, v3, v4, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 367
    :cond_87
    return-void
.end method

.method private processP2pStateChanged(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 336
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v2, "wifi_p2p_state"

    .line 337
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 338
    const/4 v3, 0x2

    if-ne v2, v3, :cond_47

    .line 336
    :goto_c
    invoke-static {v1, v0}, Lcom/lge/wfds/WfdsService;->access$6(Lcom/lge/wfds/WfdsService;Z)V

    .line 340
    const-string v0, "WfdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WifiP2pState is changed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$7(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWifiP2pEnabled:Z
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$7(Lcom/lge/wfds/WfdsService;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 344
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/wfds/WfdsPeerList;->clearPeerDevice()V

    .line 345
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v0

    const v1, 0x901002

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 349
    :goto_46
    return-void

    .line 338
    :cond_47
    const/4 v0, 0x0

    goto :goto_c

    .line 347
    :cond_49
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v0

    const v1, 0x901001

    invoke-virtual {v0, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_46
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 282
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v2, "connected"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/wfds/WfdsService;->access$0(Lcom/lge/wfds/WfdsService;Z)V

    .line 283
    const-string v1, "WfdsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Supplicant Connection state is changed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSuppConnected:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$1(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mSuppConnected:Z
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$1(Lcom/lge/wfds/WfdsService;)Z

    move-result v1

    if-eqz v1, :cond_47

    const v1, 0x901003

    :goto_43
    invoke-virtual {v2, v1}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    .line 333
    :goto_46
    return-void

    .line 284
    :cond_47
    const v1, 0x901004

    goto :goto_43

    .line 288
    :cond_4b
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 289
    invoke-direct {p0, p2}, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->processP2pStateChanged(Landroid/content/Intent;)V

    goto :goto_46

    .line 293
    :cond_57
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 294
    const-string v1, "WfdsService"

    const-string v2, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, p2}, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->processP2pConnectionChanged(Landroid/content/Intent;)V

    goto :goto_46

    .line 299
    :cond_6a
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 300
    const-string v1, "WfdsService"

    const-string v2, "WIFI_P2P_THIS_DEVICE_CHANGED_ATCION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    const-string v1, "wifiP2pDevice"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2, v1}, Lcom/lge/wfds/WfdsService;->access$3(Lcom/lge/wfds/WfdsService;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 302
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->updateP2pInterfaceState()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$4(Lcom/lge/wfds/WfdsService;)V

    goto :goto_46

    .line 306
    :cond_8c
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 307
    const-string v1, "WfdsService"

    const-string v2, "WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # invokes: Lcom/lge/wfds/WfdsService;->updateP2pPeersList()V
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$5(Lcom/lge/wfds/WfdsService;)V

    goto :goto_46

    .line 312
    :cond_a1
    const-string v1, "com.lge.wfds.PD_DEFER_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 313
    const-string v1, "WfdsService"

    const-string v2, "WFDS_PD_DEFERRED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x901008

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto :goto_46

    .line 318
    :cond_bd
    const-string v1, "com.lge.wfds.PD_RECEIVE_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 319
    const-string v1, "WfdsService"

    const-string v2, "WFDS_PD_RECEIVED_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x901009

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_46

    .line 324
    :cond_da
    const-string v1, "com.lge.wfds.CONNECTION_TIMEOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 325
    const-string v1, "WfdsService"

    const-string v2, "WFDS_CONNECTION_TIMEOUT_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/lge/wfds/WfdsService$WfdsBroadcastReceiver;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsStateMachine:Lcom/lge/wfds/WfdsService$WfdsStateMachine;
    invoke-static {v1}, Lcom/lge/wfds/WfdsService;->access$2(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    move-result-object v1

    const v2, 0x90100a

    invoke-virtual {v1, v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->sendMessage(I)V

    goto/16 :goto_46

    .line 331
    :cond_f7
    const-string v1, "WfdsService"

    const-string v2, "Invaild intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46
.end method
