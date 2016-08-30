.class Lcom/lge/wifi/p2p/LGP2pDeviceList$1;
.super Ljava/lang/Object;
.source "LGP2pDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pDeviceList;
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
        "Lcom/lge/wifi/p2p/LGP2pDeviceList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pDeviceList;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 310
    new-instance v1, Lcom/lge/wifi/p2p/LGP2pDeviceList;

    invoke-direct {v1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;-><init>()V

    .line 312
    .local v1, "deviceList":Lcom/lge/wifi/p2p/LGP2pDeviceList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .local v0, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-lt v2, v0, :cond_d

    .line 316
    return-object v1

    .line 314
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/p2p/LGP2pDevice;

    invoke-virtual {v1, v3}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->update(Lcom/lge/wifi/p2p/LGP2pDevice;)V

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pDeviceList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pDeviceList;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 320
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pDeviceList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pDeviceList;

    move-result-object v0

    return-object v0
.end method
