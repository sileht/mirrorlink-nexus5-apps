.class Landroid/net/wifi/p2p/WifiP2pGroupEx$1;
.super Ljava/lang/Object;
.source "WifiP2pGroupEx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroupEx;
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
        "Landroid/net/wifi/p2p/WifiP2pGroupEx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupEx;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 69
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroupEx;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pGroupEx;-><init>()V

    .line 70
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroupEx;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->setNetworkName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_48

    move v3, v4

    :goto_1f
    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->setIsGroupOwner(Z)V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .local v0, "clientCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    if-lt v2, v0, :cond_4a

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->setPassphrase(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->setInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->setNetworkId(I)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_56

    :goto_44
    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->setUseStaticIp(Z)V

    .line 81
    return-object v1

    .end local v0    # "clientCount":I
    .end local v2    # "i":I
    :cond_48
    move v3, v5

    .line 72
    goto :goto_1f

    .line 75
    .restart local v0    # "clientCount":I
    .restart local v2    # "i":I
    :cond_4a
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, v3}, Landroid/net/wifi/p2p/WifiP2pGroupEx;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_56
    move v4, v5

    .line 80
    goto :goto_44
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupEx$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupEx;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupEx;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 85
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroupEx;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupEx$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupEx;

    move-result-object v0

    return-object v0
.end method
