.class public Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
.super Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;
.source "TmClientProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager$1;
    }
.end annotation


# static fields
.field private static final MESSAGE_UNUSED_PROFILE_IDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"

.field private static _instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

.field private static profileListInUse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

.field private defaultProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;",
            ">;"
        }
    .end annotation
.end field

.field private maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/mirrorlink/upnp/StateVariable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final msgHandler:Landroid/os/Handler;

.field private unusedProfileIDs:Lcom/lge/mirrorlink/upnp/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/mirrorlink/upnp/StateVariable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "upnpService"    # Lcom/lge/mirrorlink/upnp/UpnpService;
    .param p3, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/mirrorlink/upnp/TmLocalServiceManager;-><init>(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 78
    new-instance v0, Lcom/lge/mirrorlink/upnp/StateVariable;

    const-string/jumbo v1, "UnusedProfileIDs"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/StateVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->unusedProfileIDs:Lcom/lge/mirrorlink/upnp/StateVariable;

    .line 79
    new-instance v0, Lcom/lge/mirrorlink/upnp/StateVariable;

    const-string/jumbo v1, "MaxNumProfiles"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/StateVariable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager$1;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager$1;-><init>(Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;)V

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->msgHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->loadDefaultClientProfiles(Landroid/content/Context;)V

    .line 118
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->publishUnusedProfileIDs()V

    .line 119
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 113
    return-void
.end method

.method private correctClientProfile(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Z
    .registers 4
    .param p1, "clientProfile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .prologue
    .line 325
    if-eqz p1, :cond_15

    .line 326
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    .line 327
    .local v0, "iconPref":Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;
    if-eqz v0, :cond_15

    .line 328
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isSupportedIconMimetype(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 329
    const-string/jumbo v1, "image/png"

    iput-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    .line 330
    const/4 v1, 0x1

    return v1

    .line 334
    .end local v0    # "iconPref":Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public static freeInstance()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    if-eqz v0, :cond_7

    .line 68
    sput-object v1, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    .line 65
    :cond_7
    return-void
.end method

.method private getClientProfileForResource(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .registers 4
    .param p1, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .param p2, "defaultProfile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .prologue
    .line 432
    if-eqz p1, :cond_d

    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->isClientProfileSupported(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    if-eqz v0, :cond_d

    .line 434
    return-object p1

    .line 438
    :cond_d
    return-object p2
.end method

.method public static getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upnpService"    # Lcom/lge/mirrorlink/upnp/UpnpService;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;-><init>(Landroid/content/Context;Lcom/lge/mirrorlink/upnp/UpnpService;Ljava/lang/String;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    .line 55
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    invoke-virtual {v0, p2}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->setServiceId(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->setUpnpService(Lcom/lge/mirrorlink/upnp/UpnpService;)V

    .line 57
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->_instance:Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    return-object v0
.end method

.method private getProfileFromInputStream(Ljava/io/InputStream;)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .registers 9
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 192
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 193
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 194
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 195
    .local v3, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 197
    new-instance v2, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    invoke-direct {v2}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;-><init>()V

    .line 198
    .local v2, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_19} :catch_1d

    move-result v4

    if-eqz v4, :cond_27

    .line 199
    return-object v2

    .line 201
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .end local v3    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1d
    move-exception v0

    .line 202
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "getProfileFromInputStream : XmlPullParserException"

    invoke-static {v4, v5, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_27
    return-object v6
.end method

.method private isClientProfileSupported(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Z
    .registers 4
    .param p1, "clientProfile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .prologue
    .line 312
    if-eqz p1, :cond_10

    .line 313
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->iconPreference:Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;

    .line 314
    .local v0, "iconPref":Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;
    if-eqz v0, :cond_10

    .line 315
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;->mimetype:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isSupportedIconMimetype(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 316
    const/4 v1, 0x0

    return v1

    .line 320
    .end local v0    # "iconPref":Lcom/lge/mirrorlink/upnp/clientprofile/types/IconPreference;
    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method private onSetClientProfileInternal(ILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "profileID"    # I
    .param p2, "clientProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 373
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onSetClientProfile] profileListInUse.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", defaultProfileList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onSetClientProfile] clientProfile=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-gez p1, :cond_64

    .line 377
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "[onSetClientProfile] null profileID"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v0

    throw v0

    .line 381
    :cond_64
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_93

    .line 383
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onSetClientProfile] profileID is out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v0

    throw v0

    .line 389
    :cond_93
    :try_start_93
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 391
    .local v9, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v9, :cond_a2

    .line 392
    new-instance v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .end local v9    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    invoke-direct {v9}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;-><init>()V

    .line 394
    .restart local v9    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :cond_a2
    if-eqz p2, :cond_b6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b6

    .line 395
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "[onSetClientProfile] parseClientProfile clientProfile"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0, v9, p2}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->parseClientProfile(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Ljava/lang/String;)Z

    .line 401
    :cond_b6
    if-eqz v9, :cond_117

    .line 402
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "[onSetClientProfile] newProfile parsed"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-eqz v0, :cond_dd

    .line 405
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    iget v1, v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->majorVersion:I

    iget v2, v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->minorVersion:I

    .line 406
    iget-object v3, v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->clientID:Ljava/lang/String;

    iget-object v4, v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->friendlyName:Ljava/lang/String;

    iget-object v5, v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->manufacturer:Ljava/lang/String;

    .line 407
    iget-object v6, v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelName:Ljava/lang/String;

    iget-object v7, v9, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->modelNumber:Ljava/lang/String;

    .line 405
    invoke-virtual/range {v0 .. v7}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onDeviceInfoChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_dd
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->publishUnusedProfileIDs()V

    .line 410
    invoke-virtual {v9}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->toString()Ljava/lang/String;

    move-result-object v10

    .line 411
    .local v10, "profileResult":Ljava/lang/String;
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[onSetClientProfile] clientProfile returned=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lge/mirrorlink/upnp/clientprofile/ClientAttribute;->checkSwitchToClientNativeUI(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)V
    :try_end_10c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_93 .. :try_end_10c} :catch_10d

    .line 413
    return-object v10

    .line 417
    .end local v9    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .end local v10    # "profileResult":Ljava/lang/String;
    :catch_10d
    move-exception v8

    .line 418
    .local v8, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "onSetClientProfile : XmlPullParserException"

    invoke-static {v0, v1, v8}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    .end local v8    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_117
    sget-object v0, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v0

    throw v0
.end method

.method private parseClientProfile(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Ljava/lang/String;)Z
    .registers 9
    .param p1, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .param p2, "clientProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "[parseClientProfile] start"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz p2, :cond_43

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_43

    .line 292
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 293
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v0, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 294
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 295
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/StringReader;

    invoke-static {p2}, Lcom/lge/mirrorlink/common/StringUtil;->decodeXMLText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 297
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "[parseClientProfile] newProfile parsing"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1, v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->fromXML(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 300
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "[parseClientProfile] clientProfile parsed, return it"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return v5

    .line 305
    .end local v0    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v1    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_43
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "[parseClientProfile] invalid clientProfile"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return v4
.end method

.method private publishUnusedProfileIDs()V
    .registers 5

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getUnusedProfileIDs()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "unusedProfiles":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->msgHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 212
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void
.end method


# virtual methods
.method public getBdAddr()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfilesInUse()Ljava/util/List;

    move-result-object v3

    .line 496
    .local v3, "profileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 497
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v2

    .line 498
    .local v2, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-eqz v2, :cond_a

    .line 503
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v2    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :cond_20
    if-eqz v2, :cond_26

    iget-object v4, v2, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    if-nez v4, :cond_27

    .line 504
    :cond_26
    return-object v5

    .line 507
    :cond_27
    iget-object v4, v2, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    iget-object v4, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_bdAddr:Ljava/lang/String;

    return-object v4
.end method

.method public getBtStartConnection()Z
    .registers 6

    .prologue
    .line 512
    const/4 v2, 0x0

    .line 513
    .local v2, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfilesInUse()Ljava/util/List;

    move-result-object v3

    .line 514
    .local v3, "profileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .local v1, "id$iterator":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 515
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v2

    .line 516
    .local v2, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-eqz v2, :cond_9

    .line 521
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v2    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :cond_1f
    if-eqz v2, :cond_25

    iget-object v4, v2, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    if-nez v4, :cond_27

    .line 522
    :cond_25
    const/4 v4, 0x0

    return v4

    .line 525
    :cond_27
    iget-object v4, v2, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->connectivity:Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;

    iget-object v4, v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/Connectivity;->bluetooth_startConnection:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4
.end method

.method public getClientMajorVersion()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 474
    const-string/jumbo v1, "MirrorLink_UPnP"

    const-string/jumbo v2, "getClientMajorVersion:"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v1, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 476
    .local v0, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v0, :cond_1e

    .line 477
    const-string/jumbo v1, "MirrorLink_UPnP"

    const-string/jumbo v2, "[ERROR] profile is null"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return v3

    .line 480
    :cond_1e
    iget v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->majorVersion:I

    return v1
.end method

.method public getClientMinorVersion()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 485
    sget-object v1, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 486
    .local v0, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-eqz v0, :cond_e

    .line 487
    iget v1, v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->minorVersion:I

    return v1

    .line 489
    :cond_e
    return v2
.end method

.method public getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .registers 4
    .param p1, "profileID"    # I

    .prologue
    .line 274
    sget-object v1, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 275
    .local v0, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v0, :cond_12

    .line 276
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 278
    .restart local v0    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :cond_12
    return-object v0
.end method

.method public getClientProfileForResource(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .registers 4
    .param p1, "profileID"    # I

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getDefaultClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getClientProfileForResource(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v0

    return-object v0
.end method

.method public getClientProfilesInUse()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v2, "profileIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    sget-object v3, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    .line 250
    sget-object v3, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 251
    .local v1, "id":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 253
    .end local v1    # "id":I
    :cond_1e
    return-object v2
.end method

.method public getDefaultClientProfile(I)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .registers 3
    .param p1, "profileID"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    return-object v0
.end method

.method public getUnusedProfileIDs()Ljava/lang/String;
    .registers 8

    .prologue
    .line 217
    const-string/jumbo v4, ""

    .line 220
    .local v4, "strUnusedProfileIDs":Ljava/lang/String;
    const/4 v0, 0x0

    .line 221
    .local v0, "found":Z
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 222
    .local v2, "maxNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_49

    .line 223
    sget-object v5, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 224
    .local v3, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-nez v3, :cond_44

    .line 225
    if-eqz v0, :cond_47

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    :goto_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 228
    :cond_47
    const/4 v0, 0x1

    goto :goto_33

    .line 234
    .end local v3    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :cond_49
    return-object v4
.end method

.method public getprofileListInUse()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    return-object v0
.end method

.method public isClientProfileInUse()Z
    .registers 3

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_1
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 264
    invoke-virtual {p0, v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->isClientProfileInUse(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 265
    const/4 v1, 0x1

    return v1

    .line 263
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public isClientProfileInUse(I)Z
    .registers 3
    .param p1, "profileID"    # I

    .prologue
    .line 258
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public loadDefaultClientProfiles(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    if-nez p1, :cond_c

    .line 142
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "[TmClientProfileManager.loadDefaultClientProfiles] Invalid argument - null context"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    .line 146
    :cond_c
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 149
    .local v7, "res":Landroid/content/res/Resources;
    const v9, 0x7f05001e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 150
    .local v2, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x800

    invoke-direct {v6, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 153
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "profile_resource_id_str":Ljava/lang/String;
    if-eqz v5, :cond_9e

    .line 154
    const-string/jumbo v9, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, "res_id":I
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[loadDefaultClientProfiles] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", resid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-lez v8, :cond_28

    .line 158
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "-- openInputStream of clientprofile file"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 160
    .local v3, "is_xml":Ljava/io/InputStream;
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "-- getProfileFromInputStream"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getProfileFromInputStream(Ljava/io/InputStream;)Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    move-result-object v4

    .line 162
    .local v4, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "-- if profile loaded"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz v4, :cond_28

    .line 164
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "add profile into defaultProfileList"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_93} :catch_94

    goto :goto_28

    .line 169
    .end local v3    # "is_xml":Ljava/io/InputStream;
    .end local v4    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .end local v5    # "profile_resource_id_str":Ljava/lang/String;
    .end local v8    # "res_id":I
    :catch_94
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "loadDefaultClientProfiles : Fail to load clientProfile"

    invoke-static {v9, v10, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_9e
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_b9

    .line 175
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "create a default profile if fail to load clientprofile from xml file"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v4, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    invoke-direct {v4}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;-><init>()V

    .line 177
    .restart local v4    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v4    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :cond_b9
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    .local v0, "defaultNumOfProfiles":I
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lge/mirrorlink/upnp/StateVariable;->setValue(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e2

    .line 182
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getServiceId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v11}, Lcom/lge/mirrorlink/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v12}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValueString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/lge/mirrorlink/upnp/UpnpService;->setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_e2
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[loadDefaultClientProfiles] maxNumProfiles="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onGetClientProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "profileIDStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 443
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TmClientProfileManager:onGetClientProfile profileID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v2, 0x0

    .line 448
    .local v2, "profileID":I
    :try_start_1b
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_50

    move-result v2

    .line 455
    sget-object v3, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 456
    .local v1, "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-eqz v1, :cond_72

    .line 457
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onGetClientProfile] result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 449
    .end local v1    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :catch_50
    move-exception v0

    .line 450
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onGetClientProfile] INVALID_PROFILE_ID, invalid number format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v3, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v3

    throw v3

    .line 461
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    :cond_72
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    check-cast v1, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .line 462
    .restart local v1    # "profile":Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    if-eqz v1, :cond_81

    .line 463
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 466
    :cond_81
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[onGetClientProfile] profileListInUse.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", defaultProfileList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->defaultProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v3, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v3

    throw v3
.end method

.method public onGetMaxNumProfiles()I
    .registers 4

    .prologue
    .line 339
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TmClientProfileManager:onGetMaxNumProfiles return:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onSetClientProfile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "profileIDStr"    # Ljava/lang/String;
    .param p2, "clientProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/mirrorlink/upnp/ActionException;
        }
    .end annotation

    .prologue
    .line 346
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TmClientProfileManager:onGetClientProfile profileID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v3, 0x0

    .line 351
    .local v3, "profileID":I
    :try_start_1b
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_35

    move-result v3

    .line 357
    invoke-virtual {p0, v3}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->isClientProfileInUse(I)Z

    move-result v0

    .line 358
    .local v0, "alreadyInUse":Z
    invoke-direct {p0, v3, p2}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->onSetClientProfileInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "clientProfileReturned":Ljava/lang/String;
    if-nez v0, :cond_34

    .line 362
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getUnusedProfileIDs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->setUnusedProfileIDs(Ljava/lang/String;)V

    .line 368
    :cond_34
    return-object v1

    .line 352
    .end local v0    # "alreadyInUse":Z
    .end local v1    # "clientProfileReturned":Ljava/lang/String;
    :catch_35
    move-exception v2

    .line 353
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[onGetAppCertificationStatus] INVALID_PROFILE_ID, invalid number format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v4, Lcom/lge/mirrorlink/upnp/TmErrorCode;->INVALID_PROFILE_ID:Lcom/lge/mirrorlink/upnp/TmErrorCode;

    invoke-static {v4}, Lcom/lge/mirrorlink/upnp/TmErrorCode;->getActionException(Lcom/lge/mirrorlink/upnp/TmErrorCode;)Lcom/lge/mirrorlink/upnp/ActionException;

    move-result-object v4

    throw v4
.end method

.method public onShutdown()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-eqz v0, :cond_10

    .line 126
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onDeviceInfoChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_10
    sget-object v0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->profileListInUse:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 123
    return-void
.end method

.method public setDefaultStateVariables()V
    .registers 5

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->unusedProfileIDs:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->unusedProfileIDs:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValueString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->maxNumProfiles:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/StateVariable;->getValueString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setUnusedProfileIDs(Ljava/lang/String;)V
    .registers 5
    .param p1, "newUnusedProfileIDs"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->unusedProfileIDs:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/StateVariable;->setValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 241
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getUpnpService()Lcom/lge/mirrorlink/upnp/UpnpService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getServiceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->unusedProfileIDs:Lcom/lge/mirrorlink/upnp/StateVariable;

    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/lge/mirrorlink/upnp/UpnpService;->setStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_19
    return-void
.end method
