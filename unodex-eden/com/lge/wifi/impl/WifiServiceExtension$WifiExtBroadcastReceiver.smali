.class Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiServiceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiExtBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/WifiServiceExtension;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/WifiServiceExtension;)V
    .registers 2

    .prologue
    .line 539
    iput-object p1, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    .line 540
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 541
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 546
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lge.wifi.WIFI_UPDATE_WIFI_EXTINFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 552
    iget-object v2, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    const-string v1, "wifi_extinfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-static {v2, v1}, Lcom/lge/wifi/impl/WifiServiceExtension;->access$0(Lcom/lge/wifi/impl/WifiServiceExtension;Lcom/lge/wifi/impl/WifiExtInfo;)V

    .line 573
    :cond_1b
    :goto_1b
    return-void

    .line 558
    :cond_1c
    const-string v1, "com.lge.hotspotprovision.hotspot.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 559
    const-string v1, "WifiServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HotspotProvision.STATE_CHANGED : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "result"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v1, "result"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_53

    .line 562
    const-string v1, "WifiServiceExtension"

    const-string v2, "4G MOBILE HOTSPOT PROVISION OK."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v1, v5}, Lcom/lge/wifi/impl/WifiServiceExtension;->setProvisioned(Z)V

    goto :goto_1b

    .line 565
    :cond_53
    const-string v1, "WifiServiceExtension"

    const-string v2, "4G MOBILE HOTSPOT PROVISION FAIL."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/lge/wifi/impl/WifiServiceExtension$WifiExtBroadcastReceiver;->this$0:Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-virtual {v1, v4}, Lcom/lge/wifi/impl/WifiServiceExtension;->setProvisioned(Z)V

    goto :goto_1b
.end method
