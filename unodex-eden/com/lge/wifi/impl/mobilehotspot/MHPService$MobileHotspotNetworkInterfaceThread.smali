.class Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;
.super Ljava/lang/Thread;
.source "MHPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobileHotspotNetworkInterfaceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)V
    .registers 2

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v0

    .line 428
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Stored iface iface : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-nez v0, :cond_38

    .line 432
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Not yet assign network interface (iface : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 433
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_37
    return-void

    .line 438
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_61

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_61

    .line 440
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Initial set network interface (iface : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_61
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 446
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] Change network interface (old iface : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mIFace:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$12(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new iface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_97
    const-string v1, "MobileHotspotService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHS_NEZZIMOM] p2pSetNetDynamicInterface (iface : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPService;->mMHPManager:Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->access$14(Lcom/lge/wifi/impl/mobilehotspot/MHPService;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pSetNetDynamicInterface(Ljava/lang/String;)V

    .line 455
    :try_start_ba
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMasquerade()Z

    .line 457
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPService$MobileHotspotNetworkInterfaceThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPService;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPService;->setMssChange()Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c4} :catch_c6

    goto/16 :goto_37

    :catch_c6
    move-exception v1

    goto/16 :goto_37
.end method
