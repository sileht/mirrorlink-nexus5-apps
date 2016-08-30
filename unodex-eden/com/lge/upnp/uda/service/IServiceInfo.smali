.class public abstract Lcom/lge/upnp/uda/service/IServiceInfo;
.super Ljava/lang/Object;
.source "IServiceInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActionInfoList()[Lcom/lge/upnp/uda/service/IActionInfo;
.end method

.method public abstract getControlURL()Ljava/lang/String;
.end method

.method public abstract getEventSubURL()Ljava/lang/String;
.end method

.method public abstract getSCPDURL()Ljava/lang/String;
.end method

.method public abstract getServiceId()Ljava/lang/String;
.end method

.method public abstract getServiceType()Ljava/lang/String;
.end method

.method public abstract getStateVarInfoList()[Lcom/lge/upnp/uda/service/IStateVarInfo;
.end method

.method public abstract getSubScriberCount()I
.end method
