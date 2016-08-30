.class public Lcom/lge/wfds/WfdsPdMethod;
.super Ljava/lang/Object;
.source "WfdsPdMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/WfdsPdMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdvertiseId:I

.field private mGoRole:I

.field private mNetworkConfig:I

.field private mPeerAddress:Ljava/lang/String;

.field private mSessionInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    new-instance v0, Lcom/lge/wfds/WfdsPdMethod$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsPdMethod$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/WfdsPdMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "role"    # I
    .param p5, "config"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mPeerAddress:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/lge/wfds/WfdsPdMethod;->mAdvertiseId:I

    .line 31
    iput-object p3, p0, Lcom/lge/wfds/WfdsPdMethod;->mSessionInfo:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/lge/wfds/WfdsPdMethod;->mGoRole:I

    .line 33
    iput p5, p0, Lcom/lge/wfds/WfdsPdMethod;->mNetworkConfig:I

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/WfdsPdMethod;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mPeerAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wfds/WfdsPdMethod;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mSessionInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wfds/WfdsPdMethod;I)V
    .registers 2

    .prologue
    .line 20
    iput p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mAdvertiseId:I

    return-void
.end method

.method static synthetic access$3(Lcom/lge/wfds/WfdsPdMethod;I)V
    .registers 2

    .prologue
    .line 21
    iput p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mGoRole:I

    return-void
.end method

.method static synthetic access$4(Lcom/lge/wfds/WfdsPdMethod;I)V
    .registers 2

    .prologue
    .line 22
    iput p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mNetworkConfig:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvertiseId()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mAdvertiseId:I

    return v0
.end method

.method public getGoRole()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mGoRole:I

    return v0
.end method

.method public getNetworkConfig()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mNetworkConfig:I

    return v0
.end method

.method public getPeerAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mPeerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mSessionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvertiseId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mAdvertiseId:I

    .line 55
    return-void
.end method

.method public setGoRole(I)V
    .registers 2
    .param p1, "role"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mGoRole:I

    .line 62
    return-void
.end method

.method public setNetworkConfig(I)V
    .registers 2
    .param p1, "config"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mNetworkConfig:I

    .line 69
    return-void
.end method

.method public setPeerAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mPeerAddress:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSessionInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/wfds/WfdsPdMethod;->mSessionInfo:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mPeerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mSessionInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mAdvertiseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mGoRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/lge/wfds/WfdsPdMethod;->mNetworkConfig:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
