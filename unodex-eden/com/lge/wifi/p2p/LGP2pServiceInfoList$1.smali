.class Lcom/lge/wifi/p2p/LGP2pServiceInfoList$1;
.super Ljava/lang/Object;
.source "LGP2pServiceInfoList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
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
        "Lcom/lge/wifi/p2p/LGP2pServiceInfoList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    new-instance v1, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;-><init>()V

    .line 146
    .local v1, "infoList":Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "infoListCount":I
    # getter for: Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->sDBG:Z
    invoke-static {}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->access$0()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 148
    const-string v3, "LGP2pServiceInfoList"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createFromParcel : ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    if-lt v0, v2, :cond_2d

    .line 154
    return-object v1

    .line 151
    :cond_2d
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    invoke-virtual {v1, v3}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->update(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/p2p/LGP2pServiceInfoList;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 158
    new-array v0, p1, [Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList$1;->newArray(I)[Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v0

    return-object v0
.end method
