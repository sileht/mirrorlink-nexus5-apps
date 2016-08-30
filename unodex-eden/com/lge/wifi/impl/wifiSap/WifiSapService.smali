.class public Lcom/lge/wifi/impl/wifiSap/WifiSapService;
.super Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;
.source "WifiSapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;,
        Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiSapService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDhcpInfoFileObserver:Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

.field private final mStations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiApState:I

.field private mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

.field private mWifiHostapdMonitor:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSapHandler:Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/IWifiSapManager$Stub;-><init>()V

    .line 388
    const/16 v3, 0xb

    iput v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiApState:I

    .line 427
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;

    .line 428
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 431
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 446
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 450
    new-instance v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-direct {v3, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    .line 452
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiSapService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 453
    .local v2, "wifiSapThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 455
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 456
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_57

    .line 457
    new-instance v3, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;

    invoke-direct {v3, p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiSapHandler:Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;

    .line 460
    new-instance v3, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    iget-object v4, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiSapHandler:Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;

    invoke-direct {v3, v4}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdMonitor:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    .line 484
    :cond_57
    new-instance v3, Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 485
    const-string v5, "/misc/dhcp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dnsmasq.leases"

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapService;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mDhcpInfoFileObserver:Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

    .line 491
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;

    .line 492
    new-instance v4, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;

    invoke-direct {v4, p0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$1;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)V

    .line 491
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    .line 577
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/telephony/TelephonyManager;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Ljava/util/List;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiApState:I

    return v0
.end method

.method static synthetic access$4(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lge/wifi/impl/wifiSap/WifiSapService;I)V
    .registers 2

    .prologue
    .line 388
    iput p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiApState:I

    return-void
.end method

.method static synthetic access$6(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiSapHandler:Lcom/lge/wifi/impl/wifiSap/WifiSapService$WifiSapHandler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lge/wifi/impl/wifiSap/WifiSapService;)Landroid/net/wifi/WifiManager;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private findDhcpAttribute([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "dhcpInfos"    # [Ljava/lang/String;
    .param p2, "MacAddress"    # Ljava/lang/String;

    .prologue
    .line 667
    new-instance v2, Ljava/lang/String;

    const-string v3, "void"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 670
    .local v2, "result":Ljava/lang/String;
    :try_start_7
    const-string v3, "WifiSapService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[LGE_WLAN] findDhcpAttribute Mac="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    array-length v4, p1

    const/4 v3, 0x0

    :goto_1d
    if-lt v3, v4, :cond_20

    .line 681
    .end local v2    # "result":Ljava/lang/String;
    :goto_1f
    return-object v2

    .line 671
    .restart local v2    # "result":Ljava/lang/String;
    :cond_20
    aget-object v0, p1, v3

    .line 672
    .local v0, "dhcpInfo":Ljava/lang/String;
    const-string v5, "WifiSapService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[LGE_WLAN] findDhcpAttribute dhcpInfo"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_3d} :catch_46

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_43

    move-object v2, v0

    .line 674
    goto :goto_1f

    .line 671
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 677
    .end local v0    # "dhcpInfo":Ljava/lang/String;
    :catch_46
    move-exception v1

    .line 678
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiSapService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[LGE_WLAN] findDhcpAttribute NullPointerException =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private static nap(I)V
    .registers 3
    .param p0, "secs"    # I

    .prologue
    .line 1342
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 1346
    :goto_6
    return-void

    .line 1344
    :catch_7
    move-exception v0

    const-string v0, "WifiSapService"

    const-string v1, "nap error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private readDHCPInfo()[Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 943
    const-string v9, "WifiSapService"

    const-string v10, "[LGE_WLAN]  readDHCPInfo"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v2, "dhcpInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 948
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 950
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_f
    new-instance v5, Ljava/io/FileReader;

    const-string v9, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_176
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_16} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_ee
    .catchall {:try_start_f .. :try_end_16} :catchall_126

    .line 951
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_16
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_179
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1b} :catch_16d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_166
    .catchall {:try_start_16 .. :try_end_1b} :catchall_15f

    .line 954
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1b
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "s":Ljava/lang/String;
    if-nez v7, :cond_36

    .line 958
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_24} :catch_171
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_169
    .catchall {:try_start_1b .. :try_end_24} :catchall_162

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_87

    .line 974
    if-eqz v1, :cond_2d

    .line 975
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 977
    :cond_2d
    if-eqz v5, :cond_32

    .line 978
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_71

    :cond_32
    :goto_32
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v8

    .line 985
    .end local v7    # "s":Ljava/lang/String;
    :goto_35
    return-object v6

    .line 955
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "s":Ljava/lang/String;
    :cond_36
    :try_start_36
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN]  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_4d} :catch_171
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4d} :catch_169
    .catchall {:try_start_36 .. :try_end_4d} :catchall_162

    goto :goto_1b

    .line 963
    .end local v7    # "s":Ljava/lang/String;
    :catch_4e
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 964
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_51
    :try_start_51
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo1 = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_51 .. :try_end_65} :catchall_126

    .line 974
    if-eqz v0, :cond_6a

    .line 975
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 977
    :cond_6a
    if-eqz v4, :cond_6f

    .line 978
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_a0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    move-object v6, v8

    .line 965
    goto :goto_35

    .line 980
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v7    # "s":Ljava/lang/String;
    :catch_71
    move-exception v3

    .line 981
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo close = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 961
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_87
    :try_start_87
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    .line 962
    .local v6, "result":[Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "result":[Ljava/lang/String;
    check-cast v6, [Ljava/lang/String;
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_93} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_93} :catch_171
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_93} :catch_169
    .catchall {:try_start_87 .. :try_end_93} :catchall_162

    .line 974
    .restart local v6    # "result":[Ljava/lang/String;
    if-eqz v1, :cond_98

    .line 975
    :try_start_95
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 977
    :cond_98
    if-eqz v5, :cond_9d

    .line 978
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9d} :catch_148

    :cond_9d
    :goto_9d
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 985
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_35

    .line 980
    .end local v6    # "result":[Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    :catch_a0
    move-exception v3

    .line 981
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo close = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 966
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_b6
    move-exception v3

    .line 967
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_b7
    :try_start_b7
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo2 = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_b7 .. :try_end_cb} :catchall_126

    .line 974
    if-eqz v0, :cond_d0

    .line 975
    :try_start_cd
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 977
    :cond_d0
    if-eqz v4, :cond_d5

    .line 978
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d5} :catch_d8

    .end local v3    # "e":Ljava/lang/NullPointerException;
    :cond_d5
    :goto_d5
    move-object v6, v8

    .line 968
    goto/16 :goto_35

    .line 980
    .restart local v3    # "e":Ljava/lang/NullPointerException;
    :catch_d8
    move-exception v3

    .line 981
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo close = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 969
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_ee
    move-exception v3

    .line 970
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_ef
    :try_start_ef
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo3= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_ef .. :try_end_103} :catchall_126

    .line 974
    if-eqz v0, :cond_108

    .line 975
    :try_start_105
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 977
    :cond_108
    if-eqz v4, :cond_10d

    .line 978
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_10d} :catch_110

    :cond_10d
    :goto_10d
    move-object v6, v8

    .line 971
    goto/16 :goto_35

    .line 980
    :catch_110
    move-exception v3

    .line 981
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo close = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 972
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_126
    move-exception v8

    .line 974
    :goto_127
    if-eqz v0, :cond_12c

    .line 975
    :try_start_129
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 977
    :cond_12c
    if-eqz v4, :cond_131

    .line 978
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_131} :catch_132

    .line 983
    :cond_131
    :goto_131
    throw v8

    .line 980
    :catch_132
    move-exception v3

    .line 981
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v9, "WifiSapService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[LGE_WLAN] readDHCPInfo close = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    .line 980
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "result":[Ljava/lang/String;
    .restart local v7    # "s":Ljava/lang/String;
    :catch_148
    move-exception v3

    .line 981
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "WifiSapService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[LGE_WLAN] readDHCPInfo close = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 972
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "result":[Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_15f
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_127

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_162
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_127

    .line 969
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_166
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_ef

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_169
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_ef

    .line 966
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_16d
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_b7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_171
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_b7

    .line 963
    :catch_176
    move-exception v3

    goto/16 :goto_51

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_179
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_51
.end method


# virtual methods
.method public MacFilterremoveAllowedList(Ljava/lang/String;)I
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 925
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->MacFilterremoveAllowedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public MacFilterremoveDeniedList(Ljava/lang/String;)I
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->MacFilterremoveDeniedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->AddMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public addMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->AddMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public enableSoftAp(Z)Z
    .registers 5
    .param p1, "bEnable"    # Z

    .prologue
    .line 588
    if-eqz p1, :cond_22

    .line 589
    const-string v1, "WifiSapService"

    const-string v2, "enableSoftAp startMonitoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdMonitor:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->startMonitoring()V

    .line 593
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mDhcpInfoFileObserver:Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;->startMonitoring()V

    .line 601
    :goto_13
    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->getSoftApStatus()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 603
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetCommit()Z

    move-result v0

    .line 632
    :cond_21
    :goto_21
    return v0

    .line 595
    :cond_22
    const-string v1, "WifiSapService"

    const-string v2, "enableSoftAp stopMonitoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdMonitor:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->stopMonitoring()V

    .line 598
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mDhcpInfoFileObserver:Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;->stopMonitoring()V

    goto :goto_13

    .line 618
    :cond_34
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->EnableSoftAp(Z)Z

    move-result v0

    .line 627
    .local v0, "ret":Z
    if-nez p1, :cond_21

    .line 628
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdMonitor:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->stopMonitoring()V

    .line 629
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mDhcpInfoFileObserver:Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;->stopMonitoring()V

    goto :goto_21
.end method

.method public enableSoftApWifiCfg(ZLandroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "bEnable"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "wlanIface"    # Ljava/lang/String;
    .param p4, "softapIface"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 638
    if-eqz p1, :cond_16

    .line 642
    if-eqz p2, :cond_e

    .line 643
    invoke-virtual {p0, p2, v2, v2, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;IIZ)Z

    move-result v2

    if-nez v2, :cond_e

    .line 657
    :cond_d
    :goto_d
    return v0

    .line 648
    :cond_e
    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->enableSoftAp(Z)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_14
    move v0, v1

    .line 657
    goto :goto_d

    .line 652
    :cond_16
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->enableSoftAp(Z)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_d
.end method

.method public getAllAssocMacList()[Ljava/lang/String;
    .registers 9

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->getAssoStaMacListCount()I

    move-result v0

    .line 694
    new-array v4, v0, [Ljava/lang/String;

    .line 695
    .local v4, "macList":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 697
    .local v1, "i":I
    iget-object v6, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_15

    .line 702
    return-object v4

    .line 697
    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 698
    .local v3, "iface":Landroid/net/wifi/ScanResult;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 699
    .local v5, "macaddr":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v5, v4, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_e
.end method

.method public getAllAssocMacListATT()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    return-object v0
.end method

.method public getAllAssocMacListVZW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    return-object v0
.end method

.method public getAssoStaMacListCount()I
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 725
    const-string v0, ""

    .line 727
    .local v0, "deviceIp":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    if-nez v2, :cond_9

    .line 728
    const-string v2, ""

    .line 742
    :goto_8
    return-object v2

    .line 731
    :cond_9
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 737
    :goto_15
    const-string v2, "WifiSapService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NEZZIMOM] deviceIp : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    if-eqz v0, :cond_40

    move-object v2, v0

    .line 740
    goto :goto_8

    .line 731
    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 732
    .local v1, "iface":Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_f

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 733
    iget-object v0, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 734
    goto :goto_15

    .line 742
    .end local v1    # "iface":Landroid/net/wifi/ScanResult;
    :cond_40
    const-string v2, ""

    goto :goto_8
.end method

.method public getAutoShutOffTime()I
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetAutoShutOffTime()I

    move-result v0

    return v0
.end method

.method public getChannel()I
    .registers 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetChannel()I

    move-result v0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenSsid()Z
    .registers 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetHiddenSsid()Z

    move-result v0

    return v0
.end method

.method public getMacFilterByIndex(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacFilterCount()I
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetMacFilterCount()I

    move-result v0

    return v0
.end method

.method public getMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    .registers 3

    .prologue
    .line 811
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)V

    return-object v0
.end method

.method public getMaxNumOfClients()I
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetMaxNumOfClients()I

    move-result v0

    return v0
.end method

.method public getOperationMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;
    .registers 3

    .prologue
    .line 825
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetOperationMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;)V

    return-object v0
.end method

.method public getPrivacySeparator()Z
    .registers 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetApIsolation()Z

    move-result v0

    return v0
.end method

.method public getSecurityType()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    .registers 6

    .prologue
    .line 844
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetSecurityType()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    move-result-object v0

    .line 849
    .local v0, "secType":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;
    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v2

    .line 850
    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v3

    .line 851
    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v4

    .line 849
    invoke-direct {v1, v2, v3, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    return-object v1
.end method

.method public getSoftApStatus()Z
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetSoftApStatus()Z

    move-result v0

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWepKey1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetWepKey1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWepKey2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetWepKey2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWepKey3()Ljava/lang/String;
    .registers 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetWepKey3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWepKey4()Ljava/lang/String;
    .registers 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetWepKey4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWepKeyIndex()I
    .registers 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetWepKeyIndex()I

    move-result v0

    return v0
.end method

.method public getWpaKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetWpaKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWpsNfcConfTokenFromAP(II)Ljava/lang/String;
    .registers 5
    .param p1, "isEnabled"    # I
    .param p2, "isNDEF"    # I

    .prologue
    .line 1453
    const-string v0, "WifiSapService"

    const-string v1, "WPS : getWpsNfcConfTokenFromAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->getWpsNfcConfTokenFromAP(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWpsNfcHandoverSelect(I)Ljava/lang/String;
    .registers 4
    .param p1, "isNDEF"    # I

    .prologue
    .line 1458
    const-string v0, "WifiSapService"

    const-string v1, "WPS : getWpsNfcHandoverSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->getWpsNfcHandoverSelect(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAlltheList()I
    .registers 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->removeAlltheList()I

    move-result v0

    return v0
.end method

.method public removeMacFilterAllowList()I
    .registers 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->removeMacFilterAllowList()I

    move-result v0

    return v0
.end method

.method public removeMacFilterDenyList()I
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->removeMacFilterDenyList()I

    move-result v0

    return v0
.end method

.method public setAllAssocMacListSize(I)V
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 1467
    const-string v1, "WifiSapService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[LGE_WLAN] setAllAssocMacListSize =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "str_value":Ljava/lang/String;
    const-string v1, "wifi.lge.assoclistsize"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    return-void
.end method

.method public setAutoShutOffTime(I)Z
    .registers 3
    .param p1, "time"    # I

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetAutoShutOffTime(I)Z

    move-result v0

    return v0
.end method

.method public setChannel(I)Z
    .registers 3
    .param p1, "channel"    # I

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetChannel(I)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetCountryCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisassociateStation(Ljava/lang/String;)Z
    .registers 3
    .param p1, "staMac"    # Ljava/lang/String;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetDisassociateStation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setHiddenSsid(Z)Z
    .registers 3
    .param p1, "hiddenSsid"    # Z

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetHiddenSsid(Z)Z

    move-result v0

    return v0
.end method

.method public setMacFilterByIndex(ILjava/lang/String;)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetMacFilterByIndex(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMacFilterCount(I)Z
    .registers 3
    .param p1, "filterCount"    # I

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetMacFilterCount(I)Z

    move-result v0

    return v0
.end method

.method public setMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;)Z
    .registers 4
    .param p1, "filterMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;->getFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)Z

    move-result v0

    return v0
.end method

.method public setMacaddracl(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_mac_acl"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1055
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->setMacaddracl(I)Z

    move-result v0

    return v0
.end method

.method public setMaxNumOfClients(I)Z
    .registers 3
    .param p1, "numClient"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetMaxNumOfClients(I)Z

    move-result v0

    return v0
.end method

.method public setNstartMonitoring(ZLandroid/net/wifi/WifiConfiguration;II)Z
    .registers 6
    .param p1, "bEnable"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "channel"    # I
    .param p4, "maxScb"    # I

    .prologue
    .line 1097
    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->doesSupportHotspotList()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/lge/wifi/config/LgeWifiConfig;->useCommonHotspotAPI()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1098
    :cond_c
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    if-eqz v0, :cond_19

    .line 1099
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setAllAssocMacListSize(I)V

    .line 1106
    :cond_19
    if-eqz p1, :cond_27

    .line 1107
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdMonitor:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->startMonitoring()V

    .line 1108
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mDhcpInfoFileObserver:Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;->startMonitoring()V

    .line 1124
    :goto_25
    const/4 v0, 0x1

    return v0

    .line 1120
    :cond_27
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdMonitor:Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdMonitor;->stopMonitoring()V

    .line 1121
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mDhcpInfoFileObserver:Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService$DhcpInfoFileObserver;->stopMonitoring()V

    goto :goto_25
.end method

.method public setOperationMode(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;)Z
    .registers 4
    .param p1, "opMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationModeP;->getOpMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetOperationMode(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;)Z

    move-result v0

    return v0
.end method

.method public setPrivacySeparator(Z)Z
    .registers 3
    .param p1, "privacySep"    # Z

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetApIsolation(Z)Z

    move-result v0

    return v0
.end method

.method public setSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;)Z
    .registers 7
    .param p1, "secType"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v2

    .line 1149
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v3

    .line 1150
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1148
    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;)Z

    move-result v0

    return v0
.end method

.method public setSoftApWifiCfg(Landroid/net/wifi/WifiConfiguration;IIZ)Z
    .registers 15
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "channel"    # I
    .param p3, "maxScb"    # I
    .param p4, "bWoNmService"    # Z

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1159
    if-eqz p1, :cond_c5

    .line 1163
    if-eqz p4, :cond_47

    .line 1168
    iget-object v4, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->UpdateSsid(Ljava/lang/String;)V

    .line 1183
    :cond_e
    const/4 v0, 0x0

    .line 1184
    .local v0, "phassphrase":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1185
    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1186
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1187
    sget-object v6, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1185
    invoke-direct {v1, v4, v5, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1188
    .local v1, "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1206
    :goto_24
    if-eqz p4, :cond_85

    .line 1211
    iget-object v4, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    new-instance v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    .line 1212
    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v6

    .line 1213
    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v7

    .line 1214
    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1211
    invoke-virtual {v4, v5}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->UpdateSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;)Z

    .line 1225
    :cond_3c
    if-eqz v0, :cond_8c

    .line 1226
    if-nez p4, :cond_ae

    .line 1227
    invoke-virtual {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setWpaKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ae

    .line 1280
    .end local v0    # "phassphrase":Ljava/lang/String;
    .end local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :goto_46
    return v2

    .line 1174
    :cond_47
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setSsid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_46

    .line 1189
    .restart local v0    # "phassphrase":Ljava/lang/String;
    :cond_50
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1190
    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1191
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1192
    sget-object v6, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1190
    invoke-direct {v1, v4, v5, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1193
    .restart local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1194
    goto :goto_24

    .line 1195
    .end local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :cond_67
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_79

    .line 1196
    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1197
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1198
    sget-object v6, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1196
    invoke-direct {v1, v4, v5, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1199
    .restart local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    goto :goto_24

    .line 1200
    .end local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :cond_79
    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;

    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1201
    sget-object v5, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1202
    sget-object v6, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1200
    invoke-direct {v1, v4, v5, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .restart local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    goto :goto_24

    .line 1220
    :cond_85
    invoke-virtual {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_46

    .line 1231
    :cond_8c
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;->getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v5

    if-ne v4, v5, :cond_ae

    .line 1232
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setWepKeyIndex(I)Z

    .line 1234
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_ae

    .line 1235
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-nez v4, :cond_c7

    .line 1236
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setWepKey1(Ljava/lang/String;)Z

    .line 1250
    :cond_ae
    :goto_ae
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_f3

    .line 1251
    invoke-virtual {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setHiddenSsid(Z)Z

    .line 1259
    :goto_b5
    if-eq v9, p2, :cond_bd

    .line 1260
    if-nez p2, :cond_f7

    .line 1261
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setChannel(I)Z

    .line 1271
    :cond_bd
    :goto_bd
    if-eq v9, p3, :cond_c5

    .line 1272
    if-nez p2, :cond_fb

    .line 1273
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setMaxNumOfClients(I)Z

    .end local v0    # "phassphrase":Ljava/lang/String;
    .end local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :cond_c5
    :goto_c5
    move v2, v3

    .line 1280
    goto :goto_46

    .line 1237
    .restart local v0    # "phassphrase":Ljava/lang/String;
    .restart local v1    # "secTypeP":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityTypeP;
    :cond_c7
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ne v4, v3, :cond_d5

    .line 1238
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setWepKey2(Ljava/lang/String;)Z

    goto :goto_ae

    .line 1239
    :cond_d5
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e4

    .line 1240
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setWepKey3(Ljava/lang/String;)Z

    goto :goto_ae

    .line 1241
    :cond_e4
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_ae

    .line 1242
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setWepKey4(Ljava/lang/String;)Z

    goto :goto_ae

    .line 1253
    :cond_f3
    invoke-virtual {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setHiddenSsid(Z)Z

    goto :goto_b5

    .line 1263
    :cond_f7
    invoke-virtual {p0, p2}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setChannel(I)Z

    goto :goto_bd

    .line 1275
    :cond_fb
    invoke-virtual {p0, p3}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setMaxNumOfClients(I)Z

    goto :goto_c5
.end method

.method public setSsid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetSsid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setTxPower(I)I
    .registers 3
    .param p1, "txPower"    # I

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->setTxPower(I)I

    move-result v0

    return v0
.end method

.method public setWepKey1(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetWepKey1(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWepKey2(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetWepKey2(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWepKey3(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetWepKey3(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWepKey4(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetWepKey4(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWepKeyIndex(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetWepKeyIndex(I)Z

    move-result v0

    return v0
.end method

.method public setWpaKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "phassphrase"    # Ljava/lang/String;

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetWpaKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWpsCancel()I
    .registers 3

    .prologue
    .line 1438
    const-string v0, "WifiSapService"

    const-string v1, "WPS : setWpsCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->setWpsCancel()I

    move-result v0

    return v0
.end method

.method public setWpsNfcPwToken(Ljava/lang/String;II)I
    .registers 6
    .param p1, "NDEF"    # Ljava/lang/String;
    .param p2, "isEnabled"    # I
    .param p3, "isNDEF"    # I

    .prologue
    .line 1448
    const-string v0, "WifiSapService"

    const-string v1, "WPS : setWpsNfcPwToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->setWpsNfcPwToken(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "reqNDEF"    # Ljava/lang/String;
    .param p2, "selNDEF"    # Ljava/lang/String;

    .prologue
    .line 1462
    const-string v0, "WifiSapService"

    const-string v1, "WPS : setWpsNfcReportHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setWpsPbc()I
    .registers 3

    .prologue
    .line 1443
    const-string v0, "WifiSapService"

    const-string v1, "WPS : setWpsPbc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->setWpsPbc()I

    move-result v0

    return v0
.end method

.method public setWpsPin(Ljava/lang/String;I)I
    .registers 6
    .param p1, "PinNum"    # Ljava/lang/String;
    .param p2, "expirationTime"    # I

    .prologue
    .line 1433
    const-string v0, "WifiSapService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WPS : setWpsPin expiretime is["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] PinNum is["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mWifiHostapdApi:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->setWpsPin(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized updateApClientList()Z
    .registers 21

    .prologue
    .line 1350
    monitor-enter p0

    :try_start_1
    new-instance v10, Ljava/lang/String;

    const-string v6, "Unknown host name"

    invoke-direct {v10, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v10, "devName":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v6, "Unknown"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1352
    .local v5, "ipAddress":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1353
    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v15, 0x0

    .line 1354
    .local v15, "reply":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1356
    .local v17, "tmpStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v6, "WifiSapService"

    const-string v7, "[LGE_WLAN] updateApClientList  "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const-string v6, "PING"

    invoke-static {v6}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1361
    const-string v6, "WifiSapService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reply: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->readDHCPInfo()[Ljava/lang/String;

    move-result-object v13

    .line 1365
    .local v13, "dhcpInfos":[Ljava/lang/String;
    if-nez v13, :cond_4a

    .line 1366
    const-string v6, "WifiSapService"

    const-string v7, "Read Failed to DHCP Info file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_4a
    const-string v6, "WifiSapService"

    const-string v7, "[LGE_WLAN] getAllSta  "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string v6, "WifiSapService"

    const-string v7, "[LGE_WLAN] updateApClientList  "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/16 v16, 0x0

    .line 1374
    .local v16, "stations":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->nap(I)V
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_83

    .line 1376
    :try_start_5e
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getAllSta()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/NullPointerException; {:try_start_5e .. :try_end_67} :catch_7a
    .catchall {:try_start_5e .. :try_end_67} :catchall_83

    move-result-object v16

    .line 1381
    :goto_68
    :try_start_68
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1383
    if-nez v16, :cond_86

    .line 1384
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setAllAssocMacListSize(I)V
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_83

    .line 1385
    const/4 v6, 0x0

    .line 1419
    :goto_78
    monitor-exit p0

    return v6

    .line 1378
    :catch_7a
    move-exception v6

    :try_start_7b
    const-string v6, "WifiSapService"

    const-string v7, "[LGE_WLAN] There is no client "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_83

    goto :goto_68

    .line 1350
    .end local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v5    # "ipAddress":Ljava/lang/String;
    .end local v10    # "devName":Ljava/lang/String;
    .end local v13    # "dhcpInfos":[Ljava/lang/String;
    .end local v15    # "reply":Ljava/lang/String;
    .end local v16    # "stations":[Ljava/lang/String;
    .end local v17    # "tmpStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_83
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1388
    .restart local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v5    # "ipAddress":Ljava/lang/String;
    .restart local v10    # "devName":Ljava/lang/String;
    .restart local v13    # "dhcpInfos":[Ljava/lang/String;
    .restart local v15    # "reply":Ljava/lang/String;
    .restart local v16    # "stations":[Ljava/lang/String;
    .restart local v17    # "tmpStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_86
    :try_start_86
    const-string v6, "WifiSapService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[LGE_WLAN] getAllSta count = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_a5
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_bd

    .line 1417
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 1418
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->setAllAssocMacListSize(I)V

    .line 1419
    const/4 v6, 0x1

    goto :goto_78

    .line 1391
    :cond_bd
    aget-object v4, v16, v18

    .line 1392
    .local v4, "iface":Ljava/lang/String;
    const-string v6, "WifiSapService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[LGE_WLAN] StationList =  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    if-eqz v13, :cond_126

    .line 1395
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->findDhcpAttribute([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1396
    .local v11, "dhcpInfo":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1397
    .local v12, "dhcpInfoElement":[Ljava/lang/String;
    array-length v6, v12

    const/4 v7, 0x4

    if-lt v6, v7, :cond_126

    const/4 v6, 0x1

    aget-object v6, v12, v6

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_126

    .line 1399
    const-string v6, "WifiSapService"

    const-string v7, "[LGE_WLAN] Found dhcpinfo matched to Mac"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v6, 0x3

    aget-object v10, v12, v6

    .line 1401
    const-string v6, "WifiSapService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[LGE_WLAN] devName =  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v6, "*"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 1403
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_119
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    if-lt v14, v6, :cond_13c

    .line 1410
    .end local v14    # "i":I
    :cond_11f
    const/4 v6, 0x2

    aget-object v5, v12, v6

    .line 1411
    invoke-static {v10}, Landroid/net/wifi/WifiSsidEx;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 1414
    .end local v11    # "dhcpInfo":Ljava/lang/String;
    .end local v12    # "dhcpInfoElement":[Ljava/lang/String;
    :cond_126
    new-instance v2, Landroid/net/wifi/ScanResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1415
    .local v2, "client":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/wifi/impl/wifiSap/WifiSapService;->mStations:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    add-int/lit8 v6, v18, 0x1

    move/from16 v18, v6

    goto/16 :goto_a5

    .line 1404
    .end local v2    # "client":Landroid/net/wifi/ScanResult;
    .restart local v11    # "dhcpInfo":Ljava/lang/String;
    .restart local v12    # "dhcpInfoElement":[Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_13c
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_161

    .line 1405
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1406
    const-string v6, "WifiSapService"

    const-string v7, "[LGE_WLAN] devName is changed to \"*\" so restore prev name"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catchall {:try_start_86 .. :try_end_161} :catchall_83

    .line 1403
    :cond_161
    add-int/lit8 v14, v14, 0x1

    goto :goto_119
.end method
