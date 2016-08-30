.class Lcom/lge/wifi/p2p/LGP2pFailureReason$1;
.super Ljava/lang/Object;
.source "LGP2pFailureReason.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pFailureReason;
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
        "Lcom/lge/wifi/p2p/LGP2pFailureReason;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pFailureReason;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wifi/p2p/LGP2pFailureReason;->valueOf(Ljava/lang/String;)Lcom/lge/wifi/p2p/LGP2pFailureReason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pFailureReason$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pFailureReason;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pFailureReason;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 33
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pFailureReason;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pFailureReason$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pFailureReason;

    move-result-object v0

    return-object v0
.end method
