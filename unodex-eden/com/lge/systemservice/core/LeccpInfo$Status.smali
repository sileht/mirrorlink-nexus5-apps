.class public Lcom/lge/systemservice/core/LeccpInfo$Status;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isDiscovering:Z

.field public isSupportedBle:Z

.field public isSupportedPhoneSpeaker:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Status$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Status$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isDiscovering:Z

    .line 55
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedBle:Z

    .line 62
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedPhoneSpeaker:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isDiscovering:Z

    .line 55
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedBle:Z

    .line 62
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedPhoneSpeaker:Z

    .line 68
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Status;->readFromParcel(Landroid/os/Parcel;)V

    .line 69
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1d

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isDiscovering:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1f

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedBle:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_21

    :goto_1a
    iput-boolean v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedPhoneSpeaker:Z

    .line 97
    return-void

    :cond_1d
    move v0, v2

    .line 94
    goto :goto_9

    :cond_1f
    move v0, v2

    .line 95
    goto :goto_12

    :cond_21
    move v1, v2

    .line 96
    goto :goto_1a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isDiscovering:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedBle:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Status;->isSupportedPhoneSpeaker:Z

    if-eqz v0, :cond_1e

    :goto_16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void

    :cond_1a
    move v0, v2

    .line 88
    goto :goto_7

    :cond_1c
    move v0, v2

    .line 89
    goto :goto_f

    :cond_1e
    move v1, v2

    .line 90
    goto :goto_16
.end method
