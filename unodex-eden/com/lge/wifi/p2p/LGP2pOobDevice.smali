.class public Lcom/lge/wifi/p2p/LGP2pOobDevice;
.super Ljava/lang/Object;
.source "LGP2pOobDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pOobDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

.field public mP2pDeviceAddress:Ljava/lang/String;

.field public mP2pDeviceName:Ljava/lang/String;

.field public mP2pListenFrequency:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pOobDevice$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pOobDevice$1;-><init>()V

    .line 92
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pOobDevice;)V
    .registers 3
    .param p1, "source"    # Lcom/lge/wifi/p2p/LGP2pOobDevice;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    .line 27
    if-eqz p1, :cond_24

    .line 28
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 29
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    .line 31
    iget v0, p1, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    .line 33
    :cond_24
    return-void
.end method

.method public constructor <init>(Lcom/lge/wifi/p2p/LGP2pOobType;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAddress"    # Ljava/lang/String;
    .param p4, "listenFrequency"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    .line 20
    iput-object p1, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 21
    iput-object p2, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "mOobType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v2}, Lcom/lge/wifi/p2p/LGP2pOobType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "\n mP2pDeviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "\n mP2pDeviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "\n mP2pListenFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v0, p1, p2}, Lcom/lge/wifi/p2p/LGP2pOobType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/lge/wifi/p2p/LGP2pOobDevice;->mP2pListenFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
