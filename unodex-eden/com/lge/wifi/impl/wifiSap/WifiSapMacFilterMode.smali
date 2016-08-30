.class public final enum Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
.super Ljava/lang/Enum;
.source "WifiSapMacFilterMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

.field public static final enum DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

.field public static final enum NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    const-string v1, "ACCEPT_UNLESS_IN_DENY_LIST"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 17
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    const-string v1, "DENY_UNLESS_IN_ACCEPT_LIST"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 22
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    const-string v1, "NUM_OF_MAC_FILTER_MODE"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ACCEPT_UNLESS_IN_DENY_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->DENY_UNLESS_IN_ACCEPT_LIST:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->NUM_OF_MAC_FILTER_MODE:Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/impl/wifiSap/WifiSapMacFilterMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
