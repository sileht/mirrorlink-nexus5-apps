.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;
.super Ljava/lang/Object;
.source "WiFiOffloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiAuToDialogRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;)V
    .registers 3

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->ABOVE_UI_42:Z
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$1()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 120
    const-string v1, "Wifi"

    const-string v2, "start wifioffloading auto activity above UI 4.2 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v1, "com.lge.wifisettings"

    const-string v2, "com.lge.wifisettings.WifiOffloadingAutoConnectNoti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :goto_1e
    const-string v1, "SSID"

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getAutoAP_ssid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiAuToDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$2(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void

    .line 123
    :cond_38
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiOffloadingAutoConnectNoti"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1e
.end method
