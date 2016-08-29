.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;
.super Ljava/lang/Object;
.source "TmAppListManager.java"

# interfaces
.implements Lcom/lge/mirrorlink/certificate/NetworkStatusListener;


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
    .line 223
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusAvailable()V
    .registers 6

    .prologue
    const/16 v4, 0x3e9

    .line 227
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-set1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Z)Z

    .line 228
    const-wide/32 v0, 0x36ee80

    .line 230
    .local v0, "nextCheckTime":J
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isMirrorLinkSessionEstablished()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 231
    const-wide/16 v0, 0x0

    .line 234
    :cond_15
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    return-void
.end method

.method public onNetworkStatusUnavailable()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-set1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Z)Z

    .line 241
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    return-void
.end method
