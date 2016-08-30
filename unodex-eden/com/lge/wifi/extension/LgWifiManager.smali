.class public Lcom/lge/wifi/extension/LgWifiManager;
.super Ljava/lang/Object;
.source "LgWifiManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LgWifiManager"

.field private static mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

.field private static mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

.field private static mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

.field private static mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

.field private static mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

.field private static mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

    .line 20
    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

    .line 21
    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

    .line 22
    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

    .line 23
    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

    .line 24
    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getPPPOEServiceExtIface()Lcom/lge/wifi/extension/IPPPOEServiceExtension;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Lcom/lge/wifi/impl/PPPOEServiceExtension;

    invoke-direct {v0}, Lcom/lge/wifi/impl/PPPOEServiceExtension;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    .line 96
    :cond_b
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIPPPOEServiceExtension:Lcom/lge/wifi/extension/IPPPOEServiceExtension;

    return-object v0
.end method

.method public static getWiFiAggregationIface()Lcom/lge/wifi/extension/IWifiAggregation;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Lcom/lge/wifi/impl/aggregation/WifiAggregation;

    invoke-direct {v0}, Lcom/lge/wifi/impl/aggregation/WifiAggregation;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

    .line 82
    :cond_b
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiAggregation:Lcom/lge/wifi/extension/IWifiAggregation;

    return-object v0
.end method

.method public static getWiFiOffloadingIface()Lcom/lge/wifi/extension/IWifiOffLoading;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Lcom/lge/wifi/impl/offloading/WifiOffLoading;

    invoke-direct {v0}, Lcom/lge/wifi/impl/offloading/WifiOffLoading;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

    .line 75
    :cond_b
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiOffLoading:Lcom/lge/wifi/extension/IWifiOffLoading;

    return-object v0
.end method

.method public static getWifiMobileHotspotIface()Lcom/lge/wifi/extension/IWifiMobileHotspot;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

    if-nez v0, :cond_b

    .line 66
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;

    invoke-direct {v0}, Lcom/lge/wifi/impl/mobilehotspot/WifiMobileHotspot;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

    .line 68
    :cond_b
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiMobileHotspot:Lcom/lge/wifi/extension/IWifiMobileHotspot;

    return-object v0
.end method

.method public static getWifiServiceExtIface()Lcom/lge/wifi/extension/IWifiServiceExtension;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/lge/wifi/impl/WifiServiceExtension;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiServiceExtension;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

    .line 44
    :cond_b
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiServiceExtension:Lcom/lge/wifi/extension/IWifiServiceExtension;

    return-object v0
.end method

.method public static getWifiSoftAPIface()Lcom/lge/wifi/extension/IWifiSoftAP;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;

    invoke-direct {v0}, Lcom/lge/wifi/impl/wifiSap/WifiSoftAP;-><init>()V

    sput-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

    .line 61
    :cond_b
    sget-object v0, Lcom/lge/wifi/extension/LgWifiManager;->mIWifiSoftAP:Lcom/lge/wifi/extension/IWifiSoftAP;

    return-object v0
.end method
