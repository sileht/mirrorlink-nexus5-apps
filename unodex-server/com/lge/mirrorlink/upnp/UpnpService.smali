.class public Lcom/lge/mirrorlink/upnp/UpnpService;
.super Ljava/lang/Object;
.source "UpnpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;
    }
.end annotation


# static fields
.field public static final MESSAGE_REPEAT_UPNP_ANNOUNCE_ALIVE:I = 0xc

.field public static final SERVICEID_TMAPPLICATIONSERVER:Ljava/lang/String; = "urn:upnp-org:serviceId:TmApplicationServer1"

.field public static final SERVICEID_TMCLIENTPROFILE:Ljava/lang/String; = "urn:upnp-org:serviceId:TmClientProfile1"

.field public static final SERVICEID_TMNOTIFICATIONSERVER:Ljava/lang/String; = "urn:upnp-org:serviceId:TmNotificationServer1"

.field public static final SERVICENAME_TMAPPLICATIONSERVER:Ljava/lang/String; = "TmApplicationServer"

.field public static final SERVICENAME_TMCLIENTPROFILE:Ljava/lang/String; = "TmClientProfile"

.field public static final SERVICENAME_TMNOTIFICATIONSERVER:Ljava/lang/String; = "TmNotificationServer"

.field public static final SERVICETYPE_TMAPPLICATIONSERVER:Ljava/lang/String; = "urn:schemas-upnp-org:service:TmApplicationServer:1"

.field public static final SERVICETYPE_TMCLIENTPROFILE:Ljava/lang/String; = "urn:schemas-upnp-org:service:TmClientProfile:1"

.field public static final SERVICETYPE_TMNOTIFICATIONSERVER:Ljava/lang/String; = "urn:schemas-upnp-org:service:TmNotificationServer:1"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"

.field private static volatile sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

.field private static upnp_ipAddress:Ljava/lang/String;

.field private static upnp_port:I


# instance fields
.field mContext:Landroid/content/Context;

.field mHandlerThread:Landroid/os/HandlerThread;

.field m_Started:Z

.field msgHandler:Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;

.field private serviceManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/lge/mirrorlink/upnp/UpnpService;IZ)Z
    .registers 4
    .param p1, "count"    # I
    .param p2, "first"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/upnp/UpnpService;->announceAlive(IZ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string/jumbo v0, "0.0.0.0"

    sput-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_ipAddress:Ljava/lang/String;

    .line 59
    sget v0, Lcom/lge/mirrorlink/common/LaunchedComponent;->MIRRORLINK_UPNP_DEFAULT_PORT:I

    sput v0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    .line 93
    const-string/jumbo v0, "mlupnp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->serviceManagers:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->m_Started:Z

    .line 150
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "UPnP-Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 154
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;-><init>(Lcom/lge/mirrorlink/upnp/UpnpService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->msgHandler:Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;

    .line 148
    return-void
.end method

.method public static TmApplicationServer_onGetAppCertificationStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "appID"    # Ljava/lang/String;
    .param p1, "profileID"    # Ljava/lang/String;
    .param p2, "appCertFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v0

    .line 708
    .local v0, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-nez v0, :cond_d

    .line 709
    sget-object v2, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v2

    throw v2

    .line 713
    :cond_d
    :try_start_d
    invoke-virtual {v0, p0, p1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onGetAppCertificationStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_d .. :try_end_10} :catch_12

    move-result v2

    return v2

    .line 714
    :catch_12
    move-exception v1

    .line 715
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 716
    throw v1
.end method

.method public static TmApplicationServer_onGetApplicationCertificateInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v0

    .line 676
    .local v0, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-nez v0, :cond_d

    .line 677
    sget-object v2, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v2

    throw v2

    .line 681
    :cond_d
    :try_start_d
    invoke-virtual {v0, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onGetApplicationCertificateInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 682
    :catch_12
    move-exception v1

    .line 683
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 684
    throw v1
.end method

.method public static TmApplicationServer_onGetApplicationList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "profileID"    # Ljava/lang/String;
    .param p1, "appListingFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v0

    .line 608
    .local v0, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-nez v0, :cond_d

    .line 609
    sget-object v2, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v2

    throw v2

    .line 612
    :cond_d
    :try_start_d
    invoke-virtual {v0, p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onGetApplicationList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 613
    :catch_12
    move-exception v1

    .line 614
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 615
    throw v1
.end method

.method public static TmApplicationServer_onGetApplicationStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "appID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v0

    .line 660
    .local v0, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-nez v0, :cond_d

    .line 661
    sget-object v2, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v2

    throw v2

    .line 665
    :cond_d
    :try_start_d
    invoke-virtual {v0, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onGetApplicationStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 666
    :catch_12
    move-exception v1

    .line 667
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 668
    throw v1
.end method

.method public static TmApplicationServer_onGetCertifiedApplicationsList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "profileID"    # Ljava/lang/String;
    .param p1, "appCertFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v0

    .line 692
    .local v0, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-nez v0, :cond_d

    .line 693
    sget-object v2, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v2

    throw v2

    .line 697
    :cond_d
    :try_start_d
    invoke-virtual {v0, p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onGetCertifiedApplicationsList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 698
    :catch_12
    move-exception v1

    .line 699
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 700
    throw v1
.end method

.method public static TmApplicationServer_onLaunchApplication(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 622
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TmApplicationServer_onLaunchApplication(), port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;

    move-result-object v2

    .line 625
    .local v2, "urlMap":Lcom/lge/mirrorlink/common/LaunchedComponent;
    const-string/jumbo v3, "TerminalMode:UPnP-Server"

    const-string/jumbo v4, "HTTP"

    invoke-virtual {v2, v3, v4, p1}, Lcom/lge/mirrorlink/common/LaunchedComponent;->putCompInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 627
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v0

    .line 628
    .local v0, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-nez v0, :cond_34

    .line 629
    sget-object v3, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v3

    throw v3

    .line 633
    :cond_34
    :try_start_34
    invoke-virtual {v0, p0, p2, p3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onLaunchApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_37
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_34 .. :try_end_37} :catch_39

    move-result-object v3

    return-object v3

    .line 634
    :catch_39
    move-exception v1

    .line 635
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 636
    throw v1
.end method

.method public static TmApplicationServer_onTerminateApplication(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "appID"    # Ljava/lang/String;
    .param p1, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v0

    .line 644
    .local v0, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    if-nez v0, :cond_d

    .line 645
    sget-object v2, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v2

    throw v2

    .line 649
    :cond_d
    :try_start_d
    invoke-virtual {v0, p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onTerminateApplication(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_d .. :try_end_10} :catch_12

    move-result v2

    return v2

    .line 650
    :catch_12
    move-exception v1

    .line 651
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 652
    throw v1
.end method

.method public static TmClientProfile_onGetClientProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "profileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 764
    .local v0, "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v0, :cond_d

    .line 765
    sget-object v1, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v1

    throw v1

    .line 768
    :cond_d
    invoke-virtual {v0, p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->onGetClientProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static TmClientProfile_onGetMaxNumProfiles()J
    .registers 4

    .prologue
    .line 726
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 727
    .local v0, "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v0, :cond_9

    .line 728
    const-wide/16 v2, 0x1

    return-wide v2

    .line 731
    :cond_9
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->onGetMaxNumProfiles()I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method public static TmClientProfile_onSetClientProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "ipAddress"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "profileID"    # Ljava/lang/String;
    .param p3, "clientProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 737
    if-eqz p0, :cond_55

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_55

    .line 738
    sput-object p0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_ipAddress:Ljava/lang/String;

    .line 739
    sput p1, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    .line 740
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UPnP IP address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_ipAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/lge/mirrorlink/common/LaunchedComponent;->getInstance()Lcom/lge/mirrorlink/common/LaunchedComponent;

    move-result-object v2

    .line 743
    .local v2, "urlMap":Lcom/lge/mirrorlink/common/LaunchedComponent;
    const-string/jumbo v3, "TerminalMode:UPnP-Server"

    const-string/jumbo v4, "HTTP"

    sget v5, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/mirrorlink/common/LaunchedComponent;->putCompInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 748
    .end local v2    # "urlMap":Lcom/lge/mirrorlink/common/LaunchedComponent;
    :goto_48
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 749
    .local v0, "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v0, :cond_5f

    .line 750
    sget-object v3, Lcom/lge/mirrorlink/upnp/TmErrorCode;->OPERATION_REJECTED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v3

    throw v3

    .line 745
    .end local v0    # "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    :cond_55
    const-string/jumbo v3, "MirrorLink_UPnP"

    const-string/jumbo v4, "MIRRORLINK FATAL ERROR!!, Invalid IP address"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 754
    .restart local v0    # "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    :cond_5f
    :try_start_5f
    invoke-virtual {v0, p2, p3}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->onSetClientProfile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_62
    .catch Lcom/lge/mirrorlink/upnp/ActionException; {:try_start_5f .. :try_end_62} :catch_64

    move-result-object v3

    return-object v3

    .line 755
    :catch_64
    move-exception v1

    .line 756
    .local v1, "e":Lcom/lge/mirrorlink/upnp/ActionException;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/upnp/UpnpService;->_exceptiondesc(ILjava/lang/String;)V

    .line 757
    throw v1
.end method

.method public static TmDevice_makeDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "xml_Root"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-static {p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->generateXmlDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static TmDevice_makeSignature(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "xml_SignedInfo"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {p0}, Lcom/lge/mirrorlink/certificate/CertificateManager;->generateXmlSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native _announcealive()Z
.end method

.method private static native _create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native _destroy()V
.end method

.method private static native _exceptiondesc(ILjava/lang/String;)V
.end method

.method private static native _start()Z
.end method

.method private static native _stop()Z
.end method

.method private static native _tmserverdevice_addappcertiurl(Ljava/lang/String;[B)V
.end method

.method private static native _tmserverdevice_adddeviceicon(Ljava/lang/String;Ljava/lang/String;III[B)V
.end method

.method private static native _tmserverdevice_adddevicekey(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native _tmserverdevice_addicon(Ljava/lang/String;Ljava/lang/String;III[B)V
.end method

.method private static native _tmserverdevice_addservice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native _tmserverdevice_removeurl(Ljava/lang/String;)V
.end method

.method private static native _tmserverdevice_setbluetooth(Ljava/lang/String;Z)V
.end method

.method private static native _tmserverdevice_setmlversion(II)V
.end method

.method private static native _tmserverdevice_setstatevariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public static addAppCertiURL(Ljava/lang/String;[B)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 310
    invoke-static {p0, p1}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_addappcertiurl(Ljava/lang/String;[B)V

    .line 308
    return-void
.end method

.method private announceAlive(IZ)Z
    .registers 9
    .param p1, "count"    # I
    .param p2, "first"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "result":Z
    if-lez p1, :cond_24

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "delay":I
    if-nez p2, :cond_b

    .line 271
    const/16 v0, 0x3e8

    .line 273
    :cond_b
    const/4 v2, 0x1

    if-le p1, v2, :cond_20

    .line 274
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->msgHandler:Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;

    invoke-virtual {v2, v5}, Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;->removeMessages(I)V

    .line 275
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->msgHandler:Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->msgHandler:Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;

    invoke-static {v3, v5, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/mirrorlink/upnp/UpnpService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 277
    :cond_20
    invoke-static {}, Lcom/lge/mirrorlink/upnp/UpnpService;->_announcealive()Z

    move-result v1

    .line 280
    .end local v0    # "delay":I
    .end local v1    # "result":Z
    :cond_24
    return v1
.end method

.method private cleanupUpnpService()V
    .registers 2

    .prologue
    .line 553
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->freeInstance()V

    .line 554
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->freeInstance()V

    .line 556
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->serviceManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 551
    return-void
.end method

.method public static freeInstance()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 141
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    if-eqz v0, :cond_11

    .line 142
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-static {}, Lcom/lge/mirrorlink/upnp/UpnpService;->_stop()Z

    .line 143
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-static {}, Lcom/lge/mirrorlink/upnp/UpnpService;->_destroy()V

    .line 144
    sput-object v1, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    .line 139
    :cond_11
    return-void
.end method

.method public static getDefaultPort()I
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 333
    sget v0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    if-eqz v0, :cond_24

    .line 334
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upnp port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget v0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    return v0

    .line 337
    :cond_24
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "upnp port is 0"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return v2
.end method

.method private getDeviceFriendlyName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mirrorlink"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "key_device_name"

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mContext:Landroid/content/Context;

    const v4, 0x7f09001a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "friendlyName":Ljava/lang/String;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    .line 166
    :cond_26
    const-string/jumbo v0, "LG MirrorLink Server"

    .line 168
    :cond_29
    return-object v0
.end method

.method public static getInstance()Lcom/lge/mirrorlink/upnp/UpnpService;
    .registers 1

    .prologue
    .line 136
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/UpnpService;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    if-nez v0, :cond_b

    .line 129
    new-instance v0, Lcom/lge/mirrorlink/upnp/UpnpService;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/upnp/UpnpService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    .line 131
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->sUpnpService:Lcom/lge/mirrorlink/upnp/UpnpService;

    return-object v0
.end method

.method private static openRawResourceFile(Landroid/content/Context;I)Ljava/io/InputStream;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res_id"    # I

    .prologue
    const/4 v1, 0x0

    .line 400
    if-nez p0, :cond_4

    .line 401
    return-object v1

    .line 403
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 404
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private static openRawResourceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 409
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 410
    :cond_5
    return-object v5

    .line 412
    :cond_6
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openRawResourceFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 414
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 415
    .local v1, "res_id":I
    if-eqz v1, :cond_36

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 418
    :cond_36
    return-object v5
.end method

.method public static removeURL(Ljava/lang/String;)V
    .registers 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-static {p0}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_removeurl(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private setupUpnpService(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    const/high16 v2, 0x7f020000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/UpnpService;->getRawResource(Landroid/content/Context;I)[B

    move-result-object v8

    .line 475
    .local v8, "iconbytes":[B
    const-string/jumbo v3, "device_icon.png"

    const-string/jumbo v4, "image/png"

    const/16 v5, 0x30

    const/16 v6, 0x30

    const/16 v7, 0x8

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/lge/mirrorlink/upnp/UpnpService;->setDeviceIcon(Ljava/lang/String;Ljava/lang/String;III[B)V

    .line 487
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->setMLVersion(II)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/UpnpService;->getBluetoothMacAddr()Ljava/lang/String;

    move-result-object v10

    .line 492
    .local v10, "bdaddr":Ljava/lang/String;
    if-eqz v10, :cond_c1

    .line 493
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/lge/mirrorlink/upnp/UpnpService;->setBluetooth(Ljava/lang/String;Z)V

    .line 504
    :goto_2e
    const-string/jumbo v2, "scpd_tmapplicationserver"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/UpnpService;->getRawResource(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v15

    .line 506
    .local v15, "scpd_bytes":[B
    if-eqz v15, :cond_55

    .line 508
    :try_start_3b
    new-instance v16, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 509
    .local v16, "scpd_str":Ljava/lang/String;
    const-string/jumbo v2, "urn:schemas-upnp-org:service:TmApplicationServer:1"

    const-string/jumbo v3, "urn:upnp-org:serviceId:TmApplicationServer1"

    const-string/jumbo v4, "TmApplicationServer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->addService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_55} :catch_cc

    .line 515
    .end local v16    # "scpd_str":Ljava/lang/String;
    :cond_55
    :goto_55
    const-string/jumbo v2, "scpd_tmclientprofile"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/UpnpService;->getRawResource(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v15

    .line 516
    if-eqz v15, :cond_7c

    .line 518
    :try_start_62
    new-instance v16, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 519
    .restart local v16    # "scpd_str":Ljava/lang/String;
    const-string/jumbo v2, "urn:schemas-upnp-org:service:TmClientProfile:1"

    const-string/jumbo v3, "urn:upnp-org:serviceId:TmClientProfile1"

    const-string/jumbo v4, "TmClientProfile"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->addService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_62 .. :try_end_7c} :catch_d8

    .line 536
    .end local v16    # "scpd_str":Ljava/lang/String;
    :cond_7c
    :goto_7c
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "create local service managers!!!"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string/jumbo v2, "urn:upnp-org:serviceId:TmApplicationServer1"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getInstance(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    move-result-object v9

    .line 538
    .local v9, "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    const-string/jumbo v2, "urn:upnp-org:serviceId:TmClientProfile1"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v11

    .line 541
    .local v11, "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/UpnpService;->serviceManagers:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/UpnpService;->serviceManagers:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/UpnpService;->serviceManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "manager$iterator":Ljava/util/Iterator;
    :goto_b1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;

    .line 546
    .local v13, "manager":Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
    invoke-virtual {v13}, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->setDefaultStateVariables()V

    goto :goto_b1

    .line 495
    .end local v9    # "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    .end local v11    # "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    .end local v13    # "manager":Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
    .end local v14    # "manager$iterator":Ljava/util/Iterator;
    .end local v15    # "scpd_bytes":[B
    :cond_c1
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "Bluetooth isn\'t turned on, please check"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 510
    .restart local v15    # "scpd_bytes":[B
    :catch_cc
    move-exception v12

    .line 511
    .local v12, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "Fail to add TmApplicationServer service"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55

    .line 520
    .end local v12    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_d8
    move-exception v12

    .line 521
    .restart local v12    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "Fail to add TmClientProfile service"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 471
    .end local v12    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "applicationServerManager":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    .restart local v11    # "clientProfileManager":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    .restart local v14    # "manager$iterator":Ljava/util/Iterator;
    :cond_e3
    return-void
.end method


# virtual methods
.method public addDeviceKey(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {p1, p2}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_adddevicekey(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public addIcon(Ljava/lang/String;Ljava/lang/String;III[B)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "depth"    # I
    .param p6, "data"    # [B

    .prologue
    .line 305
    invoke-static/range {p1 .. p6}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_addicon(Ljava/lang/String;Ljava/lang/String;III[B)V

    .line 303
    return-void
.end method

.method public addService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "scpd"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-static {p1, p2, p3, p4}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_addservice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    return-void
.end method

.method public announceAlive()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/upnp/UpnpService;->announceAlive(I)Z

    move-result v0

    return v0
.end method

.method public announceAlive(I)Z
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/mirrorlink/upnp/UpnpService;->announceAlive(IZ)Z

    move-result v0

    return v0
.end method

.method public beforeShutdownLocalServices()V
    .registers 5

    .prologue
    .line 444
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "beforeShutdownLocalServices"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->serviceManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "manager$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;

    .line 449
    .local v0, "manager":Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->onShutdown()V

    goto :goto_f

    .line 442
    .end local v0    # "manager":Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
    :cond_1f
    return-void
.end method

.method public beforeStartupLocalServices()V
    .registers 5

    .prologue
    .line 428
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "beforeStartupLocalServices"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->serviceManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "manager$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;

    .line 433
    .local v0, "manager":Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;->onStartup()V

    goto :goto_f

    .line 426
    .end local v0    # "manager":Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
    :cond_1f
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/UpnpService;->cleanupUpnpService()V

    .line 217
    invoke-static {}, Lcom/lge/mirrorlink/upnp/UpnpService;->_destroy()V

    .line 213
    return-void
.end method

.method public getBluetoothMacAddr()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 455
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 456
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_22

    .line 458
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "bdAddr":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 460
    const-string/jumbo v2, ":"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 461
    return-object v1

    .line 463
    :cond_18
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "No X_connectivity : No Bluetooth address available"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .end local v1    # "bdAddr":Ljava/lang/String;
    :goto_21
    return-object v4

    .line 466
    :cond_22
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "No X_connectivity : Bluetooth unavailable, please check whether bluetooth setting is on"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 326
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_ipAddress:Ljava/lang/String;

    return-object v0

    .line 328
    :cond_7
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 343
    sget-object v0, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/lge/mirrorlink/upnp/UpnpService;->upnp_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_21
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getRawResource(Landroid/content/Context;I)[B
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res_id"    # I

    .prologue
    .line 363
    invoke-static {p1, p2}, Lcom/lge/mirrorlink/upnp/UpnpService;->openRawResourceFile(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/upnp/UpnpService;->getRawResource(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public getRawResource(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {p1, p2}, Lcom/lge/mirrorlink/upnp/UpnpService;->openRawResourceFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/upnp/UpnpService;->getRawResource(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public getRawResource(Ljava/io/InputStream;)[B
    .registers 9
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 373
    const/4 v3, 0x0

    .line 374
    .local v3, "hashBytes":[B
    if-nez p1, :cond_5

    .line 375
    return-object v4

    .line 379
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 380
    .local v1, "bytesToRead":I
    if-lez v1, :cond_16

    const v4, 0x989680

    if-ge v1, v4, :cond_16

    .line 381
    new-array v3, v1, [B

    .line 382
    .local v3, "hashBytes":[B
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_1f
    .catchall {:try_start_5 .. :try_end_15} :catchall_46

    move-result v0

    .line 387
    .end local v3    # "hashBytes":[B
    :cond_16
    if-eqz p1, :cond_1c

    .line 389
    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1d

    .line 391
    .end local v1    # "bytesToRead":I
    :goto_1b
    const/4 p1, 0x0

    .line 395
    .end local p1    # "is":Ljava/io/InputStream;
    :cond_1c
    return-object v3

    .line 390
    .restart local v1    # "bytesToRead":I
    .restart local p1    # "is":Ljava/io/InputStream;
    :catch_1d
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_1b

    .line 384
    .end local v1    # "bytesToRead":I
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1f
    move-exception v2

    .line 385
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_20
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRawResource"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_46

    .line 387
    if-eqz p1, :cond_1c

    .line 389
    :try_start_40
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_1b

    .line 390
    :catch_44
    move-exception v2

    goto :goto_1b

    .line 386
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_46
    move-exception v4

    .line 387
    if-eqz p1, :cond_4d

    .line 389
    :try_start_49
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4e

    .line 391
    :goto_4c
    const/4 p1, 0x0

    .line 386
    .end local p1    # "is":Ljava/io/InputStream;
    :cond_4d
    throw v4

    .line 390
    .restart local p1    # "is":Ljava/io/InputStream;
    :catch_4e
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4c
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->m_Started:Z

    return v0
.end method

.method public setBluetooth(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "bdaddr"    # Ljava/lang/String;
    .param p2, "start"    # Z

    .prologue
    .line 290
    invoke-static {p1, p2}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_setbluetooth(Ljava/lang/String;Z)V

    .line 288
    return-void
.end method

.method public setDeviceIcon(Ljava/lang/String;Ljava/lang/String;III[B)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "depth"    # I
    .param p6, "data"    # [B

    .prologue
    .line 300
    invoke-static/range {p1 .. p6}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_adddeviceicon(Ljava/lang/String;Ljava/lang/String;III[B)V

    .line 298
    return-void
.end method

.method public setMLVersion(II)V
    .registers 3
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .prologue
    .line 285
    invoke-static {p1, p2}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_setmlversion(II)V

    .line 283
    return-void
.end method

.method public setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serviceid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_setstatevariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 349
    return-void
.end method

.method public setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "serviceid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "forcenotify"    # Z

    .prologue
    .line 356
    invoke-static {p1, p2, p3, p4}, Lcom/lge/mirrorlink/upnp/UpnpService;->_tmserverdevice_setstatevariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 354
    return-void
.end method

.method public start()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 227
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/UpnpService;->getDeviceFriendlyName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LG_MirrorLink_Server"

    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/upnp/UpnpService;->uniqueSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/lge/mirrorlink/upnp/UpnpService;->_create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/upnp/UpnpService;->setupUpnpService(Landroid/content/Context;)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/UpnpService;->beforeStartupLocalServices()V

    .line 233
    invoke-static {}, Lcom/lge/mirrorlink/upnp/UpnpService;->_start()Z

    move-result v0

    .line 234
    .local v0, "result":Z
    iput-boolean v5, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->m_Started:Z

    .line 236
    const/4 v1, 0x2

    invoke-direct {p0, v1, v5}, Lcom/lge/mirrorlink/upnp/UpnpService;->announceAlive(IZ)Z

    .line 238
    return v0
.end method

.method public stop()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/UpnpService;->beforeShutdownLocalServices()V

    .line 245
    invoke-static {}, Lcom/lge/mirrorlink/upnp/UpnpService;->_stop()Z

    move-result v1

    .line 246
    .local v1, "result":Z
    iput-boolean v4, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->m_Started:Z

    .line 248
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 249
    .local v0, "commonAPIMgr":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_1c

    .line 250
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "[CALLBACK] onMirrorLinkSessionChanged to false"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v4}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onMirrorLinkSessionChanged(Z)V

    .line 254
    :cond_1c
    return v1
.end method

.method public uniqueSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "salt"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v4, "systemSalt":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/UpnpService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 189
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "imei":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "simserialnum":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v7, "os.name"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v7, "os.version"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :try_start_33
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "seed string for UDN : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 202
    .local v1, "hash":[B
    new-instance v6, Ljava/util/UUID;

    .line 203
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v10, v7

    .line 202
    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 205
    .local v6, "uuid":Ljava/util/UUID;
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_7b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_7b} :catch_7d

    move-result-object v7

    return-object v7

    .line 206
    .end local v1    # "hash":[B
    .end local v6    # "uuid":Ljava/util/UUID;
    :catch_7d
    move-exception v0

    .line 207
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uniqueSystemIdentifier:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
