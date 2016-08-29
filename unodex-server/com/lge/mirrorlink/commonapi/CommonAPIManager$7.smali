.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;
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
    .line 739
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 742
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_164

    .line 741
    :goto_5
    return-void

    .line 744
    :pswitch_6
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get12(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    .line 745
    .local v7, "n":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;

    .line 746
    .local v2, "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 747
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "KEYBOARD_LANGUAGE"

    iget-short v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->kbdLanguage:S

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 748
    const-string/jumbo v10, "KEYBOARD_COUNTRY"

    iget-short v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->kbdCountry:S

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 749
    const-string/jumbo v10, "UI_LANGUAGE"

    iget-short v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->uiLanguage:S

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 750
    const-string/jumbo v10, "UI_COUNTRY"

    iget-short v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->uiCountry:S

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 751
    const-string/jumbo v10, "KNOB_KEY_SUPPORT"

    iget v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->knobkey:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    const-string/jumbo v10, "DEVICE_KEY_SUPPORT"

    iget v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->devicekey:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    const-string/jumbo v10, "MULTIMEDIA_KEY_SUPPORT"

    iget v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->multimediakey:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    const-string/jumbo v10, "FUNC_KEY_SUPPORT"

    iget-byte v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->funckey:B

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 755
    const-string/jumbo v10, "ITU_KEY_SUPPORT"

    iget-boolean v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->itukey:Z

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 756
    const-string/jumbo v10, "TOUCH_SUPPORT"

    iget-byte v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->touch:B

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 757
    const-string/jumbo v10, "PRESSURE_MASK"

    iget-byte v11, v2, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;->pressure:B

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_99
    if-ge v4, v7, :cond_c7

    .line 761
    :try_start_9b
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get12(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    invoke-interface {v10, v0}, Lcom/mirrorlink/android/commonapi/IEventMappingListener;->onEventConfigurationChanged(Landroid/os/Bundle;)V

    .line 762
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
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_c4} :catch_161

    .line 759
    :goto_c4
    add-int/lit8 v4, v4, 0x1

    goto :goto_99

    .line 767
    :cond_c7
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get12(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 770
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;
    .end local v4    # "i":I
    .end local v7    # "n":I
    :pswitch_d2
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get12(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 771
    .local v8, "n2":I
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 772
    .local v6, "local":I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 773
    .local v9, "remote":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 774
    .local v1, "bundle_mapping":Landroid/os/Bundle;
    const-string/jumbo v10, "REMOTE_EVENT"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 775
    const-string/jumbo v10, "LOCAL_EVENT"

    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "listener num:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " remote:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " local:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v5, 0x0

    .local v5, "i2":I
    :goto_126
    if-ge v5, v8, :cond_154

    .line 779
    :try_start_128
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get12(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v10

    check-cast v10, Lcom/mirrorlink/android/commonapi/IEventMappingListener;

    invoke-interface {v10, v1}, Lcom/mirrorlink/android/commonapi/IEventMappingListener;->onEventMappingChanged(Landroid/os/Bundle;)V

    .line 780
    const-string/jumbo v10, "MirrorLink_commonAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "BroadcastItem: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_151
    .catch Landroid/os/RemoteException; {:try_start_128 .. :try_end_151} :catch_15f

    .line 777
    :goto_151
    add-int/lit8 v5, v5, 0x1

    goto :goto_126

    .line 785
    :cond_154
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$7;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get12(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 781
    :catch_15f
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_151

    .line 763
    .end local v1    # "bundle_mapping":Landroid/os/Bundle;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "i2":I
    .end local v6    # "local":I
    .end local v8    # "n2":I
    .end local v9    # "remote":I
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "data":Lcom/lge/mirrorlink/commonapi/CommonAPIManager$EventConfiguration;
    .restart local v4    # "i":I
    .restart local v7    # "n":I
    :catch_161
    move-exception v3

    .restart local v3    # "e":Landroid/os/RemoteException;
    goto/16 :goto_c4

    .line 742
    :pswitch_data_164
    .packed-switch 0x3d
        :pswitch_6
        :pswitch_d2
    .end packed-switch
.end method
