.class public Lcom/lge/wifi/p2p/LGP2pDevice;
.super Landroid/net/wifi/p2p/WifiP2pDeviceEx;
.source "LGP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LGP2pDevice"

.field private static sDBG:Z


# instance fields
.field public mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

.field public mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    .line 192
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pDevice$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pDevice$1;-><init>()V

    .line 191
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 218
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>()V

    .line 18
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 18
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 83
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->DIRECT:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/lge/wifi/p2p/LGP2pOobType;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "sourceOobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 18
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 73
    iput-object p2, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDeviceEx;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V

    .line 18
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 78
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->DIRECT:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDeviceEx;Lcom/lge/wifi/p2p/LGP2pOobType;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDeviceEx;
    .param p2, "sourceOobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V

    .line 18
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 68
    iput-object p2, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pDevice;)V
    .registers 3
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pDevice;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V

    .line 18
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 88
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDevice;->copyLGP2pDeviceInfo(Lcom/lge/wifi/p2p/LGP2pDevice;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pOobType;)V
    .registers 4
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pDevice;
    .param p2, "sourceOobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V

    .line 18
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 93
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDevice;->copyLGP2pDeviceInfo(Lcom/lge/wifi/p2p/LGP2pDevice;)V

    .line 94
    iput-object p2, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 19
    new-instance v1, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    iput-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 27
    const-string v1, "[ \n]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    packed-switch v1, :pswitch_data_46

    .line 42
    aget-object v1, v0, v3

    const-string v2, "LGP2P-DEVICE-FOUND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 43
    aget-object v1, v0, v3

    const-string v2, "LGP2P-PROV-DISC-REQ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 44
    :cond_2d
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->status:I

    .line 45
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pOobType;->DIRECT:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 46
    invoke-direct {p0, v0}, Lcom/lge/wifi/p2p/LGP2pDevice;->parseLGP2pServiceInfo([Ljava/lang/String;)V

    .line 50
    :cond_37
    :goto_37
    :pswitch_37
    return-void

    .line 36
    :pswitch_38
    aget-object v1, v0, v3

    const-string v2, "LGP2P-DEVICE-LOST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 37
    invoke-direct {p0, v0}, Lcom/lge/wifi/p2p/LGP2pDevice;->parseLGP2pServiceInfo([Ljava/lang/String;)V

    goto :goto_37

    .line 29
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_37
        :pswitch_37
        :pswitch_38
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    return v0
.end method

.method private copyLGP2pDeviceInfo(Lcom/lge/wifi/p2p/LGP2pDevice;)V
    .registers 4
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pDevice;

    .prologue
    .line 98
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    if-eqz v0, :cond_b

    .line 99
    const-string v0, "LGP2pDevice"

    const-string v1, "copyLGP2pDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_b
    if-eqz p1, :cond_1a

    .line 102
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 103
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v0, v1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 105
    :cond_1a
    return-void
.end method

.method private parseLGP2pServiceInfo([Ljava/lang/String;)V
    .registers 7
    .param p1, "tokens"    # [Ljava/lang/String;

    .prologue
    .line 53
    new-instance v1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    invoke-direct {v1}, Lcom/lge/wifi/p2p/LGP2pServiceInfo;-><init>()V

    .line 54
    .local v1, "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    array-length v2, p1

    if-lt v0, v2, :cond_17

    .line 61
    iget-object v2, v1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 62
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v2, v1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    .line 64
    :cond_16
    return-void

    .line 55
    :cond_17
    aget-object v2, p1, v0

    const-string v3, "lgp2p_serv_name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 56
    aget-object v2, p1, v0

    aget-object v3, p1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 54
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 57
    :cond_36
    aget-object v2, p1, v0

    const-string v3, "service_info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 58
    aget-object v2, p1, v0

    aget-object v3, p1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    goto :goto_33
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getWifiP2pDeviceEx()Landroid/net/wifi/p2p/WifiP2pDeviceEx;
    .registers 4

    .prologue
    .line 157
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;-><init>()V

    .line 158
    .local v0, "dst":Landroid/net/wifi/p2p/WifiP2pDeviceEx;
    if-eqz v0, :cond_35

    .line 160
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceName:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceAddress:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->primaryDeviceType:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->secondaryDeviceType:Ljava/lang/String;

    .line 164
    iget v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->wpsConfigMethodsSupported:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->wpsConfigMethodsSupported:I

    .line 165
    iget v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->deviceCapability:I

    .line 166
    iget v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->groupCapability:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->groupCapability:I

    .line 167
    iget v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->status:I

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->status:I

    .line 168
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 171
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mIpAddr:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->mIpAddr:Ljava/lang/String;

    .line 175
    .end local v0    # "dst":Landroid/net/wifi/p2p/WifiP2pDeviceEx;
    :goto_34
    return-object v0

    .restart local v0    # "dst":Landroid/net/wifi/p2p/WifiP2pDeviceEx;
    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public removeServiceInfo(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    .registers 3
    .param p1, "serviceInfo"    # Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->remove(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public resetServiceInfoList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V
    .registers 4
    .param p1, "serviceInfoList"    # Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .prologue
    .line 135
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    if-eqz v0, :cond_b

    .line 136
    const-string v0, "LGP2pDevice"

    const-string v1, "resetServiceInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_b
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->clear()V

    .line 139
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->updateList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 140
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 4
    .param p1, "enableDbg"    # Z

    .prologue
    .line 152
    sput-boolean p1, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    .line 153
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    sget-boolean v1, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    invoke-virtual {v0, v1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->setDebugMode(Z)V

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-super {p0}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, "\n OobType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v2}, Lcom/lge/wifi/p2p/LGP2pOobType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, "\n ServiceInfoList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v2}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/lge/wifi/p2p/LGP2pDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/lge/wifi/p2p/LGP2pDevice;

    .prologue
    .line 108
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    if-eqz v0, :cond_b

    .line 109
    const-string v0, "LGP2pDevice"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_b
    invoke-virtual {p1}, Lcom/lge/wifi/p2p/LGP2pDevice;->getWifiP2pDeviceEx()Landroid/net/wifi/p2p/WifiP2pDeviceEx;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->update(Landroid/net/wifi/p2p/WifiP2pDeviceEx;)V

    .line 112
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 113
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0, v1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->updateList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 114
    return-void
.end method

.method public updateServiceInfo(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V
    .registers 4
    .param p1, "serviceInfo"    # Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .prologue
    .line 117
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    if-eqz v0, :cond_b

    .line 118
    const-string v0, "LGP2pDevice"

    const-string v1, "updateServiceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_b
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    .line 121
    return-void
.end method

.method public updateServiceInfoList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V
    .registers 4
    .param p1, "serviceInfoList"    # Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .prologue
    .line 124
    sget-boolean v0, Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z

    if-eqz v0, :cond_b

    .line 125
    const-string v0, "LGP2pDevice"

    const-string v1, "updateServiceInfoList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_b
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->updateList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 128
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pDeviceEx;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/p2p/LGP2pOobType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    return-void
.end method
