.class Lcom/lge/wifi/p2p/LGP2pOobTypeList$1;
.super Ljava/lang/Object;
.source "LGP2pOobTypeList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pOobTypeList;
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
        "Lcom/lge/wifi/p2p/LGP2pOobTypeList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    new-instance v3, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    invoke-direct {v3}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;-><init>()V

    .line 119
    .local v3, "typeList":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 120
    .local v4, "typeListCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-lt v0, v4, :cond_d

    .line 126
    return-object v3

    .line 121
    :cond_d
    sget-object v5, Lcom/lge/wifi/p2p/LGP2pOobType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 122
    .local v1, "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    sget-object v5, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .line 123
    .local v2, "serviceInfoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    invoke-virtual {v3, v1, v2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->add(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pOobTypeList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 130
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pOobTypeList$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    move-result-object v0

    return-object v0
.end method
