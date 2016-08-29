.class Lcom/lge/mirrorlink/rtp/TmRTPServer$1;
.super Ljava/lang/Object;
.source "TmRTPServer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 637
    iput-object p1, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-set0(Lcom/lge/mirrorlink/rtp/TmRTPServer;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 641
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get3(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 642
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get3(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;->onServiceConnected()V

    .line 639
    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-set0(Lcom/lge/mirrorlink/rtp/TmRTPServer;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 648
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get3(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 649
    iget-object v0, p0, Lcom/lge/mirrorlink/rtp/TmRTPServer$1;->this$0:Lcom/lge/mirrorlink/rtp/TmRTPServer;

    invoke-static {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->-get3(Lcom/lge/mirrorlink/rtp/TmRTPServer;)Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/mirrorlink/rtp/TmRTPServer$ServiceListener;->onServiceDisconnected()V

    .line 646
    :cond_17
    return-void
.end method
