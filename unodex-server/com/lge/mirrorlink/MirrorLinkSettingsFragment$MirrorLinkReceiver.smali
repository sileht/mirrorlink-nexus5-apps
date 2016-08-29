.class Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLinkSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MirrorLinkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x64

    const/4 v3, 0x2

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.lge.mirrorlink.action.started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 164
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v2}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    :cond_2c
    :goto_2c
    return-void

    .line 166
    :cond_2d
    const-string/jumbo v1, "com.lge.mirrorlink.action.stopped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 167
    const-string/jumbo v1, "com.lge.mirrorlink.action.destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 168
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v2}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-get0(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2c

    .line 170
    :cond_5c
    const-string/jumbo v1, "com.lge.mirrorlink.action.updatelist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 171
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-wrap1(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    goto :goto_2c

    .line 172
    :cond_6b
    const-string/jumbo v1, "com.lge.mirrorlink.action.updateswitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 173
    iget-object v1, p0, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment$MirrorLinkReceiver;->this$0:Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;

    invoke-static {v1}, Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;->-wrap2(Lcom/lge/mirrorlink/MirrorLinkSettingsFragment;)V

    goto :goto_2c
.end method
