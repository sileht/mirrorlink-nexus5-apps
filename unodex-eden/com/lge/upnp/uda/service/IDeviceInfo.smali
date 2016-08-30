.class public abstract Lcom/lge/upnp/uda/service/IDeviceInfo;
.super Ljava/lang/Object;
.source "IDeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAbsPath()Ljava/lang/String;
.end method

.method public abstract getChildren()[Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public abstract getDevExpTime()J
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method

.method public abstract getDlnaDeviceNameList()[Ljava/lang/String;
.end method

.method public abstract getExtraTagList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendlyName()Ljava/lang/String;
.end method

.method public abstract getIcon(I)Lcom/lge/upnp/uda/service/IIconInfo;
.end method

.method public abstract getIconList()[Lcom/lge/upnp/uda/service/IIconInfo;
.end method

.method public abstract getManfacturer()Ljava/lang/String;
.end method

.method public abstract getManfacutrerURL()Ljava/lang/String;
.end method

.method public abstract getModelDescription()Ljava/lang/String;
.end method

.method public abstract getModelName()Ljava/lang/String;
.end method

.method public abstract getModelNumber()Ljava/lang/String;
.end method

.method public abstract getModelURL()Ljava/lang/String;
.end method

.method public abstract getNetworkInfo()Lcom/lge/upnp/uda/service/INetworkInfo;
.end method

.method public abstract getNumServices()I
.end method

.method public abstract getParentDevice()Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public abstract getPresentationURL()Ljava/lang/String;
.end method

.method public abstract getRelativeName()Ljava/lang/String;
.end method

.method public abstract getSchemaName()Ljava/lang/String;
.end method

.method public abstract getSerialNum()Ljava/lang/String;
.end method

.method public abstract getServerName()Ljava/lang/String;
.end method

.method public abstract getService(I)Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public abstract getService(Ljava/lang/String;)Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public abstract getServices()[Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public abstract getUPC()Ljava/lang/String;
.end method

.method public abstract getURLBase()Ljava/lang/String;
.end method

.method public abstract getUniqueDeviceId()Ljava/lang/String;
.end method

.method public abstract getUniqueDeviceName()Ljava/lang/String;
.end method

.method public abstract hasChildren()Z
.end method

.method public abstract hasIcon()Z
.end method

.method public abstract hasServices()Z
.end method

.method public abstract isRootDevice()Z
.end method
