.class public Lcom/lge/wfds/WfdsDiscoveryMethod;
.super Ljava/lang/Object;
.source "WfdsDiscoveryMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;,
        Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/WfdsDiscoveryMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final WFDS_ADVERTISER:I = 0x1

.field public static final WFDS_ADVERTISE_AVAILABLE_STATE:I = 0x1

.field public static final WFDS_ADVERTISE_NOT_AVAILABLE_STATE:I = 0x0

.field public static final WFDS_ADVERTISE_NOT_DEFINED_STATE:I = 0x2

.field private static final WFDS_DEFAULT_SERVICE_NAME:Ljava/lang/String; = "com.lge.wfds.send"

.field public static final WFDS_EXACT_SEARCH_METHOD:I = 0x1

.field public static final WFDS_PREFIX_SEARCH_METHOD:I = 0x0

.field public static final WFDS_SEEKER:I = 0x2

.field public static final WFDS_USER_AUTO_ACCEPT_METHOD:I = 0x1

.field public static final WFDS_USER_DEFERRED_ACCEPT_METHOD:I


# instance fields
.field public mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

.field public mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

.field public mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 289
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/WfdsDiscoveryMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 305
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "com.lge.wfds.send"

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mServiceName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "role"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x2

    if-ne p2, v0, :cond_16

    .line 69
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    .line 70
    iput-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    .line 71
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->setSearchId(I)V

    .line 77
    :cond_15
    :goto_15
    return-void

    .line 72
    :cond_16
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 73
    iput-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    .line 74
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    .line 75
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->setAdvertiseId(I)V

    goto :goto_15
.end method

.method public constructor <init>(Lcom/lge/wfds/WfdsDiscoveryMethod;)V
    .registers 5
    .param p1, "src"    # Lcom/lge/wfds/WfdsDiscoveryMethod;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p1, :cond_90

    .line 82
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsDiscoveryMethod;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mServiceName:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    if-eqz v0, :cond_91

    .line 84
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    .line 85
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getSearchId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$0(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)V

    .line 86
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getSearchMethod()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$1(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)V

    .line 87
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getP2pAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$2(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->getServiceInfoRequest()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$3(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)V

    .line 92
    :goto_43
    iget-object v0, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    if-eqz v0, :cond_94

    .line 93
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    .line 94
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getAdvertiseId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$0(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 95
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getAcceptMethod()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$1(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 96
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceStatus()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$2(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 97
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getServiceInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$5(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getNetworkRole()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$3(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 99
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->getNetworkConfig()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;->access$4(Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;I)V

    .line 104
    :cond_90
    :goto_90
    return-void

    .line 90
    :cond_91
    iput-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    goto :goto_43

    .line 101
    :cond_94
    iput-object v2, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    goto :goto_90
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "role"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mServiceName:Ljava/lang/String;

    .line 58
    const/4 v0, 0x2

    if-ne p2, v0, :cond_13

    .line 59
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    .line 60
    iput-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    .line 65
    :cond_12
    :goto_12
    return-void

    .line 61
    :cond_13
    const/4 v0, 0x1

    if-ne p2, v0, :cond_12

    .line 62
    iput-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    .line 63
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    goto :goto_12
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mServiceName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mSeekMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 285
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod;->mAdvertiseMethod:Lcom/lge/wfds/WfdsDiscoveryMethod$AdvertiseMethod;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 286
    return-void
.end method
