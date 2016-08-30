.class public final Lcom/vzw/nfc/RouteEntry;
.super Ljava/lang/Object;
.source "RouteEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/nfc/RouteEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAid:[B

.field mAllowed:Z

.field mLocation:I

.field mPowerState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/vzw/nfc/RouteEntry$1;

    invoke-direct {v0}, Lcom/vzw/nfc/RouteEntry$1;-><init>()V

    .line 58
    sput-object v0, Lcom/vzw/nfc/RouteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 8
    .param p1, "Aid"    # [B
    .param p2, "PowerState"    # I
    .param p3, "Location"    # I
    .param p4, "allowed"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    .line 36
    iput p2, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    .line 37
    iput p3, p0, Lcom/vzw/nfc/RouteEntry;->mLocation:I

    .line 38
    iput-boolean p4, p0, Lcom/vzw/nfc/RouteEntry;->mAllowed:Z

    .line 39
    const-string v0, "RouteEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "constructor mPowerState"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v0, "RouteEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "constructor mPowerState"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getAid()[B
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    return-object v0
.end method

.method public getLocation()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mLocation:I

    return v0
.end method

.method public getPowerState()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    return v0
.end method

.method public isAllowed()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/vzw/nfc/RouteEntry;->mAllowed:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vzw/nfc/RouteEntry;->mAllowed:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/vzw/nfc/RouteEntry;->mPowerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/vzw/nfc/RouteEntry;->mAid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 56
    return-void

    .line 51
    :cond_1e
    const/4 v0, 0x0

    goto :goto_5
.end method
