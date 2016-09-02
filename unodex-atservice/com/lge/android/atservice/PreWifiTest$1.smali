.class Lcom/lge/android/atservice/PreWifiTest$1;
.super Landroid/content/BroadcastReceiver;
.source "PreWifiTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/android/atservice/PreWifiTest;->initPreWifiTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/android/atservice/PreWifiTest;


# direct methods
.method constructor <init>(Lcom/lge/android/atservice/PreWifiTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/android/atservice/PreWifiTest;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/android/atservice/PreWifiTest$1;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 85
    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest$1;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/lge/android/atservice/PreWifiTest;->-set0(Lcom/lge/android/atservice/PreWifiTest;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 86
    invoke-static {v2}, Lcom/lge/android/atservice/PreWifiTest;->-set2(Z)Z

    .line 88
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest$1;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    invoke-static {v0}, Lcom/lge/android/atservice/PreWifiTest;->-get0(Lcom/lge/android/atservice/PreWifiTest;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_65

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/android/atservice/PreWifiTest;->-set2(Z)Z

    .line 90
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest$1;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    iget-object v1, p0, Lcom/lge/android/atservice/PreWifiTest$1;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    invoke-static {v1}, Lcom/lge/android/atservice/PreWifiTest;->-get2(Lcom/lge/android/atservice/PreWifiTest;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/android/atservice/PreWifiTest;->-set1(Lcom/lge/android/atservice/PreWifiTest;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 91
    const-string/jumbo v0, "PreWifiTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/android/atservice/PreWifiTest$1;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    invoke-static {v2}, Lcom/lge/android/atservice/PreWifiTest;->-get1(Lcom/lge/android/atservice/PreWifiTest;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_64
    :goto_64
    return-void

    .line 92
    :cond_65
    iget-object v0, p0, Lcom/lge/android/atservice/PreWifiTest$1;->this$0:Lcom/lge/android/atservice/PreWifiTest;

    invoke-static {v0}, Lcom/lge/android/atservice/PreWifiTest;->-get0(Lcom/lge/android/atservice/PreWifiTest;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_64

    .line 93
    invoke-static {v2}, Lcom/lge/android/atservice/PreWifiTest;->-set2(Z)Z

    goto :goto_64
.end method
