.class Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice$1;
.super Ljava/lang/Object;
.source "NetworkDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
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
        "Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "macAddr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "ipAddr":Ljava/lang/String;
    new-instance v3, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    invoke-direct {v3, v1, v2, v0}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 132
    new-array v0, p1, [Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice$1;->newArray(I)[Lcom/lge/wifi/impl/mobilehotspot/NetworkDevice;

    move-result-object v0

    return-object v0
.end method
