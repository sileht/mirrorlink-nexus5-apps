.class public final enum Lcom/lge/wifi/p2p/LGP2pFindType;
.super Ljava/lang/Enum;
.source "LGP2pFindType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/wifi/p2p/LGP2pFindType;",
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
            "Lcom/lge/wifi/p2p/LGP2pFindType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pFindType;

.field public static final enum NONE:Lcom/lge/wifi/p2p/LGP2pFindType;

.field public static final enum ONE_CHANNEL:Lcom/lge/wifi/p2p/LGP2pFindType;

.field public static final enum PROGRESSIVE:Lcom/lge/wifi/p2p/LGP2pFindType;

.field public static final enum SOCIAL:Lcom/lge/wifi/p2p/LGP2pFindType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFindType;

    const-string v1, "PROGRESSIVE"

    invoke-direct {v0, v1, v2}, Lcom/lge/wifi/p2p/LGP2pFindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFindType;->PROGRESSIVE:Lcom/lge/wifi/p2p/LGP2pFindType;

    .line 11
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFindType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/lge/wifi/p2p/LGP2pFindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFindType;->NONE:Lcom/lge/wifi/p2p/LGP2pFindType;

    .line 12
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFindType;

    const-string v1, "SOCIAL"

    invoke-direct {v0, v1, v4}, Lcom/lge/wifi/p2p/LGP2pFindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFindType;->SOCIAL:Lcom/lge/wifi/p2p/LGP2pFindType;

    .line 13
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFindType;

    const-string v1, "ONE_CHANNEL"

    invoke-direct {v0, v1, v5}, Lcom/lge/wifi/p2p/LGP2pFindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFindType;->ONE_CHANNEL:Lcom/lge/wifi/p2p/LGP2pFindType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/wifi/p2p/LGP2pFindType;

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFindType;->PROGRESSIVE:Lcom/lge/wifi/p2p/LGP2pFindType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFindType;->NONE:Lcom/lge/wifi/p2p/LGP2pFindType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFindType;->SOCIAL:Lcom/lge/wifi/p2p/LGP2pFindType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/wifi/p2p/LGP2pFindType;->ONE_CHANNEL:Lcom/lge/wifi/p2p/LGP2pFindType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFindType;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pFindType;

    .line 28
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pFindType$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pFindType$1;-><init>()V

    .line 27
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pFindType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/wifi/p2p/LGP2pFindType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/wifi/p2p/LGP2pFindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pFindType;

    return-object v0
.end method

.method public static values()[Lcom/lge/wifi/p2p/LGP2pFindType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pFindType;->ENUM$VALUES:[Lcom/lge/wifi/p2p/LGP2pFindType;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/wifi/p2p/LGP2pFindType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pFindType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    return-void
.end method
