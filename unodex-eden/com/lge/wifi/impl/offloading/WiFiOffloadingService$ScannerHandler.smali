.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
.super Landroid/os/Handler;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScannerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .registers 2

    .prologue
    .line 811
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;)V
    .registers 3

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 829
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 838
    const-string v0, "WiFiOffloadingService"

    const-string v1, "remove remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$7(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->removeMessages(I)V

    .line 842
    :goto_16
    return-void

    .line 831
    :pswitch_17
    const-string v0, "WiFiOffloadingService"

    const-string v1, "EVT_CHECK_SCANN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v0, "WiFiOffloadingService"

    const-string v1, " mWifiManager.startScanActive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$3(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 835
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$7(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    move-result-object v0

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v4, v2, v3}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_16

    .line 829
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method pause()V
    .registers 3

    .prologue
    .line 822
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[NEZZIMOM],scan pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$7(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->removeMessages(I)V

    .line 825
    return-void
.end method

.method resume()V
    .registers 3

    .prologue
    .line 816
    const-string v0, "WiFiOffloadingService"

    const-string v1, "[NEZZIMOM], scan resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    # getter for: Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->hScanner:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;
    invoke-static {v0}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$7(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;->sendEmptyMessage(I)Z

    .line 818
    return-void
.end method
