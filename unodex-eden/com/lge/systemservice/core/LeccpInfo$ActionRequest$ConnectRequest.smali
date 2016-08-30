.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;
.super Ljava/lang/Object;
.source "LeccpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectActionKind:I

.field private mConnectActionType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1550
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1561
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1451
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionKind:I

    .line 1460
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1450
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1451
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionKind:I

    .line 1516
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1517
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1541
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1542
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionKind:I

    .line 1543
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1521
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .registers 2

    .prologue
    .line 1571
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;)V

    return-object v0
.end method

.method public getConnectActionKind()I
    .registers 2

    .prologue
    .line 1507
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionKind:I

    return v0
.end method

.method public getConnectActionType()I
    .registers 2

    .prologue
    .line 1484
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    return v0
.end method

.method public setConnectActionKind(I)V
    .registers 2
    .param p1, "connectActionKind"    # I

    .prologue
    .line 1496
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionKind:I

    .line 1497
    return-void
.end method

.method public setConnectActionType(I)V
    .registers 2
    .param p1, "connectActionType"    # I

    .prologue
    .line 1472
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    .line 1473
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1536
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$ConnectRequest;->mConnectActionKind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    return-void
.end method
