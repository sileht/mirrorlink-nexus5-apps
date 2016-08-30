.class public Landroid/net/DataSchedulerPolicy;
.super Ljava/lang/Object;
.source "DataSchedulerPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DataSchedulerPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEARNING_STATUS_CONTROL:I = 0x2

.field public static final LEARNING_STATUS_MONITOR:I = 0x1

.field public static final LEARNING_STATUS_NO_INTEREST:I = 0x0

.field public static final POLICY_DELAY:I = 0x2

.field public static final POLICY_HEURISTIC:I = 0x1

.field public static final POLICY_NONE:I


# instance fields
.field public policy:I

.field public value:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Landroid/net/DataSchedulerPolicy$1;

    invoke-direct {v0}, Landroid/net/DataSchedulerPolicy$1;-><init>()V

    .line 71
    sput-object v0, Landroid/net/DataSchedulerPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 43
    iput-wide v2, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 46
    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 47
    iput-wide v2, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 48
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6
    .param p1, "policy"    # I
    .param p2, "value"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 51
    iput p1, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 52
    iput-wide p2, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSchedulerPolicy{ policy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget v1, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/DataSchedulerPolicy;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget v0, p0, Landroid/net/DataSchedulerPolicy;->policy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-wide v0, p0, Landroid/net/DataSchedulerPolicy;->value:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    return-void
.end method
