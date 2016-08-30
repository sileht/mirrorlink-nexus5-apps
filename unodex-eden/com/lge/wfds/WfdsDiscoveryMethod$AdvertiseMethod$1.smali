.class Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;
.super Ljava/lang/Object;
.source "WfdsDiscoveryMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
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
        "Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 260
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;-><init>()V

    .line 261
    .local v0, "a":Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$0(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$1(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$2(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$3(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$4(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$5(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;Ljava/lang/String;)V

    .line 267
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 271
    new-array v0, p1, [Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;->newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    move-result-object v0

    return-object v0
.end method
