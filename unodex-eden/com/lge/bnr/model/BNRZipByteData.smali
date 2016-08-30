.class public Lcom/lge/bnr/model/BNRZipByteData;
.super Ljava/lang/Object;
.source "BNRZipByteData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/bnr/model/BNRZipByteData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _byte:[B

.field private fName:Ljava/lang/String;

.field private nReadByte:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Lcom/lge/bnr/model/BNRZipByteData$1;

    invoke-direct {v0}, Lcom/lge/bnr/model/BNRZipByteData$1;-><init>()V

    sput-object v0, Lcom/lge/bnr/model/BNRZipByteData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/lge/bnr/model/BNRZipByteData;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/lge/bnr/model/BNRZipByteData;->fName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public get_ReadByte()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->nReadByte:I

    return v0
.end method

.method public get_byte()[B
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->_byte:[B

    return-object v0
.end method

.method public get_fName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->_byte:[B

    .line 29
    iget-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->_byte:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->nReadByte:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->fName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public set_ReadByte(I)V
    .registers 2
    .param p1, "nReadByte"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lge/bnr/model/BNRZipByteData;->nReadByte:I

    .line 60
    return-void
.end method

.method public set_byte([B)V
    .registers 2
    .param p1, "_byte"    # [B

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/bnr/model/BNRZipByteData;->_byte:[B

    .line 52
    return-void
.end method

.method public set_fName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/bnr/model/BNRZipByteData;->fName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->_byte:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->_byte:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 23
    iget v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->nReadByte:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-object v0, p0, Lcom/lge/bnr/model/BNRZipByteData;->fName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    return-void
.end method
