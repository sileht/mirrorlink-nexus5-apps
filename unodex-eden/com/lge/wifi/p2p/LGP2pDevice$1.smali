.class Lcom/lge/wifi/p2p/LGP2pDevice$1;
.super Ljava/lang/Object;
.source "LGP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pDevice;
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
        "Lcom/lge/wifi/p2p/LGP2pDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pDevice;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 194
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pDevice;-><init>()V

    .line 195
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceName:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->wpsConfigMethodsSupported:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceCapability:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->groupCapability:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->status:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    .line 204
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 206
    :cond_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->mIpAddr:Ljava/lang/String;

    .line 207
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pOobType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 208
    # getter for: Lcom/lge/wifi/p2p/LGP2pDevice;->sDBG:Z
    invoke-static {}, Lcom/lge/wifi/p2p/LGP2pDevice;->access$0()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 209
    const-string v1, "LGP2pDevice"

    const-string v2, "createFromParcel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_63
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 212
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pDevice;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 216
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDevice$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pDevice;

    move-result-object v0

    return-object v0
.end method
