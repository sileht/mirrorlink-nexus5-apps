.class Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager$1;
.super Landroid/os/Handler;
.source "TmClientProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager$1;->this$0:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_14

    .line 98
    :goto_5
    return-void

    .line 101
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, "unusedProfiles":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 103
    .local v0, "manager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager$1;->this$0:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    invoke-virtual {v2, v1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->setUnusedProfileIDs(Ljava/lang/String;)V

    goto :goto_5

    .line 99
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
