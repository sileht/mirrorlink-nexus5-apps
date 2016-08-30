.class Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WfdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsService$WfdsStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)V
    .registers 2

    .prologue
    .line 522
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 525
    const-string v0, "WfdsService"

    const-string v1, "STATE : DefaultState - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void
.end method

.method public exit()V
    .registers 1

    .prologue
    .line 650
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v4, 0x900021

    const v7, 0x900020

    const v3, 0x90001f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 535
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_1e6

    .line 642
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DefaultState - msg ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not handled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2c
    :goto_2c
    return v6

    .line 538
    :sswitch_2d
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - WFDS_ENABLE(DISABLE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 542
    :sswitch_35
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - WIFI_SUPPLICANT_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$14(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 544
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(Z)V
    invoke-static {v2, v6}, Lcom/lge/wfds/WfdsService;->access$15(Lcom/lge/wfds/WfdsService;Z)V

    .line 545
    const-string v2, "WfdsService"

    const-string v3, "WiFi: Supplicant connection re-established"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_58
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/lge/wfds/WfdsService;->access$16(Lcom/lge/wfds/WfdsService;I)V

    goto :goto_2c

    .line 551
    :sswitch_62
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - WIFI_SUPPLICANT_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V
    invoke-static {v2, v5, v6}, Lcom/lge/wfds/WfdsService;->access$17(Lcom/lge/wfds/WfdsService;ZZ)V

    .line 553
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$18(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 554
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitor:Lcom/lge/wfds/WfdsMonitor;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$18(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/wfds/WfdsMonitor;->lostSupplicantConnection()V

    goto :goto_2c

    .line 559
    :sswitch_8c
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsMonitorConnected:Z
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$14(Lcom/lge/wfds/WfdsService;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 560
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mSuppDisconnectCount:I
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$19(Lcom/lge/wfds/WfdsService;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/lge/wfds/WfdsService;->access$16(Lcom/lge/wfds/WfdsService;I)V

    const/4 v2, 0x5

    if-lt v3, v2, :cond_2c

    .line 563
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->setWfdsMonitor(ZZ)V
    invoke-static {v2, v5, v6}, Lcom/lge/wfds/WfdsService;->access$17(Lcom/lge/wfds/WfdsService;ZZ)V

    .line 564
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/lge/wfds/WfdsService;->access$16(Lcom/lge/wfds/WfdsService;I)V

    .line 565
    const-string v2, "WfdsService"

    const-string v3, "DefaultState - Received WFDS_SUPPLICANT_TERMINATING Event, so close the sockets related with supplicant"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 571
    :sswitch_c5
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 576
    :sswitch_cc
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 581
    :sswitch_d3
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 586
    :sswitch_da
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900025

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 591
    :sswitch_e4
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 596
    :sswitch_eb
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 602
    :sswitch_f2
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # invokes: Lcom/lge/wfds/WfdsService;->getDeviceAddress()Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$20(Lcom/lge/wfds/WfdsService;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "deviceAddr":Ljava/lang/String;
    if-eqz v0, :cond_106

    const-string v2, "ff:ff:ff:ff:ff:ff"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 604
    :cond_106
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900023

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v5}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 607
    :cond_110
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900024

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/String;)V
    invoke-static {v2, p1, v3, v0}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$1(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_2c

    .line 614
    .end local v0    # "deviceAddr":Ljava/lang/String;
    :sswitch_11a
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900022

    .line 615
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService;->getPreferredScanChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$21(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    .line 614
    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 619
    :sswitch_12e
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/wfds/WfdsService;->setScanOnlyChannel(I)V
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$22(Lcom/lge/wfds/WfdsService;I)V

    .line 620
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SET_LISTEN_CHANNEL : mScanOnlyOneChannel = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_2c

    .line 625
    :sswitch_15e
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/lge/wfds/WfdsService;->confirmScanOnlyChannel(I)I
    invoke-static {v2, v3}, Lcom/lge/wfds/WfdsService;->access$24(Lcom/lge/wfds/WfdsService;I)I

    .line 626
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONFIRM_LISTEN_CHANNEL : requested Channel = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    const v3, 0x900022

    .line 628
    iget-object v4, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v4

    # invokes: Lcom/lge/wfds/WfdsService;->getScanOnlyChannel()I
    invoke-static {v4}, Lcom/lge/wfds/WfdsService;->access$23(Lcom/lge/wfds/WfdsService;)I

    move-result v4

    .line 627
    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v3, v4}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$0(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_2c

    .line 633
    :sswitch_19b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 634
    .local v1, "isCertiMode":Z
    const-string v2, "WfdsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CMD_TEST_SET_CERTIFICATION_MODE ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lge/wfds/WfdsService;->access$25(Lcom/lge/wfds/WfdsService;Z)V

    .line 636
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v2

    # getter for: Lcom/lge/wfds/WfdsService;->mSessionController:Lcom/lge/wfds/SessionController;
    invoke-static {v2}, Lcom/lge/wfds/WfdsService;->access$26(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/SessionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # getter for: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->this$0:Lcom/lge/wfds/WfdsService;
    invoke-static {v3}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$41(Lcom/lge/wfds/WfdsService$WfdsStateMachine;)Lcom/lge/wfds/WfdsService;

    move-result-object v3

    # getter for: Lcom/lge/wfds/WfdsService;->mIsCertificationMode:Z
    invoke-static {v3}, Lcom/lge/wfds/WfdsService;->access$27(Lcom/lge/wfds/WfdsService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/wfds/SessionController;->setCertiMode(Z)V

    .line 637
    iget-object v2, p0, Lcom/lge/wfds/WfdsService$WfdsStateMachine$DefaultState;->this$1:Lcom/lge/wfds/WfdsService$WfdsStateMachine;

    # invokes: Lcom/lge/wfds/WfdsService$WfdsStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v7}, Lcom/lge/wfds/WfdsService$WfdsStateMachine;->access$2(Lcom/lge/wfds/WfdsService$WfdsStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_2c

    .line 535
    nop

    :sswitch_data_1e6
    .sparse-switch
        0x900001 -> :sswitch_c5
        0x900002 -> :sswitch_d3
        0x900004 -> :sswitch_cc
        0x900005 -> :sswitch_da
        0x90000e -> :sswitch_eb
        0x90000f -> :sswitch_e4
        0x900039 -> :sswitch_19b
        0x90005b -> :sswitch_f2
        0x90005c -> :sswitch_11a
        0x90005d -> :sswitch_12e
        0x90005e -> :sswitch_15e
        0x901001 -> :sswitch_2d
        0x901002 -> :sswitch_2d
        0x901003 -> :sswitch_35
        0x901004 -> :sswitch_62
        0x902002 -> :sswitch_8c
    .end sparse-switch
.end method
