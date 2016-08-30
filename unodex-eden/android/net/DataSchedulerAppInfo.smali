.class public Landroid/net/DataSchedulerAppInfo;
.super Ljava/lang/Object;
.source "DataSchedulerAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DataSchedulerAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alarm:Ljava/lang/String;

.field public repeat:J

.field public timeout:J

.field public uid:I

.field public window:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Landroid/net/DataSchedulerAppInfo$1;

    invoke-direct {v0}, Landroid/net/DataSchedulerAppInfo$1;-><init>()V

    .line 82
    sput-object v0, Landroid/net/DataSchedulerAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJJ)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "alarm"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "repeat"    # J
    .param p7, "window"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 36
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 42
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 45
    iput p1, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 46
    iput-object p2, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 48
    iput-wide p5, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 49
    iput-wide p7, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/net/DataSchedulerAppInfo;)V
    .registers 6
    .param p1, "obj"    # Landroid/net/DataSchedulerAppInfo;

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 36
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 42
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 53
    iget v0, p1, Landroid/net/DataSchedulerAppInfo;->uid:I

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 54
    iget-object v0, p1, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 55
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->timeout:J

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 56
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->repeat:J

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 57
    iget-wide v0, p1, Landroid/net/DataSchedulerAppInfo;->window:J

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 30
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 36
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 42
    iput-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSchedulerAppInfo{ uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget v1, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, " alarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string v1, " repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string v1, " window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget v0, p0, Landroid/net/DataSchedulerAppInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/net/DataSchedulerAppInfo;->alarm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->timeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->repeat:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-wide v0, p0, Landroid/net/DataSchedulerAppInfo;->window:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    return-void
.end method
