.class public Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;
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
    name = "OpenAction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPEN_ACTION_TYPE_OPEN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1151
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1162
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 1122
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1144
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1126
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1141
    return-void
.end method
