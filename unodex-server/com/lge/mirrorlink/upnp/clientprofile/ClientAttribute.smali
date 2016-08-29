.class public Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;
.super Ljava/lang/Object;
.source "ClientAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"

.field private static mInstance:Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;


# instance fields
.field private mSupportSwitchToClientNativeUI:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->mInstance:Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->mSupportSwitchToClientNativeUI:Z

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->mInstance:Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;

    if-nez v0, :cond_b

    .line 15
    new-instance v0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->mInstance:Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;

    .line 17
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->mInstance:Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;

    return-object v0
.end method


# virtual methods
.method public checkSwitchToClientNativeUI(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)V
    .registers 5
    .param p1, "clientProfile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .prologue
    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_4

    .line 26
    return-void

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 29
    :cond_c
    return-void

    .line 31
    :cond_d
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    const-string/jumbo v1, "VWAG_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 32
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    const-string/jumbo v1, "VWAG_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 33
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    const-string/jumbo v1, "MLC01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3a

    .line 35
    :cond_2e
    :goto_2e
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "set mSupportSwitchToClientNativeUI to false."

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->mSupportSwitchToClientNativeUI:Z

    .line 24
    :cond_39
    return-void

    .line 34
    :cond_3a
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    const-string/jumbo v1, "VW MirrorLink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_39

    goto :goto_2e
.end method

.method public supportSwitchToClientNativeUI()Z
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->mSupportSwitchToClientNativeUI:Z

    return v0
.end method
