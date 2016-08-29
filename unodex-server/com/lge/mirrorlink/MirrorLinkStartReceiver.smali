.class public Lcom/lge/mirrorlink/MirrorLinkStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MirrorLinkStartReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLinkStartReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setupNCM(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string/jumbo v2, "usb"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 45
    .local v1, "usbManager":Landroid/hardware/usb/UsbManager;
    const-string/jumbo v2, "ncm"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v2, "MirrorLinkStartReceiver"

    const-string/jumbo v3, "send broadcast msg com.lge.mirrorlink.server.START"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.lge.mirrorlink.server.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method private startCertUpdaterApp(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.lge.mirrorlinkcertupdate"

    const-string/jumbo v3, "com.lge.mirrorlinkcertupdate.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "ncm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 36
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.lge.hardware.usb.ncm.NCM_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 20
    const-string/jumbo v2, "ncm_connected"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 22
    .local v1, "usbConnected":Z
    const-string/jumbo v2, "MirrorLinkStartReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MirrorLinkStartReceiver : ML Start. :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    if-eqz v1, :cond_40

    .line 25
    new-instance v2, Lcom/lge/mirrorlink/MirrorLinkPreference;

    invoke-direct {v2, p1}, Lcom/lge/mirrorlink/MirrorLinkPreference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/MirrorLinkPreference;->setSwitchPref(Z)V

    .line 26
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/MirrorLinkStartReceiver;->setupNCM(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/MirrorLinkStartReceiver;->startCertUpdaterApp(Landroid/content/Context;)V

    .line 16
    .end local v1    # "usbConnected":Z
    :cond_40
    return-void
.end method
