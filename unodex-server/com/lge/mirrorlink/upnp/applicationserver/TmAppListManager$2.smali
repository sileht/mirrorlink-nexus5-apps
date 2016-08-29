.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;
.super Ljava/lang/Object;
.source "TmAppListManager.java"

# interfaces
.implements Lcom/mirrorlink/android/commonapi/IConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAudioConnectionsChanged(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "audioConnections"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    return-void
.end method

.method public onMirrorLinkSessionChanged(Z)V
    .registers 6
    .param p1, "mirrolinkSessionIsEstablished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e9

    .line 210
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 211
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    :cond_2a
    return-void
.end method

.method public onRemoteDisplayConnectionChanged(I)V
    .registers 2
    .param p1, "remoteDisplayConnection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    return-void
.end method
