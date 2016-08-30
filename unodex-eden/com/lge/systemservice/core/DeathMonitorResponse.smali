.class public Lcom/lge/systemservice/core/DeathMonitorResponse;
.super Ljava/lang/Object;
.source "DeathMonitorResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/systemservice/core/DeathMonitorResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mIntent:Landroid/content/Intent;

.field mPackageName:Ljava/lang/String;

.field mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Lcom/lge/systemservice/core/DeathMonitorResponse$1;

    invoke-direct {v0}, Lcom/lge/systemservice/core/DeathMonitorResponse$1;-><init>()V

    sput-object v0, Lcom/lge/systemservice/core/DeathMonitorResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPackageName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 16
    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mIntent:Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, p1}, Lcom/lge/systemservice/core/DeathMonitorResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPackageName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 16
    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mIntent:Landroid/content/Intent;

    .line 27
    iput-object p1, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPackageName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 29
    iput-object p3, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mIntent:Landroid/content/Intent;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPackageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mIntent:Landroid/content/Intent;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/lge/systemservice/core/DeathMonitorResponse;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 59
    return-void
.end method
