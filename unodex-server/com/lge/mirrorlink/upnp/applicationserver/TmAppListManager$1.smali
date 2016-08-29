.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$1;
.super Landroid/os/Handler;
.source "TmAppListManager.java"


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
    .line 178
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$1;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 180
    :goto_5
    return-void

    .line 184
    :pswitch_6
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$1;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->retrieveAppCertNotTriedApps()V

    goto :goto_5

    .line 187
    :pswitch_c
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$1;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->retrieveAppCertFailedApp(Ljava/lang/String;)V

    goto :goto_5

    .line 182
    :pswitch_data_16
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
