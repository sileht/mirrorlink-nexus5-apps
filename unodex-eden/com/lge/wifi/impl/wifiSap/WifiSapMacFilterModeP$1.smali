.class Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP$1;
.super Ljava/lang/Object;
.source "WifiSapMacFilterModeP.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
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
        "Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "sFilterMode":Ljava/lang/String;
    new-instance v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    invoke-static {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;-><init>(Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 23
    new-array v0, p1, [Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP$1;->newArray(I)[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterModeP;

    move-result-object v0

    return-object v0
.end method
