.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;
.super Landroid/os/Handler;
.source "CommonAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 538
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_16c

    .line 537
    :goto_5
    return-void

    .line 540
    :pswitch_6
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 541
    .local v0, "drivemode":Z
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 542
    .local v6, "n":I
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "beginBroadcast(drivemode):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " DriveMode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_42
    if-ge v2, v6, :cond_70

    .line 545
    :try_start_44
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    invoke-interface {v10, v0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;->onDriveModeChange(Z)V

    .line 546
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BroadcastItem: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6d} :catch_169

    .line 543
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 551
    :cond_70
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_5

    .line 554
    .end local v0    # "drivemode":Z
    .end local v2    # "i":I
    .end local v6    # "n":I
    :pswitch_7a
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 555
    .local v9, "nightmode":Z
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    .line 556
    .local v7, "n1":I
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "beginBroadcast(nightmode):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " NightMode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_b6
    if-ge v3, v7, :cond_e4

    .line 559
    :try_start_b8
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    invoke-interface {v10, v9}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;->onNightModeChanged(Z)V

    .line 560
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BroadcastItem: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_e1} :catch_166

    .line 557
    :goto_e1
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    .line 565
    :cond_e4
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 568
    .end local v3    # "j":I
    .end local v7    # "n1":I
    .end local v9    # "nightmode":Z
    :pswitch_ef
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 569
    .local v5, "micInput":Z
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 570
    .local v8, "n2":I
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "beginBroadcast(micInput):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " micInput:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_12b
    if-ge v4, v8, :cond_159

    .line 573
    :try_start_12d
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;

    invoke-interface {v10, v5}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener;->onMicrophoneStatusChanged(Z)V

    .line 574
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BroadcastItem: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_156} :catch_164

    .line 571
    :goto_156
    add-int/lit8 v4, v4, 0x1

    goto :goto_12b

    .line 579
    :cond_159
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$4;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get8(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 575
    :catch_164
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_156

    .line 561
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "k":I
    .end local v5    # "micInput":Z
    .end local v8    # "n2":I
    .restart local v3    # "j":I
    .restart local v7    # "n1":I
    .restart local v9    # "nightmode":Z
    :catch_166
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto/16 :goto_e1

    .line 547
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "j":I
    .end local v7    # "n1":I
    .end local v9    # "nightmode":Z
    .restart local v0    # "drivemode":Z
    .restart local v2    # "i":I
    .restart local v6    # "n":I
    :catch_169
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto/16 :goto_6d

    .line 538
    :pswitch_data_16c
    .packed-switch 0x15
        :pswitch_6
        :pswitch_7a
        :pswitch_ef
    .end packed-switch
.end method
