.class Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DockWindowEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService;)V
    .registers 2

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setActionAccessoryEvent(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1857
    const-string v1, "com.lge.intent.extra.ACCESSORY_COVER_STATE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1858
    .local v0, "state":I
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    if-nez v0, :cond_35

    .line 1860
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_ACCESSORY_STATE_FRONT_OPENED"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v2, "com.lge.coverapp"

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$3(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    .line 1862
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v4, v1, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    .line 1869
    :cond_34
    :goto_34
    return-void

    .line 1864
    :cond_35
    if-eq v0, v5, :cond_3a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 1865
    :cond_3a
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_ACCESSORY_STATE_FRONT_CLOSED || EXTRA_ACCESSORY_STATE_FRONT_HALFOPEN "

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v2, "com.lge.coverapp"

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$13(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    .line 1867
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v5, v1, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    goto :goto_34
.end method

.method private setActionPhoneStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1809
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1810
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 1811
    .local v1, "isKeyguardOn":Z
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check low profile condition: isKeyguardOn = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    if-eqz v1, :cond_4d

    .line 1813
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "on enterLowProfile with INCOMING_FULLSCREEN by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$13(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    .line 1854
    .end local v1    # "isKeyguardOn":Z
    :cond_4d
    :goto_4d
    return-void

    .line 1817
    :cond_4e
    const-string p2, "phone"

    .line 1818
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1819
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_4d

    .line 1820
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 1821
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 1822
    .restart local v1    # "isKeyguardOn":Z
    const/4 v2, 0x1

    .line 1823
    .local v2, "isKeyguardSecure":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-le v4, v5, :cond_99

    .line 1825
    :try_start_75
    # getter for: Lcom/lge/dockservice/DockWindowService;->sIsKeyguardSecure:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$14()Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v6, "keyguard"

    invoke-virtual {v4, v6}, Lcom/lge/dockservice/DockWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1826
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "success to invoke isKeyguardSecure"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_99} :catch_da

    .line 1832
    :cond_99
    :goto_99
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "check low profile condition: isKeyguardOn = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isKeyguardSecure = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    if-eqz v1, :cond_100

    .line 1834
    if-eqz v2, :cond_f0

    .line 1835
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "on enterLowProfile with phone state OFFHOOK by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$13(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 1827
    :catch_da
    move-exception v0

    .line 1828
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fail to invoke isKeyguardSecure"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 1839
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f0
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit low profile on STATE_OFFHOOK with non-secure keyquard"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$3(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 1844
    :cond_100
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit low profile on STATE_OFFHOOK with no keyquard"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$3(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 1848
    .end local v1    # "isKeyguardOn":Z
    .end local v2    # "isKeyguardSecure":Z
    :cond_110
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1849
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "on exitLowProfile with phone state IDLE by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/lge/dockservice/DockWindowService;->access$3(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_4d
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1730
    monitor-enter p0

    .line 1731
    :try_start_1
    const-string v4, "package"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1732
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_e

    .line 1733
    const-string v4, "com.lge.intent.extra.package"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1735
    :cond_e
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Intent Action : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    if-nez v4, :cond_49

    .line 1738
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "no dock view to handle received intent"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    monitor-exit p0

    .line 1806
    :goto_48
    return-void

    .line 1742
    :cond_49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 1743
    const-string v4, "window-remove"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1744
    .local v2, "removedWindow":Ljava/lang/String;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removed Window  : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    if-nez v2, :cond_96

    .line 1746
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8c

    .line 1730
    .end local v2    # "removedWindow":Ljava/lang/String;
    :cond_87
    :goto_87
    monitor-exit p0

    goto :goto_48

    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_89
    move-exception v4

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_89

    throw v4

    .line 1746
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "removedWindow":Ljava/lang/String;
    :cond_8c
    :try_start_8c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 1747
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->moveToTop()V

    goto :goto_81

    .line 1750
    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_96
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "terminate Dock - cause of floating window removed"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$2(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 1753
    .local v3, "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    if-eqz v3, :cond_d0

    .line 1754
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "kill dockview for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {v3}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    .line 1757
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V
    invoke-static {v4, v3}, Lcom/lge/dockservice/DockWindowService;->access$4(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V

    goto :goto_87

    .line 1760
    :cond_d0
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can\'t find dockview for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 1764
    .end local v2    # "removedWindow":Ljava/lang/String;
    .end local v3    # "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    :cond_e7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_ENTER_LOWPROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_124

    .line 1765
    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_107

    .line 1766
    :cond_fb
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "low profile intent with NULL package name is ignored"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    monitor-exit p0

    goto/16 :goto_48

    .line 1769
    :cond_107
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "on enterLowProfile by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/lge/dockservice/DockWindowService;->access$13(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 1772
    :cond_124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.intent.action.FLOATING_WINDOW_EXIT_LOWPROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_161

    .line 1773
    if-eqz v1, :cond_138

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_144

    .line 1774
    :cond_138
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "low profile intent with NULL package name is ignored"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    monitor-exit p0

    goto/16 :goto_48

    .line 1777
    :cond_144
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "on exitLowProfile by "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/lge/dockservice/DockWindowService;->access$3(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 1780
    :cond_161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.lockscreen.intent.action.START_KIDSHOME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_178

    .line 1781
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock ENTER_GUEST_MODE"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 1783
    :cond_178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.lockscreen.intent.action.END_KIDSHOME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 1784
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock EXIT_GUEST_MODE"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 1786
    :cond_18f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.lockscreen.intent.action.LOCKSCREEN_CREATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b2

    .line 1787
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock LockScreen"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/dockservice/DockWindowService;->mIsLockScreen:Z

    .line 1789
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v5, "LOCKSCREEN"

    # invokes: Lcom/lge/dockservice/DockWindowService;->enterLowProfile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lge/dockservice/DockWindowService;->access$13(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 1791
    :cond_1b2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.lockscreen.intent.action.START_STANDARD_HOME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e1

    .line 1792
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock StandardHome"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    iget-boolean v4, v4, Lcom/lge/dockservice/DockWindowService;->mIsLockScreen:Z

    if-eqz v4, :cond_87

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    iget-boolean v4, v4, Lcom/lge/dockservice/DockWindowService;->mIsQuickCoverClosed:Z

    if-nez v4, :cond_87

    .line 1794
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/lge/dockservice/DockWindowService;->mIsLockScreen:Z

    .line 1795
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->this$0:Lcom/lge/dockservice/DockWindowService;

    const-string v5, "LOCKSCREEN"

    # invokes: Lcom/lge/dockservice/DockWindowService;->exitLowProfile(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lge/dockservice/DockWindowService;->access$3(Lcom/lge/dockservice/DockWindowService;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 1798
    :cond_1e1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    .line 1799
    invoke-direct {p0, p2}, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->setActionAccessoryEvent(Landroid/content/Intent;)V

    goto/16 :goto_87

    .line 1801
    :cond_1f2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.lge.action.INCOMING_FULLSCREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20a

    .line 1802
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 1803
    :cond_20a
    invoke-direct {p0, p2, v1}, Lcom/lge/dockservice/DockWindowService$DockWindowEventReceiver;->setActionPhoneStateChanged(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_20d
    .catchall {:try_start_8c .. :try_end_20d} :catchall_89

    goto/16 :goto_87
.end method
