.class public final enum Lcom/lge/wifi/p2p/LGP2pFailureReason;
.super Ljava/lang/Enum;
.source "LGP2pFailureReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/p2p/LGP2pFailureReason;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pFailureReason;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pFailureReason;

.field public static final enum REASON_BUSY:Lcom/lge/wifi/p2p/LGP2pFailureReason;

.field public static final enum REASON_FAILURE:Lcom/lge/wifi/p2p/LGP2pFailureReason;

.field public static final enum REASON_NOT_SUPPORTED:Lcom/lge/wifi/p2p/LGP2pFailureReason;

.field public static final enum REASON_TIMEOUT:Lcom/lge/wifi/p2p/LGP2pFailureReason;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;

    const-string v1, "REASON_FAILURE"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/p2p/LGP2pFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_FAILURE:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    .line 11
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;

    const-string v1, "REASON_NOT_SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/p2p/LGP2pFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_NOT_SUPPORTED:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    .line 12
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;

    const-string v1, "REASON_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/p2p/LGP2pFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_TIMEOUT:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    .line 13
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;

    const-string v1, "REASON_BUSY"

    invoke-direct {v0, v1, v5}, Lcom/lge/wifi/p2p/LGP2pFailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_BUSY:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/wifi/p2p/LGP2pFailureReason;

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_FAILURE:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_NOT_SUPPORTED:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_TIMEOUT:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFailureReason;->REASON_BUSY:Lcom/lge/wifi/p2p/LGP2pFailureReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pFailureReason;

    .line 27
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFailureReason$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pFailureReason$1;-><init>()V

    .line 26
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/p2p/LGP2pFailureReason;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/p2p/LGP2pFailureReason;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pFailureReason;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pFailureReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/p2p/LGP2pFailureReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pFailureReason;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    return-void
.end method
