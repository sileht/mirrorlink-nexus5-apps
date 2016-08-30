.class public final enum Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
.super Ljava/lang/Enum;
.source "WifiSapAuthMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

.field public static final enum MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

.field public static final enum OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

.field public static final enum SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    const-string v1, "OPEN_SYSTEM_AUTH"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 10
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    const-string v1, "SHARED_KEY_AUTH"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 11
    new-instance v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    const-string v1, "MIXED_MODE_AUTH"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->OPEN_SYSTEM_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->SHARED_KEY_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->MIXED_MODE_AUTH:Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;->ENUM$VALUES:[Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/impl/wifiSap/WifiSapAuthMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
