.class Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;
.super Ljava/lang/Object;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceListManager"
.end annotation


# instance fields
.field private final mList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    .registers 3

    .prologue
    .line 496
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)V
    .registers 1

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->clear()V

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)I
    .registers 2

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->getListItem(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 514
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->updateList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6(Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->removeAtList(Ljava/lang/String;)V

    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 541
    return-void
.end method

.method private getList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    return-object v0
.end method

.method private getListItem(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .param p1, "macAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private getSize()I
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method private putList(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 502
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] Added Deive Mac ADDR : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "000.000.000.000"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 504
    return-void
.end method

.method private putList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ipAddr"    # Ljava/lang/String;
    .param p4, "state"    # I

    .prologue
    .line 508
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-direct {v0, p1, p2, p3}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v0, "nDevice":Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 510
    .local v1, "value":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;Ljava/lang/Integer;>;"
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void
.end method

.method private removeAtList(Ljava/lang/String;)V
    .registers 3
    .param p1, "macAddr"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    return-void
.end method

.method private updateList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "oldMacAddr"    # Ljava/lang/String;
    .param p2, "newMacAddr"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "state"    # I

    .prologue
    .line 516
    const-string v0, "MobileHotspotService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MHS_NEZZIMOM] Updated Mac addr of Device from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 517
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v4, "000.000.000.000"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->updateList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 519
    return-void
.end method

.method private updateList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "oldMacAddr"    # Ljava/lang/String;
    .param p2, "newMacAddr"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newIpAddr"    # Ljava/lang/String;
    .param p5, "state"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->mList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lge/wifi/impl/mobilehotspot/MHPService$DeviceListManager;->putList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    return-void
.end method
