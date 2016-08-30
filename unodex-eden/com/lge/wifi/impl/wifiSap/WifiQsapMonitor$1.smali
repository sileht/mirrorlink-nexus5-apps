.class Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiQsapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;-><init>(Landroid/os/Handler;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;


# direct methods
.method constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    .line 210
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 216
    const-string v1, "WifiQsapMonitor"

    const-string v2, "[WIFI_AP_STATE_CHANGED_ACTION]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$1;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    .line 218
    const-string v2, "wifi_state"

    .line 219
    const/16 v3, 0xe

    .line 217
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # invokes: Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->handleWifiApStateChanged(I)V
    invoke-static {v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$4(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;I)V

    .line 221
    :cond_20
    return-void
.end method
