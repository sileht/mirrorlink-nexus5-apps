.class Lcom/lge/wfds/SessionController$SessionOpeningState;
.super Lcom/android/internal/util/State;
.source "SessionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/SessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionOpeningState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/SessionController;


# direct methods
.method constructor <init>(Lcom/lge/wfds/SessionController;)V
    .registers 2

    .prologue
    .line 681
    iput-object p1, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 684
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v2

    if-nez v2, :cond_11

    .line 685
    const-string v2, "WfdsSession:Controller"

    const-string v3, "STATE : SessionOpeningState - enter - Error !! Peer Device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_10
    return-void

    .line 689
    :cond_11
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STATE : SessionOpeningState - enter - Peer Device Address : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget-object v4, v4, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopSessionReadyTimeouts()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$4(Lcom/lge/wfds/SessionController;)V

    .line 693
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->setP2pPowerSave(Z)V
    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$34(Lcom/lge/wfds/SessionController;Z)V

    .line 695
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$35(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_58

    .line 696
    const-string v2, "WfdsSession:Controller"

    const-string v3, "SessionOpeningState - enter : WifiMulticastLock acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$35(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 699
    const-wide/16 v2, 0x64

    :try_start_55
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_e2

    .line 705
    :cond_58
    :goto_58
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v3, "SessionOpeningState"

    invoke-virtual {v2, v3}, Lcom/lge/wfds/SessionController;->acquireWakeLock(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 707
    const-wide/16 v2, 0x64

    :try_start_64
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_f9

    .line 713
    :cond_67
    :goto_67
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mPortIsolation:Lcom/lge/wfds/session/PortIsolation;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$6(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/PortIsolation;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/PortIsolation;->enable(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 715
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v1

    .line 716
    .local v1, "session":Lcom/lge/wfds/session/AspSession;
    if-eqz v1, :cond_ce

    .line 717
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Enter SessionOpeningState - Peer Device IP : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$9(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/UdpDataManager;

    move-result-object v2

    iget-object v3, v1, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lge/wfds/session/UdpDataManager;->initUdpDataSender(Ljava/lang/String;)V

    .line 719
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mUdpDataManager:Lcom/lge/wfds/session/UdpDataManager;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$9(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/UdpDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/session/UdpDataManager;->startReceiver()V

    .line 721
    :cond_ce
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$36(Lcom/lge/wfds/SessionController;Z)V

    .line 722
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v2, v5}, Lcom/lge/wfds/SessionController;->access$37(Lcom/lge/wfds/SessionController;Z)V

    .line 723
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x901034

    invoke-virtual {v2, v3}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto/16 :goto_10

    .line 700
    .end local v1    # "session":Lcom/lge/wfds/session/AspSession;
    :catch_e2
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interrupted Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 708
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_f9
    move-exception v0

    .line 709
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v2, "WfdsSession:Controller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Interrupted Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_67
.end method

.method public exit()V
    .registers 5

    .prologue
    .line 783
    const-string v0, "WfdsSession:Controller"

    const-string v1, "STATE : SessionOpeningState - exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v1, 0x1

    # invokes: Lcom/lge/wfds/SessionController;->setP2pPowerSave(Z)V
    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$34(Lcom/lge/wfds/SessionController;Z)V

    .line 787
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$35(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 788
    const-string v0, "WfdsSession:Controller"

    const-string v1, "SessionOpeningState - exit : WifiMulticastLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$35(Lcom/lge/wfds/SessionController;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 792
    :cond_29
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v1, "SessionOpeningState"

    invoke-virtual {v0, v1}, Lcom/lge/wfds/SessionController;->releaseWakeLock(Ljava/lang/String;)Z

    .line 794
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mIsCertificationMode:Z
    invoke-static {v0}, Lcom/lge/wfds/SessionController;->access$14(Lcom/lge/wfds/SessionController;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 795
    iget-object v0, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    iget-object v1, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const-string v2, "com.lge.wfds.session.OPEN_FAILED_TIMEOUT"

    .line 796
    const/16 v3, 0x2710

    .line 795
    # invokes: Lcom/lge/wfds/SessionController;->startTimeout(Ljava/lang/String;I)Landroid/app/PendingIntent;
    invoke-static {v1, v2, v3}, Lcom/lge/wfds/SessionController;->access$15(Lcom/lge/wfds/SessionController;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/SessionController;->access$40(Lcom/lge/wfds/SessionController;Landroid/app/PendingIntent;)V

    .line 798
    :cond_47
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v4, 0x901035

    const/4 v1, 0x1

    .line 728
    const/4 v0, 0x0

    .line 730
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_c2

    .line 776
    const/4 v1, 0x0

    .line 778
    :goto_b
    return v1

    .line 733
    :sswitch_c
    const-string v2, "WfdsSession:Controller"

    const-string v3, "EVT_REQUEST_OPEN_SESSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const v3, 0x901015

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/lge/wfds/SessionController;->sendMessageToWfdsSM(ILjava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/lge/wfds/SessionController;->access$19(Lcom/lge/wfds/SessionController;ILjava/lang/Object;)V

    goto :goto_b

    .line 738
    :sswitch_1e
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mSessionList:Lcom/lge/wfds/session/AspSessionList;
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$7(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSessionList;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v3}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v3

    iget-object v3, v3, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->mRequestedSession:Lcom/lge/wfds/session/AspSession;
    invoke-static {v4}, Lcom/lge/wfds/SessionController;->access$10(Lcom/lge/wfds/SessionController;)Lcom/lge/wfds/session/AspSession;

    move-result-object v4

    iget v4, v4, Lcom/lge/wfds/session/AspSession;->session_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/wfds/session/AspSessionList;->getSession(Ljava/lang/String;Ljava/lang/Integer;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    .line 740
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    const/4 v3, 0x5

    # invokes: Lcom/lge/wfds/SessionController;->startAspSessionRequest(ILcom/lge/wfds/session/AspSession;)Z
    invoke-static {v2, v3, v0}, Lcom/lge/wfds/SessionController;->access$20(Lcom/lge/wfds/SessionController;ILcom/lge/wfds/session/AspSession;)Z

    goto :goto_b

    .line 745
    :sswitch_4a
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v2, v1}, Lcom/lge/wfds/SessionController;->access$36(Lcom/lge/wfds/SessionController;Z)V

    .line 748
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionReceived:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$38(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionSent:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$39(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 749
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2, v4}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto :goto_b

    .line 752
    :cond_73
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is not completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 757
    :sswitch_7b
    const-string v2, "WfdsSession:Controller"

    const-string v3, "ACK_VERSION_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->stopAspSessionRequest()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$2(Lcom/lge/wfds/SessionController;)V

    .line 760
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-static {v2, v1}, Lcom/lge/wfds/SessionController;->access$37(Lcom/lge/wfds/SessionController;Z)V

    .line 761
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionReceived:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$38(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # getter for: Lcom/lge/wfds/SessionController;->bVersionSent:Z
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$39(Lcom/lge/wfds/SessionController;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 762
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    invoke-virtual {v2, v4}, Lcom/lge/wfds/SessionController;->sendMessage(I)V

    goto/16 :goto_b

    .line 765
    :cond_aa
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION exchange is not completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 770
    :sswitch_b3
    const-string v2, "WfdsSession:Controller"

    const-string v3, "VERSION_EXCHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/lge/wfds/SessionController$SessionOpeningState;->this$0:Lcom/lge/wfds/SessionController;

    # invokes: Lcom/lge/wfds/SessionController;->sendRequestSession()V
    invoke-static {v2}, Lcom/lge/wfds/SessionController;->access$18(Lcom/lge/wfds/SessionController;)V

    goto/16 :goto_b

    .line 730
    nop

    :sswitch_data_c2
    .sparse-switch
        0x901034 -> :sswitch_1e
        0x901035 -> :sswitch_b3
        0x901047 -> :sswitch_c
        0x90105c -> :sswitch_4a
        0x901064 -> :sswitch_7b
    .end sparse-switch
.end method
