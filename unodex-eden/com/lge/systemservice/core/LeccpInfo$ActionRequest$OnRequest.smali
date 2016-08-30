.class public Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;
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
    name = "OnRequest"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOnActionKind:I

.field private mOnActionType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2144
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2155
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 2046
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 2055
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 2108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 2046
    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 2109
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 2110
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 2136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 2137
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 2114
    const/4 v0, 0x0

    return v0
.end method

.method public getActionRequest()Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;
    .registers 2

    .prologue
    .line 2165
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest;-><init>(Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;)V

    return-object v0
.end method

.method public getOnActionKind()I
    .registers 2

    .prologue
    .line 2077
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    return v0
.end method

.method public getOnActionType()I
    .registers 2

    .prologue
    .line 2100
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    return v0
.end method

.method public setOnActionKind(I)V
    .registers 2
    .param p1, "onActionKind"    # I

    .prologue
    .line 2066
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    .line 2067
    return-void
.end method

.method public setOnActionType(I)V
    .registers 2
    .param p1, "onActionType"    # I

    .prologue
    .line 2089
    iput p1, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    .line 2090
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2129
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionKind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$ActionRequest$OnRequest;->mOnActionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2132
    return-void
.end method
