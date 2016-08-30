.class public Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFER_ACTION_TYPE_START:I = 0x0

.field public static final TRANSFER_ACTION_TYPE_STOP:I = 0x1


# instance fields
.field public isTransferring:Z

.field public percent:I

.field public total:I

.field public transferredCnt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1088
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1099
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    .line 1029
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    .line 1036
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    .line 1043
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    .line 1047
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    .line 1029
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    .line 1036
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    .line 1043
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    .line 1050
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 1051
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1c

    :goto_7
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    .line 1081
    return-void

    .line 1077
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1055
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->isTransferring:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->total:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->transferredCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;->percent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    return-void

    .line 1070
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method
