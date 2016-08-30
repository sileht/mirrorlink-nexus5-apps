.class public Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;
.super Lcom/lge/wifi/impl/wifiSap/WifiQsapNative;
.source "WifiQsapApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;,
        Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapOperationMode:[I = null

.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiQsapApi"


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

.field private mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field private mMacFilterCount:I

.field private mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

.field private mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

.field private mSsid:Ljava/lang/String;

.field private macFilterLst:Ljava/util/ArrayList;
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
.method static synthetic $SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapOperationMode()[I
    .registers 3

    .prologue
    .line 18
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapOperationMode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->values()[Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_MAX:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_4f

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_b:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_4d

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bg:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_4b

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bgn:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_49

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_g_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_47

    :goto_39
    :try_start_39
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_n_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-virtual {v1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_45

    :goto_42
    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapOperationMode:[I

    goto :goto_4

    :catch_45
    move-exception v1

    goto :goto_42

    :catch_47
    move-exception v1

    goto :goto_39

    :catch_49
    move-exception v1

    goto :goto_30

    :catch_4b
    move-exception v1

    goto :goto_27

    :catch_4d
    move-exception v1

    goto :goto_1e

    :catch_4f
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapNative;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 58
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterCount:I

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSsid:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 63
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 64
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 66
    return-void
.end method

.method private AddMacFilterAllowList()Z
    .registers 4

    .prologue
    .line 72
    const-string v0, "add_to_allow_list="

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacFilterRelatedSetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 73
    const-string v0, "WifiQsapApi"

    const-string v1, "AddMacFilterAllowList : SendMacFilterRelatedSetCmd() Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_11
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 77
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 78
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 76
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v0

    .line 78
    if-nez v0, :cond_24

    .line 79
    const-string v0, "WifiQsapApi"

    const-string v1, "AddMacFilterAllowList : SetAccessControlLists() Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method private AddMacFilterDenyList()Z
    .registers 4

    .prologue
    .line 111
    const-string v0, "add_to_deny_list="

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacFilterRelatedSetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 112
    const-string v0, "WifiQsapApi"

    const-string v1, "AddMacFilterDenyList : SendMacFilterRelatedSetCmd() Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_11
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 116
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 117
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 115
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_24

    .line 118
    const-string v0, "WifiQsapApi"

    const-string v1, "AddMacFilterDenyList : SetAccessControlLists() Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method private CheckAutoShutOffTimeValidity(I)Z
    .registers 3
    .param p1, "time"    # I

    .prologue
    .line 162
    sparse-switch p1, :sswitch_data_8

    .line 177
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 173
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 162
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
    .line 181
    const-string v1, "(([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2})"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 183
    .local v0, "bIsMacAdd":Z
    if-nez v0, :cond_24

    .line 184
    const-string v1, "WifiQsapApi"

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

    .line 185
    const/4 v1, 0x0

    .line 188
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x1

    goto :goto_23
.end method

.method private CheckSecurityTypeValidity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z
    .registers 8
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .param p3, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    const/4 v0, 0x0

    .line 194
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v1, p1, :cond_1e

    .line 198
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-eq v1, p2, :cond_2a

    .line 199
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SHARED_KEY_AUTH does not support"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_1d
    return v0

    .line 202
    :cond_1e
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v1, p1, :cond_2a

    .line 206
    const-string v1, "WifiQsapApi"

    const-string v2, "MIXED_MODE_AUTH is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 210
    :cond_2a
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v1, p3, :cond_4b

    .line 215
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-eq v1, p2, :cond_4b

    .line 216
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-eq v1, p2, :cond_4b

    .line 217
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NO_ENCRYPTION does not support"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 221
    :cond_4b
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private CheckWepKeyValidity(Ljava/lang/String;)Z
    .registers 8
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v2, v4

    .line 230
    .local v2, "keyLength":I
    const/4 v4, 0x5

    if-eq v4, v2, :cond_d

    const/16 v4, 0xd

    if-ne v4, v2, :cond_32

    .line 235
    :cond_d
    const-string v4, "\\p{ASCII}++"

    invoke-static {v4, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 236
    .local v0, "bIsAscii":Z
    if-eqz v0, :cond_16

    .line 258
    .end local v0    # "bIsAscii":Z
    :cond_15
    :goto_15
    return v3

    .line 240
    .restart local v0    # "bIsAscii":Z
    :cond_16
    const-string v3, "WifiQsapApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CheckWepKeyValidity not ASCII key ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "bIsAscii":Z
    :goto_30
    const/4 v3, 0x0

    goto :goto_15

    .line 242
    :cond_32
    const/16 v4, 0xa

    if-eq v4, v2, :cond_3a

    const/16 v4, 0x1a

    if-ne v4, v2, :cond_5d

    .line 247
    :cond_3a
    const-string v4, "\\p{XDigit}++"

    invoke-static {v4, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 248
    .local v1, "bIsHexa":Z
    if-nez v1, :cond_15

    .line 252
    const-string v3, "WifiQsapApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CheckWepKeyValidity not HEXA key ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 255
    .end local v1    # "bIsHexa":Z
    :cond_5d
    const-string v3, "WifiQsapApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CheckWepKeyValidity unsupported key length ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private RemoveMacFilterAllowList()Z
    .registers 5

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveMacFilterAllowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 676
    .local v0, "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "remove_from_allow_list="

    invoke-direct {p0, v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacFilterRelatedSetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 677
    const-string v1, "WifiQsapApi"

    const-string v2, "RemoveMacFilterAllowList : SendMacFilterRelatedSetCmd() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_13
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 681
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 682
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 680
    invoke-direct {p0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 682
    if-nez v1, :cond_26

    .line 683
    const-string v1, "WifiQsapApi"

    const-string v2, "RemoveMacFilterAllowList : SetAccessControlLists() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_26
    const/4 v1, 0x1

    return v1
.end method

.method private RemoveMacFilterDenyList()Z
    .registers 5

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveMacFilterDenyList()Ljava/util/ArrayList;

    move-result-object v0

    .line 696
    .local v0, "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "remove_from_deny_list="

    invoke-direct {p0, v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacFilterRelatedSetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 697
    const-string v1, "WifiQsapApi"

    const-string v2, "RemoveMacFilterDenyList : SendMacFilterRelatedSetCmd() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_13
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 701
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 702
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 700
    invoke-direct {p0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 702
    if-nez v1, :cond_26

    .line 703
    const-string v1, "WifiQsapApi"

    const-string v2, "RemoveMacFilterDenyList : SetAccessControlLists() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_26
    const/4 v1, 0x1

    return v1
.end method

.method private ResetToDefault()Z
    .registers 2

    .prologue
    .line 714
    const-string v0, "reset_to_default"

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private RetrieveAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .registers 6

    .prologue
    .line 726
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 728
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    const-string v2, "auth_algs"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "sReturnVal":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 730
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 731
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 741
    :cond_14
    :goto_14
    return-object v0

    .line 732
    :cond_15
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 733
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 734
    goto :goto_14

    :cond_20
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 735
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 736
    goto :goto_14

    .line 737
    :cond_2b
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RetrieveAuthMode : unknown returned value ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private RetrieveEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .registers 7
    .param p1, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 745
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 747
    .local v0, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    const/4 v1, 0x0

    .line 748
    .local v1, "sReturnVal":Ljava/lang/String;
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v2, p1, :cond_1a

    .line 749
    const-string v2, "wpa_pairwise"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    :cond_d
    :goto_d
    if-eqz v1, :cond_19

    .line 756
    const-string v2, "TKIP CCMP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 757
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 767
    :cond_19
    :goto_19
    return-object v0

    .line 750
    :cond_1a
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-eq v2, p1, :cond_22

    .line 751
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v2, p1, :cond_d

    .line 752
    :cond_22
    const-string v2, "rsn_pairwise"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 758
    :cond_29
    const-string v2, "TKIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 759
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 760
    goto :goto_19

    :cond_34
    const-string v2, "CCMP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 761
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 762
    goto :goto_19

    .line 763
    :cond_3f
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RetrieveEncryptionMode : unknown returned value ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private RetrieveMacFilterAllowList()Ljava/util/ArrayList;
    .registers 3
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
    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v0, "macAllowLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "allow_list"

    invoke-direct {p0, v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacRelatedGetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 778
    .end local v0    # "macAllowLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d
    return-object v0

    .restart local v0    # "macAllowLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private RetrieveMacFilterDenyList()Ljava/util/ArrayList;
    .registers 3
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
    .line 785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .local v0, "macDenyLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "deny_list"

    invoke-direct {p0, v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacRelatedGetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 789
    .end local v0    # "macDenyLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d
    return-object v0

    .restart local v0    # "macDenyLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private RetrieveSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .registers 6

    .prologue
    .line 802
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 804
    .local v1, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    const-string v2, "security_mode"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 806
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 807
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 821
    :cond_14
    :goto_14
    return-object v1

    .line 808
    :cond_15
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 809
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 810
    goto :goto_14

    :cond_20
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 811
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 812
    goto :goto_14

    :cond_2b
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 813
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 814
    goto :goto_14

    :cond_36
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 815
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 816
    goto :goto_14

    .line 817
    :cond_41
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RetrieveSecurityMode : unknown returned value ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private RetrieveSsid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 825
    const-string v1, "ssid"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 827
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_2c

    .line 828
    const-string v1, "WifiQsapApi"

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

    .line 834
    :cond_2b
    const/4 v0, 0x0

    .end local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2c
    return-object v0
.end method

.method private SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "getCmd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, "sCmdVal":Ljava/lang/String;
    const-string v5, "WifiQsapApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :try_start_2a
    invoke-static {v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->QsapSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_5a

    move-result-object v3

    .line 856
    .local v3, "sReturnVal":Ljava/lang/String;
    const-string v5, "WifiQsapApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const-string v5, "success"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 863
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 864
    .local v1, "index":I
    const/4 v5, -0x1

    if-ne v5, v1, :cond_70

    .line 874
    .end local v1    # "index":I
    .end local v3    # "sReturnVal":Ljava/lang/String;
    :goto_59
    return-object v4

    .line 850
    :catch_5a
    move-exception v0

    .line 851
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "WifiQsapApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "index":I
    .restart local v3    # "sReturnVal":Ljava/lang/String;
    :cond_70
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_59

    .line 871
    .end local v1    # "index":I
    :cond_77
    const-string v5, "WifiQsapApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SendBasicGetCmd : returned failure ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method private SendBasicSetCmd(Ljava/lang/String;)Z
    .registers 9
    .param p1, "setCmd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 881
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "sCmdVal":Ljava/lang/String;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :try_start_2a
    invoke-static {v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->QsapSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_52

    move-result-object v2

    .line 896
    .local v2, "sReturnVal":Ljava/lang/String;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v4, "success"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 900
    const/4 v3, 0x1

    .line 906
    .end local v2    # "sReturnVal":Ljava/lang/String;
    :goto_51
    return v3

    .line 890
    :catch_52
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 903
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "sReturnVal":Ljava/lang/String;
    :cond_68
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SendBasicSetCmd : returned failure ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method private SendMacFilterRelatedSetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 12
    .param p1, "setCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 910
    if-eqz p2, :cond_c2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c2

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "set "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, "sCmdVal":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_62

    .line 921
    const-string v4, "WifiQsapApi"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :try_start_3a
    invoke-static {v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->QsapSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_8f

    move-result-object v3

    .line 933
    .local v3, "sReturnVal":Ljava/lang/String;
    const-string v4, "WifiQsapApi"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a6

    move v4, v5

    .line 949
    .end local v1    # "i":I
    .end local v2    # "sCmdVal":Ljava/lang/String;
    .end local v3    # "sReturnVal":Ljava/lang/String;
    :goto_61
    return v4

    .line 916
    .restart local v1    # "i":I
    .restart local v2    # "sCmdVal":Ljava/lang/String;
    :cond_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 927
    :catch_8f
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Exception:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 929
    goto :goto_61

    .line 940
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "sReturnVal":Ljava/lang/String;
    :cond_a6
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "SendMacFilterRelatedSetCmd : returned failure ["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "i":I
    .end local v2    # "sCmdVal":Ljava/lang/String;
    .end local v3    # "sReturnVal":Ljava/lang/String;
    :goto_c0
    move v4, v6

    .line 949
    goto :goto_61

    .line 942
    :cond_c2
    if-eqz p2, :cond_cc

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_cc

    move v4, v5

    .line 943
    goto :goto_61

    .line 946
    :cond_cc
    const-string v4, "WifiQsapApi"

    const-string v5, "SendMacFilterRelatedSetCmd : filterLst null error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0
.end method

.method private SendMacRelatedGetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 11
    .param p1, "getCmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "macLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "sCmdVal":Ljava/lang/String;
    const-string v5, "WifiQsapApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :try_start_2a
    invoke-static {v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->QsapSendCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_6e

    move-result-object v3

    .line 971
    .local v3, "sReturnVal":Ljava/lang/String;
    const-string v5, "WifiQsapApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 978
    const-string v5, "success"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 979
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 983
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v5, v1, :cond_84

    if-eqz p2, :cond_84

    .line 984
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateMacStringToArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 989
    const/4 v4, 0x1

    .line 993
    .end local v1    # "index":I
    .end local v3    # "sReturnVal":Ljava/lang/String;
    :cond_6d
    :goto_6d
    return v4

    .line 965
    :catch_6e
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "WifiQsapApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "index":I
    .restart local v3    # "sReturnVal":Ljava/lang/String;
    :cond_84
    const-string v5, "WifiQsapApi"

    const-string v6, "SendMacRelatedGetCmd : macLst null error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method private SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z
    .registers 7
    .param p1, "listType"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;
    .param p2, "cmdType"    # Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;",
            "Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1003
    .local p3, "filterLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "modify_acl="

    .line 1004
    .local v0, "cmdValue":Ljava/lang/String;
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    if-ne p1, v1, :cond_35

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    :goto_19
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    if-ne p2, v1, :cond_49

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    :goto_30
    invoke-direct {p0, v0, p3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacFilterRelatedSetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    return v1

    .line 1007
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1013
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method private SetAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)Z
    .registers 5
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .prologue
    .line 1043
    const-string v0, "auth_algs="

    .line 1045
    .local v0, "sCmdVal":Ljava/lang/String;
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v1, p1, :cond_24

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    :goto_19
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1054
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)V

    .line 1055
    const/4 v1, 0x1

    .line 1058
    :goto_23
    return v1

    .line 1047
    :cond_24
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    if-ne v1, p1, :cond_3c

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    goto :goto_19

    .line 1050
    :cond_3c
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

    .line 1058
    :cond_50
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private SetEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z
    .registers 9
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    const/4 v3, 0x0

    .line 1125
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1126
    .local v1, "encModeWpa":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1128
    .local v0, "encModeRsn":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v4, p2, :cond_31

    .line 1129
    move-object v1, p1

    .line 1137
    :cond_a
    :goto_a
    const/4 v2, 0x0

    .line 1138
    .local v2, "pairwise":Ljava/lang/String;
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-eq v4, p1, :cond_15

    .line 1142
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v4, p1, :cond_3e

    .line 1143
    const-string v2, "TKIP"

    .line 1150
    :cond_15
    :goto_15
    if-eqz v2, :cond_65

    .line 1151
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-eq v4, v1, :cond_4c

    .line 1152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wpa_pairwise="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1166
    :cond_30
    :goto_30
    return v3

    .line 1130
    .end local v2    # "pairwise":Ljava/lang/String;
    :cond_31
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v4, p2, :cond_37

    .line 1131
    move-object v0, p1

    .line 1132
    goto :goto_a

    :cond_37
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v4, p2, :cond_a

    .line 1133
    move-object v1, p1

    .line 1134
    move-object v0, p1

    goto :goto_a

    .line 1144
    .restart local v2    # "pairwise":Ljava/lang/String;
    :cond_3e
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v4, p1, :cond_45

    .line 1145
    const-string v2, "CCMP"

    .line 1146
    goto :goto_15

    :cond_45
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-ne v4, p1, :cond_15

    .line 1147
    const-string v2, "TKIP CCMP"

    goto :goto_15

    .line 1157
    :cond_4c
    sget-object v4, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    if-eq v4, v0, :cond_65

    .line 1158
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rsn_pairwise="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1164
    :cond_65
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1166
    const/4 v3, 0x1

    goto :goto_30
.end method

.method private SetSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z
    .registers 5
    .param p1, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 1322
    const-string v0, "security_mode="

    .line 1324
    .local v0, "sCmdVal":Ljava/lang/String;
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v1, p1, :cond_24

    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1335
    :cond_19
    :goto_19
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1336
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)V

    .line 1337
    const/4 v1, 0x1

    .line 1340
    :goto_23
    return v1

    .line 1326
    :cond_24
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v1, p1, :cond_3c

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    goto :goto_19

    :cond_3c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v1, p1, :cond_54

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1330
    goto :goto_19

    :cond_54
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v1, p1, :cond_6c

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1332
    goto :goto_19

    :cond_6c
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    if-ne v1, p1, :cond_19

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1340
    :cond_84
    const/4 v1, 0x0

    goto :goto_23
.end method

.method private SyncMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    .registers 5

    .prologue
    .line 1542
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1544
    .local v0, "filterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    const-string v2, "macaddr_acl"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "sReturnVal":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 1546
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1547
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1555
    :cond_14
    :goto_14
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)Z

    .line 1557
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->GetMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v2

    return-object v2

    .line 1548
    :cond_1c
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1549
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1550
    goto :goto_14

    .line 1551
    :cond_27
    const-string v2, "WifiQsapApi"

    const-string v3, "SyncMacFilterMode : unknown returned value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private UpdateAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)V
    .registers 2
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 1562
    return-void
.end method

.method private UpdateEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V
    .registers 2
    .param p1, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 1567
    return-void
.end method

.method private UpdateMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)Z
    .registers 5
    .param p1, "filterMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .prologue
    .line 1575
    const-string v0, "WifiQsapApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateMacFilterMode ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-eq p1, v0, :cond_4b

    .line 1579
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-eq v0, v1, :cond_49

    .line 1584
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-ne v0, v1, :cond_4d

    .line 1587
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 1588
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 1589
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 1587
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v0

    .line 1589
    if-nez v0, :cond_49

    .line 1590
    const-string v0, "WifiQsapApi"

    const-string v1, "UpdateMacFilterMode : SetAccessControlLists(BLACK) Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_49
    :goto_49
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterMode:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 1605
    :cond_4b
    const/4 v0, 0x1

    return v0

    .line 1595
    :cond_4d
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 1596
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 1597
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 1595
    invoke-direct {p0, v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v0

    .line 1597
    if-nez v0, :cond_49

    .line 1598
    const-string v0, "WifiQsapApi"

    const-string v1, "UpdateMacFilterMode : SetAccessControlLists(WHITE) Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private UpdateMacStringToArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "sStringLst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p2, "arrayLst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1611
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v1, "sToken":Ljava/util/StringTokenizer;
    :goto_8
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1623
    return-void

    .line 1613
    :cond_f
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1615
    .local v0, "sString":Ljava/lang/String;
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateStringToArrayList : add ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckMacAddressValidity(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1618
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1620
    :cond_37
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpdateStringToArrayList : not MAC add ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private UpdateSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)V
    .registers 2
    .param p1, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 1628
    return-void
.end method

.method private convertString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 274
    if-nez p1, :cond_3

    .line 278
    .end local p1    # "s":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :cond_3
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method public AddMacFilterAllowList(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "macList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    if-nez p2, :cond_1d

    .line 91
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 92
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 91
    invoke-direct {p0, v2, v3, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v2

    .line 92
    if-nez v2, :cond_2f

    .line 93
    const-string v2, "WifiQsapApi"

    const-string v3, "AddMacFilterAllowList : SetAccessControlLists() Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1c
    return v1

    .line 97
    :cond_1d
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 98
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 97
    invoke-direct {p0, v2, v3, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v2

    .line 98
    if-nez v2, :cond_2f

    .line 99
    const-string v2, "WifiQsapApi"

    const-string v3, "AddMacFilterAllowList : SetAccessControlLists() Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 104
    :cond_2f
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method public AddMacFilterDenyList(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "addORdel"    # I

    .prologue
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "macList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 130
    if-nez p2, :cond_1d

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 129
    :goto_e
    invoke-direct {p0, v2, v1, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 132
    if-nez v1, :cond_1b

    .line 133
    const-string v1, "WifiQsapApi"

    const-string v2, "AddMacFilterDenyList : SetAccessControlLists() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1b
    const/4 v1, 0x1

    return v1

    .line 131
    :cond_1d
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_DELETE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    goto :goto_e
.end method

.method public CloseNetlink()V
    .registers 1

    .prologue
    .line 269
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->QsapCloseNetlink()V

    .line 270
    return-void
.end method

.method public EnableSoftAp(Z)Z
    .registers 5
    .param p1, "bEnable"    # Z

    .prologue
    .line 290
    if-eqz p1, :cond_1b

    .line 291
    const-string v0, "1"

    .line 296
    .local v0, "cmdValue":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enable_softap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 297
    const/4 v1, 0x1

    .line 300
    :goto_1a
    return v1

    .line 293
    .end local v0    # "cmdValue":Ljava/lang/String;
    :cond_1b
    const-string v0, "0"

    .restart local v0    # "cmdValue":Ljava/lang/String;
    goto :goto_4

    .line 300
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public GetAllAssocMacList()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->GetAssoStaMacListCount()I

    move-result v0

    .line 314
    if-nez v0, :cond_9

    .line 315
    const/4 v2, 0x0

    .line 326
    :cond_8
    return-object v2

    .line 318
    :cond_9
    new-array v2, v0, [Ljava/lang/String;

    .line 320
    .local v2, "items":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_8

    .line 322
    iget-object v4, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    .local v3, "macaddr":Ljava/lang/String;
    aput-object v3, v2, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public GetApIsolation()Z
    .registers 6

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "apIsolation":Z
    const-string v2, "ap_isolate"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "sReturnVal":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 334
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 335
    const/4 v0, 0x1

    .line 343
    :cond_12
    :goto_12
    return v0

    .line 336
    :cond_13
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 337
    const/4 v0, 0x0

    .line 338
    goto :goto_12

    .line 339
    :cond_1d
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ap_isolate unknown return ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public GetAssoStaMacListCount()I
    .registers 5

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "count":I
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 357
    const-string v1, "WifiQsapApi"

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

    .line 359
    return v0
.end method

.method public GetAutoShutOffTime()I
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 363
    const-string v4, "auto_shut_off_time"

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "sReturnVal":Ljava/lang/String;
    if-eqz v1, :cond_4d

    .line 366
    const/4 v2, -0x1

    .line 369
    .local v2, "time":I
    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_30

    move-result v2

    .line 375
    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckAutoShutOffTimeValidity(I)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 376
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetAutoShutOffTimel unsupported time ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 383
    .end local v2    # "time":I
    :cond_2f
    :goto_2f
    return v2

    .line 370
    .restart local v2    # "time":I
    :catch_30
    move-exception v0

    .line 371
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetChannel NumberFormatException ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 372
    goto :goto_2f

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "time":I
    :cond_4d
    move v2, v3

    .line 383
    goto :goto_2f
.end method

.method public GetChannel()I
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 390
    const-string v4, "channel"

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "sReturnVal":Ljava/lang/String;
    if-eqz v2, :cond_57

    .line 393
    const/4 v0, -0x1

    .line 400
    .local v0, "channel":I
    const-string v4, ",0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 401
    const/4 v0, 0x0

    .line 411
    :goto_13
    if-ltz v0, :cond_19

    const/16 v4, 0xe

    if-le v0, v4, :cond_34

    .line 412
    :cond_19
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetChannel unsupported channel ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 419
    .end local v0    # "channel":I
    :cond_34
    :goto_34
    return v0

    .line 404
    .restart local v0    # "channel":I
    :cond_35
    :try_start_35
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_38} :catch_3a

    move-result v0

    goto :goto_13

    .line 405
    :catch_3a
    move-exception v1

    .line 406
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetChannel NumberFormatException ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 407
    goto :goto_34

    .end local v0    # "channel":I
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_57
    move v0, v3

    .line 419
    goto :goto_34
.end method

.method public GetCountryCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 423
    const-string v1, "country_code"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 427
    .end local v0    # "sReturnVal":Ljava/lang/String;
    :goto_8
    return-object v0

    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public GetHiddenSsid()Z
    .registers 6

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "bHiddenSsid":Z
    const-string v2, "ignore_broadcast_ssid"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "sReturnVal":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 435
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 436
    const/4 v0, 0x1

    .line 444
    :cond_12
    :goto_12
    return v0

    .line 437
    :cond_13
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 438
    const/4 v0, 0x0

    .line 439
    goto :goto_12

    .line 440
    :cond_1d
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetHiddenSsid unknown return ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public GetMacFilterByIndex(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 453
    if-ltz p1, :cond_35

    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->GetMacFilterCount()I

    move-result v1

    if-ge p1, v1, :cond_35

    .line 454
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_19

    .line 455
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    :goto_18
    return-object v0

    .line 458
    :cond_19
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMacFilterByIndex failure : Out of list size["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_33
    const/4 v0, 0x0

    goto :goto_18

    .line 461
    :cond_35
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMacFilterByIndex failure : Out of index range["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public GetMacFilterCount()I
    .registers 2

    .prologue
    .line 471
    iget v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterCount:I

    return v0
.end method

.method public GetMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    .registers 5

    .prologue
    .line 478
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 480
    .local v0, "filterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    const-string v2, "macaddr_acl"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "sReturnVal":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 482
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 483
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 491
    :cond_14
    :goto_14
    return-object v0

    .line 484
    :cond_15
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 485
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 486
    goto :goto_14

    .line 487
    :cond_20
    const-string v2, "WifiQsapApi"

    const-string v3, "SyncMacFilterMode : unknown returned value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public GetMaxNumOfClients()I
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 495
    const-string v4, "max_assoc"

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "sReturnVal":Ljava/lang/String;
    if-eqz v2, :cond_4d

    .line 498
    const/4 v1, -0x1

    .line 501
    .local v1, "numClients":I
    :try_start_a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_30

    move-result v1

    .line 507
    if-ltz v1, :cond_14

    const/16 v4, 0xa

    if-le v1, v4, :cond_2f

    .line 508
    :cond_14
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetMaxNumOfClients unsupported num ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 515
    .end local v1    # "numClients":I
    :cond_2f
    :goto_2f
    return v1

    .line 502
    .restart local v1    # "numClients":I
    :catch_30
    move-exception v0

    .line 503
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetChannel NumberFormatException ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 504
    goto :goto_2f

    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v1    # "numClients":I
    :cond_4d
    move v1, v3

    .line 515
    goto :goto_2f
.end method

.method public GetOperationMode()Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;
    .registers 6

    .prologue
    .line 519
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_MAX:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 521
    .local v0, "opMode":Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;
    const-string v2, "hw_mode"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "sReturnVal":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 523
    const-string v2, "n_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 524
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_n_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 538
    :cond_14
    :goto_14
    return-object v0

    .line 525
    :cond_15
    const-string v2, "g_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 526
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_g_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 527
    goto :goto_14

    :cond_20
    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 528
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bgn:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 529
    goto :goto_14

    :cond_2b
    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 530
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bg:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 531
    goto :goto_14

    :cond_36
    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 532
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_b:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 533
    goto :goto_14

    .line 534
    :cond_41
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetOperationMode unknown return ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public GetSecurityType()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;
    .registers 5

    .prologue
    .line 545
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    return-object v0
.end method

.method public GetSoftApStatus()Z
    .registers 4

    .prologue
    .line 552
    const-string v1, "enable_softap"

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 555
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 556
    const/4 v1, 0x1

    .line 564
    :goto_11
    return v1

    .line 558
    :cond_12
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 560
    const-string v1, "WifiQsapApi"

    const-string v2, "GetSoftApStatus : unknown returned value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_21
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public GetSsid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public GetWepKey1()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 572
    const-string v2, "wep_key0"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 575
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 576
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetWepKey1 unsupported key["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 582
    .end local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-object v0

    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2b
    move-object v0, v1

    goto :goto_2a
.end method

.method public GetWepKey2()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 586
    const-string v2, "wep_key1"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 589
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 590
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetWepKey2 unsupported key["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 596
    .end local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-object v0

    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2b
    move-object v0, v1

    goto :goto_2a
.end method

.method public GetWepKey3()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 600
    const-string v2, "wep_key2"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 603
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 604
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetWepKey3 unsupported key["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 610
    .end local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-object v0

    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2b
    move-object v0, v1

    goto :goto_2a
.end method

.method public GetWepKey4()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 614
    const-string v2, "wep_key3"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 617
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 618
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetWepKey4 unsupported key["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 624
    .end local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-object v0

    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_2b
    move-object v0, v1

    goto :goto_2a
.end method

.method public GetWepKeyIndex()I
    .registers 8

    .prologue
    const/4 v3, -0x1

    .line 628
    const-string v4, "wep_default_key"

    invoke-direct {p0, v4}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "sReturnVal":Ljava/lang/String;
    if-eqz v2, :cond_4c

    .line 631
    const/4 v0, -0x1

    .line 633
    .local v0, "index":I
    :try_start_a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_2f

    move-result v0

    .line 639
    if-ltz v0, :cond_13

    const/4 v4, 0x3

    if-le v0, v4, :cond_2e

    .line 640
    :cond_13
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetWepKeyIndex unsupported key index ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 647
    .end local v0    # "index":I
    :cond_2e
    :goto_2e
    return v0

    .line 634
    .restart local v0    # "index":I
    :catch_2f
    move-exception v1

    .line 635
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "WifiQsapApi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetWepKeyIndex NumberFormatException ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 636
    goto :goto_2e

    .end local v0    # "index":I
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4c
    move v0, v3

    .line 647
    goto :goto_2e
.end method

.method public GetWpaKey()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 651
    const-string v3, "wpa_passphrase"

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicGetCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "sReturnVal":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 654
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v1, v3

    .line 655
    .local v1, "wpaKeyLength":I
    const/16 v3, 0x8

    if-gt v3, v1, :cond_16

    const/16 v3, 0x3f

    if-le v1, v3, :cond_31

    .line 656
    :cond_16
    const-string v3, "WifiQsapApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetWpaKey unsupported key length ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 662
    .end local v0    # "sReturnVal":Ljava/lang/String;
    .end local v1    # "wpaKeyLength":I
    :cond_31
    :goto_31
    return-object v0

    .restart local v0    # "sReturnVal":Ljava/lang/String;
    :cond_32
    move-object v0, v2

    goto :goto_31
.end method

.method public OpenNetlink()Z
    .registers 2

    .prologue
    .line 666
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->QsapOpenNetlink()Z

    move-result v0

    return v0
.end method

.method public RetrieveAssoStaMacList()Z
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 722
    const-string v0, "sta_mac_list"

    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendMacRelatedGetCmd(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public SetApIsolation(Z)Z
    .registers 5
    .param p1, "apIsolation"    # Z

    .prologue
    .line 1025
    if-eqz p1, :cond_1b

    .line 1027
    const-string v0, "1"

    .line 1033
    .local v0, "cmdValue":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ap_isolate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1034
    const/4 v1, 0x1

    .line 1036
    :goto_1a
    return v1

    .line 1030
    .end local v0    # "cmdValue":Ljava/lang/String;
    :cond_1b
    const-string v0, "0"

    .restart local v0    # "cmdValue":Ljava/lang/String;
    goto :goto_4

    .line 1036
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public SetAutoShutOffTime(I)Z
    .registers 6
    .param p1, "time"    # I

    .prologue
    const/4 v0, 0x0

    .line 1062
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckAutoShutOffTimeValidity(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1063
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetAutoShutOffTime : unsupported time ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_21
    :goto_21
    return v0

    .line 1067
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auto_shut_off_time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1068
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public SetChannel(I)Z
    .registers 6
    .param p1, "channel"    # I

    .prologue
    const/4 v0, 0x0

    .line 1083
    if-ltz p1, :cond_7

    const/16 v1, 0xe

    if-le p1, v1, :cond_22

    .line 1084
    :cond_7
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetChannel : unsupported channel ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_21
    :goto_21
    return v0

    .line 1088
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1089
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public SetCommit()Z
    .registers 2

    .prologue
    .line 1101
    const-string v0, "commit"

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public SetCountryCode(Ljava/lang/String;)Z
    .registers 4
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "country_code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1106
    const/4 v0, 0x1

    .line 1108
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public SetDisassociateStation(Ljava/lang/String;)Z
    .registers 4
    .param p1, "staMac"    # Ljava/lang/String;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckMacAddressValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disassoc_sta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1117
    const/4 v0, 0x1

    .line 1121
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public SetHiddenSsid(Z)Z
    .registers 5
    .param p1, "hiddenSsid"    # Z

    .prologue
    .line 1172
    if-eqz p1, :cond_1b

    .line 1173
    const-string v0, "1"

    .line 1178
    .local v0, "cmdValue":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignore_broadcast_ssid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1179
    const/4 v1, 0x1

    .line 1182
    :goto_1a
    return v1

    .line 1175
    .end local v0    # "cmdValue":Ljava/lang/String;
    :cond_1b
    const-string v0, "0"

    .restart local v0    # "cmdValue":Ljava/lang/String;
    goto :goto_4

    .line 1182
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public SetMacFilterByIndex(ILjava/lang/String;)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1190
    const-string v0, "WifiQsapApi"

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

    .line 1192
    if-ltz p1, :cond_5d

    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->GetMacFilterCount()I

    move-result v0

    if-ge p1, v0, :cond_5d

    .line 1197
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_41

    .line 1198
    invoke-direct {p0, p2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckMacAddressValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1199
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const/4 v0, 0x1

    .line 1209
    :goto_40
    return v0

    .line 1203
    :cond_41
    const-string v0, "WifiQsapApi"

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

    .line 1209
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    goto :goto_40

    .line 1206
    :cond_5d
    const-string v0, "WifiQsapApi"

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
    .line 1217
    const-string v1, "WifiQsapApi"

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

    .line 1220
    iput p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterCount:I

    .line 1226
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterCount:I

    if-lt v0, v1, :cond_28

    .line 1231
    const/4 v1, 0x1

    return v1

    .line 1228
    :cond_28
    iget-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public SetMacFilterMode(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)Z
    .registers 5
    .param p1, "filterMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1244
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-ne v2, p1, :cond_11

    .line 1245
    const-string v2, "macaddr_acl=0"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1256
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 1248
    goto :goto_e

    .line 1253
    :cond_11
    const-string v2, "macaddr_acl=1"

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 1256
    goto :goto_e
.end method

.method public SetMaxNumOfClients(I)Z
    .registers 6
    .param p1, "numClients"    # I

    .prologue
    const/4 v0, 0x0

    .line 1265
    if-ltz p1, :cond_7

    const/16 v1, 0xa

    if-le p1, v1, :cond_22

    .line 1266
    :cond_7
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetMaxNumOfClients : unsupported num ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_21
    :goto_21
    return v0

    .line 1270
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "max_assoc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1271
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public SetMaxNumOfStation(I)Z
    .registers 6
    .param p1, "numClients"    # I

    .prologue
    const/4 v0, 0x0

    .line 1277
    if-ltz p1, :cond_7

    const/16 v1, 0xa

    if-le p1, v1, :cond_22

    .line 1278
    :cond_7
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetMaxNumOfClients : unsupported num ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_21
    :goto_21
    return v0

    .line 1282
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "max_num_sta="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1283
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public SetOperationMode(Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;)Z
    .registers 7
    .param p1, "opMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .prologue
    const/4 v1, 0x0

    .line 1291
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->$SWITCH_TABLE$com$lge$wifi$impl$wifiSap$WifiSapOperationMode()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4e

    .line 1308
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetOperationMode unknown opMode ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_28
    :goto_28
    return v1

    .line 1293
    :pswitch_29
    const-string v0, "b"

    .line 1312
    .local v0, "cmdValue":Ljava/lang/String;
    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hw_mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1313
    const/4 v1, 0x1

    goto :goto_28

    .line 1296
    .end local v0    # "cmdValue":Ljava/lang/String;
    :pswitch_42
    const-string v0, "g"

    .line 1297
    .restart local v0    # "cmdValue":Ljava/lang/String;
    goto :goto_2b

    .line 1299
    .end local v0    # "cmdValue":Ljava/lang/String;
    :pswitch_45
    const-string v0, "n"

    .line 1300
    .restart local v0    # "cmdValue":Ljava/lang/String;
    goto :goto_2b

    .line 1302
    .end local v0    # "cmdValue":Ljava/lang/String;
    :pswitch_48
    const-string v0, "g_only"

    .line 1303
    .restart local v0    # "cmdValue":Ljava/lang/String;
    goto :goto_2b

    .line 1305
    .end local v0    # "cmdValue":Ljava/lang/String;
    :pswitch_4b
    const-string v0, "n_only"

    .line 1306
    .restart local v0    # "cmdValue":Ljava/lang/String;
    goto :goto_2b

    .line 1291
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4b
    .end packed-switch
.end method

.method public SetSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;)Z
    .registers 8
    .param p1, "secType"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    .prologue
    const/4 v3, 0x0

    .line 1347
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v0

    .line 1348
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v2

    .line 1349
    .local v2, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v1

    .line 1351
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    invoke-direct {p0, v0, v2, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckSecurityTypeValidity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1379
    :goto_13
    return v3

    .line 1358
    :cond_14
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 1359
    const-string v4, "WifiQsapApi"

    const-string v5, "SetAuthMode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1366
    :cond_22
    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1367
    const-string v4, "WifiQsapApi"

    const-string v5, "SetSecurityMode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1374
    :cond_30
    invoke-direct {p0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1375
    const-string v4, "WifiQsapApi"

    const-string v5, "SetEncryptionMode failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1379
    :cond_3e
    const/4 v3, 0x1

    goto :goto_13
.end method

.method public SetSsid(Ljava/lang/String;)Z
    .registers 6
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1383
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_25

    .line 1384
    const-string v1, "WifiQsapApi"

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

    .line 1393
    :cond_24
    :goto_24
    return v0

    .line 1388
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->convertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1389
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateSsid(Ljava/lang/String;)V

    .line 1390
    const/4 v0, 0x1

    goto :goto_24
.end method

.method public SetWepKey1(Ljava/lang/String;)Z
    .registers 4
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wep_key0="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1399
    const/4 v0, 0x1

    .line 1402
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public SetWepKey2(Ljava/lang/String;)Z
    .registers 4
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1406
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wep_key1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1408
    const/4 v0, 0x1

    .line 1411
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public SetWepKey3(Ljava/lang/String;)Z
    .registers 4
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1415
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wep_key2="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1417
    const/4 v0, 0x1

    .line 1420
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public SetWepKey4(Ljava/lang/String;)Z
    .registers 4
    .param p1, "wepKey"    # Ljava/lang/String;

    .prologue
    .line 1424
    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckWepKeyValidity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wep_key3="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1426
    const/4 v0, 0x1

    .line 1429
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public SetWepKeyIndex(I)Z
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1436
    if-ltz p1, :cond_6

    const/4 v1, 0x3

    if-le p1, v1, :cond_21

    .line 1437
    :cond_6
    const-string v1, "WifiQsapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetWepKeyIndex unsupported key index ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_20
    :goto_20
    return v0

    .line 1441
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wep_default_key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1442
    const/4 v0, 0x1

    goto :goto_20
.end method

.method public SetWpaKey(Ljava/lang/String;)Z
    .registers 7
    .param p1, "phassphrase"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1451
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    .line 1452
    .local v0, "wpaKeyLength":I
    const/16 v2, 0x8

    if-gt v2, v0, :cond_e

    const/16 v2, 0x3f

    if-le v0, v2, :cond_29

    .line 1453
    :cond_e
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SetWpaKey unsupported key length ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_28
    :goto_28
    return v1

    .line 1457
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wpa_passphrase="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->convertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SendBasicSetCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1458
    const/4 v1, 0x1

    goto :goto_28
.end method

.method public SyncConfigVaules()V
    .registers 6

    .prologue
    .line 1468
    const-string v3, "WifiQsapApi"

    const-string v4, "SyncConfigVaules"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SyncMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v2

    .line 1481
    .local v2, "iMacFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    sget-object v3, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-ne v3, v2, :cond_43

    .line 1482
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveMacFilterDenyList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1483
    .local v1, "denyMacList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 1484
    iput-object v1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 1492
    .end local v1    # "denyMacList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1d
    :goto_1d
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mMacFilterCount:I

    .line 1497
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveSsid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSsid:Ljava/lang/String;

    .line 1502
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)V

    .line 1503
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveSecurityMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)V

    .line 1504
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1506
    return-void

    .line 1487
    :cond_43
    invoke-direct {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->RetrieveMacFilterAllowList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1488
    .local v0, "allowMacList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 1489
    iput-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    goto :goto_1d
.end method

.method public SyncConfigVaulesWithDriver()V
    .registers 5

    .prologue
    .line 1514
    const-string v1, "WifiQsapApi"

    const-string v2, "SyncConfigVaulesWithDriver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-virtual {p0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->GetMacFilterMode()Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v0

    .line 1521
    .local v0, "iMacFilterMode":Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    if-ne v1, v0, :cond_23

    .line 1522
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_BLACK:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 1523
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 1524
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 1522
    invoke-direct {p0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 1524
    if-nez v1, :cond_22

    .line 1525
    const-string v1, "WifiQsapApi"

    const-string v2, "SyncConfigVaulesWithDriver : SetAccessControlLists() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_22
    :goto_22
    return-void

    .line 1528
    :cond_23
    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;->LIST_TYPE_WHITE:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;

    .line 1529
    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;->CMD_TYPE_ADD:Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;

    .line 1530
    iget-object v3, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->macFilterLst:Ljava/util/ArrayList;

    .line 1528
    invoke-direct {p0, v1, v2, v3}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->SetAccessControlLists(Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclListType;Lcom/lge/wifi/impl/wifiSap/WifiQsapApi$WifiQsapAclCmdType;Ljava/util/ArrayList;)Z

    move-result v1

    .line 1530
    if-nez v1, :cond_22

    .line 1531
    const-string v1, "WifiQsapApi"

    const-string v2, "SyncConfigVaulesWithDriver : SetAccessControlLists() Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public UpdateSecurityType(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;)Z
    .registers 6
    .param p1, "secType"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;

    .prologue
    .line 1632
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    move-result-object v0

    .line 1633
    .local v0, "authMode":Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    move-result-object v2

    .line 1634
    .local v2, "secMode":Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    invoke-virtual {p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    move-result-object v1

    .line 1636
    .local v1, "encMode":Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    invoke-direct {p0, v0, v2, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->CheckSecurityTypeValidity(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1637
    const/4 v3, 0x0

    .line 1643
    :goto_13
    return v3

    .line 1639
    :cond_14
    invoke-direct {p0, v0}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateAuthMode(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;)V

    .line 1640
    invoke-direct {p0, v2}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateSecurityMode(Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;)V

    .line 1641
    invoke-direct {p0, v1}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->UpdateEncryptionMode(Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V

    .line 1643
    const/4 v3, 0x1

    goto :goto_13
.end method

.method public UpdateSsid(Ljava/lang/String;)V
    .registers 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->mSsid:Ljava/lang/String;

    .line 1648
    return-void
.end method

.method public WaitForEvent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1652
    invoke-static {}, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->QsapWaitForEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addMacToAssoStaMacList(Ljava/lang/String;)V
    .registers 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 145
    .local v1, "sizeOfMacLst":I
    const/4 v0, 0x0

    .local v0, "loop":I
    :goto_7
    if-lt v0, v1, :cond_f

    .line 154
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_e
    return-void

    .line 146
    :cond_f
    iget-object v2, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 148
    const-string v2, "WifiQsapApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addMacToAssoStaMacList : same Associated Mac address ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 145
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public clearAssoStaMacList()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    return-void
.end method

.method public delMacFromAssoStaMacList(Ljava/lang/String;)V
    .registers 3
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiQsapApi;->associatedStaMacArrayLst:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method
