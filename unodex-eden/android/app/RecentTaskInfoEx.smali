.class public Landroid/app/RecentTaskInfoEx;
.super Landroid/app/ActivityManager$RecentTaskInfo;
.source "RecentTaskInfoEx.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/RecentTaskInfoEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isPinnedInRecent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Landroid/app/RecentTaskInfoEx$1;

    invoke-direct {v0}, Landroid/app/RecentTaskInfoEx$1;-><init>()V

    .line 46
    sput-object v0, Landroid/app/RecentTaskInfoEx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/RecentTaskInfoEx;->isPinnedInRecent:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager$RecentTaskInfo;Z)V
    .registers 5
    .param p1, "rti"    # Landroid/app/ActivityManager$RecentTaskInfo;
    .param p2, "isPinned"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/RecentTaskInfoEx;->isPinnedInRecent:Z

    .line 19
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iput v0, p0, Landroid/app/RecentTaskInfoEx;->id:I

    .line 20
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v0, p0, Landroid/app/RecentTaskInfoEx;->persistentId:I

    .line 21
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/RecentTaskInfoEx;->baseIntent:Landroid/content/Intent;

    .line 22
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/RecentTaskInfoEx;->origActivity:Landroid/content/ComponentName;

    .line 23
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RecentTaskInfoEx;->description:Ljava/lang/CharSequence;

    .line 24
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    iput v0, p0, Landroid/app/RecentTaskInfoEx;->stackId:I

    .line 25
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iput v0, p0, Landroid/app/RecentTaskInfoEx;->userId:I

    .line 26
    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Landroid/app/RecentTaskInfoEx;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 27
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    iput-wide v0, p0, Landroid/app/RecentTaskInfoEx;->firstActiveTime:J

    .line 28
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    iput-wide v0, p0, Landroid/app/RecentTaskInfoEx;->lastActiveTime:J

    .line 29
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    iput v0, p0, Landroid/app/RecentTaskInfoEx;->affiliatedTaskId:I

    .line 30
    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    iput v0, p0, Landroid/app/RecentTaskInfoEx;->affiliatedTaskColor:I

    .line 31
    iput-boolean p2, p0, Landroid/app/RecentTaskInfoEx;->isPinnedInRecent:Z

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/RecentTaskInfoEx;->isPinnedInRecent:Z

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/RecentTaskInfoEx;->readFromParcel(Landroid/os/Parcel;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/RecentTaskInfoEx;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/app/RecentTaskInfoEx;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_d

    :goto_a
    iput-boolean v0, p0, Landroid/app/RecentTaskInfoEx;->isPinnedInRecent:Z

    .line 44
    return-void

    .line 43
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/ActivityManager$RecentTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 37
    iget-boolean v0, p0, Landroid/app/RecentTaskInfoEx;->isPinnedInRecent:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void

    .line 37
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
