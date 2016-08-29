.class Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$1;
.super Landroid/os/Handler;
.source "TmApplicationServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$1;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 131
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1a

    .line 130
    :goto_5
    return-void

    .line 133
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, "appStatusUpdated":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$1;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-virtual {v2, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setAppStatusUpdate(Ljava/lang/String;)V

    goto :goto_5

    .line 137
    .end local v1    # "appStatusUpdated":Ljava/lang/String;
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "appListUpdated":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$1;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-virtual {v2, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setAppListUpdate(Ljava/lang/String;)V

    goto :goto_5

    .line 131
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method
