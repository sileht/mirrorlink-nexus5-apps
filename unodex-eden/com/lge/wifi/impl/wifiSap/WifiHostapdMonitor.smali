.class public Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;
.super Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;
.source "WifiHostapdMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;
    }
.end annotation


# static fields
.field private static final AP_CTRL_EVENT_DRIVER:Ljava/lang/String; = "CTRL-EVENT-DRIVER-STATE"

.field private static final AP_STA_CONNECTED:Ljava/lang/String; = "AP-STA-CONNECTED"

.field private static final AP_STA_DISCONNECTED:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final AP_STA_MAX_REACHED:Ljava/lang/String; = "AP-STA-MAX-REACHED"

.field private static final AP_WPS_AP_AVAILABLE:Ljava/lang/String; = "WPS-AP-AVAILABLE"

.field private static final AP_WPS_AP_AVAILABLE_AUTH:Ljava/lang/String; = "WPS-AP-AVAILABLE-AUTH"

.field private static final AP_WPS_AP_AVAILABLE_PBC:Ljava/lang/String; = "WPS-AP-AVAILABLE-PBC"

.field private static final AP_WPS_AP_AVAILABLE_PIN:Ljava/lang/String; = "WPS-AP-AVAILABLE-PIN"

.field private static final AP_WPS_CRED_RECEIVED:Ljava/lang/String; = "WPS-CRED-RECEIVED"

.field private static final AP_WPS_EVENT:Ljava/lang/String; = "WPS-"

.field private static final AP_WPS_EVENT_DISABLE:Ljava/lang/String; = "WPS-PBC-DISABLE"

.field private static final AP_WPS_EVENT_FAIL:Ljava/lang/String; = "WPS-FAIL"

.field private static final AP_WPS_EVENT_OVERLAP:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field private static final AP_WPS_EVENT_REG_SUCCESS:Ljava/lang/String; = "WPS-REG-SUCCESS"

.field private static final AP_WPS_EVENT_SUCCESS:Ljava/lang/String; = "WPS-SUCCESS"

.field private static final AP_WPS_EVENT_TIMEOUT:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static final AP_WPS_PBC_ACTIVE:Ljava/lang/String; = "WPS-PBC-ACTIVE"

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiHostapdMonitor"

.field private static final WPS_AP_DISABLE:I = 0x1

.field private static final WPS_AP_FAIL:I = 0x4

.field private static final WPS_AP_PBC_ACTIVE:I = 0x0

.field private static final WPS_AP_REG_SUCCESS:I = 0x5

.field private static final WPS_AP_SUCCESS:I = 0x3

.field private static final WPS_AP_TIMEOUT:I = 0x2

.field private static mThreadRunning:Z


# instance fields
.field private mMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;

.field private final mThreadRunningLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "sapHandler"    # Landroid/os/Handler;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiApMonitor;-><init>(Landroid/os/Handler;)V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunningLock:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;

    .line 124
    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$1(I)V
    .registers 1

    .prologue
    .line 109
    invoke-static {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->nap(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->handleEvent(Ljava/lang/String;)V

    return-void
.end method

.method private handleApDriverEvent(Ljava/lang/String;)V
    .registers 4
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 160
    const-string v0, "WifiHostapdMonitor"

    const-string v1, "SOFTAP DRIVER HANGED EVENT !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyDriverHungToHostapd()V

    .line 163
    :cond_12
    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "WifiHostapdMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleEvent  Event ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "AP-STA-CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 168
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyStationAssociated()V

    .line 178
    :cond_25
    :goto_25
    return-void

    .line 169
    :cond_26
    const-string v0, "AP-STA-DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 170
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyStationDisassociated()V

    goto :goto_25

    .line 171
    :cond_32
    const-string v0, "AP-STA-MAX-REACHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 172
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyMaxClientReached()V

    goto :goto_25

    .line 173
    :cond_3e
    const-string v0, "WPS-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 174
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->handleWpsEvent(Ljava/lang/String;)V

    goto :goto_25

    .line 175
    :cond_4a
    const-string v0, "CTRL-EVENT-DRIVER-STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 176
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->handleApDriverEvent(Ljava/lang/String;)V

    goto :goto_25
.end method

.method private handleWpsEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "WPS-PBC-ACTIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyWPStoToHostapd(I)V

    .line 153
    :cond_c
    :goto_c
    return-void

    .line 130
    :cond_d
    const-string v0, "WPS-PBC-DISABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyWPStoToHostapd(I)V

    goto :goto_c

    .line 132
    :cond_1a
    const-string v0, "WPS-TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 133
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyWPStoToHostapd(I)V

    goto :goto_c

    .line 134
    :cond_27
    const-string v0, "WPS-SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 135
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyWPStoToHostapd(I)V

    goto :goto_c

    .line 136
    :cond_34
    const-string v0, "WPS-FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 137
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyWPStoToHostapd(I)V

    goto :goto_c

    .line 138
    :cond_41
    const-string v0, "WPS-REG-SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 139
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->notifyWPStoToHostapd(I)V

    goto :goto_c

    .line 140
    :cond_4e
    const-string v0, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 142
    const-string v0, "WPS-AP-AVAILABLE-PBC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 144
    const-string v0, "WPS-AP-AVAILABLE-AUTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 146
    const-string v0, "WPS-AP-AVAILABLE-PIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 148
    const-string v0, "WPS-AP-AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 150
    const-string v0, "WPS-CRED-RECEIVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    goto :goto_c
.end method

.method private static nap(I)V
    .registers 3
    .param p0, "secs"    # I

    .prologue
    .line 111
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 114
    :goto_6
    return-void

    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public startMonitoring()V
    .registers 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunning:Z

    .line 182
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1b

    .line 185
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;

    invoke-direct {v0, p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;

    .line 186
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mMonitorThread:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor$HostapdMonitorThread;->start()V

    .line 187
    const-string v0, "WifiHostapdMonitor"

    const-string v1, "HostapdMonitorThread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 182
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public stopMonitoring()V
    .registers 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    const/4 v0, 0x0

    :try_start_4
    sput-boolean v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->mThreadRunning:Z

    .line 195
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->closeHostapdConnection()V

    .line 196
    const-string v0, "WifiHostapdMonitor"

    const-string v2, "HostapdMonitorThread stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_19

    .line 199
    const-string v0, "WifiHostapdMonitor"

    const-string v1, "HostapdMonitorThread stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 193
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
