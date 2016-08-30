.class public Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;
.super Ljava/lang/Object;
.source "WifiHostapdApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;,
        Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiHostapApi"


# instance fields
.field private final associatedStaMacArrayLst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

.field private final mContext:Landroid/content/Context;

.field private mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field private mMacFilterCount:I

.field private mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

.field private mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

.field private mSsid:Ljava/lang/String;

.field private mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

.field private final macFilterLst:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    .line 59
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    const-string v1, "wlan0"

    invoke-direct {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->macFilterLst:Ljava/util/ArrayList;

    .line 66
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterCount:I

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mSsid:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 71
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 72
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 74
    return-void
.end method

.method private AddMacFilterAllowList()Z
    .registers 4

    .prologue
    .line 85
    const-string v0, "WifiHostapApi"

    const-string v1, "AddMacFilterAllowList : "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 88
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    .line 89
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->macFilterLst:Ljava/util/ArrayList;

    .line 87
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v0

    .line 89
    if-nez v0, :cond_1a

    .line 90
    const-string v0, "WifiHostapApi"

    const-string v1, "AddMacFilterAllowList : SetAccessControlLists() Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method private AddMacFilterDenyList()Z
    .registers 4

    .prologue
    .line 124
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 125
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    .line 126
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->macFilterLst:Ljava/util/ArrayList;

    .line 124
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v0

    .line 126
    if-nez v0, :cond_13

    .line 127
    const-string v0, "WifiHostapApi"

    const-string v1, "AddMacFilterDenyList : SetAccessControlLists() Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private CheckAutoShutOffTimeValidity(I)Z
    .registers 3
    .param p1, "time"    # I

    .prologue
    .line 154
    sparse-switch p1, :sswitch_data_8

    .line 168
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 165
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 154
    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x5 -> :sswitch_5
        0xa -> :sswitch_5
        0x14 -> :sswitch_5
        0x1e -> :sswitch_5
        0x28 -> :sswitch_5
        0x32 -> :sswitch_5
        0x3c -> :sswitch_5
        0x5a -> :sswitch_5
        0x78 -> :sswitch_5
    .end sparse-switch
.end method

.method private CheckMacAddressValidity(Ljava/lang/String;)Z
    .registers 6
    .param p1, "macAdd"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v1, "(([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2})"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 175
    .local v0, "bIsMacAdd":Z
    if-nez v0, :cond_24

    .line 176
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CheckMacAddressValidity not MAC add ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    .line 181
    :goto_23
    return v1

    .line 179
    :cond_24
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CheckMacAddressValidity true ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x1

    goto :goto_23
.end method

.method private CheckSecurityTypeValidity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z
    .registers 5
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .param p3, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method private CheckWepKeyValidity(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method private ResetToDefault()Z
    .registers 2

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method private RetrieveAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .registers 2

    .prologue
    .line 508
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 511
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    return-object v0
.end method

.method private RetrieveMacFilterAllowList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v1, "macAllowLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 525
    .local v2, "maclists":[Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_7
    invoke-static {v3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getAccessControlLists(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_10} :catch_1f

    move-result-object v2

    .line 530
    :goto_11
    if-eqz v2, :cond_17

    .line 531
    array-length v4, v2

    const/4 v3, 0x0

    :goto_15
    if-lt v3, v4, :cond_28

    .line 536
    :cond_17
    const-string v3, "WifiHostapApi"

    const-string v4, "RetrieveMacFilterAllowList "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-object v1

    .line 527
    :catch_1f
    move-exception v3

    const-string v3, "WifiHostapApi"

    const-string v4, "RetrieveMacFilterAllowList There is no client "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 531
    :cond_28
    aget-object v0, v2, v3

    .line 532
    .local v0, "list":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method private RetrieveMacFilterDenyList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v1, "macDenyLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 551
    .local v2, "maclists":[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_8
    invoke-static {v4}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getAccessControlLists(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_11} :catch_1f

    move-result-object v2

    .line 556
    :goto_12
    if-eqz v2, :cond_17

    .line 557
    array-length v4, v2

    :goto_15
    if-lt v3, v4, :cond_28

    .line 562
    :cond_17
    const-string v3, "WifiHostapApi"

    const-string v4, "RetrieveMacFilterDenyList "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-object v1

    .line 553
    :catch_1f
    move-exception v4

    const-string v4, "WifiHostapApi"

    const-string v5, "RetrieveMacFilterDenyList There is no client "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 557
    :cond_28
    aget-object v0, v2, v3

    .line 558
    .local v0, "list":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method private RetrieveSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .registers 2

    .prologue
    .line 567
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 570
    .local v0, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    return-object v0
.end method

.method private RetrieveSsid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 574
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 576
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_2a

    .line 578
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RetrieveSsid : not supported ssid length ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_29
    const/4 v0, 0x0

    .end local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2a
    return-object v0
.end method

.method private SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z
    .registers 9
    .param p1, "listType"    # Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;
    .param p2, "cmdType"    # Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;",
            "Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 594
    const-string v2, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetAccessControlLists : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 599
    .local v0, "filter":[Ljava/lang/String;
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    if-ne p1, v2, :cond_34

    .line 604
    invoke-static {v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setAccessControlLists(I[Ljava/lang/String;)Z

    move-result v1

    .line 613
    :cond_33
    :goto_33
    return v1

    .line 606
    :cond_34
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    if-ne p1, v2, :cond_33

    .line 611
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setAccessControlLists(I[Ljava/lang/String;)Z

    move-result v1

    goto :goto_33
.end method

.method private SetAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)Z
    .registers 5
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .prologue
    .line 638
    const-string v0, "auth_algs="

    .line 640
    .local v0, "sCmdVal":Ljava/lang/String;
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v1, p1, :cond_1b

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    :goto_19
    const/4 v1, 0x0

    return v1

    .line 642
    :cond_1b
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v1, p1, :cond_33

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    goto :goto_19

    .line 645
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method private SetEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z
    .registers 4
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method private SetSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z
    .registers 3
    .param p1, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method private SyncMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    .registers 3

    .prologue
    .line 979
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 983
    .local v0, "filterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->UpdateMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)Z

    .line 985
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v1

    return-object v1
.end method

.method private UpdateAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)V
    .registers 2
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 990
    return-void
.end method

.method private UpdateEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V
    .registers 2
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    .line 994
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 995
    return-void
.end method

.method private UpdateMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)Z
    .registers 6
    .param p1, "filterMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .prologue
    .line 1003
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateMacFilterMode ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] <- ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-eq p1, v1, :cond_63

    .line 1007
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-eq v1, v2, :cond_4b

    .line 1012
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-ne v1, v2, :cond_65

    .line 1014
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->RetrieveMacFilterAllowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1016
    .local v0, "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 1017
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    .line 1016
    invoke-direct {p0, v1, v2, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 1018
    if-nez v1, :cond_4b

    .line 1019
    const-string v1, "WifiHostapApi"

    const-string v2, "UpdateMacFilterMode : SetAccessControlLists(WHITE) Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    .end local v0    # "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4b
    :goto_4b
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1034
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UpdateMacFilterMode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_63
    const/4 v1, 0x1

    return v1

    .line 1023
    :cond_65
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->RetrieveMacFilterDenyList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1025
    .restart local v0    # "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 1026
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    .line 1025
    invoke-direct {p0, v1, v2, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 1027
    if-nez v1, :cond_4b

    .line 1028
    const-string v1, "WifiHostapApi"

    const-string v2, "UpdateMacFilterMode : SetAccessControlLists(BLACK) Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method private UpdateSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)V
    .registers 2
    .param p1, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1041
    return-void
.end method


# virtual methods
.method public AddMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "macList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 100
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AddMacFilterAllowList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 105
    if-nez p2, :cond_35

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    .line 104
    :goto_26
    invoke-direct {p0, v2, v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 107
    if-nez v1, :cond_33

    .line 108
    const-string v1, "WifiHostapApi"

    const-string v2, "AddMacFilterAllowList : SetAccessControlLists() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_33
    const/4 v1, 0x1

    return v1

    .line 106
    :cond_35
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    goto :goto_26
.end method

.method public AddMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "macList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AddMacFilterDenyList : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;

    .line 140
    if-nez p2, :cond_31

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    .line 139
    :goto_22
    invoke-direct {p0, v2, v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 142
    if-nez v1, :cond_2f

    .line 143
    const-string v1, "WifiHostapApi"

    const-string v2, "AddMacFilterDenyList : SetAccessControlLists() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2f
    const/4 v1, 0x1

    return v1

    .line 141
    :cond_31
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi$WifiQsapAclCmdType;

    goto :goto_22
.end method

.method public EnableSoftAp(Z)Z
    .registers 5
    .param p1, "bEnable"    # Z

    .prologue
    .line 197
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnableSoftAp : bEnable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public GetAllAssocMacList()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->RetrieveAssoStaMacList()Z

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetAssoStaMacListCount()I

    move-result v0

    .line 212
    if-nez v0, :cond_c

    .line 213
    const/4 v2, 0x0

    .line 224
    :cond_b
    return-object v2

    .line 216
    :cond_c
    new-array v2, v0, [Ljava/lang/String;

    .line 218
    .local v2, "items":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_b

    .line 220
    iget-object v4, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "macaddr":Ljava/lang/String;
    aput-object v3, v2, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public GetApIsolation()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "apIsolation":I
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_isolated"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 234
    if-nez v0, :cond_11

    .line 238
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public GetAssoStaMacListCount()I
    .registers 5

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->RetrieveAssoStaMacList()Z

    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "count":I
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 253
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetAssoStaMacListCount : Assoc Count ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v0
.end method

.method public GetAutoShutOffTime()I
    .registers 2

    .prologue
    .line 262
    const/4 v0, -0x1

    return v0
.end method

.method public GetChannel()I
    .registers 7

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "sReturnVal":I
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_frequency"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 271
    .local v0, "sRet_frequency":I
    if-nez v0, :cond_5c

    .line 272
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_2g_channel"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 274
    if-eqz v1, :cond_3f

    .line 275
    if-ltz v1, :cond_25

    const/16 v3, 0xe

    if-le v1, v3, :cond_40

    .line 276
    :cond_25
    const-string v3, "WifiHostapApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetChannel unsupported channel ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3f
    :goto_3f
    return v2

    .line 279
    :cond_40
    const-string v2, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetChannel  ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 280
    goto :goto_3f

    .line 285
    :cond_5c
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_5g_channel"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 287
    const-string v2, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetChannel    ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 288
    goto :goto_3f
.end method

.method public GetCountryCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 295
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mhs_country"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "sReturnVal":Ljava/lang/String;
    return-object v0
.end method

.method public GetHiddenSsid()Z
    .registers 5

    .prologue
    .line 304
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 306
    .local v0, "sReturnVal":Z
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pGetHideSSID  ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v0
.end method

.method public GetMacFilterByIndex(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetMacFilterCount()I
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterCount:I

    return v0
.end method

.method public GetMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    .registers 4

    .prologue
    .line 329
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetMacFilterMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    return-object v0
.end method

.method public GetMaxNumOfClients()I
    .registers 2

    .prologue
    .line 336
    const/4 v0, -0x1

    return v0
.end method

.method public GetOperationMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;
    .registers 2

    .prologue
    .line 341
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_MAX:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 343
    .local v0, "opMode":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;
    return-object v0
.end method

.method public GetSecurityType()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;
    .registers 5

    .prologue
    .line 350
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    return-object v0
.end method

.method public GetSoftApStatus()Z
    .registers 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_26

    .line 360
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetSoftApStatus : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public GetSsid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public GetWepKey1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetWepKey2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetWepKey3()Ljava/lang/String;
    .registers 2

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetWepKey4()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetWepKeyIndex()I
    .registers 2

    .prologue
    .line 398
    const/4 v0, -0x1

    return v0
.end method

.method public GetWpaKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method public MacFilterremoveAllowedList(Ljava/lang/String;)I
    .registers 6
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 410
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MacFilterremoveAllowedList ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->HostapRemoveMacInList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 416
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public MacFilterremoveDeniedList(Ljava/lang/String;)I
    .registers 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MacFilterremoveDeniedList ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->HostapRemoveMacInList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 426
    const/4 v0, 0x1

    .line 429
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public RetrieveAssoStaMacList()Z
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public SetApIsolation(Z)Z
    .registers 5
    .param p1, "apIsolation"    # Z

    .prologue
    .line 623
    if-eqz p1, :cond_e

    .line 624
    const/4 v0, 0x1

    .line 629
    .local v0, "ap_int":I
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "isolate":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v2, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setApIsolation(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 627
    .end local v0    # "ap_int":I
    .end local v1    # "isolate":Ljava/lang/String;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "ap_int":I
    goto :goto_3
.end method

.method public SetAutoShutOffTime(I)Z
    .registers 6
    .param p1, "time"    # I

    .prologue
    const/4 v3, 0x0

    .line 657
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->CheckAutoShutOffTimeValidity(I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 658
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetAutoShutOffTime : unsupported time ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_21
    return v3
.end method

.method public SetChannel(I)Z
    .registers 7
    .param p1, "channel"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_frequency"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 676
    .local v0, "sRet_frequency":I
    if-nez v0, :cond_8c

    .line 677
    if-ltz p1, :cond_16

    const/16 v3, 0xe

    if-le p1, v3, :cond_32

    .line 678
    :cond_16
    const-string v1, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetChannel : unsupported channel ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 699
    :goto_31
    return v1

    .line 683
    :cond_32
    if-nez p1, :cond_66

    .line 684
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_2g_channel"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 685
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_2g_channel"

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 692
    :goto_4b
    const-string v2, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetChannel : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 689
    :cond_66
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mhs_2g_channel"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    const-string v2, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "p2pSetSocialChannel : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 696
    :cond_8c
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mhs_5g_channel"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 698
    const-string v2, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetChannel    ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public SetCommit()Z
    .registers 3

    .prologue
    .line 712
    const-string v0, "WifiHostapApi"

    const-string v1, "SetCommit ----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public SetCountryCode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 718
    if-eqz p1, :cond_29

    .line 719
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mhs_country"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 720
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetCountryCode : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x1

    .line 723
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public SetDisassociateStation(Ljava/lang/String;)Z
    .registers 6
    .param p1, "staMac"    # Ljava/lang/String;

    .prologue
    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DISASSOCIATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "sCmdVal":Ljava/lang/String;
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetDisassociateStation : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v1, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setApDiassoc(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_33

    const/4 v1, 0x1

    :goto_32
    return v1

    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public SetHiddenSsid(Z)Z
    .registers 5
    .param p1, "hiddenSsid"    # Z

    .prologue
    .line 748
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "p2pSetHideSSID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method public SetMacFilterByIndex(ILjava/lang/String;)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 768
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMacFilterByIndex ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    if-ltz p1, :cond_5d

    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->GetMacFilterCount()I

    move-result v0

    if-ge p1, v0, :cond_5d

    .line 775
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_41

    .line 776
    invoke-direct {p0, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->CheckMacAddressValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 777
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 778
    const/4 v0, 0x1

    .line 787
    :goto_40
    return v0

    .line 781
    :cond_41
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetMacFilterByIndex failure : Out of list size["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    goto :goto_40

    .line 784
    :cond_5d
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetMacFilterByIndex failure : Out of index range["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method public SetMacFilterCount(I)Z
    .registers 6
    .param p1, "filterCount"    # I

    .prologue
    .line 795
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetMacFilterCount ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iput p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterCount:I

    .line 804
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mMacFilterCount:I

    if-lt v0, v1, :cond_28

    .line 809
    const/4 v1, 0x1

    return v1

    .line 806
    :cond_28
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->macFilterLst:Ljava/util/ArrayList;

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public SetMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)Z
    .registers 6
    .param p1, "filterMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .prologue
    const/4 v3, 0x0

    .line 818
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetMacFilterMode : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-ne v0, p1, :cond_23

    .line 835
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->AddMacFilterAllowList()Z

    .line 850
    :goto_22
    return v3

    .line 849
    :cond_23
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->AddMacFilterDenyList()Z

    goto :goto_22
.end method

.method public SetMaxNumOfClients(I)Z
    .registers 7
    .param p1, "numClients"    # I

    .prologue
    const/4 v1, 0x0

    .line 859
    if-ltz p1, :cond_7

    const/16 v2, 0xa

    if-le p1, v2, :cond_22

    .line 860
    :cond_7
    const-string v2, "WifiHostapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetMaxNumOfClients : unsupported num ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_21
    :goto_21
    return v1

    .line 863
    :cond_22
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "max":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v2, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setMaxClients(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_21

    const/4 v1, 0x1

    goto :goto_21
.end method

.method public SetOperationMode(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;)Z
    .registers 5
    .param p1, "opMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .prologue
    .line 869
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetOperationMode  ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method public SetSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;)Z
    .registers 3
    .param p1, "secType"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    .prologue
    .line 886
    const/4 v0, 0x1

    return v0
.end method

.method public SetSsid(Ljava/lang/String;)Z
    .registers 6
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_25

    .line 891
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetSsid : not supported ssid length ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_24
    :goto_24
    return v0

    .line 895
    :cond_25
    if-eqz p1, :cond_24

    .line 896
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiVZWConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 897
    const-string v0, "WifiHostapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetSsid : ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->UpdateSsid(Ljava/lang/String;)V

    .line 899
    const/4 v0, 0x1

    goto :goto_24
.end method

.method public SetWepKey1(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method public SetWepKey2(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public SetWepKey3(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method public SetWepKey4(Ljava/lang/String;)Z
    .registers 3
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 937
    const/4 v0, 0x0

    return v0
.end method

.method public SetWepKeyIndex(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public SetWpaKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "phassphrase"    # Ljava/lang/String;

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public SyncConfigVaules()V
    .registers 3

    .prologue
    .line 955
    const-string v0, "WifiHostapApi"

    const-string v1, "SyncConfigVaules"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method public SyncConfigVaulesWithDriver()V
    .registers 3

    .prologue
    .line 966
    const-string v0, "WifiHostapApi"

    const-string v1, "SyncConfigVaulesWithDriver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method public UpdateSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;)Z
    .registers 6
    .param p1, "secType"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    .prologue
    .line 1045
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v0

    .line 1046
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v2

    .line 1047
    .local v2, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v1

    .line 1049
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    invoke-direct {p0, v0, v2, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->CheckSecurityTypeValidity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1050
    const/4 v3, 0x0

    .line 1056
    :goto_13
    return v3

    .line 1052
    :cond_14
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->UpdateAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)V

    .line 1053
    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->UpdateSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)V

    .line 1054
    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->UpdateEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1056
    const/4 v3, 0x1

    goto :goto_13
.end method

.method public UpdateSsid(Ljava/lang/String;)V
    .registers 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mSsid:Ljava/lang/String;

    .line 1061
    return-void
.end method

.method public getWpsNfcConfTokenFromAP(II)Ljava/lang/String;
    .registers 5
    .param p1, "isEnabled"    # I
    .param p2, "isNDEF"    # I

    .prologue
    .line 1095
    const-string v0, "WifiHostapApi"

    const-string v1, "WPS : getWpsNfcConfTokenFromAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getWpsNfcConfTokenFromAP(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWpsNfcHandoverSelect(I)Ljava/lang/String;
    .registers 4
    .param p1, "isNDEF"    # I

    .prologue
    .line 1100
    const-string v0, "WifiHostapApi"

    const-string v1, "WPS : getWpsNfcHandoverSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->getWpsNfcHandoverSelect(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAlltheList()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 445
    const-string v1, "WifiHostapApi"

    const-string v2, "removeAlltheList "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v1, "all"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->HostapRemoveMacInList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 448
    const/4 v0, 0x1

    .line 451
    :cond_11
    return v0
.end method

.method public removeMacFilterAllowList()I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 461
    const-string v1, "WifiHostapApi"

    const-string v2, "removeMacFilterAllowList "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v1, "all"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->HostapRemoveMacInList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 467
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public removeMacFilterDenyList()I
    .registers 3

    .prologue
    .line 478
    const-string v0, "WifiHostapApi"

    const-string v1, "removeMacFilterDenyList "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x2

    const-string v1, "all"

    invoke-static {v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->HostapRemoveMacInList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 481
    const/4 v0, 0x1

    .line 484
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setMacaddracl(I)Z
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 757
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "addr_acl":Ljava/lang/String;
    const-string v1, "WifiHostapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setMacaddracl : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setMacaddracl(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method public setTxPower(I)I
    .registers 3
    .param p1, "txPower"    # I

    .prologue
    .line 1070
    invoke-static {p1}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setTxPower(I)I

    move-result v0

    return v0
.end method

.method public setWpsCancel()I
    .registers 3

    .prologue
    .line 1080
    const-string v0, "WifiHostapApi"

    const-string v1, "WPS : setWpsCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setWpsCancel()I

    move-result v0

    return v0
.end method

.method public setWpsNfcPwToken(Ljava/lang/String;II)I
    .registers 6
    .param p1, "NDEF"    # Ljava/lang/String;
    .param p2, "isEnabled"    # I
    .param p3, "isNDEF"    # I

    .prologue
    .line 1090
    const-string v0, "WifiHostapApi"

    const-string v1, "WPS : setWpsNfcPwToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setWpsNfcPwToken(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "reqNDEF"    # Ljava/lang/String;
    .param p2, "selNDEF"    # Ljava/lang/String;

    .prologue
    .line 1105
    const-string v0, "WifiHostapApi"

    const-string v1, "WPS : setWpsNfcReportHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setWpsNfcReportHandover(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setWpsPbc()I
    .registers 3

    .prologue
    .line 1085
    const-string v0, "WifiHostapApi"

    const-string v1, "WPS : setWpsPbc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v0}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setWpsPbc()I

    move-result v0

    return v0
.end method

.method public setWpsPin(Ljava/lang/String;I)I
    .registers 6
    .param p1, "PinNum"    # Ljava/lang/String;
    .param p2, "expirationTime"    # I

    .prologue
    .line 1075
    const-string v0, "WifiHostapApi"

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

    .line 1076
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiHostapdApi;->mWifiHostapdNative:Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/impl/wifiSap/WifiHostapdNative;->setWpsPin(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
