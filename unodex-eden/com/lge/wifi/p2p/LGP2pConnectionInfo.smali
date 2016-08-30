.class public Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
.super Ljava/lang/Object;
.source "LGP2pConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupFormed:Z

.field private mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

.field private mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo$1;-><init>()V

    .line 127
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pConnectionInfo;)V
    .registers 4
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pConnectionInfo;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_1c

    .line 43
    iget-boolean v0, p1, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    iput-boolean v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    .line 44
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 45
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pIpInfo;

    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    invoke-direct {v0, v1}, Lcom/lge/wifi/p2p/LGP2pIpInfo;-><init>(Lcom/lge/wifi/p2p/LGP2pIpInfo;)V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    .line 49
    :goto_1b
    return-void

    .line 47
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    goto :goto_1b
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .param p1, "eventString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v4, Lcom/lge/wifi/p2p/LGP2pIpInfo;

    invoke-direct {v4}, Lcom/lge/wifi/p2p/LGP2pIpInfo;-><init>()V

    iput-object v4, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    .line 22
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 24
    const-string v4, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 25
    iput-boolean v9, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    .line 30
    :goto_1d
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "tokens":[Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_25
    if-lt v4, v6, :cond_2b

    .line 39
    return-void

    .line 27
    .end local v3    # "tokens":[Ljava/lang/String;
    :cond_28
    iput-boolean v5, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    goto :goto_1d

    .line 31
    .restart local v3    # "tokens":[Ljava/lang/String;
    :cond_2b
    aget-object v2, v3, v4

    .line 32
    .local v2, "token":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "nameValue":[Ljava/lang/String;
    aget-object v7, v1, v5

    const-string v8, "ip_addr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 34
    aget-object v0, v1, v9

    .line 35
    .local v0, "ipAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->setMyAddress(Ljava/net/InetAddress;)V

    .line 31
    .end local v0    # "ipAddress":Ljava/lang/String;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_25
.end method

.method static synthetic access$0(Lcom/lge/wifi/p2p/LGP2pConnectionInfo;Z)V
    .registers 2

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wifi/p2p/LGP2pConnectionInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wifi/p2p/LGP2pConnectionInfo;Lcom/lge/wifi/p2p/LGP2pIpInfo;)V
    .registers 2

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getLGP2pIpInfo()Lcom/lge/wifi/p2p/LGP2pIpInfo;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    return-object v0
.end method

.method public getWifiP2pGroup()Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method public isGroupFormed()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    return v0
.end method

.method public setGroupFormed(Z)V
    .registers 2
    .param p1, "groupFormed"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    .line 57
    return-void
.end method

.method public setLGP2pIpInfo(Lcom/lge/wifi/p2p/LGP2pIpInfo;)V
    .registers 2
    .param p1, "lgP2pIpInfo"    # Lcom/lge/wifi/p2p/LGP2pIpInfo;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    .line 73
    return-void
.end method

.method public setWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 2
    .param p1, "wifiP2pGroup"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "mGroupFormed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 95
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v1, :cond_23

    .line 96
    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_23
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    if-eqz v1, :cond_36

    .line 99
    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    invoke-virtual {v2}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mGroupFormed:Z

    if-eqz v0, :cond_23

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_25

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_16
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    if-eqz v0, :cond_29

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 120
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->mLGP2pIpInfo:Lcom/lge/wifi/p2p/LGP2pIpInfo;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    :goto_22
    return-void

    :cond_23
    move v0, v2

    .line 111
    goto :goto_7

    .line 116
    :cond_25
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_16

    .line 122
    :cond_29
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_22
.end method
