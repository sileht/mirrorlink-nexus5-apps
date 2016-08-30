.class Lcom/lge/wifi/p2p/LGP2pOobDevice$1;
.super Ljava/lang/Object;
.source "LGP2pOobDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pOobDevice;
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
        "Lcom/lge/wifi/p2p/LGP2pOobDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pOobDevice;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobDevice;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pOobDevice;-><init>()V

    .line 96
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pOobDevice;
    sget-object v1, Lcom/lge/wifi/p2p/LGP2pOobType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    .line 100
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pOobDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pOobDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pOobDevice;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 104
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pOobDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pOobDevice$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pOobDevice;

    move-result-object v0

    return-object v0
.end method
