.class Lcom/lge/upnp/uda/service/JNIDeviceInfo;
.super Ljava/lang/Object;
.source "JNIDeviceInfo.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetAbsPath(J)Ljava/lang/String;
.end method

.method public static native GetChildren(J)[Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public static native GetDevExpTime(J)J
.end method

.method public static native GetDeviceType(J)Ljava/lang/String;
.end method

.method public static native GetDlnaDeviceNameList(J)[Ljava/lang/String;
.end method

.method public static native GetExtraTagList(J)[Ljava/lang/String;
.end method

.method public static native GetFriendlyName(J)[B
.end method

.method public static native GetIcon(JI)Lcom/lge/upnp/uda/service/IIconInfo;
.end method

.method public static native GetIconList(J)[Lcom/lge/upnp/uda/service/IIconInfo;
.end method

.method public static native GetManfacturer(J)Ljava/lang/String;
.end method

.method public static native GetManfacutrerURL(J)Ljava/lang/String;
.end method

.method public static native GetModelDescription(J)Ljava/lang/String;
.end method

.method public static native GetModelName(J)Ljava/lang/String;
.end method

.method public static native GetModelNumber(J)Ljava/lang/String;
.end method

.method public static native GetModelURL(J)Ljava/lang/String;
.end method

.method public static native GetNetworkInfo(J)Lcom/lge/upnp/uda/service/INetworkInfo;
.end method

.method public static native GetNumServices(J)I
.end method

.method public static native GetParentDevice(J)Lcom/lge/upnp/uda/service/IDeviceInfo;
.end method

.method public static native GetPresentationURL(J)Ljava/lang/String;
.end method

.method public static native GetRelativeName(J)Ljava/lang/String;
.end method

.method public static native GetSchemaName(J)Ljava/lang/String;
.end method

.method public static native GetSerialNum(J)Ljava/lang/String;
.end method

.method public static native GetServerName(J)Ljava/lang/String;
.end method

.method public static native GetService(JI)Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public static native GetService(JLjava/lang/String;)Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public static native GetServiceList(J)[Lcom/lge/upnp/uda/service/IServiceInfo;
.end method

.method public static native GetUPC(J)Ljava/lang/String;
.end method

.method public static native GetURLBase(J)Ljava/lang/String;
.end method

.method public static native GetUniqueDeviceId(J)Ljava/lang/String;
.end method

.method public static native GetUniqueDeviceName(J)Ljava/lang/String;
.end method

.method public static native HasChildren(J)Z
.end method

.method public static native HasIcon(J)Z
.end method

.method public static native HasServices(J)Z
.end method

.method public static native IsRootDevice(J)Z
.end method

.method public static native SetFriendlyName(JLjava/lang/String;)V
.end method

.method public static native SetUUID(JLjava/lang/String;)V
.end method
