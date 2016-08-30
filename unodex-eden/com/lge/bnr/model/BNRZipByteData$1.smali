.class Lcom/lge/bnr/model/BNRZipByteData$1;
.super Ljava/lang/Object;
.source "BNRZipByteData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bnr/model/BNRZipByteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/bnr/model/BNRZipByteData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/bnr/model/BNRZipByteData;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Lcom/lge/bnr/model/BNRZipByteData;

    invoke-direct {v0, p1}, Lcom/lge/bnr/model/BNRZipByteData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/bnr/model/BNRZipByteData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/bnr/model/BNRZipByteData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/bnr/model/BNRZipByteData;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 76
    new-array v0, p1, [Lcom/lge/bnr/model/BNRZipByteData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/bnr/model/BNRZipByteData$1;->newArray(I)[Lcom/lge/bnr/model/BNRZipByteData;

    move-result-object v0

    return-object v0
.end method
