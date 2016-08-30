.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;
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
    name = "WifiDialogRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->ABOVE_UI_42:Z
    invoke-static {}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$1()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 101
    const-string v1, "Wifi"

    const-string v2, "start wifioffloading activity above UI 4.2 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "com.lge.wifisettings"

    const-string v2, "com.lge.wifisettings.WifiOffloadingDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :goto_1e
    const-string v1, "only_access_points"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v1, "wifi_status"

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-virtual {v2}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->getisWifiOn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    const-string v1, "Wifi"

    const-string v2, "start wifioffloading activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDialogRunnable;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$2(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 104
    :cond_45
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiOffloadingDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1e
.end method
