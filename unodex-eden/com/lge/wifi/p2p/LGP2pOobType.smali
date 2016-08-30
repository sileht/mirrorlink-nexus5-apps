.class public final enum Lcom/lge/wifi/p2p/LGP2pOobType;
.super Ljava/lang/Enum;
.source "LGP2pOobType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/p2p/LGP2pOobType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum BLE:Lcom/lge/wifi/p2p/LGP2pOobType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pOobType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DIRECT:Lcom/lge/wifi/p2p/LGP2pOobType;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pOobType;

.field public static final enum UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    const-string v1, "BLE"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/p2p/LGP2pOobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->BLE:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 11
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    const-string v1, "DIRECT"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/p2p/LGP2pOobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->DIRECT:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 12
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/p2p/LGP2pOobType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/wifi/p2p/LGP2pOobType;

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pOobType;->BLE:Lcom/lge/wifi/p2p/LGP2pOobType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pOobType;->DIRECT:Lcom/lge/wifi/p2p/LGP2pOobType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 26
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobType$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pOobType$1;-><init>()V

    .line 25
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/p2p/LGP2pOobType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pOobType;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/p2p/LGP2pOobType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pOobType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pOobType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return-void
.end method
