.class Lcom/lge/wifi/impl/WifiExtInfo$1;
.super Ljava/lang/Object;
.source "WifiExtInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wifi/impl/WifiExtInfo;
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
        "Lcom/lge/wifi/impl/WifiExtInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/WifiExtInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 128
    new-instance v0, Lcom/lge/wifi/impl/WifiExtInfo;

    invoke-direct {v0}, Lcom/lge/wifi/impl/WifiExtInfo;-><init>()V

    .line 129
    .local v0, "info":Lcom/lge/wifi/impl/WifiExtInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiExtInfo;->setFreq(I)V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiExtInfo;->setDevMode(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiExtInfo;->setKeyMgmt(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiExtInfo;->setCipher(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiExtInfo;->setEAPMETHOD(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/wifi/impl/WifiExtInfo;->setSECTYPE(Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiExtInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/wifi/impl/WifiExtInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/wifi/impl/WifiExtInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 139
    new-array v0, p1, [Lcom/lge/wifi/impl/WifiExtInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/wifi/impl/WifiExtInfo$1;->newArray(I)[Lcom/lge/wifi/impl/WifiExtInfo;

    move-result-object v0

    return-object v0
.end method
