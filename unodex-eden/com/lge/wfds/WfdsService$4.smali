.class Lcom/lge/wfds/WfdsService$4;
.super Ljava/lang/Object;
.source "WfdsService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wfds/WfdsService;->updateP2pPeersList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wfds/WfdsService;


# direct methods
.method constructor <init>(Lcom/lge/wfds/WfdsService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wfds/WfdsService$4;->this$0:Lcom/lge/wfds/WfdsService;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 3
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lge/wfds/WfdsService$4;->this$0:Lcom/lge/wfds/WfdsService;

    # getter for: Lcom/lge/wfds/WfdsService;->mWfdsPeerList:Lcom/lge/wfds/WfdsPeerList;
    invoke-static {v0}, Lcom/lge/wfds/WfdsService;->access$8(Lcom/lge/wfds/WfdsService;)Lcom/lge/wfds/WfdsPeerList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsPeerList;->updatePeerList(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 416
    return-void
.end method
