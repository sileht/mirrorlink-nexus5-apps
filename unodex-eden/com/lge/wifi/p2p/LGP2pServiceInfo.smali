.class public Lcom/lge/wifi/p2p/LGP2pServiceInfo;
.super Ljava/lang/Object;
.source "LGP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mServiceInfo:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pServiceInfo$1;-><init>()V

    .line 77
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V
    .registers 3
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    .line 29
    if-eqz p1, :cond_15

    .line 30
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    .line 34
    :cond_15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    .line 23
    if-eqz p2, :cond_11

    .line 24
    iput-object p2, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    .line 26
    :cond_11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "ServiceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "\n ServiceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pServiceInfo;->mServiceInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
