.class public Lcom/lge/wifi/p2p/LGP2pDeviceList;
.super Ljava/lang/Object;
.source "LGP2pDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pDeviceList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LGP2pDeviceList"

.field private static mDBG:Z


# instance fields
.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wifi/p2p/LGP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mOobTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wifi/p2p/LGP2pOobTypeList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    .line 308
    new-instance v0, Lcom/lge/wifi/p2p/LGP2pDeviceList$1;

    invoke-direct {v0}, Lcom/lge/wifi/p2p/LGP2pDeviceList$1;-><init>()V

    .line 307
    sput-object v0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 322
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 58
    return-void

    .line 55
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 56
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    invoke-virtual {p0, v0}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->update(Lcom/lge/wifi/p2p/LGP2pDevice;)V

    goto :goto_15
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "enableDbg"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    .line 41
    sput-boolean p1, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    .line 42
    return-void
.end method

.method private resetServiceInfoList(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)Lcom/lge/wifi/p2p/LGP2pDevice;
    .registers 3
    .param p1, "p2pDevice"    # Lcom/lge/wifi/p2p/LGP2pDevice;
    .param p2, "serviceInfoList"    # Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    .prologue
    .line 237
    invoke-virtual {p1, p2}, Lcom/lge/wifi/p2p/LGP2pDevice;->resetServiceInfoList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 238
    return-object p1
.end method

.method private updateDetailsInfo(Lcom/lge/wifi/p2p/LGP2pDevice;)V
    .registers 5
    .param p1, "device"    # Lcom/lge/wifi/p2p/LGP2pDevice;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 88
    .local v0, "d":Lcom/lge/wifi/p2p/LGP2pDevice;
    if-eqz v0, :cond_34

    .line 90
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceName:Ljava/lang/String;

    .line 91
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 92
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 93
    iget v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->wpsConfigMethodsSupported:I

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->wpsConfigMethodsSupported:I

    .line 94
    iget v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceCapability:I

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceCapability:I

    .line 95
    iget v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->groupCapability:I

    iput v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->groupCapability:I

    .line 96
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 99
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mIpAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->mIpAddr:Ljava/lang/String;

    .line 102
    iget-object v1, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v1, v2}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->updateList(Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 107
    :goto_33
    return-void

    .line 106
    :cond_34
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33
.end method

.method private validateDevice(Lcom/lge/wifi/p2p/LGP2pDevice;)Z
    .registers 5
    .param p1, "device"    # Lcom/lge/wifi/p2p/LGP2pDevice;

    .prologue
    const/4 v0, 0x0

    .line 242
    if-nez p1, :cond_b

    .line 243
    const-string v1, "LGP2pDeviceList"

    const-string v2, "validateDevice : device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_a
    return v0

    .line 246
    :cond_b
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    sget-object v2, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    if-ne v1, v2, :cond_19

    .line 247
    const-string v1, "LGP2pDeviceList"

    const-string v2, "validateDevice : mOobType is UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 250
    :cond_19
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 251
    const-string v1, "LGP2pDeviceList"

    const-string v2, "validateDevice : deviceAddress is Empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 254
    :cond_29
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private validateDeviceAddress(Ljava/lang/String;)Z
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 259
    const-string v0, "LGP2pDeviceList"

    const-string v1, "validateDeviceAddress : deviceAddress is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    iget-object v0, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 63
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pDevice;
    .registers 8
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "oobType"    # Lcom/lge/wifi/p2p/LGP2pOobType;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 145
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 146
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    if-eqz v0, :cond_5a

    .line 147
    iget-object v2, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    .line 148
    .local v1, "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    if-eqz v1, :cond_30

    invoke-virtual {v1, p2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->contains(Lcom/lge/wifi/p2p/LGP2pOobType;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 149
    new-instance v2, Lcom/lge/wifi/p2p/LGP2pDevice;

    invoke-direct {v2, v0, p2}, Lcom/lge/wifi/p2p/LGP2pDevice;-><init>(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pOobType;)V

    invoke-virtual {v1, p2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->resetServiceInfoList(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)Lcom/lge/wifi/p2p/LGP2pDevice;

    move-result-object v2

    .line 161
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .end local v1    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :goto_2f
    return-object v2

    .line 151
    .restart local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .restart local v1    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_30
    sget-boolean v2, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v2, :cond_58

    .line 152
    const-string v2, "LGP2pDeviceList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .end local v1    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_58
    :goto_58
    const/4 v2, 0x0

    goto :goto_2f

    .line 156
    .restart local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    :cond_5a
    sget-boolean v2, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v2, :cond_58

    .line 157
    const-string v2, "LGP2pDeviceList"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get : ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not found!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method public get(Ljava/lang/String;)Ljava/util/Collection;
    .registers 9
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 125
    iget-object v5, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    iget-object v5, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 128
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    if-eqz v0, :cond_49

    .line 129
    iget-object v5, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    .line 130
    .local v4, "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    if-eqz v4, :cond_31

    .line 131
    invoke-virtual {v4}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->getOobTypeList()Ljava/util/Iterator;

    move-result-object v3

    .line 132
    .local v3, "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_32

    .line 140
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    .end local v3    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    .end local v4    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_31
    :goto_31
    return-object v1

    .line 133
    .restart local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .restart local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    .restart local v3    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    .restart local v4    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 134
    .local v2, "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    new-instance v5, Lcom/lge/wifi/p2p/LGP2pDevice;

    invoke-direct {v5, v0, v2}, Lcom/lge/wifi/p2p/LGP2pDevice;-><init>(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pOobType;)V

    invoke-virtual {v4, v2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->resetServiceInfoList(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)Lcom/lge/wifi/p2p/LGP2pDevice;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 140
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    .end local v2    # "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    .end local v3    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    .end local v4    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_49
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public getAnyType(Ljava/lang/String;)Lcom/lge/wifi/p2p/LGP2pDevice;
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 111
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 112
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    if-eqz v0, :cond_18

    .line 113
    new-instance v1, Lcom/lge/wifi/p2p/LGP2pDevice;

    sget-object v2, Lcom/lge/wifi/p2p/LGP2pOobType;->UNKNOWN:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-direct {v1, v0, v2}, Lcom/lge/wifi/p2p/LGP2pDevice;-><init>(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pOobType;)V

    .line 120
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    :goto_17
    return-object v1

    .line 115
    .restart local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    :cond_18
    sget-boolean v1, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v1, :cond_36

    .line 116
    const-string v1, "LGP2pDeviceList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAnyType : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    :cond_36
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public getDeviceList()Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    iget-object v5, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 277
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    return-object v5

    .line 267
    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 268
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    iget-object v6, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    .line 269
    .local v4, "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    if-eqz v4, :cond_f

    .line 270
    invoke-virtual {v4}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->getOobTypeList()Ljava/util/Iterator;

    move-result-object v3

    .line 271
    .local v3, "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 273
    .local v2, "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    new-instance v6, Lcom/lge/wifi/p2p/LGP2pDevice;

    invoke-direct {v6, v0, v2}, Lcom/lge/wifi/p2p/LGP2pDevice;-><init>(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pOobType;)V

    invoke-virtual {v4, v2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->resetServiceInfoList(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)Lcom/lge/wifi/p2p/LGP2pDevice;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30
.end method

.method public remove(Ljava/lang/String;)Ljava/util/Collection;
    .registers 12
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wifi/p2p/LGP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->validateDeviceAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 197
    iget-object v6, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 198
    sget-boolean v6, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v6, :cond_2c

    .line 199
    const-string v6, "LGP2pDeviceList"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "remove : ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    iget-object v6, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 203
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    if-eqz v0, :cond_ac

    .line 204
    iget-object v6, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    .line 205
    .local v4, "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    if-eqz v4, :cond_4f

    .line 206
    invoke-virtual {v4}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->getOobTypeList()Ljava/util/Iterator;

    move-result-object v3

    .line 207
    .local v3, "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5e

    .line 212
    .end local v3    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :cond_4f
    sget-boolean v6, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v6, :cond_5d

    .line 213
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_75

    .line 221
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    .end local v4    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_5d
    :goto_5d
    return-object v1

    .line 208
    .restart local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .restart local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    .restart local v3    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    .restart local v4    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_5e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wifi/p2p/LGP2pOobType;

    .line 209
    .local v2, "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    new-instance v6, Lcom/lge/wifi/p2p/LGP2pDevice;

    invoke-direct {v6, v0, v2}, Lcom/lge/wifi/p2p/LGP2pDevice;-><init>(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pOobType;)V

    invoke-virtual {v4, v2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->get(Lcom/lge/wifi/p2p/LGP2pOobType;)Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->resetServiceInfoList(Lcom/lge/wifi/p2p/LGP2pDevice;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)Lcom/lge/wifi/p2p/LGP2pDevice;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 213
    .end local v2    # "oobType":Lcom/lge/wifi/p2p/LGP2pOobType;
    .end local v3    # "oobTypeList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/wifi/p2p/LGP2pOobType;>;"
    :cond_75
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 214
    .local v5, "tempDevice":Lcom/lge/wifi/p2p/LGP2pDevice;
    const-string v7, "LGP2pDeviceList"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "remove ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v9}, Lcom/lge/wifi/p2p/LGP2pOobType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 215
    const-string v9, "]\n\t["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v9}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 221
    .end local v0    # "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    .end local v1    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    .end local v4    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    .end local v5    # "tempDevice":Lcom/lge/wifi/p2p/LGP2pDevice;
    :cond_ac
    const/4 v1, 0x0

    goto :goto_5d
.end method

.method public remove(Lcom/lge/wifi/p2p/LGP2pDevice;)Z
    .registers 10
    .param p1, "device"    # Lcom/lge/wifi/p2p/LGP2pDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->validateDevice(Lcom/lge/wifi/p2p/LGP2pDevice;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 166
    sget-boolean v5, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v5, :cond_50

    .line 167
    const-string v5, "LGP2pDeviceList"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "remove : ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 168
    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 169
    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 170
    const-string v7, "]\n\t["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v7}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_50
    iget-object v5, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    .line 173
    .local v0, "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    if-nez v0, :cond_89

    .line 174
    sget-boolean v4, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v4, :cond_88

    .line 175
    const-string v4, "LGP2pDeviceList"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "remove : ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_88
    :goto_88
    return v3

    .line 179
    .restart local v0    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_89
    iget-object v5, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v5}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->getList()Ljava/util/Collection;

    move-result-object v2

    .line 180
    .local v2, "serviceInfoList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_93
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 183
    sget-boolean v5, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v5, :cond_bb

    .line 184
    const-string v5, "LGP2pDeviceList"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "remove : oobTypes ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_bb
    invoke-virtual {v0}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->size()I

    move-result v5

    if-nez v5, :cond_e0

    .line 187
    iget-object v5, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v5, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_88

    move v3, v4

    goto :goto_88

    .line 180
    :cond_d4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pServiceInfo;

    .line 181
    .local v1, "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    iget-object v6, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v0, v6, v1}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->remove(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfo;)V

    goto :goto_93

    .end local v1    # "serviceInfo":Lcom/lge/wifi/p2p/LGP2pServiceInfo;
    :cond_e0
    move v3, v4

    .line 190
    goto :goto_88
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 281
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    .line 283
    .local v1, "deviceList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    const/4 v2, 0x0

    .line 284
    .local v2, "index":I
    const-string v5, "size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 285
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_26

    .line 289
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 285
    :cond_26
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 286
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    const-string v6, "\n["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {v0}, Lcom/lge/wifi/p2p/LGP2pDevice;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1b
.end method

.method public update(Lcom/lge/wifi/p2p/LGP2pDevice;)V
    .registers 8
    .param p1, "device"    # Lcom/lge/wifi/p2p/LGP2pDevice;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->validateDevice(Lcom/lge/wifi/p2p/LGP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 67
    sget-boolean v1, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDBG:Z

    if-eqz v1, :cond_4e

    .line 68
    const-string v1, "LGP2pDeviceList"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update : ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    const-string v3, "]\n\t["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v3}, Lcom/lge/wifi/p2p/LGP2pServiceInfoList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_4e
    invoke-direct {p0, p1}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->updateDetailsInfo(Lcom/lge/wifi/p2p/LGP2pDevice;)V

    .line 74
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wifi/p2p/LGP2pDevice;

    iget v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->status:I

    iput v2, v1, Lcom/lge/wifi/p2p/LGP2pDevice;->status:I

    .line 76
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    .line 77
    .local v0, "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    if-eqz v0, :cond_73

    .line 78
    iget-object v1, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-virtual {v0, v1, v2}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;->add(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    .line 84
    .end local v0    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_72
    :goto_72
    return-void

    .line 81
    .restart local v0    # "oobTypes":Lcom/lge/wifi/p2p/LGP2pOobTypeList;
    :cond_73
    iget-object v1, p0, Lcom/lge/wifi/p2p/LGP2pDeviceList;->mOobTypes:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->deviceAddress:Ljava/lang/String;

    new-instance v3, Lcom/lge/wifi/p2p/LGP2pOobTypeList;

    iget-object v4, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mOobType:Lcom/lge/wifi/p2p/LGP2pOobType;

    iget-object v5, p1, Lcom/lge/wifi/p2p/LGP2pDevice;->mServiceInfoList:Lcom/lge/wifi/p2p/LGP2pServiceInfoList;

    invoke-direct {v3, v4, v5}, Lcom/lge/wifi/p2p/LGP2pOobTypeList;-><init>(Lcom/lge/wifi/p2p/LGP2pOobType;Lcom/lge/wifi/p2p/LGP2pServiceInfoList;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/lge/wifi/p2p/LGP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    .line 300
    .local v1, "deviceList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lge/wifi/p2p/LGP2pDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 304
    return-void

    .line 301
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wifi/p2p/LGP2pDevice;

    .line 302
    .local v0, "device":Lcom/lge/wifi/p2p/LGP2pDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_f
.end method
