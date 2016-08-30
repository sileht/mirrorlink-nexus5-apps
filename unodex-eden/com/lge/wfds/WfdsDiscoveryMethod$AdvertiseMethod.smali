.class public Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;
.super Ljava/lang/Object;
.source "WfdsDiscoveryMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsDiscoveryMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvertiseMethod"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAcceptMethod:I

.field private mAdvertiseId:I

.field private mNetworkConfig:I

.field private mNetworkRole:I

.field private mServiceInfo:Ljava/lang/String;

.field private mServiceStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 258
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 273
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAdvertiseId:I

    .line 194
    iput v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAcceptMethod:I

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceStatus:I

    .line 196
    iput v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkRole:I

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceInfo:Ljava/lang/String;

    .line 198
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V
    .registers 2

    .prologue
    .line 185
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAdvertiseId:I

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V
    .registers 2

    .prologue
    .line 186
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAcceptMethod:I

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V
    .registers 2

    .prologue
    .line 187
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceStatus:I

    return-void
.end method

.method static synthetic access$3(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V
    .registers 2

    .prologue
    .line 188
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkRole:I

    return-void
.end method

.method static synthetic access$4(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V
    .registers 2

    .prologue
    .line 189
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkConfig:I

    return-void
.end method

.method static synthetic access$5(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getAcceptMethod()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAcceptMethod:I

    return v0
.end method

.method public getAdvertiseId()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAdvertiseId:I

    return v0
.end method

.method public getNetworkConfig()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkConfig:I

    return v0
.end method

.method public getNetworkRole()I
    .registers 2

    .prologue
    .line 222
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkRole:I

    return v0
.end method

.method public getServiceInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceStatus()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceStatus:I

    return v0
.end method

.method public setAcceptMethod(I)V
    .registers 2
    .param p1, "acceptMethod"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAcceptMethod:I

    .line 212
    return-void
.end method

.method public setAdvertiseId(I)V
    .registers 2
    .param p1, "advId"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAdvertiseId:I

    .line 205
    return-void
.end method

.method public setNetworkConfig(I)V
    .registers 2
    .param p1, "networkConfig"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkConfig:I

    .line 233
    return-void
.end method

.method public setNetworkRole(I)V
    .registers 2
    .param p1, "networkRole"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkRole:I

    .line 226
    return-void
.end method

.method public setServiceInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceInfo"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceInfo:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setServiceStatus(I)V
    .registers 2
    .param p1, "serviceStatus"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceStatus:I

    .line 219
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 249
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAdvertiseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mAcceptMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mNetworkConfig:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->mServiceInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    return-void
.end method
