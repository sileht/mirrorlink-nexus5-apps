.class Lcom/lge/mirrorlink/commonapi/DeviceStatusManager$1;
.super Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;
.source "DeviceStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isInDriveMode()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    const-string/jumbo v3, "MirrorLink_cAPI"

    const-string/jumbo v4, "[START] isInDriveMode"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v0

    .line 31
    .local v0, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-eqz v0, :cond_20

    .line 32
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v2

    .line 33
    .local v2, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-eqz v2, :cond_20

    .line 34
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v1

    .line 35
    .local v1, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-eqz v1, :cond_20

    .line 36
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getDriveMode()Z

    move-result v3

    return v3

    .line 40
    .end local v1    # "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .end local v2    # "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    :cond_20
    const/4 v3, 0x0

    return v3
.end method

.method public isInNightMode()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v0

    .line 45
    .local v0, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-eqz v0, :cond_17

    .line 46
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v2

    .line 47
    .local v2, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-eqz v2, :cond_17

    .line 48
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v1

    .line 49
    .local v1, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-eqz v1, :cond_17

    .line 50
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getNightMode()Z

    move-result v3

    return v3

    .line 54
    .end local v1    # "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .end local v2    # "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    :cond_17
    const/4 v3, 0x0

    return v3
.end method

.method public isMicrophoneOn()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v0

    .line 59
    .local v0, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-eqz v0, :cond_17

    .line 60
    invoke-virtual {v0}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v2

    .line 61
    .local v2, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-eqz v2, :cond_17

    .line 62
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v1

    .line 63
    .local v1, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-eqz v1, :cond_17

    .line 64
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->getMicInput()Z

    move-result v3

    return v3

    .line 68
    .end local v1    # "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .end local v2    # "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    :cond_17
    const/4 v3, 0x0

    return v3
.end method

.method public setMicrophoneOpen(ZZ)Z
    .registers 8
    .param p1, "micInput"    # Z
    .param p2, "voiceInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "res":Z
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v1

    .line 74
    .local v1, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-eqz v1, :cond_1e

    .line 75
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v3

    .line 76
    .local v3, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-eqz v3, :cond_1e

    .line 77
    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v2

    .line 78
    .local v2, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-eqz v2, :cond_1e

    .line 79
    invoke-virtual {v2, p1}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->updateMicInput(Z)Z

    move-result v0

    .line 80
    .local v0, "res":Z
    if-eqz v0, :cond_1d

    .line 81
    invoke-virtual {v2, p2}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->updateVoiceInput(Z)Z

    move-result v0

    .line 83
    :cond_1d
    return v0

    .line 87
    .end local v2    # "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .end local v3    # "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    .local v0, "res":Z
    :cond_1e
    const/4 v4, 0x0

    return v4
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 91
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 92
    .local v0, "sCommonAPIManager":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_f

    .line 93
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;->-get0(Lcom/lge/mirrorlink/commonapi/DeviceStatusManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->unregisterDeviceStatusManager(Ljava/lang/String;)V

    .line 90
    :cond_f
    return-void
.end method
