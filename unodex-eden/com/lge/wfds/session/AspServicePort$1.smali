.class Lcom/lge/wfds/session/AspServicePort$1;
.super Ljava/lang/Object;
.source "AspServicePort.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/AspServicePort;
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
        "Lcom/lge/wfds/session/AspServicePort;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/session/AspServicePort;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 51
    new-instance v0, Lcom/lge/wfds/session/AspServicePort;

    invoke-direct {v0}, Lcom/lge/wfds/session/AspServicePort;-><init>()V

    .line 52
    .local v0, "port_":Lcom/lge/wfds/session/AspServicePort;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/session/AspServicePort;->port:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    .line 54
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/session/AspServicePort$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/session/AspServicePort;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/session/AspServicePort;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 58
    new-array v0, p1, [Lcom/lge/wfds/session/AspServicePort;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/session/AspServicePort$1;->newArray(I)[Lcom/lge/wfds/session/AspServicePort;

    move-result-object v0

    return-object v0
.end method
