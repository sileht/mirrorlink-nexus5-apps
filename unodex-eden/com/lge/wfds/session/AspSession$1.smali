.class Lcom/lge/wfds/session/AspSession$1;
.super Ljava/lang/Object;
.source "AspSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wfds/session/AspSession;
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
        "Lcom/lge/wfds/session/AspSession;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/session/AspSession;
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 207
    new-instance v0, Lcom/lge/wfds/session/AspSession;

    invoke-direct {v0}, Lcom/lge/wfds/session/AspSession;-><init>()V

    .line 208
    .local v0, "session":Lcom/lge/wfds/session/AspSession;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/session/AspSession;->service_mac:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/session/AspSession;->session_mac:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/session/AspSession;->session_id:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/session/AspSession;->advertise_id:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/session/AspSession;->reason:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/lge/wfds/session/AspSession;->state:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/session/AspSession;->ip_address:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lge/wfds/session/AspSession;->session_information:Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    const-class v2, Lcom/lge/wfds/session/AspServicePort;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/lge/wfds/session/AspSession;->ports:Ljava/util/ArrayList;

    .line 217
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/session/AspSession$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wfds/session/AspSession;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 221
    new-array v0, p1, [Lcom/lge/wfds/session/AspSession;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wfds/session/AspSession$1;->newArray(I)[Lcom/lge/wfds/session/AspSession;

    move-result-object v0

    return-object v0
.end method
