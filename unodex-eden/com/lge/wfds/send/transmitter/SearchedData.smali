.class public Lcom/lge/wfds/send/transmitter/SearchedData;
.super Ljava/lang/Object;
.source "SearchedData.java"


# instance fields
.field public device_name:Ljava/lang/String;

.field public device_status:I

.field public mac_addr:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->uuid:Ljava/lang/String;

    .line 35
    const-string v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->mac_addr:Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->device_status:I

    .line 37
    const-string v0, "none"

    iput-object v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->device_name:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/send/transmitter/SearchedData;->wifiP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 39
    return-void
.end method
