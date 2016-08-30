.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;
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
    name = "OpenRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOpenActionType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2013
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2024
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 1951
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 1980
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 1981
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 2006
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1985
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .registers 2

    .prologue
    .line 2034
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;)V

    return-object v0
.end method

.method public getOpenActionType()I
    .registers 2

    .prologue
    .line 1971
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    return v0
.end method

.method public setOpenctionType(I)V
    .registers 2
    .param p1, "openActionType"    # I

    .prologue
    .line 1961
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    .line 1962
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2000
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OpenRequest;->mOpenActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2002
    return-void
.end method
