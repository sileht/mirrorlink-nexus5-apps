.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;
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
    .line 416
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 419
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_70

    .line 418
    :cond_5
    :goto_5
    return-void

    .line 421
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 422
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    .line 423
    iget-object v4, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v4}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get6(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 424
    .local v3, "n":I
    const-string/jumbo v4, "MirrorLink_commonAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "beginBroadcast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v3, :cond_63

    .line 427
    :try_start_37
    iget-object v4, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v4}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get6(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;

    invoke-interface {v4, v0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoListener;->onDeviceInfoChanged(Landroid/os/Bundle;)V

    .line 428
    const-string/jumbo v4, "MirrorLink_commonAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BroadcastItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_60} :catch_6d

    .line 425
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 433
    :cond_63
    iget-object v4, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$2;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v4}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get6(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_5

    .line 429
    :catch_6d
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_60

    .line 419
    nop

    :pswitch_data_70
    .packed-switch 0x29
        :pswitch_6
    .end packed-switch
.end method
