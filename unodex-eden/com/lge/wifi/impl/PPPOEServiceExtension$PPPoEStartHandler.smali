.class Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;
.super Landroid/os/Handler;
.source "PPPOEServiceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/PPPOEServiceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPPoEStartHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    .line 183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 204
    :goto_5
    :pswitch_5
    return-void

    .line 190
    :pswitch_6
    iget-object v1, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/PPPOEConfig;

    # invokes: Lcom/lge/wifi/impl/PPPOEServiceExtension;->startPPPOEHandle(Landroid/net/wifi/PPPOEConfig;)V
    invoke-static {v1, v0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$6(Lcom/lge/wifi/impl/PPPOEServiceExtension;Landroid/net/wifi/PPPOEConfig;)V

    goto :goto_5

    .line 194
    :pswitch_10
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # invokes: Lcom/lge/wifi/impl/PPPOEServiceExtension;->monitorPPPOEHandle()V
    invoke-static {v0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$7(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V

    goto :goto_5

    .line 198
    :pswitch_16
    iget-object v0, p0, Lcom/lge/wifi/impl/PPPOEServiceExtension$PPPoEStartHandler;->this$0:Lcom/lge/wifi/impl/PPPOEServiceExtension;

    # invokes: Lcom/lge/wifi/impl/PPPOEServiceExtension;->sendPPPOELinkConfigurationBroadcast()V
    invoke-static {v0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;->access$8(Lcom/lge/wifi/impl/PPPOEServiceExtension;)V

    goto :goto_5

    .line 188
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method
