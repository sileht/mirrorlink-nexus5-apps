.class public final enum Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
.super Ljava/lang/Enum;
.source "WifiSapSecurityMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

.field public static final enum NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

.field public static final enum WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

.field public static final enum WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

.field public static final enum WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

.field public static final enum WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    const-string v1, "NO_SECURITY"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 10
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    const-string v1, "WEP"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 11
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    const-string v1, "WPA_PSK"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 12
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    const-string v1, "WPA2_PSK"

    invoke-direct {v0, v1, v5}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 13
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    const-string v1, "WPA_WPA2_MIXED"

    invoke-direct {v0, v1, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->NO_SECURITY:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WEP:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA2_PSK:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->WPA_WPA2_MIXED:Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/impl/wifiSap/WifiSapSecurityMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
