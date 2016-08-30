.class Landroid/nfc/cardemulation/ApduServiceInfoNxp$1;
.super Ljava/lang/Object;
.source "ApduServiceInfoNxp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfoNxp;
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
        "Landroid/nfc/cardemulation/ApduServiceInfoNxp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 165
    sget-object v1, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;

    .line 166
    .local v0, "seExtension":Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfoNxp;

    invoke-direct {v1, v0}, Landroid/nfc/cardemulation/ApduServiceInfoNxp;-><init>(Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfoNxp;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfoNxp;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 171
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfoNxp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfoNxp;

    move-result-object v0

    return-object v0
.end method
