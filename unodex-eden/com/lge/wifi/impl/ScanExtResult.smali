.class public Lcom/lge/wifi/impl/ScanExtResult;
.super Ljava/lang/Object;
.source "ScanExtResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/impl/ScanExtResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    new-instance v0, Lcom/lge/wifi/impl/ScanExtResult$1;

    invoke-direct {v0}, Lcom/lge/wifi/impl/ScanExtResult$1;-><init>()V

    sput-object v0, Lcom/lge/wifi/impl/ScanExtResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lge/wifi/impl/ScanExtResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 34
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->SSID:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    .line 37
    return-void

    .line 34
    :cond_12
    const-string v0, "<unknown ssid>"

    goto :goto_b
.end method

.method public constructor <init>(Lcom/lge/wifi/impl/ScanExtResult;)V
    .registers 3
    .param p1, "source"    # Lcom/lge/wifi/impl/ScanExtResult;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_15

    .line 43
    iget-object v0, p1, Lcom/lge/wifi/impl/ScanExtResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 44
    iget-object v0, p1, Lcom/lge/wifi/impl/ScanExtResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->SSID:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    .line 50
    :cond_15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 57
    .local v0, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 58
    iget-object v2, p0, Lcom/lge/wifi/impl/ScanExtResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_38

    const-string v2, "<unknown ssid>"

    :goto_13
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 59
    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 60
    iget-object v2, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_3b

    move-object v2, v0

    :goto_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 62
    const-string v3, ", country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    if-nez v3, :cond_3e

    .end local v0    # "none":Ljava/lang/String;
    :goto_30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 58
    .restart local v0    # "none":Ljava/lang/String;
    :cond_38
    iget-object v2, p0, Lcom/lge/wifi/impl/ScanExtResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    goto :goto_13

    .line 60
    :cond_3b
    iget-object v2, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    goto :goto_22

    .line 63
    :cond_3e
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    goto :goto_30
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_18

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    :goto_d
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/lge/wifi/impl/ScanExtResult;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void

    .line 80
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d
.end method
