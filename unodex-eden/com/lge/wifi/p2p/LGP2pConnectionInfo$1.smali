.class Lcom/lge/wifi/p2p/LGP2pConnectionInfo$1;
.super Ljava/lang/Object;
.source "LGP2pConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
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
        "Lcom/lge/wifi/p2p/LGP2pConnectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 130
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;-><init>()V

    .line 131
    .local v0, "connInfo":Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_33

    move v1, v2

    :goto_d
    invoke-static {v0, v1}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->access$0(Lcom/lge/wifi/p2p/LGP2pConnectionInfo;Z)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_21

    .line 133
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0, v1}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->access$1(Lcom/lge/wifi/p2p/LGP2pConnectionInfo;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 135
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_32

    .line 136
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pIpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pIpInfo;

    invoke-static {v0, v1}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo;->access$2(Lcom/lge/wifi/p2p/LGP2pConnectionInfo;Lcom/lge/wifi/p2p/LGP2pIpInfo;)V

    .line 138
    :cond_32
    return-object v0

    .line 131
    :cond_33
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pConnectionInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 142
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pConnectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pConnectionInfo$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pConnectionInfo;

    move-result-object v0

    return-object v0
.end method
