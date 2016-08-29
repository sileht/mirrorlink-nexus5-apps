.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TmAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkStatusChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isNetworkAvailable()Z

    move-result v0

    .line 414
    .local v0, "networkAvailable":Z
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Z

    move-result v1

    if-ne v0, v1, :cond_f

    .line 415
    return-void

    .line 418
    :cond_f
    if-eqz v0, :cond_19

    .line 419
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkStatusListener:Lcom/lge/mirrorlink/certificate/NetworkStatusListener;

    invoke-interface {v1}, Lcom/lge/mirrorlink/certificate/NetworkStatusListener;->onNetworkStatusAvailable()V

    .line 412
    :goto_18
    return-void

    .line 421
    :cond_19
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkStatusListener:Lcom/lge/mirrorlink/certificate/NetworkStatusListener;

    invoke-interface {v1}, Lcom/lge/mirrorlink/certificate/NetworkStatusListener;->onNetworkStatusUnavailable()V

    goto :goto_18
.end method
