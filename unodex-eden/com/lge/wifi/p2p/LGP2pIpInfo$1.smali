.class Lcom/lge/wifi/p2p/LGP2pIpInfo$1;
.super Ljava/lang/Object;
.source "LGP2pIpInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pIpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/wifi/p2p/LGP2pIpInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pIpInfo;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 138
    new-instance v2, Lcom/lge/wifi/p2p/LGP2pIpInfo;

    invoke-direct {v2}, Lcom/lge/wifi/p2p/LGP2pIpInfo;-><init>()V

    .line 139
    .local v2, "inInfo":Lcom/lge/wifi/p2p/LGP2pIpInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_17

    .line 141
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->access$0(Lcom/lge/wifi/p2p/LGP2pIpInfo;Ljava/net/InetAddress;)V
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_17} :catch_4a

    .line 145
    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_28

    .line 147
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->access$1(Lcom/lge/wifi/p2p/LGP2pIpInfo;Ljava/net/InetAddress;)V
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_28} :catch_48

    .line 151
    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .local v0, "addressSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-lt v1, v0, :cond_30

    .line 158
    return-object v2

    .line 154
    :cond_30
    :try_start_30
    # getter for: Lcom/lge/wifi/p2p/LGP2pIpInfo;->mPeerAddresses:Ljava/util/Map;
    invoke-static {v2}, Lcom/lge/wifi/p2p/LGP2pIpInfo;->access$2(Lcom/lge/wifi/p2p/LGP2pIpInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/net/UnknownHostException; {:try_start_30 .. :try_end_43} :catch_46

    .line 152
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :catch_46
    move-exception v3

    goto :goto_43

    .end local v0    # "addressSize":I
    .end local v1    # "i":I
    :catch_48
    move-exception v3

    goto :goto_28

    :catch_4a
    move-exception v3

    goto :goto_17
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pIpInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pIpInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pIpInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 162
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pIpInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pIpInfo$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pIpInfo;

    move-result-object v0

    return-object v0
.end method
