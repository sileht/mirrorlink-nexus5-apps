.class Lcom/lge/mirrorlink/commonapi/DeviceInfoManager$1;
.super Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;
.source "DeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IDeviceInfoManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getMirrorLinkClientInformation()Landroid/os/Bundle;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 52
    const-string/jumbo v6, "MirrorLink_cAPI"

    const-string/jumbo v7, "[START] getMirrorLinkClientInformation"

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v1

    .line 55
    .local v1, "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-eqz v1, :cond_bc

    .line 56
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfilesInUse()Ljava/util/List;

    move-result-object v5

    .line 57
    .local v5, "profileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 58
    .local v2, "id":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v4

    .line 59
    .local v4, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-eqz v4, :cond_1d

    .line 60
    const-string/jumbo v6, "MirrorLink_cAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    const-string/jumbo v8, " friendlyName:"

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    iget-object v8, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->friendlyName:Ljava/lang/String;

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    const-string/jumbo v8, " manufacturer:"

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    iget-object v8, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 62
    const-string/jumbo v8, " name:"

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 62
    iget-object v8, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelName:Ljava/lang/String;

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 62
    const-string/jumbo v8, " number:"

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 62
    iget-object v8, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelNumber:Ljava/lang/String;

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v6, "VERSION_MAJOR"

    iget v7, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->majorVersion:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string/jumbo v6, "VERSION_MINOR"

    iget v7, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->minorVersion:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string/jumbo v6, "CLIENT_IDENTIFIER"

    iget-object v7, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v6, "CLIENT_FRIENDLY_NAME"

    iget-object v7, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v6, "CLIENT_MANUFACTURER"

    iget-object v7, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v6, "CLIENT_MODEL_NAME"

    iget-object v7, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v6, "CLIENT_MODEL_NUMBER"

    iget-object v7, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelNumber:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0

    .line 74
    .end local v2    # "id":Ljava/lang/Integer;
    .end local v3    # "id$iterator":Ljava/util/Iterator;
    .end local v4    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .end local v5    # "profileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_bc
    return-object v8
.end method

.method public getMirrorLinkSessionVersionMajor()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 36
    .local v0, "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-eqz v0, :cond_b

    .line 37
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientMajorVersion()I

    move-result v1

    return v1

    .line 39
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getMirrorLinkSessionVersionMinor()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 44
    .local v0, "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientMinorVersion()I

    move-result v1

    return v1

    .line 47
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public getServerVirtualKeyboardSupport()Landroid/os/Bundle;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 79
    const-string/jumbo v1, "MirrorLink_cAPI"

    const-string/jumbo v2, "[START] getServerVirtualKeyboardSupport"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v1, "TOUCH_SUPPORT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string/jumbo v1, "KNOB_SUPPORT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    const-string/jumbo v1, "DRIVE_MODE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    return-object v0
.end method

.method public unregister()V
    .registers 4

    .prologue
    .line 90
    const-string/jumbo v1, "MirrorLink_cAPI"

    const-string/jumbo v2, "[START] unregister"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 92
    .local v0, "sCommonAPIManager":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_18

    .line 93
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;->-get0(Lcom/lge/mirrorlink/commonapi/DeviceInfoManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->unregisterDeviceInfoManager(Ljava/lang/String;)V

    .line 89
    :cond_18
    return-void
.end method
