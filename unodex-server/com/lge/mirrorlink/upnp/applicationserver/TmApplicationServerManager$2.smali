.class Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$2;
.super Ljava/lang/Object;
.source "TmApplicationServerManager.java"

# interfaces
.implements Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;


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
    .line 161
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "changedAppList"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$2;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->-get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method

.method public onAppListLoadCompleted()V
    .registers 1

    .prologue
    .line 163
    return-void
.end method
