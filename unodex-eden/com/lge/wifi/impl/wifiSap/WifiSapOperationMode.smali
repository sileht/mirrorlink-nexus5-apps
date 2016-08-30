.class public final enum Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;
.super Ljava/lang/Enum;
.source "WifiSapOperationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

.field public static final enum IEEE802_11_MAX:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

.field public static final enum IEEE802_11_b:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

.field public static final enum IEEE802_11_bg:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

.field public static final enum IEEE802_11_bgn:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

.field public static final enum IEEE802_11_g_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

.field public static final enum IEEE802_11_n_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    const-string v1, "IEEE802_11_b"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_b:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 10
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    const-string v1, "IEEE802_11_bg"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bg:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 11
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    const-string v1, "IEEE802_11_bgn"

    invoke-direct {v0, v1, v5}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bgn:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 12
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    const-string v1, "IEEE802_11_g_only"

    invoke-direct {v0, v1, v6}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_g_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 13
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    const-string v1, "IEEE802_11_n_only"

    invoke-direct {v0, v1, v7}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_n_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 14
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    const-string v1, "IEEE802_11_MAX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_MAX:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_b:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bg:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_bgn:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_g_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_n_only:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->IEEE802_11_MAX:Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/impl/wifiSap/WifiSapOperationMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
