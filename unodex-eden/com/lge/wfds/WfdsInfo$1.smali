.class Lcom/lge/wfds/WfdsInfo$1;
.super Ljava/lang/Object;
.source "WfdsInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsInfo;
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
        "Lcom/lge/wfds/WfdsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    new-instance v0, Lcom/lge/wfds/WfdsInfo;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsInfo;-><init>()V

    .line 156
    .local v0, "info":Lcom/lge/wfds/WfdsInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsAdvertiseId:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceInfo:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsServiceStatus:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionInfo:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionId:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionMac:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsSessionDeviceName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsInterfaceAddress:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/WfdsInfo;->mWfdsRequestRole:I

    .line 167
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 171
    new-array v0, p1, [Lcom/lge/wfds/WfdsInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsInfo$1;->newArray(I)[Lcom/lge/wfds/WfdsInfo;

    move-result-object v0

    return-object v0
.end method
