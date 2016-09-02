.class public Lcom/lge/android/atservice/SetcomPacketDataHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomPacketDataHandler.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomPacketDataHandler;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public static handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 22
    const/4 v3, 0x0

    .line 24
    .local v3, "responseString":Ljava/lang/String;
    aget-object v4, p0, v8

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    aget-object v4, p0, v8

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 25
    :cond_21
    const-string/jumbo v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 26
    .local v2, "nmService":Landroid/os/INetworkManagementService;
    const/4 v1, 0x0

    .line 27
    .local v1, "netStat":Landroid/net/NetworkStats$Entry;
    if-eqz v2, :cond_81

    .line 29
    :try_start_2f
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_5b

    move-result-object v1

    .line 34
    .end local v1    # "netStat":Landroid/net/NetworkStats$Entry;
    .end local v3    # "responseString":Ljava/lang/String;
    :goto_38
    if-eqz v1, :cond_5a

    .line 35
    aget-object v4, p0, v8

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 36
    const-string/jumbo v4, "%d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .end local v2    # "nmService":Landroid/os/INetworkManagementService;
    :cond_5a
    :goto_5a
    return-object v3

    .line 30
    .restart local v1    # "netStat":Landroid/net/NetworkStats$Entry;
    .restart local v2    # "nmService":Landroid/os/INetworkManagementService;
    .restart local v3    # "responseString":Ljava/lang/String;
    :catch_5b
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "couldn\'t get network stats"

    .local v3, "responseString":Ljava/lang/String;
    goto :goto_38

    .line 37
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "netStat":Landroid/net/NetworkStats$Entry;
    .end local v3    # "responseString":Ljava/lang/String;
    :cond_60
    aget-object v4, p0, v8

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 38
    const-string/jumbo v4, "%d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "responseString":Ljava/lang/String;
    goto :goto_5a

    .line 42
    .restart local v1    # "netStat":Landroid/net/NetworkStats$Entry;
    .local v3, "responseString":Ljava/lang/String;
    :cond_81
    const-string/jumbo v3, "couldn\'t get network management service"

    .local v3, "responseString":Ljava/lang/String;
    goto :goto_5a
.end method
