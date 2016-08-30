.class public Lcom/lge/wfds/session/AspServicePort;
.super Ljava/lang/Object;
.source "AspServicePort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/session/AspServicePort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public port:I

.field public proto:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lcom/lge/wfds/session/AspServicePort$1;

    invoke-direct {v0}, Lcom/lge/wfds/session/AspServicePort$1;-><init>()V

    sput-object v0, Lcom/lge/wfds/session/AspServicePort;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lge/wfds/session/AspServicePort;->port:I

    .line 19
    iput v0, p0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "port_"    # Ljava/lang/Integer;
    .param p2, "proto_"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lge/wfds/session/AspServicePort;->port:I

    .line 19
    iput v0, p0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lge/wfds/session/AspServicePort;->port:I

    .line 23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "Port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/lge/wfds/session/AspServicePort;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 32
    const-string v1, ", Proto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/wfds/session/AspServicePort;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/lge/wfds/session/AspServicePort;->proto:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
