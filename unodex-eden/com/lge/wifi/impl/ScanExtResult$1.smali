.class Lcom/lge/wifi/impl/ScanExtResult$1;
.super Ljava/lang/Object;
.source "ScanExtResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/ScanExtResult;
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
        "Lcom/lge/wifi/impl/ScanExtResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/ScanExtResult;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 94
    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 97
    .restart local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_10
    new-instance v0, Lcom/lge/wifi/impl/ScanExtResult;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-direct {v0, v1, v2, v3}, Lcom/lge/wifi/impl/ScanExtResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "sr":Lcom/lge/wifi/impl/ScanExtResult;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/ScanExtResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/ScanExtResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/ScanExtResult;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 108
    new-array v0, p1, [Lcom/lge/wifi/impl/ScanExtResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/ScanExtResult$1;->newArray(I)[Lcom/lge/wifi/impl/ScanExtResult;

    move-result-object v0

    return-object v0
.end method
