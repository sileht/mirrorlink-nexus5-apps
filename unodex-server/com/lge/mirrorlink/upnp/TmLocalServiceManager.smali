.class public Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
.super Ljava/lang/Object;
.source "TmLocalServiceManager.java"

# interfaces
.implements Lcom/lge/mirrorlink/common/MirrorLinkDataDef;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private serviceId:Ljava/lang/String;

.field private upnpService:Lcom/lge/mirrorlink/upnp/UpnpService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "upnpService"    # Lcom/lge/mirrorlink/upnp/UpnpService;
    .param p3, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_7

    if-nez p2, :cond_38

    .line 43
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[TmLocalServiceManager] Illegal arguments "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_42

    const-string/jumbo v0, "null context "

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_46

    const-string/jumbo v0, "null upnpService "

    :goto_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_4a

    const-string/jumbo v0, "null serviceid "

    :goto_2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_38
    if-eqz p3, :cond_7

    .line 46
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->serviceId:Ljava/lang/String;

    .line 48
    invoke-virtual {p0, p2}, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->setUpnpService(Lcom/lge/mirrorlink/upnp/UpnpService;)V

    .line 40
    return-void

    .line 43
    :cond_42
    const-string/jumbo v0, ""

    goto :goto_1a

    :cond_46
    const-string/jumbo v0, ""

    goto :goto_23

    :cond_4a
    const-string/jumbo v0, ""

    goto :goto_2c
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->upnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    return-object v0
.end method

.method public onShutdown()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public onStartup()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method public setDefaultStateVariables()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->serviceId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setUpnpService(Lcom/lge/mirrorlink/upnp/UpnpService;)V
    .registers 2
    .param p1, "upnpService"    # Lcom/lge/mirrorlink/upnp/UpnpService;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->upnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    .line 69
    return-void
.end method
