.class public Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
.super Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver$Stub;
.source "MHPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;
    }
.end annotation


# static fields
.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.42.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.42.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.1.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.1.254"

.field private static final TAG:Ljava/lang/String; = "MHPManager"

.field private static mIfaceName:Ljava/lang/String;

.field private static newUpstreamIfaceName:Ljava/lang/String;

.field private static sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

.field private static sServiceContext:Lcom/lge/systemservice/core/LGContext;


# instance fields
.field private iP2PInitialized:Z

.field public mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

.field private final mContext:Landroid/content/Context;

.field private mDhcpRange:[Ljava/lang/String;

.field private final mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

.field private mNetDynamicInterface:Ljava/lang/String;

.field private mNetIPAddress:Ljava/lang/String;

.field private mNetInterface:Ljava/lang/String;

.field private mNetMask:Ljava/lang/String;

.field private mSoftAPOn:Z

.field private mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    const-string v0, "wlan0"

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    .line 69
    const-string v0, "rmnet0"

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    .line 79
    const-string v0, "MHPManager"

    const-string v1, "[MHP_GOOKY] Load Library libandroid_runtime.so"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventLoop"    # Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver$Stub;-><init>()V

    .line 48
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    .line 50
    const-string v0, "192.168.1.1"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    .line 51
    const-string v0, "255.255.255.0"

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    .line 57
    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    .line 72
    iput-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    .line 88
    const-string v0, "MHPManager"

    const-string v1, "MHPManager constructor>>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .line 93
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 94
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sServiceContext:Lcom/lge/systemservice/core/LGContext;

    const-string v1, "lgnetworkmanagementservice"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LGNetworkManager;

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    const v1, 0x107001c

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_70

    .line 99
    :cond_51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v2

    .line 101
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const-string v1, "192.168.42.254"

    aput-object v1, v0, v3

    .line 102
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "192.168.1.2"

    aput-object v2, v0, v1

    .line 103
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "192.168.1.254"

    aput-object v2, v0, v1

    .line 113
    :cond_70
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9e

    .line 115
    const-string v0, "MHPManager"

    const-string v1, "DHCP_SETTINGS_GATEWAY_KEY is null uss default 192.168.1.1"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_85
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ad

    .line 123
    const-string v0, "MHPManager"

    const-string v1, "DHCP_SETTINGS_MASK_KEY is null uss default 255.255.255.0"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_9a
    invoke-direct {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->init()V

    .line 131
    return-void

    .line 119
    :cond_9e
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    goto :goto_85

    .line 127
    :cond_ad
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mask"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    goto :goto_9a
.end method

.method static synthetic access$0(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;)Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mEventLoop:Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Z)V
    .registers 2

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)Lcom/lge/wifi/impl/mobilehotspot/MHPManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventLoop"    # Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;

    .prologue
    .line 83
    const-string v0, "MHPManager"

    const-string v1, "MHPManager getInstance >>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;

    invoke-direct {v0, p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/MHPEventLoop;)V

    return-object v0
.end method

.method private init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 134
    iput-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    .line 135
    const-string v0, "MHPManager"

    const-string v1, "init >>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-boolean v2, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    .line 138
    const-string v0, "MHPManager"

    const-string v1, "init >>>>> broadcom HSL service is not enabled"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;-><init>(Landroid/content/Context;Lcom/lge/wifi/impl/mobilehotspot/IMHPNotificationReceiver;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    .line 142
    return-void
.end method

.method private transStringIpToNumber(Ljava/lang/String;)I
    .registers 8
    .param p1, "strIp"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1148
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1149
    .local v2, "nums":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_21

    .line 1150
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[dongseok.ok] length is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :goto_20
    return v1

    .line 1156
    :cond_21
    const/4 v3, 0x0

    :try_start_22
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 1157
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    .line 1156
    add-int/2addr v3, v4

    .line 1158
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    .line 1156
    add-int/2addr v3, v4

    .line 1159
    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_54} :catch_58

    move-result v4

    .line 1156
    add-int v1, v3, v4

    .local v1, "numIp":I
    goto :goto_20

    .line 1160
    .end local v1    # "numIp":I
    :catch_58
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[dongseok.ok] IP is not number format "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method


# virtual methods
.method public IsP2PIntialized()Z
    .registers 2

    .prologue
    .line 1388
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    return v0
.end method

.method public clearPortFilterRule()V
    .registers 6

    .prologue
    .line 730
    const-string v3, "MHPManager"

    const-string v4, "[antonio] clearPortFilterRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 733
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 735
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_14

    .line 747
    :cond_13
    :goto_13
    return-void

    .line 739
    :cond_14
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_13

    .line 741
    :try_start_18
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runClearPortFilterRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3}, Lcom/lge/systemservice/core/LGNetworkManager;->runClearPortFilterRule()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_13

    .line 743
    :catch_25
    move-exception v1

    .line 744
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runClearPortFilterRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public clearPortForwardRule()V
    .registers 6

    .prologue
    .line 774
    const-string v3, "MHPManager"

    const-string v4, "[antonio] clearPortForwardRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 777
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 779
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_14

    .line 791
    :cond_13
    :goto_13
    return-void

    .line 783
    :cond_14
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_13

    .line 785
    :try_start_18
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runClearPortForwardRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3}, Lcom/lge/systemservice/core/LGNetworkManager;->runClearPortForwardRule()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_13

    .line 787
    :catch_25
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runClearPortForwardRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public closeSoftAP()I
    .registers 4

    .prologue
    .line 246
    const-string v1, "MHPManager"

    const-string v2, "CloseSoftAP >>>>>"

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->closeSoftAP()I

    move-result v0

    .line 250
    if-nez v0, :cond_13

    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    .line 253
    :cond_13
    return v0
.end method

.method public createSoftAP()I
    .registers 3

    .prologue
    .line 192
    const-string v0, "MHPManager"

    const-string v1, "[MHP_GOOKY] createSoftAP >>>>>"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->createSoftAP()I

    move-result v0

    return v0
.end method

.method public destroySoftAP()I
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 201
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] destroySoftAP >>>>>"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v0, 0xa

    .line 205
    .local v0, "nCount":I
    :goto_a
    if-gtz v0, :cond_26

    .line 221
    :goto_c
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] softap destroy...\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->destroySoftAP()I

    move-result v1

    .line 223
    .local v1, "ret":I
    if-eqz v1, :cond_41

    .line 224
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] soft destroy failed\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-boolean v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    move v2, v1

    .line 242
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_25
    return v2

    .line 206
    .end local v2    # "ret":I
    :cond_26
    iget-boolean v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    if-eqz v3, :cond_32

    .line 207
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] Mobile Hotspot is turned On status... OK!!\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 211
    :cond_32
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] Mobile Hotspot is not turned On status... wait...\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-wide/16 v4, 0x64

    :try_start_3b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_65

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 229
    .restart local v1    # "ret":I
    :cond_41
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] softap close...\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->closeSoftAP()I

    move-result v1

    .line 232
    if-eqz v1, :cond_57

    .line 233
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] soft close failed\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 234
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_25

    .line 237
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_57
    const-string v3, "MHPManager"

    const-string v4, "[MHP_GOOKY] Unload driver\n"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->unloadP2PDriver()I

    .line 240
    iput-boolean v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    move v2, v1

    .line 242
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_25

    .end local v2    # "ret":I
    :catch_65
    move-exception v3

    goto :goto_a
.end method

.method public isEnabledSoftAp()Z
    .registers 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    return v0
.end method

.method public loadP2PDriver(I)I
    .registers 3
    .param p1, "wlan_country"    # I

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->loadP2PDriver()I

    move-result v0

    return v0
.end method

.method public openSoftAP()I
    .registers 7

    .prologue
    .line 146
    const-string v4, "MHPManager"

    const-string v5, "OpenSoftAP >>>>>"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/16 v2, 0x14

    .line 150
    .local v2, "nCount":I
    :goto_9
    if-gtz v2, :cond_3a

    .line 168
    :goto_b
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] start callback receive looper\n"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "Mobile Hotspot Handler Thread"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 172
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    if-nez v4, :cond_55

    .line 174
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 175
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_2d

    .line 176
    new-instance v4, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    invoke-direct {v4, p0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;-><init>(Lcom/lge/wifi/impl/mobilehotspot/MHPManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    .line 183
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_2d
    :goto_2d
    const/4 v3, 0x0

    .line 184
    .local v3, "ret":I
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v4}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->openSoftAP()I

    move-result v3

    .line 185
    if-nez v3, :cond_39

    .line 186
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->iP2PInitialized:Z

    .line 188
    :cond_39
    return v3

    .line 151
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v3    # "ret":I
    :cond_3a
    iget-boolean v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    if-nez v4, :cond_46

    .line 152
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] Mobile Hotspot is turned off status... OK!!\n"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 156
    :cond_46
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] Mobile Hotspot is not turned off status... wait...\n"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-wide/16 v4, 0x64

    :try_start_4f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_5d

    .line 159
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 180
    .restart local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_55
    const-string v4, "MHPManager"

    const-string v5, "[MHP_GOOKY] ERROR!!! mCallbackRcvLooper is not null"

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :catch_5d
    move-exception v4

    goto :goto_9
.end method

.method public p2pAddMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pAddMacFilterAllowList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public p2pAddMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pAddMacFilterDenyList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public p2pDeAuthMac(Ljava/lang/String;)I
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pDeAuthMac(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pDhcpdGetDNS1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1364
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetDNS2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1374
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetEndIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1334
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetGateway()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1354
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetStartIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1324
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdGetSubnetMask()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1344
    const/4 v0, 0x0

    return-object v0
.end method

.method public p2pDhcpdSetDNS1(Ljava/lang/String;)I
    .registers 3
    .param p1, "dns1"    # Ljava/lang/String;

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetDNS2(Ljava/lang/String;)I
    .registers 3
    .param p1, "dns2"    # Ljava/lang/String;

    .prologue
    .line 1369
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetEndIP(Ljava/lang/String;)I
    .registers 3
    .param p1, "endip"    # Ljava/lang/String;

    .prologue
    .line 1329
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetGateway(Ljava/lang/String;)I
    .registers 3
    .param p1, "gateway"    # Ljava/lang/String;

    .prologue
    .line 1349
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetStartIP(Ljava/lang/String;)I
    .registers 3
    .param p1, "startip"    # Ljava/lang/String;

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdSetSubnetMask(Ljava/lang/String;)I
    .registers 3
    .param p1, "mask"    # Ljava/lang/String;

    .prologue
    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method public p2pDhcpdStart()I
    .registers 10

    .prologue
    const/4 v4, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 859
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 860
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    .line 862
    .local v3, "service":Landroid/os/INetworkManagementService;
    if-nez v3, :cond_10

    .line 907
    :goto_f
    return v4

    .line 866
    :cond_10
    const-string v6, "MHPManager"

    const-string v7, "[antonio] setIpForwardingEnabled"

    invoke-static {v6, v7}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const/4 v6, 0x1

    :try_start_18
    invoke-interface {v3, v6}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_7e

    .line 891
    const-string v4, "MHPManager"

    const-string v6, "[antonio] startTethering"

    invoke-static {v4, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v4, 0x7

    new-array v1, v4, [Ljava/lang/String;

    .line 894
    .local v1, "dhcpOption":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v1, v5

    .line 895
    iget-object v4, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mDhcpRange:[Ljava/lang/String;

    aget-object v4, v4, v8

    aput-object v4, v1, v8

    .line 896
    const/4 v4, 0x2

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 897
    const-string v7, "start_ip"

    .line 896
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 898
    const/4 v4, 0x3

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 899
    const-string v7, "end_ip"

    .line 898
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 900
    const/4 v4, 0x4

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 901
    const-string v7, "mask"

    .line 900
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 902
    const/4 v4, 0x5

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 903
    const-string v7, "gateway"

    .line 902
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 904
    const/4 v4, 0x6

    iget-object v6, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 905
    const-string v7, "dns_server"

    .line 904
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    move v4, v5

    .line 907
    goto :goto_f

    .line 887
    .end local v1    # "dhcpOption":[Ljava/lang/String;
    :catch_7e
    move-exception v2

    .line 888
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[dongseok.ok] setIpForwardingEnabled "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method public p2pDhcpdStop()I
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 912
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 913
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 915
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_f

    .line 933
    :goto_e
    return v3

    .line 920
    :cond_f
    :try_start_f
    const-string v5, "MHPManager"

    const-string v6, "[antonio] stop setIpForwardingEnabled"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_26

    .line 927
    :try_start_1a
    const-string v5, "MHPManager"

    const-string v6, "[antonio] stopTethering"

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_3c

    move v3, v4

    .line 933
    goto :goto_e

    .line 922
    :catch_26
    move-exception v1

    .line 923
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MHPManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[antonio] Fail stop setIpForwardingEnabled"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 929
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3c
    move-exception v1

    .line 930
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "MHPManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[antonio] Fail stopTethering"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public p2pDisableNatMasquerade(Ljava/lang/String;)V
    .registers 8
    .param p1, "UpstreamIface"    # Ljava/lang/String;

    .prologue
    .line 639
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[antonio] disableNatMasquerade UpstreamIface "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    if-eqz p1, :cond_18

    .line 642
    sput-object p1, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    .line 644
    :cond_18
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 645
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 647
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_25

    .line 660
    :goto_24
    return-void

    .line 652
    :cond_25
    :try_start_25
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_24

    .line 653
    :catch_2d
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[antonio] Fail to disable NAT %s"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_47} :catch_48

    goto :goto_24

    :catch_48
    move-exception v3

    goto :goto_24
.end method

.method public p2pGetAllAssocDevicename()[Ljava/lang/String;
    .registers 12

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "count":I
    iget-object v7, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v7}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllAssocMacVZW()Ljava/util/List;

    move-result-object v5

    .line 473
    .local v5, "mStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v5, :cond_b

    .line 474
    const/4 v6, 0x0

    .line 494
    :cond_a
    return-object v6

    .line 477
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 479
    new-array v6, v0, [Ljava/lang/String;

    .line 480
    .local v6, "macList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 482
    .local v2, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 484
    .local v4, "iface":Landroid/net/wifi/ScanResult;
    iget-object v1, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 486
    .local v1, "devicename":Ljava/lang/String;
    const-string v8, "MHPManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[NEZZIMOM] devicename : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz v1, :cond_44

    .line 488
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-object v1, v6, v2

    move v2, v3

    .line 489
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_16

    .line 490
    :cond_44
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    const-string v8, "No name"

    aput-object v8, v6, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_16
.end method

.method public p2pGetAllAssocMac()[Ljava/lang/String;
    .registers 12

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, "count":I
    iget-object v7, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v7}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllAssocMacVZW()Ljava/util/List;

    move-result-object v4

    .line 444
    .local v4, "mStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v4, :cond_b

    .line 445
    const/4 v5, 0x0

    .line 462
    :cond_a
    return-object v5

    .line 448
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 450
    new-array v5, v0, [Ljava/lang/String;

    .line 451
    .local v5, "macList":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 453
    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 454
    .local v3, "iface":Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 456
    .local v6, "macaddr":Ljava/lang/String;
    const-string v8, "MHPManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[NEZZIMOM] macaddr : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v6, v5, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_16
.end method

.method public p2pGetAllow11B()I
    .registers 3

    .prologue
    .line 605
    const-string v0, "MHPManager"

    const-string v1, "[DPKIM] p2pGetAllow11B"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllow11B()I

    move-result v0

    return v0
.end method

.method public p2pGetAssocIPAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 500
    const-string v0, ""

    .line 502
    .local v0, "deviceIp":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v3}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAllAssocMacVZW()Ljava/util/List;

    move-result-object v2

    .line 504
    .local v2, "mStations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v2, :cond_d

    .line 505
    const-string v3, ""

    .line 519
    :goto_c
    return-object v3

    .line 508
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 514
    :goto_17
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[NEZZIMOM] deviceIp : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    if-eqz v0, :cond_42

    move-object v3, v0

    .line 517
    goto :goto_c

    .line 508
    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 509
    .local v1, "iface":Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_11

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 510
    iget-object v0, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 511
    goto :goto_17

    .line 519
    .end local v1    # "iface":Landroid/net/wifi/ScanResult;
    :cond_42
    const-string v3, ""

    goto :goto_c
.end method

.method public p2pGetAssocIpHostname(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1057
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1058
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 1060
    .local v4, "service":Landroid/os/INetworkManagementService;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    .line 1064
    .local v2, "ip_hostname":[Ljava/lang/String;
    if-nez v4, :cond_11

    move-object v3, v2

    .line 1083
    .end local v2    # "ip_hostname":[Ljava/lang/String;
    .local v3, "ip_hostname":[Ljava/lang/String;
    :goto_10
    return-object v3

    .line 1070
    .end local v3    # "ip_hostname":[Ljava/lang/String;
    .restart local v2    # "ip_hostname":[Ljava/lang/String;
    :cond_11
    sget-object v5, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v5, :cond_4d

    .line 1072
    :try_start_15
    const-string v5, "MHPManager"

    const-string v6, "sLGNetworkManager is not null calling getAssociatedIpHostnameWithMac"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v2, 0x0

    .line 1075
    if-eqz v2, :cond_4d

    .line 1076
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ip address : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hostname : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4d} :catch_4f

    :cond_4d
    :goto_4d
    move-object v3, v2

    .line 1083
    .end local v2    # "ip_hostname":[Ljava/lang/String;
    .restart local v3    # "ip_hostname":[Ljava/lang/String;
    goto :goto_10

    .line 1079
    .end local v3    # "ip_hostname":[Ljava/lang/String;
    .restart local v2    # "ip_hostname":[Ljava/lang/String;
    :catch_4f
    move-exception v1

    .line 1080
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method public p2pGetAssocListCount()I
    .registers 5

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "count":I
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAssocListCount()I

    move-result v0

    .line 433
    const-string v1, "MHPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[MHP_GOOKY] Assoc Count >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return v0
.end method

.method public p2pGetAuthentication()I
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetAuthentication()I

    move-result v0

    return v0
.end method

.method public p2pGetDHCPDNS1()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1036
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPDNS1()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1038
    const-string v1, "dns_server"

    .line 1037
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPDNS2()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1043
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPDNS2()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1045
    const-string v1, "cdma_dns_server_2"

    .line 1044
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPEndAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 970
    const-string v1, "end_ip"

    .line 969
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPGateway()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1030
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPGateway()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1032
    const-string v1, "gateway"

    .line 1031
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPMask()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1023
    const-string v0, "MHPManager"

    const-string v1, "p2pGetDHCPMask()"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1025
    const-string v1, "mask"

    .line 1024
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetDHCPStartAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 965
    const-string v1, "start_ip"

    .line 964
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetEncryption()I
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetEncryption()I

    move-result v0

    return v0
.end method

.method public p2pGetFrequency()I
    .registers 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetFrequency()I

    move-result v0

    return v0
.end method

.method public p2pGetHideSSID()I
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetHideSSID()I

    move-result v0

    return v0
.end method

.method public p2pGetMacFilterByIndex(I)Ljava/lang/String;
    .registers 3
    .param p1, "iIndex"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterByIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetMacFilterCount()I
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterCount()I

    move-result v0

    return v0
.end method

.method public p2pGetMacFilterMode()I
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMacFilterMode()I

    move-result v0

    return v0
.end method

.method public p2pGetMaxClients()I
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetMaxClients()I

    move-result v0

    return v0
.end method

.method public p2pGetNetDynamicInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetDynamicInterface:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetNetInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetSocialChannel()I
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetSocialChannel()I

    move-result v0

    return v0
.end method

.method public p2pGetSoftapIsolation()Z
    .registers 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetSoftapIsolation()Z

    move-result v0

    return v0
.end method

.method public p2pGetStaticIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetStaticSubnet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    return-object v0
.end method

.method public p2pGetWEPIndex()I
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPIndex()I

    move-result v0

    return v0
.end method

.method public p2pGetWEPKey1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWEPKey2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWEPKey3()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWEPKey4()Ljava/lang/String;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWEPKey4()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetWPAKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pGetWPAKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pIfconfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/String;

    .prologue
    .line 1098
    return-void
.end method

.method public p2pIfconfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "mask"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1107
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 1110
    .local v4, "service":Landroid/os/INetworkManagementService;
    if-nez v4, :cond_d

    .line 1145
    :goto_c
    return-void

    .line 1116
    :cond_d
    const/4 v2, 0x0

    .line 1118
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[dongseok.ok] p2pIfconfig START "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :try_start_36
    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 1122
    new-instance v5, Landroid/net/LinkAddress;

    .line 1123
    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x18

    invoke-direct {v5, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1122
    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1124
    const-string v5, "down"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1125
    const-string v5, "up"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1126
    const-string v5, "up"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1127
    const-string v5, "running"

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1128
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1136
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[dongseok.ok] ip : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subnetmask : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-interface {v4, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_93} :catch_95
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_93} :catch_ac

    goto/16 :goto_c

    .line 1138
    :catch_95
    move-exception v3

    .line 1139
    .local v3, "re":Landroid/os/RemoteException;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[dongseok.ok] getInterfaceConfig error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1141
    .end local v3    # "re":Landroid/os/RemoteException;
    :catch_ac
    move-exception v1

    .line 1142
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MHPManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[dongseok.ok] p2pifconfig error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public p2pIfconfigUp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 1093
    return-void
.end method

.method public p2pIpForwardingEnableStart()V
    .registers 7

    .prologue
    .line 821
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 822
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 824
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_d

    .line 837
    :cond_c
    :goto_c
    return-void

    .line 829
    :cond_d
    :try_start_d
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getIpForwardingEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 830
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_c

    .line 832
    :catch_18
    move-exception v1

    .line 833
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " setIpForwardingEnabled failed can not runSetPortForwardRule "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public p2pIpForwardingEnableStop()V
    .registers 7

    .prologue
    .line 839
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 840
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 842
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_d

    .line 854
    :cond_c
    :goto_c
    return-void

    .line 847
    :cond_d
    :try_start_d
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getIpForwardingEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 848
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_c

    .line 850
    :catch_18
    move-exception v1

    .line 851
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " setIpForwardingEnabled failed can not runSetPortForwardRule "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public p2pMacFilterremoveAllowedList(Ljava/lang/String;)I
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pMacFilterremoveAllowedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pMacFilterremoveDeniedList(Ljava/lang/String;)I
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pMacFilterremoveDeniedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pMacaddracl(I)Z
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pMacaddracl(I)Z

    move-result v0

    return v0
.end method

.method public p2pMssChange(Ljava/lang/String;)I
    .registers 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1378
    const/4 v0, 0x0

    return v0
.end method

.method public p2pMssRestore()I
    .registers 2

    .prologue
    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method public p2pNatMasqurade(Ljava/lang/String;)V
    .registers 8
    .param p1, "UpstreamIface"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[antonio] p2pNatMasqurade UpstreamIface "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-eqz p1, :cond_18

    .line 615
    sput-object p1, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    .line 617
    :cond_18
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 618
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 620
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_25

    .line 634
    :goto_24
    return-void

    .line 625
    :cond_25
    :try_start_25
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    sget-object v4, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->newUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_24

    .line 626
    :catch_2d
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v3, "MHPManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[antonio] Fail to NAT %s"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_47} :catch_48

    goto :goto_24

    .line 631
    :catch_48
    move-exception v3

    const-string v3, "MHPManager"

    const-string v4, "[antonio] Fail untetherInterface"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public p2pNatRuleClear()V
    .registers 6

    .prologue
    .line 665
    const-string v3, "MHPManager"

    const-string v4, "[antonio] p2pNatRuleClear"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 668
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 670
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_14

    .line 682
    :cond_13
    :goto_13
    return-void

    .line 674
    :cond_14
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_13

    .line 676
    :try_start_18
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runClearNatRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3}, Lcom/lge/systemservice/core/LGNetworkManager;->runClearNatRule()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_13

    .line 678
    :catch_25
    move-exception v1

    .line 679
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runClearNatRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public p2pNatSetRule(Ljava/lang/String;)V
    .registers 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 688
    return-void
.end method

.method public p2pRoute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "ifs"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 1103
    return-void
.end method

.method public p2pSetAllow11B(I)I
    .registers 5
    .param p1, "iCommand"    # I

    .prologue
    .line 599
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[DPKIM] p2pSetAllow11B"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetAllow11B(I)I

    move-result v0

    return v0
.end method

.method public p2pSetAuthentication(I)I
    .registers 3
    .param p1, "iCommand"    # I

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetAuthentication(I)I

    move-result v0

    return v0
.end method

.method public p2pSetDHCPDNS1(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 999
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dns_server"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1001
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPDNS1() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result : true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const/4 v0, 0x1

    .line 1006
    :goto_29
    return v0

    .line 1005
    :cond_2a
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPDNS1() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result : false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public p2pSetDHCPDNS2(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cdma_dns_server_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1013
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPDNS2() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const/4 v0, 0x1

    .line 1018
    :goto_29
    return v0

    .line 1017
    :cond_2a
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPDNS2() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public p2pSetDHCPEndAddress(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "end_ip"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 954
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPEndAddress(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v0, 0x1

    .line 959
    :goto_29
    return v0

    .line 958
    :cond_2a
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPEndAddress(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public p2pSetDHCPGateway(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gateway"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 989
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPGateway() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/4 v0, 0x1

    .line 994
    :goto_29
    return v0

    .line 993
    :cond_2a
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPGateway() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public p2pSetDHCPMask(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mask"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 977
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPMask(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result : true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v0, 0x1

    .line 982
    :goto_29
    return v0

    .line 981
    :cond_2a
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPMask(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public p2pSetDHCPStartAddress(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "start_ip"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 941
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPStartAddress(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const/4 v0, 0x1

    .line 946
    :goto_29
    return v0

    .line 945
    :cond_2a
    const-string v0, "MHPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetDHCPStartAddress(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public p2pSetEncryption(I)I
    .registers 3
    .param p1, "iCommand"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetEncryption(I)I

    move-result v0

    return v0
.end method

.method public p2pSetFrequency(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetFrequency(I)V

    .line 1194
    return-void
.end method

.method public p2pSetHideSSID(I)I
    .registers 3
    .param p1, "iCommand"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetHideSSID(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMacFilterByIndex(ILjava/lang/String;)I
    .registers 4
    .param p1, "iIndex"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterByIndex(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetMacFilterCount(I)I
    .registers 3
    .param p1, "iCount"    # I

    .prologue
    .line 545
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterCount(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMacFilterMode(I)I
    .registers 3
    .param p1, "iMode"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMacFilterMode(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMaxAssoc(I)I
    .registers 3
    .param p1, "max_assoc_num"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMaxAssoc(I)I

    move-result v0

    return v0
.end method

.method public p2pSetMaxClients(I)Z
    .registers 3
    .param p1, "num"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetMaxClients(I)Z

    move-result v0

    return v0
.end method

.method public p2pSetNetDynamicInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "ifs"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetDynamicInterface:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public p2pSetNetInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "ifs"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public p2pSetSSID(Ljava/lang/String;)I
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSSID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetSocialChannel(I)I
    .registers 3
    .param p1, "iCommand"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSocialChannel(I)I

    move-result v0

    return v0
.end method

.method public p2pSetSoftapIsolation(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSoftapIsolation(Z)Z

    move-result v0

    return v0
.end method

.method public p2pSetStaticIP(Ljava/lang/String;)V
    .registers 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    .line 285
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    if-eqz v0, :cond_14

    .line 286
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIfconfigUp(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetIPAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIfconfigUp(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_14
    return-void
.end method

.method public p2pSetStaticSubnet(Ljava/lang/String;)V
    .registers 4
    .param p1, "netmask"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    .line 300
    iget-boolean v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mSoftAPOn:Z

    if-eqz v0, :cond_d

    .line 301
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetInterface:Ljava/lang/String;

    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mNetMask:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIfconfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_d
    return-void
.end method

.method public p2pSetTxPower(I)I
    .registers 3
    .param p1, "txpower"    # I

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetTxPower(I)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPIndex(I)I
    .registers 3
    .param p1, "iCommand"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPIndex(I)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey1(Ljava/lang/String;)I
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey2(Ljava/lang/String;)I
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey2(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey3(Ljava/lang/String;)I
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey3(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWEPKey4(Ljava/lang/String;)I
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWEPKey4(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pSetWPAKey(Ljava/lang/String;)I
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetWPAKey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2premoveAlltheList()I
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2premoveAlltheList()I

    move-result v0

    return v0
.end method

.method public sendP2PNotificaiton(I)V
    .registers 4
    .param p1, "notiCode"    # I

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    if-eqz v1, :cond_a

    .line 1218
    move v0, p1

    .line 1219
    .local v0, "what":I
    iget-object v1, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mCallbackRcvLooper:Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;

    invoke-virtual {v1, v0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager$MHPRcvLoop;->sendEmptyMessage(I)Z

    .line 1221
    .end local v0    # "what":I
    :cond_a
    return-void
.end method

.method public setCountryCode(I)I
    .registers 3
    .param p1, "countrycode"    # I

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetCountryCode(I)I

    move-result v0

    return v0
.end method

.method public setIsolationEnabled(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->p2pSetSoftapIsolation(Z)Z

    move-result v0

    return v0
.end method

.method public setMssSize(Ljava/lang/String;)V
    .registers 2
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 703
    return-void
.end method

.method public setNatForward(Ljava/lang/String;)V
    .registers 7
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 707
    const-string v3, "MHPManager"

    const-string v4, "[antonio] setNatForward"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 710
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 712
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_14

    .line 725
    :cond_13
    :goto_13
    return-void

    .line 716
    :cond_14
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_13

    .line 718
    :try_start_18
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runSetNatForwardRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3, p1}, Lcom/lge/systemservice/core/LGNetworkManager;->runSetNatForwardRule(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_13

    .line 720
    :catch_25
    move-exception v1

    .line 721
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runSetNatForwardRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setPortFilterRule(Ljava/lang/String;I)V
    .registers 8
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 752
    const-string v3, "MHPManager"

    const-string v4, "[antonio] setPortFilterRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 755
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 757
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_14

    .line 769
    :cond_13
    :goto_13
    return-void

    .line 761
    :cond_14
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_13

    .line 763
    :try_start_18
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runSetPortFilterRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3, p1, p2}, Lcom/lge/systemservice/core/LGNetworkManager;->runSetPortFilterRule(Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_13

    .line 765
    :catch_25
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runSetPortFilterRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public setPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "addORdel"    # I

    .prologue
    .line 796
    const-string v3, "MHPManager"

    const-string v4, "[antonio] setPortForwardRule"

    invoke-static {v3, v4}, Lcom/lge/wifi/impl/mobilehotspot/MHPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 799
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 801
    .local v2, "service":Landroid/os/INetworkManagementService;
    if-nez v2, :cond_14

    .line 818
    :cond_13
    :goto_13
    return-void

    .line 805
    :cond_14
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    if-nez p3, :cond_22

    .line 806
    :cond_1a
    const-string v3, "MHPManager"

    const-string v4, " setIpForwardingEnabled but nothing to set "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 809
    :cond_22
    invoke-virtual {p0}, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->p2pIpForwardingEnableStart()V

    .line 810
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v3, :cond_13

    .line 812
    :try_start_29
    const-string v3, "MHPManager"

    const-string v4, "sLGNetworkManager is not null calling runSetPortForwardRule"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object v3, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->sLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/lge/systemservice/core/LGNetworkManager;->runSetPortForwardRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_36

    goto :goto_13

    .line 814
    :catch_36
    move-exception v1

    .line 815
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MHPManager"

    const-string v4, "error in runSetPortForwardRule : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public unloadP2PDriver()I
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/lge/wifi/impl/mobilehotspot/MHPManager;->mWifiHostapdWrapperBcm:Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiHostapdWrapperBcm;->unloadP2PDriver()I

    move-result v0

    return v0
.end method
