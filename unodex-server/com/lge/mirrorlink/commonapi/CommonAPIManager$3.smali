.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;
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
    .line 468
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 471
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_dc

    .line 470
    :goto_5
    return-void

    .line 473
    :pswitch_6
    iget-object v6, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v6}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get10(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 474
    .local v4, "n":I
    const-string/jumbo v6, "MirrorLink_commonAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "beginBroadcast:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 476
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    if-ge v3, v4, :cond_61

    .line 478
    :try_start_35
    iget-object v6, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v6}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get10(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/mirrorlink/android/commonapi/IDisplayListener;

    invoke-interface {v6, v0}, Lcom/mirrorlink/android/commonapi/IDisplayListener;->onDisplayConfigurationChanged(Landroid/os/Bundle;)V

    .line 479
    const-string/jumbo v6, "MirrorLink_commonAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BroadcastItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_5e} :catch_da

    .line 476
    :goto_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 484
    :cond_61
    iget-object v6, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v6}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get10(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_5

    .line 487
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :pswitch_6b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 488
    .local v1, "bundle_data":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v6}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get10(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 489
    .local v5, "n1":I
    const-string/jumbo v6, "MirrorLink_commonAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "beginBroadcast(pixelFormat):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " pixelFormat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_9f
    if-ge v3, v5, :cond_cd

    .line 492
    :try_start_a1
    iget-object v6, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v6}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get10(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/mirrorlink/android/commonapi/IDisplayListener;

    invoke-interface {v6, v1}, Lcom/mirrorlink/android/commonapi/IDisplayListener;->onPixelFormatChanged(Landroid/os/Bundle;)V

    .line 493
    const-string/jumbo v6, "MirrorLink_commonAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BroadcastItem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_ca} :catch_d8

    .line 490
    :goto_ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 498
    :cond_cd
    iget-object v6, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$3;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v6}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get10(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_5

    .line 494
    :catch_d8
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_ca

    .line 480
    .end local v1    # "bundle_data":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "n1":I
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "n":I
    :catch_da
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_5e

    .line 471
    :pswitch_data_dc
    .packed-switch 0xb
        :pswitch_6b
        :pswitch_6
    .end packed-switch
.end method
