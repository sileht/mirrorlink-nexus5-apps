.class Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;
.super Ljava/lang/Thread;
.source "WiFiOffloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;


# direct methods
.method private constructor <init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;)V
    .registers 2

    .prologue
    .line 800
    iput-object p1, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 804
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 805
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$5(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Landroid/os/Looper;)V

    .line 806
    iget-object v0, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    new-instance v1, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;

    iget-object v2, p0, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$Scanner;->this$0:Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;-><init>(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;)V

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;->access$6(Lcom/lge/wifi/impl/offloading/WiFiOffloadingService;Lcom/lge/wifi/impl/offloading/WiFiOffloadingService$ScannerHandler;)V

    .line 807
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 808
    return-void
.end method
