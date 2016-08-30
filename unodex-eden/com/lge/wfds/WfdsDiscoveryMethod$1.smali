.class Lcom/lge/wfds/WfdsDiscoveryMethod$1;
.super Ljava/lang/Object;
.source "WfdsDiscoveryMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsDiscoveryMethod;
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
        "Lcom/lge/wfds/WfdsDiscoveryMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 291
    new-instance v2, Lcom/lge/wfds/WfdsDiscoveryMethod;

    invoke-direct {v2}, Lcom/lge/wfds/WfdsDiscoveryMethod;-><init>()V

    .line 293
    .local v2, "w":Lcom/lge/wfds/WfdsDiscoveryMethod;
    const-class v3, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 294
    .local v1, "sm":Ljava/lang/ClassLoader;
    const-class v3, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 296
    .local v0, "am":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lge/wfds/WfdsDiscoveryMethod;->mServiceName:Ljava/lang/String;

    .line 297
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    iput-object v3, v2, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    iput-object v3, v2, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    .line 299
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 303
    new-array v0, p1, [Lcom/lge/wfds/WfdsDiscoveryMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$1;->newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod;

    move-result-object v0

    return-object v0
.end method
