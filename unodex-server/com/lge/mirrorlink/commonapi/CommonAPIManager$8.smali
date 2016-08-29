.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;
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
    .line 807
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 810
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_b0

    .line 809
    :goto_5
    return-void

    .line 812
    :pswitch_6
    iget-object v8, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 813
    .local v4, "n":I
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 814
    .local v6, "reason":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 815
    .local v0, "bundle_framebuffer_blocked":Landroid/os/Bundle;
    const-string/jumbo v8, "MirrorLink_commonAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onFramebufferBlocked:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " reason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    if-ge v2, v4, :cond_50

    .line 818
    :try_start_3e
    iget-object v8, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/mirrorlink/android/commonapi/IContextListener;

    invoke-interface {v8, v6, v0}, Lcom/mirrorlink/android/commonapi/IContextListener;->onFramebufferBlocked(ILandroid/os/Bundle;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4d} :catch_ad

    .line 816
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 823
    :cond_50
    iget-object v8, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_5

    .line 826
    .end local v0    # "bundle_framebuffer_blocked":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v4    # "n":I
    .end local v6    # "reason":I
    :pswitch_5a
    iget-object v8, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 827
    .local v5, "n2":I
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 828
    .local v7, "reason_audio":I
    const-string/jumbo v8, "MirrorLink_commonAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onAudioBlocked:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " reason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_8c
    if-ge v3, v5, :cond_a0

    .line 831
    :try_start_8e
    iget-object v8, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/mirrorlink/android/commonapi/IContextListener;

    invoke-interface {v8, v7}, Lcom/mirrorlink/android/commonapi/IContextListener;->onAudioBlocked(I)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_9d} :catch_ab

    .line 829
    :goto_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 836
    :cond_a0
    iget-object v8, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$8;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v8}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get4(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 832
    :catch_ab
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_9d

    .line 819
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i2":I
    .end local v5    # "n2":I
    .end local v7    # "reason_audio":I
    .restart local v0    # "bundle_framebuffer_blocked":Landroid/os/Bundle;
    .restart local v2    # "i":I
    .restart local v4    # "n":I
    .restart local v6    # "reason":I
    :catch_ad
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_4d

    .line 810
    nop

    :pswitch_data_b0
    .packed-switch 0x47
        :pswitch_6
        :pswitch_5a
    .end packed-switch
.end method
