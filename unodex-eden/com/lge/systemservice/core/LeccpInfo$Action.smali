.class public Lcom/lge/systemservice/core/LeccpInfo$Action;
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
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;,
        Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;,
        Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;,
        Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;,
        Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_CONNECT:I = 0x2

.field public static final ACTION_TYPE_ON:I = 0x4

.field public static final ACTION_TYPE_OPEN:I = 0x3

.field public static final ACTION_TYPE_PLAY:I = 0x0

.field public static final ACTION_TYPE_TRANSFER:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/LeccpInfo$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connectAction:Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;

.field public id:Ljava/lang/String;

.field public isEnabled:Z

.field public onAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;

.field public openAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;

.field public playAction:Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;

.field public transferAction:Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 570
    new-instance v0, Lcom/lge/systemservice/core/LeccpInfo$Action$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LeccpInfo$Action$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/LeccpInfo$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 582
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    .line 457
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    .line 464
    iput-boolean v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->isEnabled:Z

    .line 472
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->connectAction:Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;

    .line 480
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->playAction:Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;

    .line 488
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->transferAction:Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    .line 496
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->openAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;

    .line 504
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->onAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;

    .line 508
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    .line 457
    iput v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    .line 464
    iput-boolean v2, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->isEnabled:Z

    .line 472
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->connectAction:Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;

    .line 480
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->playAction:Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;

    .line 488
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->transferAction:Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    .line 496
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->openAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;

    .line 504
    iput-object v1, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->onAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;

    .line 511
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LeccpInfo$Action;->readFromParcel(Landroid/os/Parcel;)V

    .line 512
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3a

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->isEnabled:Z

    .line 552
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3c

    .line 553
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->connectAction:Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;

    .line 563
    :cond_36
    :goto_36
    return-void

    .line 549
    :cond_37
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    goto :goto_12

    .line 551
    :cond_3a
    const/4 v0, 0x0

    goto :goto_21

    .line 554
    :cond_3c
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    if-nez v0, :cond_4f

    .line 555
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->playAction:Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;

    goto :goto_36

    .line 556
    :cond_4f
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    if-ne v0, v1, :cond_62

    .line 557
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->transferAction:Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    goto :goto_36

    .line 558
    :cond_62
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_76

    .line 559
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->openAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;

    goto :goto_36

    .line 560
    :cond_76
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    .line 561
    const-class v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;

    iput-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->onAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;

    goto :goto_36
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, ""

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-boolean v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->isEnabled:Z

    if-eqz v0, :cond_25

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    .line 535
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->connectAction:Lcom/lge/systemservice/core/LeccpInfo$Action$ConnectAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 545
    :cond_21
    :goto_21
    return-void

    .line 531
    :cond_22
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->id:Ljava/lang/String;

    goto :goto_7

    .line 533
    :cond_25
    const/4 v0, 0x0

    goto :goto_14

    .line 536
    :cond_27
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    if-nez v0, :cond_31

    .line 537
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->playAction:Lcom/lge/systemservice/core/LeccpInfo$Action$PlayAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_21

    .line 538
    :cond_31
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    if-ne v0, v1, :cond_3b

    .line 539
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->transferAction:Lcom/lge/systemservice/core/LeccpInfo$Action$TransferAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_21

    .line 540
    :cond_3b
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_46

    .line 541
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->openAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OpenAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_21

    .line 542
    :cond_46
    iget v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_21

    .line 543
    iget-object v0, p0, Lcom/lge/systemservice/core/LeccpInfo$Action;->onAction:Lcom/lge/systemservice/core/LeccpInfo$Action$OnAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_21
.end method
