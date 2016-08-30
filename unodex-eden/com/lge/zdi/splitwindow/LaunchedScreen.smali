.class public Lcom/lge/zdi/splitwindow/LaunchedScreen;
.super Ljava/lang/Object;
.source "LaunchedScreen.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/zdi/splitwindow/LaunchedScreen;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_ZONE_A:I = 0x1

.field public static final SCREEN_ZONE_B:I = 0x2

.field public static final SCREEN_ZONE_C:I = 0x3

.field public static final SCREEN_ZONE_D:I = 0x4

.field public static final SCREEN_ZONE_E:I = 0x5

.field public static final SCREEN_ZONE_F:I = 0x6

.field public static final SCREEN_ZONE_FOCUSED:I = 0xa

.field public static final SCREEN_ZONE_MAIN:I


# instance fields
.field public autoSplit:Z

.field public isFullScreen:Z

.field public isSupportMultipleInstance:Z

.field public isSupportSplit:Z

.field public screenZone:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/lge/zdi/splitwindow/LaunchedScreen$1;

    invoke-direct {v0}, Lcom/lge/zdi/splitwindow/LaunchedScreen$1;-><init>()V

    sput-object v0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .registers 6
    .param p1, "screenZone"    # I
    .param p2, "isSupportSplit"    # Z
    .param p3, "isFullScreen"    # Z
    .param p4, "isSupportMultipleInstance"    # Z
    .param p5, "autoSplit"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    .line 46
    iput-boolean p2, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    .line 47
    iput-boolean p3, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    .line 48
    iput-boolean p4, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    .line 49
    iput-boolean p5, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    :goto_2c
    iput-boolean v1, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    .line 42
    return-void

    :cond_2f
    move v0, v2

    .line 38
    goto :goto_12

    :cond_31
    move v0, v2

    .line 39
    goto :goto_1b

    :cond_33
    move v0, v2

    .line 40
    goto :goto_24

    :cond_35
    move v1, v2

    .line 41
    goto :goto_2c
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/lge/zdi/splitwindow/LaunchedScreen$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/lge/zdi/splitwindow/LaunchedScreen$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/lge/zdi/splitwindow/LaunchedScreen;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/lge/zdi/splitwindow/LaunchedScreen;)V
    .registers 3
    .param p1, "other"    # Lcom/lge/zdi/splitwindow/LaunchedScreen;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget v0, p1, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    iput v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    .line 54
    iget-boolean v0, p1, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    iput-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    .line 55
    iget-boolean v0, p1, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    iput-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    .line 56
    iget-boolean v0, p1, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    iput-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    .line 57
    iget-boolean v0, p1, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    iput-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 97
    instance-of v1, p1, Lcom/lge/zdi/splitwindow/LaunchedScreen;

    if-eqz v1, :cond_29

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/lge/zdi/splitwindow/LaunchedScreen;

    .line 99
    .local v0, "that":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    iget v1, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    iget v2, v0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    if-ne v1, v2, :cond_27

    iget-boolean v1, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    iget-boolean v2, v0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    if-ne v1, v2, :cond_27

    iget-boolean v1, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    iget-boolean v2, v0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    if-ne v1, v2, :cond_27

    iget-boolean v1, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    iget-boolean v2, v0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    if-ne v1, v2, :cond_27

    iget-boolean v1, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    iget-boolean v2, v0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    if-ne v1, v2, :cond_27

    const/4 v1, 0x1

    .line 105
    .end local v0    # "that":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    :goto_26
    return v1

    .line 99
    .restart local v0    # "that":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    :cond_27
    const/4 v1, 0x0

    goto :goto_26

    .line 105
    .end local v0    # "that":Lcom/lge/zdi/splitwindow/LaunchedScreen;
    :cond_29
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_26
.end method

.method public getScreenZone()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    return v0
.end method

.method public isAutoSplit()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    return v0
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    return v0
.end method

.method public isSupportMultipleInstance()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    return v0
.end method

.method public isSupportSplit()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->screenZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportSplit:Z

    if-eqz v0, :cond_27

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isFullScreen:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->isSupportMultipleInstance:Z

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-boolean v0, p0, Lcom/lge/zdi/splitwindow/LaunchedScreen;->autoSplit:Z

    if-eqz v0, :cond_2d

    :goto_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return-void

    :cond_27
    move v0, v2

    .line 89
    goto :goto_c

    :cond_29
    move v0, v2

    .line 90
    goto :goto_14

    :cond_2b
    move v0, v2

    .line 91
    goto :goto_1c

    :cond_2d
    move v1, v2

    .line 92
    goto :goto_23
.end method
