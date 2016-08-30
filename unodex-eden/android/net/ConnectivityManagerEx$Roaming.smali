.class public final enum Landroid/net/ConnectivityManagerEx$Roaming;
.super Ljava/lang/Enum;
.source "ConnectivityManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Roaming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/ConnectivityManagerEx$Roaming;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Landroid/net/ConnectivityManagerEx$Roaming;

.field public static final enum LTE:Landroid/net/ConnectivityManagerEx$Roaming;

.field public static final enum NOT_SUPPORT:Landroid/net/ConnectivityManagerEx$Roaming;

.field public static final enum WCDMA:Landroid/net/ConnectivityManagerEx$Roaming;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v0, Landroid/net/ConnectivityManagerEx$Roaming;

    const-string v1, "NOT_SUPPORT"

    invoke-direct {v0, v1, v2}, Landroid/net/ConnectivityManagerEx$Roaming;-><init>(Ljava/lang/String;I)V

    .line 149
    sput-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->NOT_SUPPORT:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 150
    new-instance v0, Landroid/net/ConnectivityManagerEx$Roaming;

    const-string v1, "WCDMA"

    invoke-direct {v0, v1, v3}, Landroid/net/ConnectivityManagerEx$Roaming;-><init>(Ljava/lang/String;I)V

    .line 153
    sput-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->WCDMA:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 154
    new-instance v0, Landroid/net/ConnectivityManagerEx$Roaming;

    const-string v1, "LTE"

    invoke-direct {v0, v1, v4}, Landroid/net/ConnectivityManagerEx$Roaming;-><init>(Ljava/lang/String;I)V

    .line 157
    sput-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->LTE:Landroid/net/ConnectivityManagerEx$Roaming;

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/ConnectivityManagerEx$Roaming;

    sget-object v1, Landroid/net/ConnectivityManagerEx$Roaming;->NOT_SUPPORT:Landroid/net/ConnectivityManagerEx$Roaming;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/ConnectivityManagerEx$Roaming;->WCDMA:Landroid/net/ConnectivityManagerEx$Roaming;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/ConnectivityManagerEx$Roaming;->LTE:Landroid/net/ConnectivityManagerEx$Roaming;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->ENUM$VALUES:[Landroid/net/ConnectivityManagerEx$Roaming;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/ConnectivityManagerEx$Roaming;
    .registers 2

    .prologue
    .line 1
    const-class v0, Landroid/net/ConnectivityManagerEx$Roaming;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManagerEx$Roaming;

    return-object v0
.end method

.method public static values()[Landroid/net/ConnectivityManagerEx$Roaming;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Landroid/net/ConnectivityManagerEx$Roaming;->ENUM$VALUES:[Landroid/net/ConnectivityManagerEx$Roaming;

    array-length v1, v0

    new-array v2, v1, [Landroid/net/ConnectivityManagerEx$Roaming;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
