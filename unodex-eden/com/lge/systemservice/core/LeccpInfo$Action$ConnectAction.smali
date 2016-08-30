.class public Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;
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
    name = "ConnectAction"
.end annotation


# static fields
.field public static final CONNECT_ACTION_KIND_NORMAL:I = 0x0

.field public static final CONNECT_ACTION_KIND_WFDS:I = 0x1

.field public static final CONNECT_ACTION_TYPE_CONNECT:I = 0x0

.field public static final CONNECT_ACTION_TYPE_DISCONNECT:I = 0x1

.field public static final CONNECT_ACTION_TYPE_DISCONNECT_SOUND_ONLY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isConnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 686
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 697
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;->isConnected:Z

    .line 651
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;->isConnected:Z

    .line 654
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 655
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_7
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;->isConnected:Z

    .line 679
    return-void

    .line 678
    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;->isConnected:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    return-void

    .line 674
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
