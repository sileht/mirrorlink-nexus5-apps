.class Lcom/lge/wifi/p2p/LGP2pOobAdvInfo$1;
.super Ljava/lang/Object;
.source "LGP2pOobAdvInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;
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
        "Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;-><init>()V

    .line 54
    .local v0, "advInfo":Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->access$0(Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;I)V

    .line 55
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;

    move-result-object v0

    return-object v0
.end method
