.class public abstract Lcom/lge/upnp/uda/service/INetworkInfo;
.super Ljava/lang/Object;
.source "INetworkInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInterfaceName()Ljava/lang/String;
.end method

.method public abstract getLocalIPAddress()Ljava/lang/String;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getRemoteIPAddress()Ljava/lang/String;
.end method

.method public abstract getRemoteMACAddress()Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method
