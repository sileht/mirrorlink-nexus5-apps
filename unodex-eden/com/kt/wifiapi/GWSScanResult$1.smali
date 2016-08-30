.class Lcom/kt/wifiapi/GWSScanResult$1;
.super Ljava/lang/Object;
.source "GWSScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/wifiapi/GWSScanResult;
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
        "Lcom/kt/wifiapi/GWSScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kt/wifiapi/GWSScanResult;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 128
    new-instance v0, Lcom/kt/wifiapi/GWSScanResult;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-direct/range {v0 .. v8}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/kt/wifiapi/GWSScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kt/wifiapi/GWSScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kt/wifiapi/GWSScanResult;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 141
    new-array v0, p1, [Lcom/kt/wifiapi/GWSScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/kt/wifiapi/GWSScanResult$1;->newArray(I)[Lcom/kt/wifiapi/GWSScanResult;

    move-result-object v0

    return-object v0
.end method
