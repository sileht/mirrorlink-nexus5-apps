.class Lcom/lge/mirrorlink/commonapi/ConnectionManager$1;
.super Lcom/mirrorlink/android/commonapi/IConnectionManager$Stub;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/ConnectionManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/ConnectionManager;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ConnectionManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IConnectionManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioConnections()Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    const-string/jumbo v8, "MirrorLink_cAPI"

    const-string/jumbo v9, "[START] getAudioConnections"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x0

    .line 51
    .local v5, "media_audio_out":I
    const/4 v4, 0x0

    .line 52
    .local v4, "media_audio_in":I
    const/4 v7, 0x0

    .line 53
    .local v7, "voice_control":I
    const/4 v1, 0x0

    .line 54
    .local v1, "incall_audio":I
    const-string/jumbo v6, ""

    .line 55
    .local v6, "payload_types":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "bundle_audiocon":Landroid/os/Bundle;
    invoke-static {}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getRTPServer()Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v3

    .line 57
    .local v3, "mTmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    if-eqz v3, :cond_47

    .line 58
    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getAudioConnectionInfo()Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;

    move-result-object v2

    .line 59
    .local v2, "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    const-string/jumbo v8, "MEDIA_AUDIO_OUT"

    iget v9, v2, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_out:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v8, "MEDIA_AUDIO_IN"

    iget v9, v2, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->audio_in:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    const-string/jumbo v8, "VOICE_CONTROL"

    iget v9, v2, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->voice_control:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string/jumbo v8, "PHONE_AUDIO"

    iget v9, v2, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->phone_audio:I

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v8, "PAYLOAD_TYPES"

    iget-object v9, v2, Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;->payload_types:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v2    # "info":Lcom/lge/mirrorlink/rtp/TmRTPServer$AudioConnectionInfo;
    :cond_47
    return-object v0
.end method

.method public getRemoteDisplayConnections()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v2, "MirrorLink_cAPI"

    const-string/jumbo v3, "[START] getRemoteDisplayConnections"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, -0x1

    .line 79
    .local v0, "remotedisplay":I
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v1

    .line 80
    .local v1, "tmAppMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-eqz v1, :cond_14

    .line 81
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getRemoteDisplayConnectionStatus()I

    move-result v0

    .line 85
    :cond_14
    return v0
.end method

.method public isMirrorLinkSessionEstablished()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 33
    const-string/jumbo v2, "MirrorLink_cAPI"

    const-string/jumbo v3, "[START] isMirrorLinkSessionEstablished"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "num":I
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 36
    .local v0, "clientProfileMgr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v0, :cond_1b

    .line 37
    const-string/jumbo v2, "MirrorLink_cAPI"

    const-string/jumbo v3, "[onGetApplicationList] Unexpected Error - TmClientProfileManager not found"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return v4

    .line 41
    :cond_1b
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getprofileListInUse()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_49

    .line 42
    const-string/jumbo v2, "MirrorLink_cAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profileListsize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getprofileListInUse()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    return v2

    .line 45
    :cond_49
    return v4
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 89
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 90
    .local v0, "sCommonAPIManager":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_f

    .line 91
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/ConnectionManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/ConnectionManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/ConnectionManager;->-get0(Lcom/lge/mirrorlink/commonapi/ConnectionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->unregisterConnectionManager(Ljava/lang/String;)V

    .line 88
    :cond_f
    return-void
.end method
