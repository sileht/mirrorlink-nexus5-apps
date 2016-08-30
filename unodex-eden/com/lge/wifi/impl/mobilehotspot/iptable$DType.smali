.class final enum Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;
.super Ljava/lang/Enum;
.source "iptable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/mobilehotspot/iptable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

.field public static final enum FILTERING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

.field public static final enum FORWARDING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    const-string v1, "FILTERING"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FILTERING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    new-instance v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    const-string v1, "FORWARDING"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FORWARDING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    sget-object v1, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FILTERING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->FORWARDING:Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->ENUM$VALUES:[Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;->ENUM$VALUES:[Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/impl/mobilehotspot/iptable$DType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
