.class Landroid/net/DataSchedulerAppInfo$1;
.super Ljava/lang/Object;
.source "DataSchedulerAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DataSchedulerAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/DataSchedulerAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DataSchedulerAppInfo;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 86
    new-instance v0, Landroid/net/DataSchedulerAppInfo;

    invoke-direct {v0, p1}, Landroid/net/DataSchedulerAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/net/DataSchedulerAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DataSchedulerAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/DataSchedulerAppInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [Landroid/net/DataSchedulerAppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Landroid/net/DataSchedulerAppInfo$1;->newArray(I)[Landroid/net/DataSchedulerAppInfo;

    move-result-object v0

    return-object v0
.end method
