.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;
.super Ljava/lang/Thread;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiDisableThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$3(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 384
    iget-object v1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$2(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$4(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/net/wifi/WifiManager;)V

    .line 393
    :cond_1b
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$WifiDisableThread;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$3(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 394
    const-string v0, "WiFiOffloadingService"

    const-string v1, "WifiDiableThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method
