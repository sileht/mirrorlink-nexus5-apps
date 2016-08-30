.class Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;
.super Ljava/lang/Object;
.source "WfdsDiscoveryMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
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
        "Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 170
    new-instance v0, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;-><init>()V

    .line 171
    .local v0, "s":Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$0(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$1(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;I)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$2(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;->access$3(Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;Ljava/lang/String;)V

    .line 175
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 179
    new-array v0, p1, [Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod$1;->newArray(I)[Lcom/lge/wfds/WfdsDiscoveryMethod$SeekMethod;

    move-result-object v0

    return-object v0
.end method
