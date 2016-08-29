.class Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;
.super Ljava/lang/Object;
.source "MirrorLinkSettingsFragment.java"

# interfaces
.implements Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "changedAppList"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 189
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 187
    return-void
.end method

.method public onAppListLoadCompleted()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 182
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v0}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$2;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 180
    return-void
.end method
