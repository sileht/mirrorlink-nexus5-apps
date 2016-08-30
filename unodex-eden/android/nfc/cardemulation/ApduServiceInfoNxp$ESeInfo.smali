.class public Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfoNxp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfoNxp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ESeInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final powerState:I

.field final seId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 214
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo$1;-><init>()V

    .line 213
    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "seId"    # I
    .param p2, "powerState"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->seId:I

    .line 181
    iput p2, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->powerState:I

    .line 182
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getPowerState()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->powerState:I

    return v0
.end method

.method public getSeId()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->seId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "seId: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->seId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    const-string v4, ",Power state: [switchOn: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->powerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_55

    move v1, v2

    :goto_1e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    const-string v4, ",switchOff: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->powerState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_57

    move v1, v2

    :goto_2f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    const-string v4, ",batteryOff: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->powerState:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_59

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_55
    move v1, v3

    .line 196
    goto :goto_1e

    :cond_57
    move v1, v3

    .line 197
    goto :goto_2f

    :cond_59
    move v2, v3

    .line 198
    goto :goto_3f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 209
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->seId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfoNxp$ESeInfo;->powerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return-void
.end method
