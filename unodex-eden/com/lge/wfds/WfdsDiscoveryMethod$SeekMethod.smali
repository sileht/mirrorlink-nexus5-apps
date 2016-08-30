.class public Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
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
    name = "SeekMethod"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mP2pAddress:Ljava/lang/String;

.field private mSearchId:I

.field private mSearchMethod:I

.field private mServiceInfoRequest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 168
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchId:I

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchMethod:I

    .line 122
    iput-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mP2pAddress:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mServiceInfoRequest:Ljava/lang/String;

    .line 124
    return-void
.end method

.method static synthetic access$0(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)V
    .registers 2

    .prologue
    .line 114
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchId:I

    return-void
.end method

.method static synthetic access$1(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)V
    .registers 2

    .prologue
    .line 115
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchMethod:I

    return-void
.end method

.method static synthetic access$2(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mP2pAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mServiceInfoRequest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getP2pAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mP2pAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchId()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchId:I

    return v0
.end method

.method public getSearchMethod()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchMethod:I

    return v0
.end method

.method public getServiceInfoRequest()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mServiceInfoRequest:Ljava/lang/String;

    return-object v0
.end method

.method public setP2pAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mP2pAddress:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setSearchId(I)V
    .registers 2
    .param p1, "searchId"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchId:I

    .line 131
    return-void
.end method

.method public setSearchMethod(I)V
    .registers 2
    .param p1, "searchMethod"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchMethod:I

    .line 138
    return-void
.end method

.method public setServiceInfoRequest(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceInfo"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mServiceInfoRequest:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 161
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mSearchMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mP2pAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->mServiceInfoRequest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    return-void
.end method
