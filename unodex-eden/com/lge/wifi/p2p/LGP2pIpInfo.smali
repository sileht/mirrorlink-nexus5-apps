.class public Lcom/lge/wifi/p2p/LGP2pIpInfo;
.super Ljava/lang/Object;
.source "LGP2pIpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pIpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupOwnerAddress:Ljava/net/InetAddress;

.field private mMyAddress:Ljava/net/InetAddress;

.field private mPeerAddresses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pIpInfo$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pIpInfo$1;-><init>()V

    .line 135
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    .line 20
    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pIpInfo;)V
    .registers 4
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pIpInfo;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    .line 20
    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    .line 28
    if-eqz p1, :cond_34

    .line 29
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1a

    .line 31
    :try_start_e
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;
    :try_end_1a
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_1a} :catch_3e

    .line 35
    :cond_1a
    :goto_1a
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_2a

    .line 37
    :try_start_1e
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_1e .. :try_end_2a} :catch_3c

    .line 41
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    .line 54
    :goto_33
    return-void

    .line 52
    :cond_34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    goto :goto_33

    :catch_3c
    move-exception v0

    goto :goto_2a

    :catch_3e
    move-exception v0

    goto :goto_1a
.end method

.method static synthetic access$0(Lcom/lge/wifi/p2p/LGP2pIpInfo;Ljava/net/InetAddress;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wifi/p2p/LGP2pIpInfo;Ljava/net/InetAddress;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wifi/p2p/LGP2pIpInfo;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public clearPeerAddresses()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 92
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupOwnerAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMyAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .registers 3
    .param p1, "peerMac"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPeerAddresses()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 78
    .local v1, "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "addressInter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    return-object v0
.end method

.method public removePeerAddress(Ljava/lang/String;)V
    .registers 3
    .param p1, "peerMac"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public setGroupOwnerAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    .line 62
    return-void
.end method

.method public setMyAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    .line 70
    return-void
.end method

.method public setPeerAddress(Ljava/lang/String;Ljava/net/InetAddress;)V
    .registers 4
    .param p1, "peerMac"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string v3, "mGroupOwnerAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    const-string v3, "\n mMyAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->getPeerAddresses()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, "addressInter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 100
    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "entry":Ljava/util/Map$Entry;
    const-string v3, "\n mPeerAddresse["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_36

    .line 114
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 115
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mGroupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 119
    :goto_12
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_3a

    .line 120
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mMyAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    :goto_22
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->getPeerAddresses()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    .local v0, "addressInter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 132
    return-void

    .line 117
    .end local v0    # "addressInter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    :cond_36
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_12

    .line 123
    :cond_3a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_22

    .line 128
    .restart local v0    # "addressInter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2f
.end method
