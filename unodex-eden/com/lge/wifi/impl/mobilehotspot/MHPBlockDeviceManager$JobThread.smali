.class Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;
.super Ljava/lang/Thread;
.source "MHPBlockDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobThread"
.end annotation


# static fields
.field static final TIMETOKILL:J = 0x493e0L


# instance fields
.field assignedMAC:Ljava/lang/String;

.field currentTime:J

.field dueDayToKill:J

.field final synthetic this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;Ljava/lang/String;)V
    .registers 3
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method getMacAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->dueDayToKill:J

    .line 59
    const-string v1, "MHPBlockDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Current filter mode (0:OFF, 1: DENY, 2:ALLOW),"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMacFilterMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMacFilterMode()I

    move-result v1

    sget v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_ALLOW:I

    if-ne v1, v2, :cond_fc

    .line 63
    const-string v1, "MHPBlockDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Get out allowed list during 5 minutes "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->removeAllowedDevice(Ljava/lang/String;)Z

    .line 67
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    sget v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_ALLOW:I

    invoke-virtual {v1, v8, v8, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 76
    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->deAuthMac(Ljava/lang/String;)Z

    .line 81
    :cond_6e
    const-wide/16 v2, 0x3e8

    :try_start_70
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_13a

    .line 86
    :goto_73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->currentTime:J

    .line 87
    const-string v1, "MHPBlockDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Block countdown "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->dueDayToKill:J

    iget-wide v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->currentTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-wide v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->currentTime:J

    iget-wide v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->dueDayToKill:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_a6

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->isMHPEnabled()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 91
    :cond_a6
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMacFilterMode()I

    move-result v1

    sget v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_ALLOW:I

    if-ne v1, v2, :cond_147

    .line 93
    const-string v1, "MHPBlockDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Wellcom to comeback allowed list "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    sget v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_ALLOW:I

    invoke-virtual {v1, v2, v8, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 104
    :cond_d7
    :goto_d7
    const-string v1, "MHPBlockDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Thread die("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 69
    :cond_fc
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMacFilterMode()I

    move-result v1

    sget v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    if-ne v1, v2, :cond_63

    .line 72
    const-string v1, "MHPBlockDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Get in denied list during 5 minutes "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->insertDeniedList(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    sget v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    invoke-virtual {v1, v2, v8, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_63

    .line 82
    :catch_13a
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MHPBlockDeviceManager"

    const-string v2, "[MHP_GOOKY] Wake up!! so tired!!"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_73

    .line 96
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_147
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->getMacFilterMode()I

    move-result v1

    sget v2, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    if-ne v1, v2, :cond_d7

    .line 98
    const-string v1, "MHPBlockDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Wellcom to escape denied list "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->removeDeniedList(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->this$0:Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;

    # getter for: Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->mProxy:Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;
    invoke-static {v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;->access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPBlockDeviceManager$JobThread;->assignedMAC:Ljava/lang/String;

    sget v3, Lcom/lge/wifi/impl/mobilehotspot/MHPCommand;->BCMP2P_MAC_FILTER_DENY:I

    invoke-virtual {v1, v2, v8, v3}, Lcom/lge/wifi/impl/mobilehotspot/MHPProxy;->addMacFilter(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_d7
.end method
