.class public Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;
.super Ljava/lang/Object;
.source "LGP2pOobAdvInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mP2pListenFrequency:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo$1;-><init>()V

    .line 50
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "listenFrequency"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    .line 16
    iput p1, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;)V
    .registers 3
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    .line 20
    if-eqz p1, :cond_c

    .line 21
    iget v0, p1, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    .line 23
    :cond_c
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;I)V
    .registers 2

    .prologue
    .line 10
    iput p1, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getP2pListenFrequency()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    return v0
.end method

.method public setP2pListenFrequency(I)V
    .registers 2
    .param p1, "listenFrequency"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "mP2pListenFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/lge/wifi/p2p/LGP2pOobAdvInfo;->mP2pListenFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method
