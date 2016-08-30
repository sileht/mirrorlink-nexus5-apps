.class public Landroid/net/wifi/p2p/WifiP2pDeviceEx;
.super Landroid/net/wifi/p2p/WifiP2pDevice;
.source "WifiP2pDeviceEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDeviceEx;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pDeviceEx"

.field private static final detailedDevicePattern:Ljava/util/regex/Pattern;

.field private static final fourTokenPattern:Ljava/util/regex/Pattern;

.field private static final threeTokenPattern:Ljava/util/regex/Pattern;

.field private static final twoTokenPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mIpAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)( wfd_dev_info=0x([0-9a-fA-F]{12}))?($| .*)"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->detailedDevicePattern:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "(p2p_dev_addr=)?((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->twoTokenPattern:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    .line 54
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->threeTokenPattern:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) ip_addr=(([0-9]{1,3}\\.){3}[0-9]{1,3})"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->fourTokenPattern:Ljava/util/regex/Pattern;

    .line 212
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceEx$1;-><init>()V

    .line 211
    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDeviceEx;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/16 v8, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 85
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 17
    const-string v3, ""

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 86
    const-string v3, "[ \n]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "tokens":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_1e

    .line 90
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_1e
    array-length v3, v2

    packed-switch v3, :pswitch_data_110

    .line 125
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->detailedDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 126
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_9e

    .line 127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :pswitch_36
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    .line 148
    :cond_38
    :goto_38
    return-void

    .line 99
    :pswitch_39
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->twoTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 100
    .restart local v0    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_4d
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    goto :goto_38

    .line 106
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :pswitch_54
    aget-object v3, v2, v7

    const-string v4, "LGP2P-DEVICE-LOST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 107
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->parseTwoTokenPattern(Ljava/lang/String;)V

    goto :goto_38

    .line 110
    :cond_62
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->threeTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 111
    .restart local v0    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_76

    .line 112
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_76
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    goto :goto_38

    .line 117
    .end local v0    # "match":Ljava/util/regex/Matcher;
    :pswitch_7d
    sget-object v3, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->fourTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 118
    .restart local v0    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_91

    .line 119
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Malformed supplicant event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_91
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    goto :goto_38

    .line 130
    :cond_9e
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->primaryDeviceType:Ljava/lang/String;

    .line 132
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceName:Ljava/lang/String;

    .line 133
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->wpsConfigMethodsSupported:I

    .line 134
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceCapability:I

    .line 135
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->parseHex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->groupCapability:I

    .line 136
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_101

    .line 137
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "str":Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->parseHex(Ljava/lang/String;)I

    move-result v4

    .line 139
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->parseHex(Ljava/lang/String;)I

    move-result v5

    .line 140
    const/16 v6, 0xc

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->parseHex(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    .line 138
    iput-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 145
    .end local v1    # "str":Ljava/lang/String;
    :cond_101
    aget-object v3, v2, v7

    const-string v4, "P2P-DEVICE-FOUND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 146
    const/4 v3, 0x3

    iput v3, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->status:I

    goto/16 :goto_38

    .line 93
    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_36
        :pswitch_39
        :pswitch_54
        :pswitch_7d
    .end packed-switch
.end method

.method private parseHex(Ljava/lang/String;)I
    .registers 6
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "num":I
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "0X"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 239
    :cond_11
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 243
    :cond_16
    const/16 v1, 0x10

    :try_start_18
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v0

    .line 247
    :goto_1c
    return v0

    .line 245
    :catch_1d
    move-exception v1

    const-string v1, "WifiP2pDeviceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse hex string "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private parseTwoTokenPattern(Ljava/lang/String;)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->twoTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 162
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_14

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed supplicant event"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_14
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 4

    .prologue
    .line 176
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 177
    .local v0, "dst":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_31

    .line 178
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->primaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->secondaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 182
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->wpsConfigMethodsSupported:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 183
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 184
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->groupCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 185
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->status:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 186
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 190
    .end local v0    # "dst":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_30
    return-object v0

    .restart local v0    # "dst":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v1, "\n IpAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V
    .registers 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDeviceEx;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 157
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 207
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return-void
.end method
