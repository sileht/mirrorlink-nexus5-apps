.class Lcom/lge/mirrorlink/rtp/TmRTPServer$3;
.super Landroid/content/BroadcastReceiver;
.source "TmRTPServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/rtp/TmRTPServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/rtp/TmRTPServer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/rtp/TmRTPServer;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$3;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 680
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 681
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 683
    :cond_16
    const-string/jumbo v0, "MirrorLink_RTP"

    const-string/jumbo v1, "BT ACL state change"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$3;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get2(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 685
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$3;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getAudioConnectionInfo()Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;

    move-result-object v7

    .line 686
    .local v7, "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$3;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get2(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    iget v1, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    iget v2, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_in:I

    iget v3, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    iget v4, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    iget-object v5, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onAudioConnectionsChanged(IIIILjava/lang/String;)V

    .line 687
    const-string/jumbo v0, "MirrorLink_RTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio connection audio_out:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " voice_control:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " phone_audio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .end local v7    # "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    :cond_76
    return-void
.end method
