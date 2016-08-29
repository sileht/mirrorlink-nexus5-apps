.class public Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
.super Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
.source "TmApplicationServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$1;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$2;
    }
.end annotation


# static fields
.field private static final EV_LOAD_APP_LIST:I = 0x1

.field public static final MESSAGE_NOTIFY_APP_LIST:I = 0x2

.field public static final MESSAGE_NOTIFY_APP_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"

.field private static _instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

.field private static mMlBtOn:Z


# instance fields
.field private appStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;",
            ">;"
        }
    .end annotation
.end field

.field private applistupdate:Lcom/lge/mirrorlink/upnp/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/mirrorlink/upnp/StateVariable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appstatusupdate:Lcom/lge/mirrorlink/upnp/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/mirrorlink/upnp/StateVariable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppListChangeListener:Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

.field private final msgHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->msgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mMlBtOn:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "upnpService"    # Lcom/lge/mirrorlink/upnp/UpnpService;
    .param p3, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;-><init>(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/lge/mirrorlink/upnp/StateVariable;

    const-string/jumbo v1, "AppStatusUpdate"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/StateVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appstatusupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    .line 95
    new-instance v0, Lcom/lge/mirrorlink/upnp/StateVariable;

    const-string/jumbo v1, "AppListUpdate"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/StateVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->applistupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    .line 127
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$1;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->msgHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$2;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$2;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mAppListChangeListener:Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    .line 181
    return-void
.end method

.method public static freeInstance()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    if-eqz v0, :cond_7

    .line 85
    sput-object v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    .line 80
    :cond_7
    return-void
.end method

.method private generateAppStatusResponse(I)Ljava/lang/String;
    .registers 10
    .param p1, "appID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 884
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 885
    .local v0, "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v0, :cond_16

    .line 886
    const-string/jumbo v6, "MirrorLink_UPnP"

    const-string/jumbo v7, "[onGetApplicationStatus] Unexpected Error - TmClientProfileManager not found"

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    sget-object v6, Lcom/lge/mirrorlink/upnp/TmErrorCode;->CANNOT_DETERMINE_STATUS:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v6}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v6

    throw v6

    .line 890
    :cond_16
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;

    .line 892
    .local v5, "status":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    const-string/jumbo v4, "<appStatus>\n"

    .line 893
    .local v4, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<appID>0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</appID>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 896
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfilesInUse()Ljava/util/List;

    move-result-object v3

    .line 898
    .local v3, "profileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "id$iterator":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ef

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 899
    .local v1, "id":Ljava/lang/Integer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<status>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<profileID>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</profileID>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 902
    if-eqz v5, :cond_cd

    .line 903
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<statusType>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->get(I)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</statusType>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 908
    :goto_b8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</status>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4c

    .line 905
    :cond_cd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<statusType>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Notrunning:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</statusType>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b8

    .line 911
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_ef
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</appStatus>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 912
    return-object v4
.end method

.method private getAppStatus(II)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    .registers 5
    .param p1, "appID"    # I
    .param p2, "profileID"    # I

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;

    .line 1108
    .local v0, "currentStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    if-eqz v0, :cond_f

    .line 1109
    invoke-virtual {v0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->get(I)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-result-object v1

    return-object v1

    .line 1112
    :cond_f
    sget-object v1, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Notrunning:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    return-object v1
.end method

.method private getAppStatusUpdated()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 1056
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v6, "statusChanged":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v7, "statusRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_46

    .line 1062
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1063
    .local v2, "id":I
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;

    .line 1065
    .local v5, "status":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->isStatusChanged()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 1066
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->setStatusChanged(Z)V

    .line 1069
    :cond_33
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->removeNotrunningStatus()V

    .line 1070
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_43

    .line 1071
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1075
    .end local v2    # "id":I
    .end local v5    # "status":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    :cond_46
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "removedId$iterator":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1076
    .local v3, "removedId":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4a

    .line 1079
    .end local v3    # "removedId":Ljava/lang/Integer;
    :cond_60
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyAppStatusUpdate:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v11}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-static {v6, v11}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "appStatusUpdated":Ljava/lang/String;
    return-object v0
.end method

.method public static getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    .registers 2

    .prologue
    .line 76
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "TmApplicationServerManager.getInstance return created"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upnpService"    # Lcom/lge/mirrorlink/upnp/UpnpService;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    if-nez v0, :cond_14

    .line 65
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "TmApplicationServerManager.getInstance create new"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;-><init>(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    .line 69
    :cond_14
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-virtual {v0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setServiceId(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setUpnpService(Lcom/lge/mirrorlink/upnp/UpnpService;)V

    .line 71
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;

    return-object v0
.end method

.method private hasAppStatus(ILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)Z
    .registers 5
    .param p1, "appID"    # I
    .param p2, "status"    # Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;

    .line 1118
    .local v0, "currentStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    if-eqz v0, :cond_f

    .line 1119
    invoke-virtual {v0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->hasStatus(Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)Z

    move-result v1

    return v1

    .line 1122
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method private static isInternalServerFunctionality(J)Z
    .registers 4
    .param p0, "appCategory"    # J

    .prologue
    .line 1282
    const-wide v0, 0xf0000001L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_12

    const-wide v0, 0xf0000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_14

    .line 1283
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 1286
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private notifyAppContentInfo(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V
    .registers 2
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    .line 1084
    return-void
.end method

.method private notifyAppStatusUpdated()V
    .registers 6

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getAppStatusUpdated()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "appStatusUpdated":Ljava/lang/String;
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[notifyAppStatusUpdated] appStatusUpdated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->msgHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1051
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1046
    return-void
.end method

.method private onGetApplicationCertificateInfo(I)Ljava/lang/String;
    .registers 9
    .param p1, "appID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 934
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v2

    .line 936
    .local v2, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-nez v2, :cond_16

    .line 937
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "[onGetApplicationCertificateInfo] AppListManager is null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    sget-object v4, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INTERNAL_SERVER_ERROR:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v4}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v4

    throw v4

    .line 941
    :cond_16
    invoke-virtual {v2, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(I)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 942
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v0, :cond_3d

    .line 943
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onGetApplicationCertificateInfo] app id not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    sget-object v4, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v4}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v4

    throw v4

    .line 946
    :cond_3d
    invoke-virtual {v2, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppCertification(I)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-result-object v1

    .line 947
    .local v1, "appCert":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    if-eqz v1, :cond_81

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<certification>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isDriveCertified()Z

    move-result v5

    invoke-virtual {v1, p1, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->makeXMLString(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</certification>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 950
    .local v3, "certStr":Ljava/lang/String;
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onGetApplicationCertificateInfo] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-object v3

    .line 953
    .end local v3    # "certStr":Ljava/lang/String;
    :cond_81
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onGetApplicationCertificateInfo] BAD_APPID, invalid appID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    sget-object v4, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v4}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v4

    throw v4
.end method

.method private terminateInternalServerFunction(Ljava/lang/String;)V
    .registers 7
    .param p1, "appProtocolID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 811
    const-string/jumbo v3, "VNC"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 812
    const-string/jumbo v3, "MirrorLink_UPnP"

    const-string/jumbo v4, "terminate VNC-Server"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/vnc/TmVNCServer;

    move-result-object v2

    .line 814
    .local v2, "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    if-eqz v2, :cond_1f

    .line 815
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->stopServer()V

    .line 809
    .end local v2    # "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    :cond_1f
    :goto_1f
    return-void

    .line 817
    :cond_20
    const-string/jumbo v3, "RTP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 818
    const-string/jumbo v3, "MirrorLink_UPnP"

    const-string/jumbo v4, "terminate RTP-Server"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v1

    .line 820
    .local v1, "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    if-eqz v1, :cond_1f

    .line 821
    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->stopServer()V

    goto :goto_1f

    .line 823
    .end local v1    # "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    :cond_40
    const-string/jumbo v3, "DAP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 824
    const-string/jumbo v3, "MirrorLink_UPnP"

    const-string/jumbo v4, "terminate DAP-Server"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mirrorlink/dap/TmDAPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/TmDAPServer;

    move-result-object v0

    .line 826
    .local v0, "tmDAPServer":Lcom/lge/mirrorlink/dap/TmDAPServer;
    if-eqz v0, :cond_1f

    .line 827
    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/TmDAPServer;->stopServer()V

    goto :goto_1f

    .line 829
    .end local v0    # "tmDAPServer":Lcom/lge/mirrorlink/dap/TmDAPServer;
    :cond_60
    const-string/jumbo v3, "BTHFP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 830
    const-string/jumbo v3, "MirrorLink_UPnP"

    const-string/jumbo v4, "terminate BTHFP-Server"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 831
    :cond_73
    const-string/jumbo v3, "BTA2DP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 832
    const-string/jumbo v3, "MirrorLink_UPnP"

    const-string/jumbo v4, "terminate BTA2DP-Server"

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private updateAllAppStatus(Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V
    .registers 5
    .param p1, "status"    # Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .prologue
    .line 1144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 1145
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;

    .line 1146
    .local v0, "currentStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->updateAll(Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V

    .line 1144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1142
    .end local v0    # "currentStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    :cond_17
    return-void
.end method

.method private updateAppStatus(IILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V
    .registers 10
    .param p1, "appID"    # I
    .param p2, "profileID"    # I
    .param p3, "status"    # Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .prologue
    const/4 v5, 0x0

    .line 1128
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;

    .line 1129
    .local v0, "currentStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    move-object v1, v0

    .line 1131
    .local v1, "prevStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[updateAppStatus] appID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1133
    .local v2, "tmpstr":Ljava/lang/String;
    if-nez v0, :cond_34

    .line 1134
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;

    .end local v0    # "currentStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    invoke-direct {v0, p0, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;)V

    .line 1136
    .restart local v0    # "currentStatus":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;
    :cond_34
    invoke-virtual {v0, p2, p3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$AppStatusType;->put(ILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    .line 1137
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1139
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    return-void
.end method


# virtual methods
.method public getRemoteDisplayConnectionStatus()I
    .registers 4

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "res":Z
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/vnc/TmVNCServer;

    move-result-object v1

    .line 630
    .local v1, "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    if-eqz v1, :cond_13

    .line 631
    invoke-virtual {v1}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->isVNCConnected()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 632
    const/4 v2, 0x1

    return v2

    .line 635
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method public isInternalServerFunctionLaunched(Ljava/lang/String;)I
    .registers 6
    .param p1, "appProtocolID"    # Ljava/lang/String;

    .prologue
    .line 639
    const-string/jumbo v3, "VNC"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 640
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/vnc/TmVNCServer;

    move-result-object v2

    .line 641
    .local v2, "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 642
    invoke-virtual {v2}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->getBindedPort()I

    .line 663
    .end local v2    # "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    :cond_1c
    :goto_1c
    const/4 v3, 0x0

    return v3

    .line 644
    :cond_1e
    const-string/jumbo v3, "RTP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 645
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v1

    .line 646
    .local v1, "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 647
    invoke-virtual {v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getBindedPort()I

    move-result v3

    return v3

    .line 649
    .end local v1    # "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    :cond_3c
    const-string/jumbo v3, "DAP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 650
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/mirrorlink/dap/TmDAPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/TmDAPServer;

    move-result-object v0

    .line 651
    .local v0, "tmDAPServer":Lcom/lge/mirrorlink/dap/TmDAPServer;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/TmDAPServer;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 652
    invoke-virtual {v0}, Lcom/lge/mirrorlink/dap/TmDAPServer;->getBindedPort()I

    move-result v3

    return v3

    .line 654
    .end local v0    # "tmDAPServer":Lcom/lge/mirrorlink/dap/TmDAPServer;
    :cond_5a
    const-string/jumbo v3, "BTHFP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 655
    const-string/jumbo v3, "BTA2DP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_1c
.end method

.method public launchInternalServerFunction(Ljava/lang/String;Ljava/lang/String;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    .registers 14
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "appProtocolID"    # Ljava/lang/String;
    .param p3, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 519
    if-nez p2, :cond_c

    .line 520
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] Action failed, invalid null protocolID"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_c
    const/4 v1, 0x0

    .line 524
    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    const/4 v3, 0x0

    .line 526
    .local v3, "port":I
    const-string/jumbo v7, "VNC"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 528
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] launch VNC-Server"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/vnc/TmVNCServer;

    move-result-object v6

    .line 530
    .local v6, "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    if-eqz v6, :cond_2e

    .line 531
    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->startServer()I

    move-result v3

    .line 533
    :cond_2e
    if-nez v3, :cond_51

    .line 534
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[launchInternalServerFunction] Action failed, Fail to run the server for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sget-object v7, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v7}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v7

    throw v7

    .line 537
    :cond_51
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] launch VNC-Server"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;

    .end local v1    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    const-string/jumbo v7, "VNC"

    invoke-direct {v1, p0, v7, p1, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 614
    .end local v6    # "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    :goto_62
    if-eqz v1, :cond_a3

    .line 615
    const-string/jumbo v7, "BTHFP"

    iget-object v8, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7a

    const-string/jumbo v7, "BTA2DP"

    iget-object v8, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e9

    .line 616
    :cond_7a
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "internal Server launched:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_a3
    :goto_a3
    return-object v1

    .line 539
    .restart local v1    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_a4
    const-string/jumbo v7, "RTP"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10d

    .line 540
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] RTP"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v5

    .line 543
    .local v5, "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    if-eqz v5, :cond_ca

    .line 544
    invoke-virtual {v5}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_ed

    .line 545
    invoke-virtual {v5}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getBindedPort()I

    move-result v3

    .line 551
    :cond_ca
    :goto_ca
    if-nez v3, :cond_fa

    .line 552
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[launchInternalServerFunction] Action failed, Fail to run the server for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v7, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v7}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v7

    throw v7

    .line 547
    :cond_ed
    if-eqz p3, :cond_f8

    invoke-virtual {p3}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->getRTPPayloadType()Ljava/lang/Integer;

    move-result-object v2

    .line 548
    :goto_f3
    invoke-virtual {v5, v2}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->startServer(Ljava/lang/Integer;)I

    move-result v3

    goto :goto_ca

    .line 547
    :cond_f8
    const/4 v2, 0x0

    .local v2, "payloadtype":Ljava/lang/Integer;
    goto :goto_f3

    .line 555
    .end local v2    # "payloadtype":Ljava/lang/Integer;
    :cond_fa
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] launch RTP-Server"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;

    .end local v1    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    const-string/jumbo v7, "RTP"

    invoke-direct {v1, p0, v7, p1, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Ljava/lang/String;Ljava/lang/String;I)V

    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    goto/16 :goto_62

    .line 557
    .end local v5    # "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_10d
    const-string/jumbo v7, "BTHFP"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_141

    .line 559
    invoke-virtual {p0, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setBluetoothOnOff(Z)V

    .line 561
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] launch BTHFP"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/mirrorlink/upnp/UpnpService;->getBluetoothMacAddr()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "bdaddr":Ljava/lang/String;
    if-eqz v0, :cond_136

    .line 564
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;

    .end local v1    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    const-string/jumbo v7, "BTHFP"

    invoke-direct {v1, p0, v7, v0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Ljava/lang/String;Ljava/lang/String;I)V

    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    goto/16 :goto_62

    .line 566
    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_136
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] Fail to launch BTHFP. bdaddr is null"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 568
    .end local v0    # "bdaddr":Ljava/lang/String;
    :cond_141
    const-string/jumbo v7, "BTA2DP"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_175

    .line 570
    invoke-virtual {p0, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setBluetoothOnOff(Z)V

    .line 572
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] launch BTA2DP"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/mirrorlink/upnp/UpnpService;->getBluetoothMacAddr()Ljava/lang/String;

    move-result-object v0

    .line 574
    .restart local v0    # "bdaddr":Ljava/lang/String;
    if-eqz v0, :cond_16a

    .line 575
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;

    .end local v1    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    const-string/jumbo v7, "BTA2DP"

    invoke-direct {v1, p0, v7, v0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Ljava/lang/String;Ljava/lang/String;I)V

    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    goto/16 :goto_62

    .line 577
    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_16a
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] Fail to launch BTA2DP. bdaddr is null"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 579
    .end local v0    # "bdaddr":Ljava/lang/String;
    :cond_175
    const-string/jumbo v7, "DAP"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cd

    .line 581
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/mirrorlink/dap/TmDAPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/TmDAPServer;

    move-result-object v4

    .line 582
    .local v4, "tmDAPServer":Lcom/lge/mirrorlink/dap/TmDAPServer;
    if-eqz v4, :cond_192

    .line 583
    invoke-virtual {v4}, Lcom/lge/mirrorlink/dap/TmDAPServer;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_1b5

    .line 584
    invoke-virtual {v4}, Lcom/lge/mirrorlink/dap/TmDAPServer;->getBindedPort()I

    move-result v3

    .line 590
    :cond_192
    :goto_192
    if-nez v3, :cond_1ba

    .line 591
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[launchInternalServerFunction] Action failed, Fail to run the server for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v7, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v7}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v7

    throw v7

    .line 586
    :cond_1b5
    invoke-virtual {v4, p1}, Lcom/lge/mirrorlink/dap/TmDAPServer;->startServer(Ljava/lang/String;)I

    move-result v3

    goto :goto_192

    .line 594
    :cond_1ba
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "[launchInternalServerFunction] launch DAP-Server"

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;

    .end local v1    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    const-string/jumbo v7, "DAP"

    invoke-direct {v1, p0, v7, p1, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;Ljava/lang/String;Ljava/lang/String;I)V

    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    goto/16 :goto_62

    .line 611
    .end local v4    # "tmDAPServer":Lcom/lge/mirrorlink/dap/TmDAPServer;
    .local v1, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_1cd
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[launchInternalServerFunction] Action failed, invalid protocolID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 618
    .end local v1    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_1e9
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "internal Server launched:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->port:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3
.end method

.method public onGetAppCertificationStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "appIDStr"    # Ljava/lang/String;
    .param p2, "profileIDStr"    # Ljava/lang/String;
    .param p3, "appCertFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 1011
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TmApplicationServerManager:onGetAppCertificationStatus appID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " profileID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " filter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const/4 v5, 0x0

    .line 1016
    .local v5, "profileID":I
    :try_start_31
    invoke-static {p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_38} :catch_79

    move-result v5

    .line 1023
    invoke-static {p3}, Lcom/lge/mirrorlink/common/StringUtil;->getFilterMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1025
    .local v1, "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1028
    .local v2, "appID":I
    :try_start_3e
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_45} :catch_9b

    move-result v2

    .line 1034
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v3

    .line 1036
    .local v3, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    invoke-virtual {v3, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppCertification(I)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-result-object v0

    .line 1037
    .local v0, "appCert":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    if-eqz v0, :cond_56

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->isRemovedByFilter(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 1038
    :cond_56
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TmApplicationServerManager:onGetAppCertificationStatus appID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result:false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/4 v6, 0x0

    return v6

    .line 1017
    .end local v0    # "appCert":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    .end local v1    # "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "appID":I
    .end local v3    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    :catch_79
    move-exception v4

    .line 1018
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[onGetAppCertificationStatus] INVALID_PROFILE_ID, invalid number format="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    sget-object v6, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v6}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v6

    throw v6

    .line 1029
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "appID":I
    :catch_9b
    move-exception v4

    .line 1030
    .restart local v4    # "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[onGetAppCertificationStatus] BAD_APPID, invalid number format="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    sget-object v6, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v6}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v6

    throw v6

    .line 1041
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "appCert":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    .restart local v3    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    :cond_bd
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TmApplicationServerManager:onGetAppCertificationStatus appID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result:true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/4 v6, 0x1

    return v6
.end method

.method public onGetApplicationCertificateInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "appID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 918
    const/4 v1, 0x0

    .line 920
    .local v1, "valueAppID":I
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TmApplicationServerManager:onGetApplicationCertificateInfo appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :try_start_1b
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_28

    move-result v1

    .line 929
    invoke-direct {p0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->onGetApplicationCertificateInfo(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 924
    :catch_28
    move-exception v0

    .line 925
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[onGetApplicationCertificateInfo] BAD_APPID, invalid number format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    sget-object v2, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v2}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v2

    throw v2
.end method

.method public onGetApplicationList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "profileIDStr"    # Ljava/lang/String;
    .param p2, "appListingFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 288
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "TmApplicationServerManager:onGetApplicationList profileid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " filter:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v7, 0x0

    .line 293
    .local v7, "profileID":I
    :try_start_26
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2d} :catch_4d

    move-result v7

    .line 299
    invoke-static {p2}, Lcom/lge/mirrorlink/common/StringUtil;->getFilterMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 301
    .local v2, "appListingFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 304
    .local v5, "mIdx":Ljava/lang/Integer;
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v3

    .line 305
    .local v3, "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v3, :cond_6f

    .line 306
    const-string/jumbo v8, "MirrorLink_UPnP"

    const-string/jumbo v9, "[onGetApplicationList] Unexpected Error - TmClientProfileManager not found"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v8, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v8}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v8

    throw v8

    .line 294
    .end local v2    # "appListingFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    .end local v5    # "mIdx":Ljava/lang/Integer;
    :catch_4d
    move-exception v4

    .line 295
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationList] INVALID_PROFILE_ID, invalid number format="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v8, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v8}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v8

    throw v8

    .line 310
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .restart local v2    # "appListingFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    .restart local v5    # "mIdx":Ljava/lang/Integer;
    :cond_6f
    invoke-virtual {v3, v7}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v6

    .line 311
    .local v6, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v6, :cond_96

    .line 312
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationList] null profile for profileID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v8, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v8}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v8

    throw v8

    .line 316
    :cond_96
    const-string/jumbo v8, "MirrorLink_UPnP"

    const-string/jumbo v9, "[onGetApplicationList] call onClientProfileChanged"

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 318
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v8

    invoke-virtual {v3, v7}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfileForResource(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->onClientProfileChanged(Lcom/lge/mirrorlink/upnp/UpnpService;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)V

    .line 344
    invoke-virtual {v0, v6, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppListXml(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "appListXml":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->pintAppIDList()V

    .line 347
    return-object v1
.end method

.method public onGetApplicationStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "appID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 843
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationStatus] appID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v3

    .line 848
    .local v3, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    const-string/jumbo v8, "*"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 849
    invoke-virtual {v3, v11, v11}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppList(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 869
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    :goto_2c
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationStatus] list size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string/jumbo v5, "<appStatusList>"

    .line 871
    .local v5, "response":Ljava/lang/String;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "app$iterator":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 872
    .local v1, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v1, :cond_51

    .line 873
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationStatus] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-direct {p0, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->generateAppStatusResponse(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_51

    .line 851
    .end local v0    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    .end local v1    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v2    # "app$iterator":Ljava/util/Iterator;
    .end local v5    # "response":Ljava/lang/String;
    :cond_93
    const-wide/16 v6, 0x0

    .line 853
    .local v6, "valueAppID":J
    :try_start_95
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_9c} :catch_f1

    move-result-wide v6

    .line 859
    long-to-int v8, v6

    invoke-virtual {v3, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(I)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v1

    .line 860
    .restart local v1    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationStatus] appID:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "/app==null:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_113

    const/4 v8, 0x1

    :goto_bf
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    if-eqz v1, :cond_d0

    iget-object v8, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    if-nez v8, :cond_115

    .line 862
    :cond_d0
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationStatus] BAD_APPID, no app found for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    sget-object v8, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v8}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v8

    throw v8

    .line 854
    .end local v1    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :catch_f1
    move-exception v4

    .line 855
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[onGetApplicationStatus] BAD_APPID, invalid number format="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    sget-object v8, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v8}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v8

    throw v8

    .line 860
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_113
    const/4 v8, 0x0

    goto :goto_bf

    .line 865
    :cond_115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .restart local v0    # "allApps":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 877
    .end local v1    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v6    # "valueAppID":J
    .restart local v2    # "app$iterator":Ljava/util/Iterator;
    .restart local v5    # "response":Ljava/lang/String;
    :cond_11f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</appStatusList>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 879
    return-object v5
.end method

.method public onGetCertifiedApplicationsList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "profileIDStr"    # Ljava/lang/String;
    .param p2, "appCertFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 960
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TmApplicationServerManager:onGetCertifiedApplicationsList profileid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " filter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v5, 0x0

    .line 965
    .local v5, "profileID":I
    :try_start_26
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_2d} :catch_48

    move-result v5

    .line 971
    invoke-static {p2}, Lcom/lge/mirrorlink/common/StringUtil;->getFilterMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 975
    .local v0, "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v2

    .line 976
    .local v2, "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v2, :cond_6a

    .line 977
    const-string/jumbo v6, "MirrorLink_UPnP"

    const-string/jumbo v7, "[onGetCertifiedApplicationsList] Unexpected Error - TmClientProfileManager not found"

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    sget-object v6, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v6}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v6

    throw v6

    .line 966
    .end local v0    # "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    :catch_48
    move-exception v3

    .line 967
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[onGetCertifiedApplicationsList] INVALID_PROFILE_ID, invalid number format="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    sget-object v6, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v6}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v6

    throw v6

    .line 981
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    :cond_6a
    invoke-virtual {v2, v5}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v4

    .line 982
    .local v4, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v4, :cond_91

    .line 983
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[onGetCertifiedApplicationsList] invalid profile ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    sget-object v6, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v6}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v6

    throw v6

    .line 986
    :cond_91
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v1

    .line 988
    .local v1, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    invoke-virtual {v1, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppCertificationList(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public onLaunchApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 28
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "appIDStr"    # Ljava/lang/String;
    .param p3, "profileIDStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 354
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "TmApplicationServerManager:onLaunchApplication appid:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " profileid:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v6, 0x0

    .line 359
    .local v6, "appID":I
    :try_start_2e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_35} :catch_61

    move-result v6

    .line 365
    const/16 v20, 0x100

    move/from16 v0, v20

    if-lt v6, v0, :cond_87

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "keyguard"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/KeyguardManager;

    .line 367
    .local v14, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v20

    if-eqz v20, :cond_87

    .line 368
    const-string/jumbo v20, "MirrorLink_UPnP"

    const-string/jumbo v21, "[onGetApplicationList] Keyguard is locked !"

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->DEVICE_LOCKED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 360
    .end local v14    # "keyguardManager":Landroid/app/KeyguardManager;
    :catch_61
    move-exception v12

    .line 361
    .local v12, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] BAD_APPID, invalid number format="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 373
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :cond_87
    const/16 v19, 0x0

    .line 376
    .local v19, "profileID":I
    :try_start_89
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_90} :catch_fe

    move-result v19

    .line 382
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v8

    .line 385
    .local v8, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    :try_start_95
    invoke-virtual {v8, v6}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(I)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v5

    .line 386
    .local v5, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v5, :cond_a1

    iget-object v0, v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    if-nez v20, :cond_124

    .line 387
    :cond_a1
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] BAD_APPID, no app found for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20
    :try_end_c4
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_c4} :catch_c4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_95 .. :try_end_c4} :catch_13a

    .line 505
    .end local v5    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :catch_c4
    move-exception v17

    .line 506
    .local v17, "nf":Ljava/lang/NumberFormatException;
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] Action failed, invalid input arguments (AppID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", ProfileID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_ARGUMENT:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 377
    .end local v8    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v17    # "nf":Ljava/lang/NumberFormatException;
    :catch_fe
    move-exception v12

    .line 378
    .restart local v12    # "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] INVALID_PROFILE_ID, invalid number format="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 393
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .restart local v5    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .restart local v8    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    :cond_124
    :try_start_124
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v10

    .line 394
    .local v10, "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v10, :cond_165

    .line 395
    const-string/jumbo v20, "MirrorLink_UPnP"

    const-string/jumbo v21, "[onLaunchApplication] Unexpected Error - TmClientProfileManager not found"

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20
    :try_end_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_124 .. :try_end_13a} :catch_c4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_124 .. :try_end_13a} :catch_13a

    .line 508
    .end local v5    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v10    # "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    :catch_13a
    move-exception v4

    .line 509
    .local v4, "anf":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] Action failed, activity not found (AppID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 399
    .end local v4    # "anf":Landroid/content/ActivityNotFoundException;
    .restart local v5    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .restart local v10    # "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    :cond_165
    :try_start_165
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v18

    .line 400
    .local v18, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v18, :cond_17d

    .line 401
    const-string/jumbo v20, "MirrorLink_UPnP"

    const-string/jumbo v21, "[onLaunchApplication] uull Profile ID"

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 407
    :cond_17d
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getProtocolID()Ljava/lang/String;

    move-result-object v9

    .line 408
    .local v9, "appProtocolID":Ljava/lang/String;
    invoke-static {v9}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1b6

    .line 409
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] Action failed, invalid ProtocolID (ProtocolID="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-nez v9, :cond_19b

    const-string/jumbo v9, "NULL"

    .end local v9    # "appProtocolID":Ljava/lang/String;
    :cond_19b
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 415
    .restart local v9    # "appProtocolID":Ljava/lang/String;
    :cond_1b6
    if-nez p1, :cond_1c8

    .line 416
    const-string/jumbo v20, "MirrorLink_UPnP"

    const-string/jumbo v21, "[onLaunchApplication] Action failed, No IP address to return"

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 420
    :cond_1c8
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onLaunchApplication protocol:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " ip:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v15, 0x0

    .line 426
    .local v15, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    invoke-static {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isMirrorLinkComponent(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z

    move-result v20

    if-eqz v20, :cond_265

    .line 428
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppInfo()Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    move-result-object v7

    .line 429
    .local v7, "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    if-eqz v7, :cond_25b

    .line 430
    iget-wide v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->isInternalServerFunctionality(J)Z

    move-result v20

    if-eqz v20, :cond_242

    .line 431
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] appCategory serverFunctionality with protocoID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->launchInternalServerFunction(Ljava/lang/String;Ljava/lang/String;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;

    move-result-object v15

    .line 482
    .end local v7    # "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    .end local v15    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_230
    :goto_230
    if-nez v15, :cond_361

    .line 483
    const-string/jumbo v20, "MirrorLink_UPnP"

    const-string/jumbo v21, "[onLaunchApplication] no launchResult"

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 434
    .restart local v7    # "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    .restart local v15    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    :cond_242
    iget-wide v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    move-wide/from16 v20, v0

    const-wide v22, 0xf0000002L

    cmp-long v20, v20, v22

    if-nez v20, :cond_230

    .line 435
    const-string/jumbo v20, "RTP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_230

    goto :goto_230

    .line 440
    :cond_25b
    const-string/jumbo v20, "MirrorLink_UPnP"

    const-string/jumbo v21, "[onLaunchApplication] no appInfo for MirrorLink component"

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_230

    .line 444
    .end local v7    # "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    :cond_265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->launchInternalServerFunction(Ljava/lang/String;Ljava/lang/String;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;

    move-result-object v15

    .line 445
    .local v15, "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    if-nez v15, :cond_281

    .line 446
    const-string/jumbo v20, "MirrorLink_UPnP"

    const-string/jumbo v21, "[onLaunchApplication] Action failed, Fail to run the server for given protocolID"

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v20, Lcom/lge/mirrorlink/upnp/TmErrorCode;->LAUNCH_FAILED:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static/range {v20 .. v20}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v20

    throw v20

    .line 454
    :cond_281
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->setStartingPackageName(Ljava/lang/String;)V

    .line 456
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] launch application:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getClassName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v20, Lcom/lge/mirrorlink/misc/LandscapeRotator;

    invoke-direct/range {v20 .. v20}, Lcom/lge/mirrorlink/misc/LandscapeRotator;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/lge/mirrorlink/misc/LandscapeRotator;->rotate()V

    .line 459
    const/4 v13, 0x0

    .line 460
    .local v13, "intent":Landroid/content/Intent;
    new-instance v16, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    .local v16, "mlAwareAppChecker":Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->isMlAwareApp()Z

    move-result v20

    if-eqz v20, :cond_323

    .line 462
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v20, "com.mirrorlink.android.app.LAUNCH"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v13, "intent":Landroid/content/Intent;
    new-instance v11, Landroid/content/ComponentName;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->getActivityName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .local v11, "component":Landroid/content/ComponentName;
    invoke-virtual {v13, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 465
    const-string/jumbo v20, "android.intent.category.DEFAULT"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    .end local v11    # "component":Landroid/content/ComponentName;
    :goto_2ff
    const/high16 v20, 0x30010000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 478
    new-instance v20, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/lge/mirrorlink/upnp/applicationserver/AppLaunchStateWatcher;->waitForLaunch(Ljava/lang/String;)V

    goto/16 :goto_230

    .line 467
    .local v13, "intent":Landroid/content/Intent;
    :cond_323
    new-instance v13, Landroid/content/Intent;

    .end local v13    # "intent":Landroid/content/Intent;
    const-string/jumbo v20, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getFloatingActivityName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_357

    .line 470
    const-string/jumbo v20, "com.lge.app.floating.launchAsFloating"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 471
    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getFloatingActivityName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2ff

    .line 473
    :cond_357
    iget-object v0, v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2ff

    .line 488
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "launchResult":Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;
    .end local v16    # "mlAwareAppChecker":Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;
    :cond_361
    const-string/jumbo v20, "MirrorLink_UPnP"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "[onLaunchApplication] checkAppStatus(appID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget v0, v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    move/from16 v20, v0

    sget-object v21, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Foreground:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->hasAppStatus(ILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)Z

    move-result v20

    if-nez v20, :cond_3be

    .line 492
    sget-object v20, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Background:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->updateAllAppStatus(Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V

    .line 493
    iget v0, v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    move/from16 v20, v0

    sget-object v21, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Foreground:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->updateAppStatus(IILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V

    .line 494
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->notifyAppContentInfo(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V

    .line 496
    invoke-direct/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->notifyAppStatusUpdated()V

    .line 500
    :cond_3be
    const-string/jumbo v20, "BTHFP"

    iget-object v0, v15, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3d8

    const-string/jumbo v20, "BTA2DP"

    iget-object v0, v15, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3f9

    .line 501
    :cond_3d8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->ipAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 503
    :cond_3f9
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v15, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->protocolID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->ipAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager$LaunchedTmComponentInfo;->port:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_427
    .catch Ljava/lang/NumberFormatException; {:try_start_165 .. :try_end_427} :catch_c4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_165 .. :try_end_427} :catch_13a

    move-result-object v20

    return-object v20
.end method

.method public onShutdown()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 211
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "[TmApplicationServerManager.onShutdown] called"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 215
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_19

    .line 216
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mAppListChangeListener:Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    invoke-virtual {v0, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->unregistAppListChangeListener(Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;)V

    .line 219
    :cond_19
    sget-boolean v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mMlBtOn:Z

    if-eqz v5, :cond_22

    .line 220
    invoke-virtual {p0, v7}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setBluetoothOnOff(Z)V

    .line 221
    sput-boolean v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mMlBtOn:Z

    .line 224
    :cond_22
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/vnc/TmVNCServer;

    move-result-object v4

    .line 225
    .local v4, "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    if-eqz v4, :cond_2f

    .line 226
    invoke-virtual {v4}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->stopServer()V

    .line 229
    :cond_2f
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v3

    .line 230
    .local v3, "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    if-eqz v3, :cond_3c

    .line 231
    invoke-virtual {v3}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->stopServer()V

    .line 234
    :cond_3c
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/mirrorlink/dap/TmDAPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/dap/TmDAPServer;

    move-result-object v2

    .line 235
    .local v2, "tmDAPServer":Lcom/lge/mirrorlink/dap/TmDAPServer;
    if-eqz v2, :cond_49

    .line 236
    invoke-virtual {v2}, Lcom/lge/mirrorlink/dap/TmDAPServer;->stopServer()V

    .line 209
    :cond_49
    return-void
.end method

.method public onStartup()V
    .registers 6

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/vnc/TmVNCServer;

    move-result-object v3

    .line 193
    .local v3, "tmVNCServer":Lcom/lge/mirrorlink/vnc/TmVNCServer;
    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/TmVNCServer;->startServer()I

    .line 194
    invoke-static {v1}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->getDefaultServer(Landroid/content/Context;)Lcom/lge/mirrorlink/rtp/TmRTPServer;

    move-result-object v2

    .line 195
    .local v2, "tmRTPServer":Lcom/lge/mirrorlink/rtp/TmRTPServer;
    sget-object v4, Lcom/lge/mirrorlink/common/MirrorLinkDataDef;->payloadtype_99:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Lcom/lge/mirrorlink/rtp/TmRTPServer;->startServer(Ljava/lang/Integer;)I

    .line 198
    const/4 v4, 0x0

    sput-boolean v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mMlBtOn:Z

    .line 201
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 202
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_22

    .line 203
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mAppListChangeListener:Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    invoke-virtual {v0, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->registAppListChangeListener(Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;)V

    .line 188
    :cond_22
    return-void
.end method

.method public onTerminateApplication(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p1, "appIDStr"    # Ljava/lang/String;
    .param p2, "profileIDStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 669
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "TmApplicationServerManager:onTerminateApplication appid:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " profileid:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v4, 0x0

    .line 674
    .local v4, "appID":I
    :try_start_2e
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_35} :catch_b0

    move-result v4

    .line 680
    const/4 v12, 0x0

    .line 683
    .local v12, "profileID":I
    :try_start_37
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3e} :catch_d4

    move-result v12

    .line 689
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v6

    .line 692
    .local v6, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    :try_start_43
    invoke-virtual {v6, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(I)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v3

    .line 693
    .local v3, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v3, :cond_4d

    iget-object v15, v3, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    if-nez v15, :cond_fa

    .line 694
    :cond_4d
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[onTerminateApplication] BAD_APPID, no app found for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget-object v15, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v15}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v15

    throw v15
    :try_end_70
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_70} :catch_70

    .line 801
    .end local v3    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :catch_70
    move-exception v2

    .line 802
    .local v2, "anf":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[onTerminateApplication] BAD_APPID, activity not found for appID="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[onTerminateApplication] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    sget-object v15, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v15}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v15

    throw v15

    .line 675
    .end local v2    # "anf":Landroid/content/ActivityNotFoundException;
    .end local v6    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .end local v12    # "profileID":I
    :catch_b0
    move-exception v9

    .line 676
    .local v9, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[onTerminateApplication] BAD_APPID, invalid number format="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    sget-object v15, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v15}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v15

    throw v15

    .line 684
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v12    # "profileID":I
    :catch_d4
    move-exception v9

    .line 685
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[onTerminateApplication] INVALID_PROFILE_ID, invalid number format="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    sget-object v15, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v15}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v15

    throw v15

    .line 700
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .restart local v6    # "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    :cond_fa
    :try_start_fa
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v8

    .line 701
    .local v8, "clientProfileMngr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v8, :cond_110

    .line 702
    const-string/jumbo v15, "MirrorLink_UPnP"

    const-string/jumbo v16, "[onTerminateApplication] Unexpected Error - TmClientProfileManager not found"

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget-object v15, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v15}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v15

    throw v15

    .line 706
    :cond_110
    invoke-virtual {v8, v12}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v11

    .line 707
    .local v11, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v11, :cond_126

    .line 708
    const-string/jumbo v15, "MirrorLink_UPnP"

    const-string/jumbo v16, "[onTerminateApplication] null profileID"

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    sget-object v15, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v15}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v15

    throw v15

    .line 714
    :cond_126
    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getProtocolID()Ljava/lang/String;

    move-result-object v7

    .line 715
    .local v7, "appProtocolID":Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/mirrorlink/common/StringUtil;->isValidString(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_158

    .line 716
    const-string/jumbo v15, "MirrorLink_UPnP"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "[onTerminateApplication] BAD_APPID, invalid protocolID="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v7, :cond_144

    const-string/jumbo v7, "NULL"

    .end local v7    # "appProtocolID":Ljava/lang/String;
    :cond_144
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-object v15, Lcom/lge/mirrorlink/upnp/TmErrorCode;->BAD_APPID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v15}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v15

    throw v15

    .line 733
    .restart local v7    # "appProtocolID":Ljava/lang/String;
    :cond_158
    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isMirrorLinkComponent(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z

    move-result v15

    if-eqz v15, :cond_1cf

    .line 735
    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppInfo()Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;

    move-result-object v5

    .line 736
    .local v5, "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    if-eqz v5, :cond_173

    .line 737
    iget-wide v0, v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->isInternalServerFunctionality(J)Z

    move-result v15

    if-eqz v15, :cond_1b8

    .line 738
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->terminateInternalServerFunction(Ljava/lang/String;)V

    .line 781
    .end local v5    # "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    :cond_173
    :goto_173
    iget v15, v3, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getAppStatus(II)Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-result-object v10

    .line 782
    .local v10, "prevstatus":Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    sget-object v15, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Notrunning:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    if-eq v10, v15, :cond_1b6

    .line 784
    sget-object v15, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Foreground:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    if-ne v10, v15, :cond_1a8

    .line 787
    invoke-virtual {v6}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getCurrentForegroundPackageName()Ljava/lang/String;

    move-result-object v13

    .line 788
    .local v13, "topPkgName":Ljava/lang/String;
    invoke-virtual {v6, v13}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v14

    .line 789
    .local v14, "topapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v14, :cond_1a3

    iget v15, v14, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    if-eqz v15, :cond_1a3

    .line 790
    sget-object v15, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Background:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->updateAllAppStatus(Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V

    .line 791
    iget v15, v14, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    sget-object v16, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Foreground:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v12, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->updateAppStatus(IILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V

    .line 793
    :cond_1a3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->notifyAppContentInfo(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V

    .line 796
    .end local v13    # "topPkgName":Ljava/lang/String;
    .end local v14    # "topapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_1a8
    iget v15, v3, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    sget-object v16, Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;->Notrunning:Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v12, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->updateAppStatus(IILcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;)V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->notifyAppStatusUpdated()V

    .line 800
    :cond_1b6
    const/4 v15, 0x1

    return v15

    .line 739
    .end local v10    # "prevstatus":Lcom/lge/mirrorlink/common/MirrorLinkDataDef$StatusType;
    .restart local v5    # "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    :cond_1b8
    iget-wide v0, v5, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;->appCategory:J

    move-wide/from16 v16, v0

    const-wide v18, 0xf0000002L

    cmp-long v15, v16, v18

    if-nez v15, :cond_173

    .line 740
    const-string/jumbo v15, "RTP"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_173

    goto :goto_173

    .line 777
    .end local v5    # "appInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppInfo;
    :cond_1cf
    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->terminatePackage(Ljava/lang/String;)Z
    :try_end_1d6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_fa .. :try_end_1d6} :catch_70

    goto :goto_173
.end method

.method public setAppListUpdate(Ljava/lang/String;)V
    .registers 6
    .param p1, "newAppListUpdate"    # Ljava/lang/String;

    .prologue
    .line 278
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[TmApplicationServer.setAppListUpdate] ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->applistupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/StateVariable;->setValue(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->applistupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    return-void
.end method

.method public setAppStatusUpdate(Ljava/lang/String;)V
    .registers 6
    .param p1, "newAppStatusUpdate"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appstatusupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/StateVariable;->setValue(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appstatusupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 267
    return-void
.end method

.method public setBluetoothOnOff(Z)V
    .registers 4
    .param p1, "onoff"    # Z

    .prologue
    .line 1152
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1153
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1c

    .line 1154
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p1, :cond_1d

    .line 1156
    :cond_e
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz p1, :cond_1c

    .line 1157
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1158
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->mMlBtOn:Z

    .line 1150
    :cond_1c
    :goto_1c
    return-void

    .line 1155
    :cond_1d
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1c
.end method

.method public setDefaultStateVariables()V
    .registers 7

    .prologue
    .line 253
    const-string/jumbo v1, ""

    .line 254
    .local v1, "appListStr":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 255
    .local v0, "appListMngr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v0, :cond_14

    .line 256
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppIDList()Ljava/util/List;

    move-result-object v2

    .line 257
    .local v2, "currentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "0x%02X"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .end local v2    # "currentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_14
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setDefaultAppStatusVariables] ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->appstatusupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValueString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setDefaultAppListVariables] ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->applistupdate:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValueString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setAppStatusUpdate(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApplicationServerManager;->setAppListUpdate(Ljava/lang/String;)V

    .line 251
    return-void
.end method
