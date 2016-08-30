.class public final enum Lcom/lge/wifi/p2p/LGP2pConnectStatus;
.super Ljava/lang/Enum;
.source "LGP2pConnectStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/p2p/LGP2pConnectStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pConnectStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCONNECTED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pConnectStatus;

.field public static final enum REQUEST_CANCELED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

.field public static final enum REQUEST_FAILED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

.field public static final enum REQUEST_RECEIVED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

.field public static final enum REQUEST_SENT:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

.field public static final enum REQUEST_TIMEOUT:Lcom/lge/wifi/p2p/LGP2pConnectStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const-string v1, "REQUEST_SENT"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_SENT:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 11
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const-string v1, "REQUEST_RECEIVED"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_RECEIVED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 12
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->CONNECTED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 13
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->DISCONNECTED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 14
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const-string v1, "REQUEST_CANCELED"

    invoke-direct {v0, v1, v7}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_CANCELED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 15
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const-string v1, "REQUEST_TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_TIMEOUT:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 16
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const-string v1, "REQUEST_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_FAILED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_SENT:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_RECEIVED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->CONNECTED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->DISCONNECTED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_CANCELED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_TIMEOUT:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->REQUEST_FAILED:Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    .line 30
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pConnectStatus$1;-><init>()V

    .line 29
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/p2p/LGP2pConnectStatus;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/p2p/LGP2pConnectStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/p2p/LGP2pConnectStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pConnectStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    return-void
.end method
