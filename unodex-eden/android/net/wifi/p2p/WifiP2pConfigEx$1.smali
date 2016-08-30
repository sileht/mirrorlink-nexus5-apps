.class Landroid/net/wifi/p2p/WifiP2pConfigEx$1;
.super Ljava/lang/Object;
.source "WifiP2pConfigEx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfigEx;
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
        "Landroid/net/wifi/p2p/WifiP2pConfigEx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfigEx;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigEx;-><init>()V

    .line 102
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfigEx;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->deviceAddress:Ljava/lang/String;

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WpsInfo;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->wps:Landroid/net/wifi/WpsInfo;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->groupOwnerIntent:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->netId:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfigEx;->pin:Ljava/lang/String;

    .line 107
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigEx$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfigEx;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 111
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pConfigEx;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfigEx$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfigEx;

    move-result-object v0

    return-object v0
.end method
