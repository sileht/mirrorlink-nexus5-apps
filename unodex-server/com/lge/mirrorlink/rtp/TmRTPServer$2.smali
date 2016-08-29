.class Lcom/lge/mirrorlink/rtp/TmRTPServer$2;
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
    .line 654
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 658
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 661
    const-string/jumbo v2, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 662
    .local v1, "bondState":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_33

    .line 663
    iget-object v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    iget-object v3, v3, Lcom/lge/mirrorlink/rtp/TmRTPServer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-wrap0(Lcom/lge/mirrorlink/rtp/TmRTPServer;Landroid/bluetooth/BluetoothDevice;)V

    .line 664
    iget-object v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v2}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get4(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get1(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 656
    .end local v1    # "bondState":I
    :cond_32
    :goto_32
    return-void

    .line 666
    .restart local v1    # "bondState":I
    :cond_33
    const/16 v2, 0xb

    if-eq v1, v2, :cond_32

    .line 670
    iget-object v2, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v2}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get4(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$2;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get1(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_32
.end method
