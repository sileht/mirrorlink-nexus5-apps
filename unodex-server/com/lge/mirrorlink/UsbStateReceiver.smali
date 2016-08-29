.class public Lcom/lge/mirrorlink/UsbStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbStateReceiver.java"


# static fields
.field private static final NCM_CONFIGURING_TIME:I = 0xbb8

.field private static final NCM_STARTUP_WAITING_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MirrorLink_UsbStateReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x3ed

    const/16 v10, 0x3e9

    const/4 v9, 0x0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/mirrorlink/MirrorLinkHandler;->getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/MirrorLinkHandler;

    move-result-object v1

    .line 29
    .local v1, "mirrorLinkHandler":Lcom/lge/mirrorlink/MirrorLinkHandler;
    new-instance v2, Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-direct {v2, p1}, Lcom/lge/mirrorlink/MirrorLinkPreference;-><init>(Landroid/content/Context;)V

    .line 31
    .local v2, "mirrorLinkPreference":Lcom/lge/mirrorlink/MirrorLinkPreference;
    const-string/jumbo v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 32
    const-string/jumbo v8, "connected"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 33
    .local v6, "usbConnected":Z
    const-string/jumbo v8, "configured"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 34
    .local v5, "usbConfigured":Z
    const-string/jumbo v8, "ncm"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 35
    .local v3, "ncmEnabled":Z
    const-string/jumbo v8, "usb"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbManager;

    .line 38
    .local v7, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v2, v6}, Lcom/lge/mirrorlink/MirrorLinkPreference;->setUsbPref(Z)V

    .line 39
    if-nez v6, :cond_5b

    .line 40
    invoke-virtual {v2}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getSwitchPref()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 41
    invoke-static {v1, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/mirrorlink/MirrorLinkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    :cond_4f
    :goto_4f
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.lge.mirrorlink.action.updateswitch"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "switchIntent":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 26
    .end local v3    # "ncmEnabled":Z
    .end local v4    # "switchIntent":Landroid/content/Intent;
    .end local v5    # "usbConfigured":Z
    .end local v6    # "usbConnected":Z
    .end local v7    # "usbManager":Landroid/hardware/usb/UsbManager;
    :cond_5a
    return-void

    .line 43
    .restart local v3    # "ncmEnabled":Z
    .restart local v5    # "usbConfigured":Z
    .restart local v6    # "usbConnected":Z
    .restart local v7    # "usbManager":Landroid/hardware/usb/UsbManager;
    :cond_5b
    if-eqz v6, :cond_5f

    if-eqz v5, :cond_7a

    .line 47
    :cond_5f
    if-eqz v6, :cond_89

    if-eqz v5, :cond_89

    if-eqz v3, :cond_89

    .line 48
    invoke-virtual {v2}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getSwitchPref()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 50
    invoke-virtual {v1, v10}, Lcom/lge/mirrorlink/MirrorLinkHandler;->removeMessages(I)V

    .line 53
    const/16 v8, 0x3ea

    invoke-static {v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x1f4

    invoke-virtual {v1, v8, v10, v11}, Lcom/lge/mirrorlink/MirrorLinkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4f

    .line 43
    :cond_7a
    if-eqz v3, :cond_5f

    .line 45
    invoke-virtual {v1, v10}, Lcom/lge/mirrorlink/MirrorLinkHandler;->removeMessages(I)V

    .line 46
    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0xbb8

    invoke-virtual {v1, v8, v10, v11}, Lcom/lge/mirrorlink/MirrorLinkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4f

    .line 55
    :cond_89
    if-eqz v6, :cond_4f

    if-nez v3, :cond_4f

    .line 56
    invoke-virtual {v2}, Lcom/lge/mirrorlink/MirrorLinkPreference;->getSwitchPref()Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 57
    invoke-static {v1, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/lge/mirrorlink/MirrorLinkHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4f
.end method
