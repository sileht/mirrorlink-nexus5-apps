.class Lcom/lge/wifi/p2p/LGP2pServiceInfo$1;
.super Ljava/lang/Object;
.source "LGP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pServiceInfo;
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
        "Lcom/lge/wifi/p2p/LGP2pServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfo;-><init>()V

    .line 81
    .local v0, "lgP2pServiceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 88
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfo$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    move-result-object v0

    return-object v0
.end method
