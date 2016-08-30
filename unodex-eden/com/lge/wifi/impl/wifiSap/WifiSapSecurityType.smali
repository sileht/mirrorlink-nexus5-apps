.class public Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;
.super Ljava/lang/Object;
.source "WifiSapSecurityType.java"


# instance fields
.field private final mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

.field private final mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field private final mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;


# direct methods
.method public constructor <init>(Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;)V
    .registers 4
    .param p1, "authMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .param p2, "secMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .param p3, "encMode"    # Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 17
    iput-object p2, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 18
    iput-object p3, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 19
    return-void
.end method


# virtual methods
.method public getAuthMode()Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->mAuthMode:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    return-object v0
.end method

.method public getEncMode()Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->mEncMode:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    return-object v0
.end method

.method public getSecMode()Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityType;->mSecMode:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    return-object v0
.end method
