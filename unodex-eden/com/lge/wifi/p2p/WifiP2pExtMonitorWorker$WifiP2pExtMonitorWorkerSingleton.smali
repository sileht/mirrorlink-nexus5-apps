.class Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
.super Ljava/lang/Object;
.source "WifiP2pExtMonitorWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiP2pExtMonitorWorkerSingleton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;,
        Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;
    }
.end annotation


# static fields
.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final sInstance:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;


# instance fields
.field private mConnected:Z

.field private final mRegisteredMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/wifi/p2p/WifiP2pExtMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredMonitorList:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;

.field private mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;-><init>()V

    sput-object v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->sInstance:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMap:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;

    invoke-direct {v0, p0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;-><init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;)V

    iput-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMonitorList:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->dispatchEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->sInstance:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;

    return-object v0
.end method

.method private declared-synchronized dispatchEvent(Ljava/lang/String;)Z
    .registers 11
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 149
    monitor-enter p0

    if-nez p1, :cond_6

    .line 212
    :cond_4
    :goto_4
    monitor-exit p0

    return v0

    .line 152
    :cond_6
    :try_start_6
    iget-boolean v6, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z

    if-nez v6, :cond_13

    .line 154
    const-string v6, "P2pExtMonWorker"

    const-string v7, "Supplicant is already disconnected. Stop monitoring"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x1

    goto :goto_4

    .line 159
    :cond_13
    const-string v6, "IFNAME="

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 160
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 162
    .local v5, "space":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 167
    const/4 v6, 0x7

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "iface":Ljava/lang/String;
    const-string v6, "p2p0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 170
    const-string v6, "p2p-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 171
    :cond_39
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 174
    const-string v6, "<"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 175
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    .end local v1    # "iface":Ljava/lang/String;
    .end local v5    # "space":I
    :cond_4c
    const-string v6, "P2pExtMonWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Event ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "done":Z
    const/4 v2, 0x0

    .line 188
    .local v2, "isMonitoring":Z
    const/4 v3, 0x0

    .line 190
    .local v3, "isTerminating":Z
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 191
    const-string v6, "TERMINATING"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 192
    const/4 v3, 0x1

    .line 195
    :cond_7a
    iget-object v6, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_84
    :goto_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_99

    .line 204
    if-nez v2, :cond_8f

    if-eqz v3, :cond_8f

    .line 205
    const/4 v0, 0x1

    .line 208
    :cond_8f
    if-eqz v0, :cond_4

    .line 209
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z
    :try_end_94
    .catchall {:try_start_6 .. :try_end_94} :catchall_96

    goto/16 :goto_4

    .line 149
    .end local v0    # "done":Z
    .end local v2    # "isMonitoring":Z
    .end local v3    # "isTerminating":Z
    :catchall_96
    move-exception v6

    monitor-exit p0

    throw v6

    .line 195
    .restart local v0    # "done":Z
    .restart local v2    # "isMonitoring":Z
    .restart local v3    # "isTerminating":Z
    :cond_99
    :try_start_99
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .line 196
    .local v4, "monitor":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    iget-boolean v7, v4, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitoring:Z

    if-eqz v7, :cond_84

    .line 197
    const/4 v2, 0x1

    .line 198
    invoke-virtual {v4, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->dispatchEvent(Ljava/lang/String;)Z
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_96

    move-result v7

    if-eqz v7, :cond_84

    .line 199
    const/4 v0, 0x1

    goto :goto_84
.end method


# virtual methods
.method public declared-synchronized lostSupplicantConnection()V
    .registers 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    const-string v0, "P2pExtMonWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lostSupplicantConnection() with mConnected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z

    if-eqz v0, :cond_23

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z

    .line 106
    iget-object v0, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    invoke-virtual {v0}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->interruptForEvent()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 108
    :cond_23
    monitor-exit p0

    return-void

    .line 103
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerMonitor(Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)I
    .registers 6
    .param p1, "wifiP2pExtMonitor"    # Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, -0x1

    .line 114
    .local v0, "monitorId":I
    :try_start_2
    const-string v1, "P2pExtMonWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerMonitor("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p1, :cond_80

    .line 118
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMonitorList:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->containsListener(Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)I

    move-result v0

    .line 119
    const/4 v1, -0x1

    if-eq v0, v1, :cond_45

    .line 121
    const-string v1, "P2pExtMonWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WifiP2pExtMonitor is already registered.. ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_7d

    .line 137
    :cond_43
    :goto_43
    monitor-exit p0

    return v0

    .line 124
    :cond_45
    :try_start_45
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMonitorList:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;

    new-instance v2, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;

    invoke-direct {v2, p0, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;-><init>(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;Lcom/lge/wifi/p2p/WifiP2pExtMonitor;)V

    invoke-virtual {v1, v2}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->add(Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitor;)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "P2pExtMonWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WifiP2pExtMonitor is registered.. ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    if-nez v1, :cond_43

    .line 130
    iget-object v1, p1, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    iput-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;
    :try_end_7c
    .catchall {:try_start_45 .. :try_end_7c} :catchall_7d

    goto :goto_43

    .line 111
    :catchall_7d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 134
    :cond_80
    :try_start_80
    const-string v1, "P2pExtMonWorker"

    const-string v2, "WifiP2pExtMonitor listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_7d

    goto :goto_43
.end method

.method public declared-synchronized startMonitoring(I)V
    .registers 8
    .param p1, "monitorId"    # I

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .line 52
    .local v2, "m":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    if-nez v2, :cond_2c

    .line 53
    const-string v3, "P2pExtMonWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startMonitor called with unknown monitorId ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_64

    .line 91
    :goto_2a
    monitor-exit p0

    return-void

    .line 57
    :cond_2c
    :try_start_2c
    const-string v3, "P2pExtMonWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startMonitoring("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") with mConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z

    if-eqz v3, :cond_67

    .line 60
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitoring:Z

    .line 61
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->supplicantConnection(Z)V
    :try_end_63
    .catchall {:try_start_2c .. :try_end_63} :catchall_64

    goto :goto_2a

    .line 51
    .end local v2    # "m":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    :catchall_64
    move-exception v3

    monitor-exit p0

    throw v3

    .line 64
    .restart local v2    # "m":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    :cond_67
    :try_start_67
    const-string v3, "P2pExtMonWorker"

    const-string v4, "connecting to supplicant"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    .local v0, "connectTries":I
    move v1, v0

    .line 68
    .end local v0    # "connectTries":I
    .local v1, "connectTries":I
    :goto_70
    iget-object v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    invoke-virtual {v3}, Lcom/lge/wifi/p2p/WifiP2pExtNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 69
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitoring:Z

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->supplicantConnection(Z)V

    .line 71
    new-instance v3, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;

    iget-object v4, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mWifiP2pExtNative:Lcom/lge/wifi/p2p/WifiP2pExtNative;

    invoke-direct {v3, v4, p0}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;-><init>(Lcom/lge/wifi/p2p/WifiP2pExtNative;Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;)V

    invoke-virtual {v3}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$MonitorThread;->start()V

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mConnected:Z
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_64

    goto :goto_2a

    .line 75
    :cond_8d
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    const/16 v3, 0x32

    if-ge v1, v3, :cond_9d

    .line 77
    const-wide/16 v4, 0x64

    :try_start_95
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_98} :catch_9a
    .catchall {:try_start_95 .. :try_end_98} :catchall_64

    move v1, v0

    .line 78
    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_70

    .line 80
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :catch_9a
    move-exception v3

    move v1, v0

    .end local v0    # "connectTries":I
    .restart local v1    # "connectTries":I
    goto :goto_70

    .line 85
    .end local v1    # "connectTries":I
    .restart local v0    # "connectTries":I
    :cond_9d
    const/4 v3, 0x0

    :try_start_9e
    invoke-virtual {v2, v3}, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->supplicantConnection(Z)V

    .line 86
    const-string v3, "P2pExtMonWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startMonitoring("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed! dont remove iface name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_9e .. :try_end_bb} :catchall_64

    goto/16 :goto_2a
.end method

.method public declared-synchronized stopMonitoring(I)V
    .registers 6
    .param p1, "monitorId"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .line 96
    .local v0, "m":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    const-string v1, "P2pExtMonWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopMonitoring("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mMonitoring:Z

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->supplicantConnection(Z)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 100
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "m":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    :catchall_3d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterMonitor(I)V
    .registers 6
    .param p1, "monitorId"    # I

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMonitorList:Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton$RegisteredMonitorList;->remove(I)V

    .line 142
    iget-object v1, p0, Lcom/lge/wifi/p2p/WifiP2pExtMonitorWorker$WifiP2pExtMonitorWorkerSingleton;->mRegisteredMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;

    .line 144
    .local v0, "m":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    const-string v1, "P2pExtMonWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregisterMonitor("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/lge/wifi/p2p/WifiP2pExtMonitor;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 146
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "m":Lcom/lge/wifi/p2p/WifiP2pExtMonitor;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method
