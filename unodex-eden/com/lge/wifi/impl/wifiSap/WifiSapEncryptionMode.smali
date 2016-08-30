.class public final enum Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
.super Ljava/lang/Enum;
.source "WifiSapEncryptionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field public static final enum NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field public static final enum TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

.field public static final enum TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    const-string v1, "NO_ENCRYPTION"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 10
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    const-string v1, "TKIP"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 11
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    const-string v1, "CCMP"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 12
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    const-string v1, "TKIP_CCMP"

    invoke-direct {v0, v1, v5}, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->NO_ENCRYPTION:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->TKIP_CCMP:Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/impl/wifiSap/WifiSapEncryptionMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
