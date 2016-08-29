.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;
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
    .line 615
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 618
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_186

    .line 617
    :cond_5
    :goto_5
    return-void

    .line 620
    :pswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 621
    .local v4, "isMirrorLinkSessionChanged":Z
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 622
    .local v5, "n":I
    const-string/jumbo v9, "MirrorLink_commonAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "beginBroadcast(session_changed):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " SessionChanged:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    if-ge v3, v5, :cond_70

    .line 625
    :try_start_44
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/mirrorlink/android/commonapi/IConnectionListener;

    invoke-interface {v9, v4}, Lcom/mirrorlink/android/commonapi/IConnectionListener;->onMirrorLinkSessionChanged(Z)V

    .line 626
    const-string/jumbo v9, "MirrorLink_commonAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BroadcastItem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6d} :catch_183

    .line 623
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 631
    :cond_70
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_5

    .line 634
    .end local v3    # "i":I
    .end local v4    # "isMirrorLinkSessionChanged":Z
    .end local v5    # "n":I
    :pswitch_7a
    const/4 v0, 0x0

    .line 635
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;

    .line 636
    .local v1, "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;
    if-eqz v1, :cond_5

    .line 637
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "MEDIA_AUDIO_OUT"

    iget v10, v1, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->audio_out:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string/jumbo v9, "MEDIA_AUDIO_IN"

    iget v10, v1, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->audio_in:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    const-string/jumbo v9, "VOICE_CONTROL"

    iget v10, v1, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->voice_control:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    const-string/jumbo v9, "PHONE_AUDIO"

    iget v10, v1, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->phone_audio:I

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const-string/jumbo v9, "PAYLOAD_TYPES"

    iget-object v10, v1, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    .line 644
    .local v6, "n1":I
    const-string/jumbo v9, "MirrorLink_commonAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "beginBroadcast:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d7
    if-ge v3, v6, :cond_105

    .line 648
    :try_start_d9
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/mirrorlink/android/commonapi/IConnectionListener;

    invoke-interface {v9, v0}, Lcom/mirrorlink/android/commonapi/IConnectionListener;->onAudioConnectionsChanged(Landroid/os/Bundle;)V

    .line 649
    const-string/jumbo v9, "MirrorLink_commonAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BroadcastItem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_102} :catch_181

    .line 646
    :goto_102
    add-int/lit8 v3, v3, 0x1

    goto :goto_d7

    .line 654
    :cond_105
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 658
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;
    .end local v3    # "i":I
    .end local v6    # "n1":I
    :pswitch_110
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 659
    .local v8, "remoteDisplayConnection":I
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    .line 660
    .local v7, "n2":I
    const-string/jumbo v9, "MirrorLink_commonAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "beginBroadcast(remotedisplay):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " RemoteDisplayChanged:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_146
    if-ge v3, v7, :cond_174

    .line 663
    :try_start_148
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Lcom/mirrorlink/android/commonapi/IConnectionListener;

    invoke-interface {v9, v8}, Lcom/mirrorlink/android/commonapi/IConnectionListener;->onRemoteDisplayConnectionChanged(I)V

    .line 664
    const-string/jumbo v9, "MirrorLink_commonAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BroadcastItem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_171
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_171} :catch_17f

    .line 661
    :goto_171
    add-int/lit8 v3, v3, 0x1

    goto :goto_146

    .line 669
    :cond_174
    iget-object v9, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$5;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v9}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get2(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 665
    :catch_17f
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_171

    .line 650
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "n2":I
    .end local v8    # "remoteDisplayConnection":I
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;
    .restart local v6    # "n1":I
    :catch_181
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_102

    .line 627
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$AudioConnectionInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "n1":I
    .restart local v4    # "isMirrorLinkSessionChanged":Z
    .restart local v5    # "n":I
    :catch_183
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_6d

    .line 618
    :pswitch_data_186
    .packed-switch 0x1f
        :pswitch_6
        :pswitch_7a
        :pswitch_110
    .end packed-switch
.end method
