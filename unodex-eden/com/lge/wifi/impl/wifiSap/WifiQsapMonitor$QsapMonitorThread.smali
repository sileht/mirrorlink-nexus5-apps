.class Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;
.super Ljava/lang/Thread;
.source "WifiQsapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QsapMonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)V
    .registers 3

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    .line 26
    const-string v0, "WifiQsapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "WifiQsapMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "104"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 35
    const-string v0, "105"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 39
    :cond_2a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$0(Z)V

    .line 75
    :cond_2e
    :goto_2e
    return-void

    .line 40
    :cond_2f
    const-string v0, "100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 41
    const-string v0, "101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 43
    :cond_3f
    const-string v0, "100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 44
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->notifySoftApEnabled()V

    goto :goto_2e

    .line 72
    :cond_4d
    const-string v0, "WifiQsapMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled Event ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 88
    const-string v1, "WifiQsapMonitor"

    const-string v2, "Thread Started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$1(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->OpenNetlink()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 96
    const-string v1, "WifiQsapMonitor"

    const-string v2, "Connection success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1a
    :goto_1a
    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$2()Z

    move-result v1

    if-nez v1, :cond_37

    .line 130
    :goto_20
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$1(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CloseNetlink()V

    .line 136
    :goto_29
    const-string v1, "WifiQsapMonitor"

    const-string v2, "Thread Stoped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$3(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;)V

    .line 141
    return-void

    .line 100
    :cond_37
    const/4 v0, 0x0

    .line 103
    .local v0, "eventStr":Ljava/lang/String;
    const-string v1, "WifiQsapMonitor"

    const-string v2, "Waiting For Broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->this$0:Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;

    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mWifiQsapApi:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$1(Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;)Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->WaitForEvent()Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_53

    .line 112
    const-string v1, "WifiQsapMonitor"

    const-string v2, "Null Event Received"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 119
    :cond_53
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor$QsapMonitorThread;->handleEvent(Ljava/lang/String;)V

    .line 121
    # getter for: Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->mThreadRunning:Z
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiQsapMonitor;->access$2()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 122
    const-string v1, "WifiQsapMonitor"

    const-string v2, "mThreadRunning is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 132
    .end local v0    # "eventStr":Ljava/lang/String;
    :cond_64
    const-string v1, "WifiQsapMonitor"

    const-string v2, "Connection Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
