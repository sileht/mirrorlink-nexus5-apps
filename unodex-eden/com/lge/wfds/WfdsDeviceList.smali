.class public Lcom/lge/wfds/WfdsDeviceList;
.super Ljava/lang/Object;
.source "WfdsDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/wfds/WfdsDeviceList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wfds/WfdsDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 199
    new-instance v0, Lcom/lge/wfds/WfdsDeviceList$1;

    invoke-direct {v0}, Lcom/lge/wfds/WfdsDeviceList$1;-><init>()V

    .line 198
    sput-object v0, Lcom/lge/wfds/WfdsDeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 213
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/lge/wfds/WfdsDeviceList;)V
    .registers 7
    .param p1, "source"    # Lcom/lge/wfds/WfdsDeviceList;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    .line 26
    if-eqz p1, :cond_1a

    .line 27
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 31
    :cond_1a
    return-void

    .line 27
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 28
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    iget-object v2, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    new-instance v4, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v4, v0}, Lcom/lge/wfds/WfdsDevice;-><init>(Lcom/lge/wfds/WfdsDevice;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/wfds/WfdsDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wfds/WfdsDevice;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 40
    return-void

    .line 35
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 36
    .local v0, "device":Lcom/lge/wfds/WfdsDevice;
    iget-object v2, v0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 37
    iget-object v2, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    new-instance v4, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v4, v0}, Lcom/lge/wfds/WfdsDevice;-><init>(Lcom/lge/wfds/WfdsDevice;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method private validateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 43
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_a
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty deviceAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1a
    return-void
.end method

.method private validateDevice(Lcom/lge/wfds/WfdsDevice;)V
    .registers 4
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 50
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_a
    iget-object v0, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty deviceAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1a
    return-void
.end method

.method private validateDeviceAddress(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty deviceAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_e
    return-void
.end method


# virtual methods
.method public clear()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 66
    :goto_9
    return v0

    .line 65
    :cond_a
    iget-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    return-object v0
.end method

.method public getDeviceList()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/lge/wfds/WfdsDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isGroupOwner(Ljava/lang/String;)Z
    .registers 6
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 170
    .local v0, "device":Lcom/lge/wfds/WfdsDevice;
    if-nez v0, :cond_22

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device not found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_22
    invoke-virtual {v0}, Lcom/lge/wfds/WfdsDevice;->isGroupOwner()Z

    move-result v1

    return v1
.end method

.method public remove(Ljava/lang/String;)Lcom/lge/wfds/WfdsDevice;
    .registers 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    return-object v0
.end method

.method public remove(Lcom/lge/wfds/WfdsDevice;)Z
    .registers 4
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->validateDevice(Lcom/lge/wfds/WfdsDevice;)V

    .line 138
    iget-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public remove(Lcom/lge/wfds/WfdsDeviceList;)Z
    .registers 6
    .param p1, "list"    # Lcom/lge/wfds/WfdsDeviceList;

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "ret":Z
    iget-object v2, p1, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 158
    return v1

    .line 155
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 156
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    invoke-virtual {p0, v0}, Lcom/lge/wfds/WfdsDeviceList;->remove(Lcom/lge/wfds/WfdsDevice;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v1, 0x1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 178
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 179
    .local v0, "device":Lcom/lge/wfds/WfdsDevice;
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_f
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 77
    iget-object v0, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v1, v0, Lcom/lge/wfds/WfdsDevice;->status:I

    .line 78
    return-void
.end method

.method public update(Lcom/lge/wfds/WfdsDevice;)V
    .registers 6
    .param p1, "device"    # Lcom/lge/wfds/WfdsDevice;

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/lge/wfds/WfdsDevice;->getWifiP2pDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/wfds/WfdsDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 82
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/lge/wfds/WfdsDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 83
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    if-eqz v0, :cond_1b

    .line 84
    iget-wide v2, p1, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    iput-wide v2, v0, Lcom/lge/wfds/WfdsDevice;->wfdsDeviceFound:J

    .line 85
    iget-object v1, p1, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    iput-object v1, v0, Lcom/lge/wfds/WfdsDevice;->wfdsInfo:Lcom/lge/wfds/WfdsInfo;

    .line 87
    :cond_1b
    return-void
.end method

.method updateGroupCapability(Ljava/lang/String;I)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "groupCapab"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 111
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    if-eqz v0, :cond_f

    .line 112
    iput p2, v0, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    .line 114
    :cond_f
    return-void
.end method

.method updateStatus(Ljava/lang/String;I)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->validateDeviceAddress(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 120
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    if-eqz v0, :cond_f

    .line 121
    iput p2, v0, Lcom/lge/wfds/WfdsDevice;->status:I

    .line 123
    :cond_f
    return-void
.end method

.method updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/lge/wfds/WfdsDeviceList;->validateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 92
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 93
    .local v0, "d":Lcom/lge/wfds/WfdsDevice;
    if-eqz v0, :cond_2c

    .line 94
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wfds/WfdsDevice;->deviceName:Ljava/lang/String;

    .line 95
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wfds/WfdsDevice;->primaryDeviceType:Ljava/lang/String;

    .line 96
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v1, v0, Lcom/lge/wfds/WfdsDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 97
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v1, v0, Lcom/lge/wfds/WfdsDevice;->wpsConfigMethodsSupported:I

    .line 98
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v1, v0, Lcom/lge/wfds/WfdsDevice;->deviceCapability:I

    .line 99
    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v1, v0, Lcom/lge/wfds/WfdsDevice;->groupCapability:I

    .line 100
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v1, v0, Lcom/lge/wfds/WfdsDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 105
    :goto_2b
    return-void

    .line 104
    :cond_2c
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    new-instance v3, Lcom/lge/wfds/WfdsDevice;

    invoke-direct {v3, p1}, Lcom/lge/wfds/WfdsDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v1, p0, Lcom/lge/wfds/WfdsDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 195
    return-void

    .line 192
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wfds/WfdsDevice;

    .line 193
    .local v0, "device":Lcom/lge/wfds/WfdsDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_13
.end method
