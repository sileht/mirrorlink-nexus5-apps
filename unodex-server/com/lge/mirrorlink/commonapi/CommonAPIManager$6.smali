.class Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;
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
    .line 682
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 685
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_70

    .line 684
    :goto_5
    return-void

    .line 687
    :pswitch_6
    iget-object v3, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get0(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 688
    .local v2, "n":I
    const-string/jumbo v3, "MirrorLink_commonAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginBroadcast(cert_status_changed):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Cert_Status_Changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    if-ge v1, v2, :cond_64

    .line 691
    :try_start_38
    iget-object v3, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get0(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/mirrorlink/android/commonapi/ICertificationListener;

    invoke-interface {v3}, Lcom/mirrorlink/android/commonapi/ICertificationListener;->onCertificationStatusChanged()V

    .line 692
    const-string/jumbo v3, "MirrorLink_commonAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BroadcastItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_61} :catch_6e

    .line 689
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 697
    :cond_64
    iget-object v3, p0, Lcom/lge/mirrorlink/commonapi/CommonAPIManager$6;->this$0:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->-get0(Lcom/lge/mirrorlink/commonapi/CommonAPIManager;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_5

    .line 693
    :catch_6e
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_61

    .line 685
    :pswitch_data_70
    .packed-switch 0x33
        :pswitch_6
    .end packed-switch
.end method
