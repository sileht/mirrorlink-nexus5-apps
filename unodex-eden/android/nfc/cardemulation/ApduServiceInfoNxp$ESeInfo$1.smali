.class Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfoNxp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
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
        "Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .local v1, "seId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .local v0, "powerState":I
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    invoke-direct {v2, v1, v0}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 225
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    move-result-object v0

    return-object v0
.end method
