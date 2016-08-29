.class Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;
.super Landroid/os/Handler;
.source "UpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/UpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/UpnpService;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/upnp/UpnpService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/UpnpService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;->this$0:Lcom/lge/mirrorlink/upnp/UpnpService;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    .line 110
    :cond_5
    :goto_5
    return-void

    .line 113
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 114
    .local v0, "count":I
    if-lez v0, :cond_5

    .line 115
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;->this$0:Lcom/lge/mirrorlink/upnp/UpnpService;

    monitor-enter v2

    .line 116
    :try_start_d
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;->this$0:Lcom/lge/mirrorlink/upnp/UpnpService;

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/lge/mirrorlink/upnp/UpnpService;->-wrap0(Lcom/lge/mirrorlink/upnp/UpnpService;IZ)Z
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    monitor-exit v2

    goto :goto_5

    .line 115
    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1

    .line 111
    :pswitch_data_1a
    .packed-switch 0xc
        :pswitch_6
    .end packed-switch
.end method
