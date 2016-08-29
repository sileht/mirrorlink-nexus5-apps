.class public Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
.super Ljava/lang/Object;
.source "TmAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$LoadAppListThread;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$1;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;,
        Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;
    }
.end annotation


# static fields
.field public static final ICON_MIMETYPE_DEFAULT:Ljava/lang/String; = "image/png"

.field public static final ICON_MIMETYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final ICON_MIMETYPE_PNG:Ljava/lang/String; = "image/png"

.field public static final MSG_RETRIEVE_APP_CERT_NOT_TRIED_APPS:I = 0x3e9

.field public static final MSG_RETRIEVE_APP_CERT_NOT_VALIDATE_APPS:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"

.field public static final TARGET_CARRIER:Ljava/lang/String;

.field public static final TmAppListPrefKey_BTA2DP:Ljava/lang/String; = "com.lge.mirrorlink.bt.BTA2DP"

.field public static final TmAppListPrefKey_BTHFPServer:Ljava/lang/String; = "com.lge.mirrorlink.bt.BTHFP"

.field public static final TmAppListPrefKey_CDBServer:Ljava/lang/String; = "com.lge.mirrorlink.cdb.TmCDBServer"

.field public static final TmAppListPrefKey_DAPServer:Ljava/lang/String; = "com.lge.mirrorlink.dap.TmDAPServer"

.field public static final TmAppListPrefKey_Package:Ljava/lang/String; = "com.lge.mirrorlink"

.field public static final TmAppListPrefKey_RTPServer:Ljava/lang/String; = "com.lge.mirrorlink.rtp.TmRTPServer"

.field public static final TmAppListPrefKey_VNCServer:Ljava/lang/String; = "com.lge.mirrorlink.vnc.TmVNCServer"

.field private static _instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;


# instance fields
.field audioAppId:I

.field audioCategory:I

.field private commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

.field private mAppCertCheckHandler:Landroid/os/Handler;

.field mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

.field private mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

.field private mAppList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mConnectionListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentForegroundPackageName:Ljava/lang/String;

.field mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

.field private mDeveloperId:Ljava/lang/String;

.field private mLoadAppCompleted:Z

.field private mNetworkAvailable:Z

.field private mNetworkStatusChangeReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;

.field mNetworkStatusListener:Lcom/lge/mirrorlink/certificate/NetworkStatusListener;

.field private mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

.field private mPredefinedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingPackageName:Ljava/lang/String;

.field private mStartingRequestTime:J


# direct methods
.method static synthetic -get0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertCheckHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkAvailable:Z

    return v0
.end method

.method static synthetic -set0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDeveloperId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z
    .registers 3
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addApplicationCertificateURL(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addApplicationCertificateURL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->removeApplicationCertificate(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "devId"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->removeDeveloperIdCertificate(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .registers 5
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "srcDir"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApplicationCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .registers 3
    .param p1, "devId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getDeveloperIdCertificate(Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V
    .registers 2
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyPackageUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .line 2228
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->TARGET_CARRIER:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->audioAppId:I

    .line 114
    iput v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->audioCategory:I

    .line 116
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    .line 117
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkStatusChangeReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;

    .line 156
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    .line 159
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    .line 161
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPredefinedAppList:Ljava/util/List;

    .line 166
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    .line 168
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mCurrentForegroundPackageName:Ljava/lang/String;

    .line 169
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingPackageName:Ljava/lang/String;

    .line 170
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingRequestTime:J

    .line 171
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDeveloperId:Ljava/lang/String;

    .line 172
    iput-boolean v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mLoadAppCompleted:Z

    .line 173
    iput-boolean v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkAvailable:Z

    .line 178
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$1;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$1;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertCheckHandler:Landroid/os/Handler;

    .line 195
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$2;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mConnectionListener:Lcom/mirrorlink/android/commonapi/IConnectionListener;

    .line 223
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$3;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkStatusListener:Lcom/lge/mirrorlink/certificate/NetworkStatusListener;

    .line 245
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .line 307
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    .line 432
    if-nez p1, :cond_64

    .line 433
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "[TmAppListPreference] Unexpected null argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_64
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    .line 436
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isNetworkAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkAvailable:Z

    .line 438
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    if-nez v2, :cond_a4

    .line 439
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    .line 440
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 441
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a4
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkStatusChangeReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;

    if-nez v2, :cond_be

    .line 450
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkStatusChangeReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;

    .line 451
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "connfilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mNetworkStatusChangeReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$NetworkStatusChangeReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 455
    .end local v0    # "connfilter":Landroid/content/IntentFilter;
    :cond_be
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    .line 457
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->loadPredefinedAppInfo(Landroid/content/Context;)V

    .line 460
    new-instance v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$LoadAppListThread;

    invoke-direct {v2, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$LoadAppListThread;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V

    invoke-virtual {v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$LoadAppListThread;->start()V

    .line 430
    return-void
.end method

.method private addApplicationCertificateURL(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z
    .registers 7
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    const/4 v4, 0x1

    .line 1147
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addApplicationCertificateURL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1150
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->generageAppCertificateURL(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1152
    iget-object v2, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    iget-object v2, v2, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawAppCert:Ljava/lang/String;

    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1152
    const-string/jumbo v2, "\n"

    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1153
    const-string/jumbo v2, "-----END CERTIFICATE-----"

    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1153
    const-string/jumbo v2, "\n"

    .line 1151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "appCert":Ljava/lang/String;
    iget-object v1, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/upnp/UpnpService;->addAppCertiURL(Ljava/lang/String;[B)V

    .line 1155
    return v4

    .line 1156
    .end local v0    # "appCert":Ljava/lang/String;
    :cond_64
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isSelfCertified()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 1157
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->generageAppCertificateURL(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1159
    iget-object v2, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v2, v2, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->rawAppCert:Ljava/lang/String;

    .line 1158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1160
    const-string/jumbo v2, "-----END CERTIFICATE-----"

    .line 1158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1160
    const-string/jumbo v2, "\n"

    .line 1158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .restart local v0    # "appCert":Ljava/lang/String;
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addApplicationCertificateURL() appCert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v1, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/upnp/UpnpService;->addAppCertiURL(Ljava/lang/String;[B)V

    .line 1163
    return v4

    .line 1168
    .end local v0    # "appCert":Ljava/lang/String;
    :cond_ba
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addApplicationCertificateURL failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const/4 v1, 0x0

    return v1
.end method

.method private addApplicationCertificateURL(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1174
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 1175
    :cond_a
    return v4

    .line 1177
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v1, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 1179
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1180
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1181
    invoke-direct {p0, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addApplicationCertificateURL(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1182
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1187
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_50

    .line 1188
    invoke-static {v1, v5}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1191
    :cond_50
    const/4 v3, 0x1

    return v3
.end method

.method private addInstalledPackageInfo(Landroid/content/pm/PackageInfo;Z)I
    .registers 26
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "notifyAppListUpdate"    # Z

    .prologue
    .line 841
    const/16 v17, 0x0

    .line 842
    .local v17, "isPredefined":Z
    const/4 v14, 0x0

    .line 846
    .local v14, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 848
    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 850
    .local v5, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_20

    .line 851
    const/16 v19, 0x0

    return v19

    .line 854
    :cond_20
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2f

    .line 855
    const/16 v19, 0x0

    return v19

    .line 857
    :cond_2f
    const-string/jumbo v19, "MirrorLink_UPnP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "package name:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "act$iterator":Ljava/util/Iterator;
    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 859
    .local v3, "act":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v19, "MirrorLink_UPnP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "activity name:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " class:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 872
    .end local v3    # "act":Landroid/content/pm/ResolveInfo;
    :cond_95
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getSelfSignedCertificate(Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    move-result-object v11

    .line 875
    .local v11, "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    if-nez v11, :cond_d5

    .line 876
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addPredefinedApp(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 877
    .local v13, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_d0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_d0

    .line 878
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 880
    :cond_d0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    return v19

    .line 884
    .end local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d5
    invoke-direct/range {p0 .. p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppIdentifier(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v15

    .line 885
    .local v15, "appid":Ljava/lang/String;
    if-eqz v15, :cond_e1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_104

    .line 886
    :cond_e1
    const-string/jumbo v19, "MirrorLink_UPnP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Fail to make appid : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/16 v19, 0x0

    return v19

    .line 891
    :cond_104
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addNonCertifiedApp(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 893
    .local v6, "addedApps":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "app$iterator":Ljava/util/Iterator;
    :cond_116
    :goto_116
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_149

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 894
    .local v7, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    iput-object v11, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 895
    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    move-object/from16 v19, v0

    if-eqz v19, :cond_116

    .line 896
    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppInfo(Lcom/lge/mirrorlink/upnp/applicationserver/types/App;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getStoredAppInfo(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppTrustLevel(I)Z

    goto :goto_116

    .line 901
    .end local v7    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_149
    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_159

    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->hasDeveloperEntityName()Z

    move-result v19

    if-nez v19, :cond_271

    .line 902
    :cond_159
    const-string/jumbo v19, "MirrorLink_UPnP"

    const-string/jumbo v20, "addInstalledPackageInfo() AppCert"

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getStoredAppCertiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    move-result-object v9

    .line 907
    .local v9, "appCert":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    if-eqz v9, :cond_22e

    .line 908
    invoke-virtual {v9, v15}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->hasValidAppInfo(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21d

    .line 910
    const-string/jumbo v19, "MirrorLink_UPnP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "stored app loaded : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .restart local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1b5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1e7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 914
    .restart local v7    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    iput-object v9, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 916
    iget-object v0, v9, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppInfo(Lcom/lge/mirrorlink/upnp/applicationserver/types/App;)V

    .line 917
    const/16 v19, 0x80

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppTrustLevel(I)Z

    .line 918
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertTried:Z

    .line 919
    iget v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b5

    .line 921
    .end local v7    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_1e7
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->checkOCSPRevocation(Z)Z

    .line 924
    invoke-virtual {v9}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isCertified()Z

    move-result v19

    if-eqz v19, :cond_201

    .line 925
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addApplicationCertificateURL(Ljava/lang/String;)Z

    .line 928
    :cond_201
    if-eqz p2, :cond_218

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_218

    .line 929
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 931
    :cond_218
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    return v19

    .line 932
    .end local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_21d
    if-eqz v9, :cond_22e

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->deleteStoredAppCertificateInfo(Ljava/lang/String;)Z

    .line 936
    :cond_22e
    new-instance v10, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v10, v0, v15, v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .local v10, "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    invoke-virtual {v10}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->start()V

    .line 980
    .end local v9    # "appCert":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .end local v10    # "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    :cond_24e
    :goto_24e
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .restart local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_257
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3a5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 982
    .restart local v7    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    iget v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_257

    .line 939
    .end local v7    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_271
    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24e

    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->hasDeveloperEntityName()Z

    move-result v19

    if-eqz v19, :cond_24e

    .line 940
    const-string/jumbo v19, "MirrorLink_UPnP"

    const-string/jumbo v20, "addInstalledPackageInfo() DevCert"

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getStoredAppDevCertiInfo(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    move-result-object v12

    .line 944
    .local v12, "appDevCertStored":Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    if-eqz v12, :cond_34c

    .line 945
    const-string/jumbo v19, "MirrorLink_UPnP"

    const-string/jumbo v20, "appDevCertStored"

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {v12}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->isCertified()Z

    move-result v19

    if-eqz v19, :cond_33b

    .line 948
    const-string/jumbo v19, "MirrorLink_UPnP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "stored app dev loaded : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .restart local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2da
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_312

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 952
    .restart local v7    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    iget-object v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .line 954
    iget-object v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppInfo(Lcom/lge/mirrorlink/upnp/applicationserver/types/App;)V

    .line 955
    const/16 v19, 0x60

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppTrustLevel(I)Z

    .line 956
    iget v0, v7, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2da

    .line 959
    .end local v7    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_312
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addApplicationCertificateURL(Ljava/lang/String;)Z

    .line 961
    if-eqz p2, :cond_336

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_336

    .line 962
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 964
    :cond_336
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    return v19

    .line 966
    .end local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->deleteStoredAppCertificateInfo(Ljava/lang/String;)Z

    goto/16 :goto_24e

    .line 969
    :cond_34c
    const-string/jumbo v19, "MirrorLink_UPnP"

    const-string/jumbo v20, "download appDevCert"

    invoke-static/range {v19 .. v20}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDeveloperId:Ljava/lang/String;

    .line 972
    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24e

    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_24e

    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24e

    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->hasDeveloperEntityName()Z

    move-result v19

    if-eqz v19, :cond_24e

    .line 973
    iget-object v0, v11, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDeveloperId:Ljava/lang/String;

    .line 974
    new-instance v16, Lcom/lge/mirrorlink/DeveloperIdWatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/DeveloperIdWatcher;-><init>(Landroid/content/ContentResolver;)V

    .line 975
    .local v16, "devIdWatcher":Lcom/lge/mirrorlink/DeveloperIdWatcher;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/DeveloperIdWatcher;->refresh(Z)Z

    goto/16 :goto_24e

    .line 985
    .end local v12    # "appDevCertStored":Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .end local v16    # "devIdWatcher":Lcom/lge/mirrorlink/DeveloperIdWatcher;
    .restart local v13    # "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3a5
    if-eqz p2, :cond_3bc

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_3bc

    .line 986
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 988
    :cond_3bc
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    return v19
.end method

.method private addNonCertifiedApp(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1039
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v3, "addedList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1041
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1043
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "act$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1044
    .local v0, "act":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1045
    .local v4, "appName":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1047
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "activity name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " class:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "pkgName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    new-instance v6, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->generateAppID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "VNC"

    invoke-direct {v6, v8, v9, v4, v10}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;-><init>(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    .line 1050
    .local v6, "newApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v6, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppIdentifier(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v6, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1054
    :try_start_7f
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v10

    invoke-virtual {v8, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_b7

    monitor-exit v9

    .line 1056
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "add certified name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " class:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1053
    :catchall_b7
    move-exception v8

    monitor-exit v9

    throw v8

    .line 1062
    .end local v0    # "act":Landroid/content/pm/ResolveInfo;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "newApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_ba
    return-object v3
.end method

.method private addPredefinedApp(Ljava/lang/String;)Ljava/util/List;
    .registers 18
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    const/4 v10, 0x0

    .line 994
    .local v10, "isPredefined":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPredefinedAppList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "app$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 998
    .local v4, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 999
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1002
    .end local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_2a
    if-eqz v8, :cond_5e

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_5e

    .line 1003
    const/4 v10, 0x1

    .line 1004
    const-string/jumbo v13, "MirrorLink_UPnP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "predefined app num:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_5e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1008
    .local v12, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1010
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v6, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "act$iterator":Ljava/util/Iterator;
    :cond_73
    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_108

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1013
    .local v1, "act":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1014
    .local v7, "appName":Ljava/lang/String;
    invoke-virtual {v1, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1016
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_73

    .line 1018
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1019
    .restart local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8f

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8f

    .line 1020
    new-instance v11, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    invoke-direct {v11, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V

    .line 1021
    .local v11, "newApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v11, v7}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppName(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v11, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    monitor-enter v14

    .line 1024
    :try_start_c5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v15

    invoke-virtual {v13, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_105

    monitor-exit v14

    .line 1026
    iget v13, v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    const-string/jumbo v13, "MirrorLink_UPnP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "add predefined app name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " class:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 1023
    :catchall_105
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1034
    .end local v1    # "act":Landroid/content/pm/ResolveInfo;
    .end local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v7    # "appName":Ljava/lang/String;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "newApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_108
    return-object v6
.end method

.method private addSelfSignedAppInfo(Landroid/content/pm/PackageInfo;Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)I
    .registers 20
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "devIdCerti"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .param p3, "notifyAppListUpdate"    # Z

    .prologue
    .line 1067
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1069
    .local v12, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1070
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v6, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1b

    .line 1073
    const/4 v13, 0x0

    return v13

    .line 1076
    :cond_1b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_24

    .line 1077
    const/4 v13, 0x0

    return v13

    .line 1083
    :cond_24
    :try_start_24
    new-instance v11, Ljava/util/jar/JarFile;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v11, "jar":Ljava/util/jar/JarFile;
    const-string/jumbo v13, "assets/self-signed.ccc.crt"

    invoke-virtual {v11, v13}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v8

    .line 1085
    .local v8, "entry":Ljava/util/jar/JarEntry;
    if-eqz v8, :cond_11f

    .line 1086
    const-string/jumbo v13, "MirrorLink_UPnP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Self Signed app:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v11, v8}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->createInstanceDevCert(Ljava/io/InputStream;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    move-result-object v5

    .line 1089
    .local v5, "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    iget-object v13, v5, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    if-eqz v13, :cond_72

    iget-object v13, v5, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_9f

    .line 1091
    :cond_72
    const-string/jumbo v13, "MirrorLink_UPnP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "package :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " not have same developer ID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/4 v13, 0x0

    return v13

    .line 1090
    :cond_9f
    iget-object v13, v5, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_72

    .line 1095
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .line 1097
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "act$iterator":Ljava/util/Iterator;
    :goto_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_197

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1098
    .local v1, "act":Landroid/content/pm/ResolveInfo;
    const-string/jumbo v13, "MirrorLink_UPnP"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "activity name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " class:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v4

    .line 1101
    .local v4, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v4, :cond_137

    .line 1102
    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v13

    if-eqz v13, :cond_121

    .line 1104
    const-string/jumbo v13, "MirrorLink_UPnP"

    const-string/jumbo v14, "already cerfified, send AppListUpdate only"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget v13, v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_114} :catch_115

    goto :goto_b3

    .line 1138
    .end local v1    # "act":Landroid/content/pm/ResolveInfo;
    .end local v2    # "act$iterator":Ljava/util/Iterator;
    .end local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v5    # "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .end local v8    # "entry":Ljava/util/jar/JarEntry;
    .end local v11    # "jar":Ljava/util/jar/JarFile;
    :catch_115
    move-exception v10

    .line 1139
    .local v10, "ioe":Ljava/io/IOException;
    const-string/jumbo v13, "MirrorLink_UPnP"

    const-string/jumbo v14, "IOException in loading pkginfo"

    invoke-static {v13, v14, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1142
    .end local v10    # "ioe":Ljava/io/IOException;
    :cond_11f
    const/4 v13, 0x0

    return v13

    .line 1109
    .restart local v1    # "act":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "act$iterator":Ljava/util/Iterator;
    .restart local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .restart local v5    # "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .restart local v8    # "entry":Ljava/util/jar/JarEntry;
    .restart local v11    # "jar":Ljava/util/jar/JarFile;
    :cond_121
    :try_start_121
    iput-object v5, v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 1111
    const-string/jumbo v13, "MirrorLink_UPnP"

    const-string/jumbo v14, "not cerfified, set AppDevCert,, and send AppListUpdate"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget v13, v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b3

    .line 1116
    :cond_137
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->pintAppIDList()V

    .line 1117
    invoke-virtual {v1, v12}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1118
    .local v7, "appName":Ljava/lang/String;
    invoke-virtual {v1, v12}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1119
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .end local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->generateAppID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "VNC"

    invoke-direct {v4, v13, v14, v7, v15}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;-><init>(Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    .line 1120
    .restart local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v4, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1122
    iput-object v5, v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 1123
    const-string/jumbo v13, "MirrorLink_UPnP"

    const-string/jumbo v14, "add new app"

    invoke-static {v13, v14}, Lcom/lge/mirrorlink/common/ExtLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    monitor-enter v14
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_17a} :catch_115

    .line 1125
    :try_start_17a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v15

    invoke-virtual {v13, v15, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_185
    .catchall {:try_start_17a .. :try_end_185} :catchall_194

    :try_start_185
    monitor-exit v14

    .line 1127
    iget v13, v4, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->pintAppIDList()V

    goto/16 :goto_b3

    .line 1124
    :catchall_194
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1131
    .end local v1    # "act":Landroid/content/pm/ResolveInfo;
    .end local v4    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v7    # "appName":Ljava/lang/String;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_197
    if-eqz p3, :cond_1a9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1a9

    .line 1132
    const/4 v13, 0x0

    invoke-static {v6, v13}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1134
    :cond_1a9
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_1ac} :catch_115

    move-result v13

    return v13
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 2231
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    .line 2232
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 2235
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2236
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2237
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2238
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2240
    return-object v0
.end method

.method public static freeInstance()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    if-eqz v0, :cond_19

    .line 143
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->unreigsterReceiver()V

    .line 145
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 146
    :try_start_f
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1a

    monitor-exit v1

    .line 148
    sput-object v2, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .line 140
    :cond_19
    return-void

    .line 145
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private generageAppCertificateURL(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Ljava/lang/String;
    .registers 4
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/certificates/app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".cert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateAppID(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 819
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    invoke-virtual {v2, p1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getStoredUpnpAppId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, "appid":I
    if-lez v0, :cond_a

    .line 822
    return v0

    .line 827
    :cond_a
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getNextAvailableAppId(I)I

    move-result v1

    .local v1, "id":I
    :goto_12
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_4d

    .line 829
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4a

    .line 830
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "generateAppId : new appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    invoke-virtual {v2, p1, p2, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeUpnpAppId(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 832
    return v1

    .line 827
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 836
    :cond_4d
    return v4
.end method

.method private generateNewIconList(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Ljava/util/List;
    .registers 8
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .param p2, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;",
            "Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2109
    .local v1, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;>;"
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;-><init>()V

    .line 2110
    .local v0, "icon":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    invoke-virtual {v0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->applyClientProfile(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)V

    .line 2112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/icons/icon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2113
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "image/jpeg"

    iget-object v4, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2122
    :goto_46
    iput-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    .line 2123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2124
    return-object v1

    .line 2115
    :cond_4c
    const-string/jumbo v3, "image/png"

    iget-object v4, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    .line 2118
    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2119
    const-string/jumbo v3, "image/png"

    iput-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    goto :goto_46
.end method

.method private getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 1812
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1813
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1814
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1815
    return-object v0

    .line 1812
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1819
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_29
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getAppFromInputStream(Ljava/io/InputStream;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 2025
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 2026
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 2027
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2028
    .local v3, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2030
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    invoke-direct {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;-><init>()V

    .line 2031
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    const-string/jumbo v4, "app"

    invoke-virtual {v0, v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->fromXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1c} :catch_20

    move-result v4

    if-eqz v4, :cond_2a

    .line 2032
    return-object v0

    .line 2034
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_20
    move-exception v1

    .line 2035
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "getAppFromInputStream : XmlPullParserException"

    invoke-static {v4, v5, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2038
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2a
    return-object v6
.end method

.method private getAppIdentifier(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 13
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 792
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->getStoredAppId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "appid":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_ef

    .line 796
    :cond_14
    :try_start_14
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v7, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v8, v7

    new-instance v7, Ljava/io/File;

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v8, v9, v7}, Lcom/lge/mirrorlink/certificate/AppIdGenerator;->calculateAppId(Ljava/lang/String;JLjava/io/File;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_25} :catch_ce
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_25} :catch_ad
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_25} :catch_8c
    .catch Lcom/lge/mirrorlink/certificate/AppIdGenerator$NotSignedException; {:try_start_14 .. :try_end_25} :catch_6c
    .catch Lcom/lge/mirrorlink/certificate/AppIdGenerator$DuplicateFilenameException; {:try_start_14 .. :try_end_25} :catch_4c

    move-result-object v0

    .line 808
    :goto_26
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "new appid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :goto_4b
    return-object v0

    .line 805
    :catch_4c
    move-exception v1

    .line 806
    .local v1, "dfe":Lcom/lge/mirrorlink/certificate/AppIdGenerator$DuplicateFilenameException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no signed application:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 803
    .end local v1    # "dfe":Lcom/lge/mirrorlink/certificate/AppIdGenerator$DuplicateFilenameException;
    :catch_6c
    move-exception v4

    .line 804
    .local v4, "nse":Lcom/lge/mirrorlink/certificate/AppIdGenerator$NotSignedException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no signed application:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 801
    .end local v4    # "nse":Lcom/lge/mirrorlink/certificate/AppIdGenerator$NotSignedException;
    :catch_8c
    move-exception v2

    .line 802
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IOException on make appid for apk:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 799
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_ad
    move-exception v3

    .line 800
    .local v3, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NoSuchAlgorithmException on make appid for apk:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 797
    .end local v3    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_ce
    move-exception v5

    .line 798
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "UnsupportedEncodingException on make appid for apk:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 811
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_ef
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exist appid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b
.end method

.method private getApplicationCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .registers 14
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "srcDir"    # Ljava/lang/String;

    .prologue
    .line 1328
    invoke-virtual {p0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 1329
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v0, :cond_8

    .line 1330
    const/4 v2, 0x0

    return-object v2

    .line 1332
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertTried:Z

    .line 1333
    iget-wide v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->firstRetrieveAppCert:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 1334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->firstRetrieveAppCert:J

    .line 1336
    :cond_19
    new-instance v1, Lcom/lge/mirrorlink/certificate/AppCertRetriever;

    iget-wide v4, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->firstRetrieveAppCert:J

    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertCheckHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/lge/mirrorlink/certificate/AppCertRetriever;-><init>(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)V

    .line 1337
    .local v1, "appCertRetriever":Lcom/lge/mirrorlink/certificate/AppCertRetriever;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/certificate/AppCertRetriever;->retrieveAppCert()Ljava/lang/String;

    move-result-object v9

    .line 1338
    .local v9, "certiString":Ljava/lang/String;
    if-eqz v9, :cond_32

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_40

    .line 1339
    :cond_32
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "ACMS Failed"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_3b
    :goto_3b
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertFailed:Z

    .line 1369
    const/4 v2, 0x0

    return-object v2

    .line 1341
    :cond_40
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "ACMS Success"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    invoke-static {v9, v2}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->createInstance(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    move-result-object v8

    .line 1344
    .local v8, "appCert":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    invoke-virtual {v8, p1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->hasValidAppInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1345
    iput-object p2, v8, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    .line 1346
    iput-object p3, v8, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->sourcePath:Ljava/lang/String;

    .line 1348
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    invoke-virtual {v2, p3, p2, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeAppCertiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/lge/mirrorlink/certificate/ApplicationCertificate;)Z

    .line 1349
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeAppInfo(Ljava/lang/String;I)Z

    .line 1351
    iput-object v8, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 1352
    iget-object v2, v8, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppInfo(Lcom/lge/mirrorlink/upnp/applicationserver/types/App;)V

    .line 1353
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppTrustLevel(I)Z

    .line 1354
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertFailed:Z

    .line 1355
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->firstRetrieveAppCert:J

    .line 1357
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->checkOCSPRevocation(Z)Z

    .line 1358
    return-object v8

    .line 1360
    :cond_7d
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Certificate is not valid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertStatusListener:Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    const/4 v3, 0x1

    invoke-interface {v2, v8, v3}, Lcom/lge/mirrorlink/certificate/CertificateStatusListener;->onApplicationCertificateFailed(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V

    .line 1362
    invoke-virtual {v8, p1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->isNeedToRetry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1363
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Retry after query period : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertCheckHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppCertCheckHandler:Landroid/os/Handler;

    const/16 v4, 0x3ea

    invoke-static {v3, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/lge/mirrorlink/certificate/CertificateManager;->getQueryPeriod()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3b
.end method

.method private getApplicationIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2139
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2140
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2141
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2142
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2143
    invoke-virtual {v5, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 2145
    .local v3, "launchables":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_55

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_55

    .line 2146
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4a

    .line 2147
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "More than 1 intent activities with ACTION_MAIN and CATEGORY_LAUNCHER : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_4a
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2150
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2151
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 2154
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_55
    :try_start_55
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_5c} :catch_5e

    move-result-object v1

    .line 2155
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 2156
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_5e
    move-exception v0

    .line 2157
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No application icon for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No intent activities with ACTION_MAIN and CATEGORY_LAUNCHER : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    return-object v10
.end method

.method private getCurrentForegroundPkg()Ljava/lang/String;
    .registers 35

    .prologue
    .line 1708
    const-string/jumbo v30, "window"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/lge/view/IWindowManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/view/IWindowManagerEx;

    move-result-object v25

    .line 1709
    .local v25, "winManager":Lcom/lge/view/IWindowManagerEx;
    const/16 v24, 0x0

    .line 1711
    .local v24, "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/16 v30, 0x0

    const/16 v31, 0x1

    :try_start_11
    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/lge/view/IWindowManagerEx;->getWindowInfoList(IZ)Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_29

    move-result-object v24

    .line 1715
    .end local v24    # "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :goto_1b
    if-nez v24, :cond_3a

    .line 1716
    const-string/jumbo v30, "MirrorLink_UPnP"

    const-string/jumbo v31, "getCurrentForegroundPkg : getWindowInfoList:NULL.. do nothing"

    invoke-static/range {v30 .. v31}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const/16 v30, 0x0

    return-object v30

    .line 1712
    .restart local v24    # "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :catch_29
    move-exception v16

    .line 1713
    .local v16, "re":Landroid/os/RemoteException;
    const-string/jumbo v30, "MirrorLink_UPnP"

    const-string/jumbo v31, "getWindowInfoList:RemoteException"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 1719
    .end local v16    # "re":Landroid/os/RemoteException;
    .end local v24    # "winList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string/jumbo v31, "window"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/WindowManager;

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 1720
    .local v7, "display":Landroid/view/Display;
    new-instance v19, Landroid/graphics/Point;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1721
    .local v19, "size":Landroid/graphics/Point;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1722
    move-object/from16 v0, v19

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 1723
    .local v14, "phoneWidth":I
    move-object/from16 v0, v19

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 1725
    .local v13, "phoneHeight":I
    const/16 v21, 0x0

    .line 1726
    .local v21, "topPkgName":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v21    # "topPkgName":Ljava/lang/String;
    .local v6, "bndl$iterator":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3d9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1727
    .local v5, "bndl":Landroid/os/Bundle;
    const-string/jumbo v30, "WIN_NUM"

    const/16 v31, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 1728
    .local v27, "winnum":I
    const-string/jumbo v30, "SURFACE_LAYER"

    const v31, 0x7fffffff

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1729
    .local v12, "layer":I
    const-string/jumbo v30, "TITLE"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1730
    .local v20, "title":Ljava/lang/String;
    const-string/jumbo v30, "PACKAGE"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1731
    .local v15, "pkgName":Ljava/lang/String;
    const-string/jumbo v30, "FRAME"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 1732
    .local v9, "frameSize":[I
    const-string/jumbo v30, "SHOWN_FRAME"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v18

    .line 1733
    .local v18, "shownFrameSize":[F
    const-string/jumbo v30, "VISIBLE"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 1734
    .local v22, "visible":Z
    const-string/jumbo v30, "WIN_VISIBLE"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    .line 1735
    .local v26, "winVisible":Z
    const-string/jumbo v30, "IS_FOCUSED"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 1737
    .local v11, "isFocused":Z
    const/16 v30, -0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_6f

    if-eqz v9, :cond_6f

    if-eqz v18, :cond_6f

    .line 1738
    new-instance v8, Landroid/graphics/Rect;

    const/16 v30, 0x0

    aget v30, v9, v30

    const/16 v31, 0x1

    aget v31, v9, v31

    const/16 v32, 0x2

    aget v32, v9, v32

    const/16 v33, 0x3

    aget v33, v9, v33

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1739
    .local v8, "frameRect":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v30, 0x0

    aget v30, v18, v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 1740
    const/16 v31, 0x1

    aget v31, v18, v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    .line 1741
    const/16 v32, 0x2

    aget v32, v18, v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    .line 1742
    const/16 v33, 0x3

    aget v33, v18, v33

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    .line 1739
    move-object/from16 v0, v17

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1743
    .local v17, "shownFrameRect":Landroid/graphics/Rect;
    const-string/jumbo v30, "MirrorLink_UPnP"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "winnum:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " layer:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " title:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " pkg:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1744
    const-string/jumbo v32, " focus:"

    .line 1743
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1744
    const-string/jumbo v32, " fSize:"

    .line 1743
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1744
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v32

    .line 1743
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1744
    const-string/jumbo v32, " sSize:"

    .line 1743
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1745
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v32

    .line 1743
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1745
    const-string/jumbo v32, " visible:"

    .line 1743
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 1745
    const-string/jumbo v32, " winVisible:"

    .line 1743
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    if-gez v30, :cond_1d1

    .line 1748
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1750
    :cond_1d1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    if-gez v30, :cond_1e1

    .line 1751
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1753
    :cond_1e1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v0, v14, :cond_1ef

    .line 1754
    move-object/from16 v0, v17

    iput v14, v0, Landroid/graphics/Rect;->right:I

    .line 1756
    :cond_1ef
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v0, v13, :cond_1fd

    .line 1757
    move-object/from16 v0, v17

    iput v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 1759
    :cond_1fd
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    .line 1760
    .local v28, "x":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    .line 1761
    .local v29, "y":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v23

    .line 1762
    .local v23, "w":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 1764
    .local v10, "h":I
    if-eqz v27, :cond_2a2

    if-eqz v15, :cond_2a2

    if-eqz v20, :cond_29f

    const-string/jumbo v30, "Toast"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_29f

    const/16 v30, 0x0

    :goto_226
    move/from16 v22, v30

    :goto_228
    if-eqz v22, :cond_6f

    .line 1766
    if-eqz v20, :cond_2a5

    const-string/jumbo v30, "Keyguard"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2a5

    const-string/jumbo v30, "com.android.keyguard"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2a5

    .line 1768
    const-string/jumbo v30, "MirrorLink_UPnP"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "app:Keyguard  x:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " y:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " w:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " h:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    div-int/lit8 v30, v14, 0x2

    move/from16 v0, v23

    move/from16 v1, v30

    if-le v0, v1, :cond_6f

    div-int/lit8 v30, v13, 0x2

    move/from16 v0, v30

    if-le v10, v0, :cond_6f

    .line 1770
    move-object/from16 v21, v15

    .local v21, "topPkgName":Ljava/lang/String;
    goto/16 :goto_6f

    .line 1764
    .end local v21    # "topPkgName":Ljava/lang/String;
    :cond_29f
    const/16 v30, 0x1

    goto :goto_226

    :cond_2a2
    const/16 v22, 0x0

    goto :goto_228

    .line 1772
    :cond_2a5
    if-eqz v20, :cond_31a

    const-string/jumbo v30, "StatusBar"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_31a

    const-string/jumbo v30, "com.android.systemui"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_31a

    .line 1773
    const-string/jumbo v30, "MirrorLink_UPnP"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "app:StatusBar  x:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " y:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " w:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " h:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    div-int/lit8 v30, v14, 0x2

    move/from16 v0, v23

    move/from16 v1, v30

    if-le v0, v1, :cond_6f

    div-int/lit8 v30, v13, 0x2

    move/from16 v0, v30

    if-le v10, v0, :cond_6f

    .line 1775
    move-object/from16 v21, v15

    .restart local v21    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_6f

    .line 1777
    .end local v21    # "topPkgName":Ljava/lang/String;
    :cond_31a
    if-eqz v20, :cond_37f

    const-string/jumbo v30, "NavigationBar"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_37f

    const-string/jumbo v30, "com.android.systemui"

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_37f

    .line 1778
    const-string/jumbo v30, "MirrorLink_UPnP"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "app:NavigationBar  x:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " y:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " w:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " h:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6f

    .line 1780
    :cond_37f
    const-string/jumbo v30, "MirrorLink_UPnP"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "app:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "  x:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " y:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " w:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " h:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    move-object/from16 v21, v15

    .restart local v21    # "topPkgName":Ljava/lang/String;
    goto/16 :goto_6f

    .line 1787
    .end local v5    # "bndl":Landroid/os/Bundle;
    .end local v8    # "frameRect":Landroid/graphics/Rect;
    .end local v9    # "frameSize":[I
    .end local v10    # "h":I
    .end local v11    # "isFocused":Z
    .end local v12    # "layer":I
    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v17    # "shownFrameRect":Landroid/graphics/Rect;
    .end local v18    # "shownFrameSize":[F
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "topPkgName":Ljava/lang/String;
    .end local v22    # "visible":Z
    .end local v23    # "w":I
    .end local v26    # "winVisible":Z
    .end local v27    # "winnum":I
    .end local v28    # "x":I
    .end local v29    # "y":I
    :cond_3d9
    return-object v21
.end method

.method private getDeveloperIdCertificate(Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .registers 16
    .param p1, "devId"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1394
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 1395
    .local v8, "teleMngr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 1396
    .local v7, "serverID":Ljava/lang/String;
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1c

    .line 1398
    :cond_19
    const-string/jumbo v7, "0"

    .line 1400
    :cond_1c
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "try to get Dev ID Certificate devId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", serverId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-static {p1, v7}, Lcom/lge/mirrorlink/certificate/ACMSConnector;->obtainDevIdCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    .local v1, "appDevCertStr":Ljava/lang/String;
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_77

    .line 1403
    :cond_4d
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fail to get Dev ID Certificate devId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", serverId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->removeDeveloperIdCertificate(Ljava/lang/String;Z)Z

    .line 1454
    :goto_76
    return-object v12

    .line 1406
    :cond_77
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Dev ID Certificate :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDevIdCertStatusListener:Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    invoke-static {v1, v9}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->createInstance(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    move-result-object v2

    .line 1410
    .local v2, "devIdCerti":Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    if-eqz v2, :cond_1a9

    .line 1411
    const-string/jumbo v9, ""

    invoke-virtual {v2, p1, v7, v9}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->hasValidAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 1410
    if-eqz v9, :cond_1a9

    .line 1413
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a3
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_1a5

    .line 1414
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1416
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    iget-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v9, :cond_1a1

    iget-object v9, v2, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDevId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a1

    .line 1417
    iget-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iput-object v2, v9, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .line 1420
    :try_start_c7
    iget-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v9, v9, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    iget-object v4, v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->entities:Ljava/util/List;

    .line 1421
    .local v4, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;>;"
    if-eqz v4, :cond_10d

    .line 1422
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_d0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_10d

    .line 1423
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " name : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;

    iget-object v9, v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    add-int/lit8 v6, v6, 0x1

    goto :goto_d0

    .line 1426
    .end local v6    # "j":I
    :cond_10d
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "replace the Entity Name DEVELOPER by CCC"

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v9, v9, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    iget-object v9, v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->entities:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;

    const-string/jumbo v10, "CCC"

    iput-object v10, v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    .line 1428
    iget-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v9, v9, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    iget-object v4, v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->entities:Ljava/util/List;

    .line 1429
    if-eqz v4, :cond_178

    .line 1430
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_131
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_178

    .line 1431
    const-string/jumbo v10, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "]"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " name : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;

    iget-object v9, v9, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_16b} :catch_16e

    .line 1430
    add-int/lit8 v6, v6, 0x1

    goto :goto_131

    .line 1434
    .end local v4    # "entities":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;>;"
    .end local v6    # "j":I
    :catch_16e
    move-exception v3

    .line 1435
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "Exception"

    invoke-static {v9, v10, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1437
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_178
    iget-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->packageName:Ljava/lang/String;

    .line 1438
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    iget-object v10, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeAppDevCertiInfo(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)Z

    .line 1439
    const-string/jumbo v9, "MirrorLink_UPnP"

    const-string/jumbo v10, "Change Dev ID Certification "

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v9

    if-nez v9, :cond_1a1

    .line 1441
    iget-object v9, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v9, v9, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/App;

    invoke-virtual {v0, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setAppInfo(Lcom/lge/mirrorlink/upnp/applicationserver/types/App;)V

    .line 1413
    :cond_1a1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a3

    .line 1446
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_1a5
    invoke-virtual {v2, v13}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->checkOCSPRevocation(Z)Z

    .line 1448
    return-object v2

    .line 1450
    .end local v5    # "i":I
    :cond_1a9
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fail to check validity for Dev ID Certificate devId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", serverId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_76
.end method

.method private getIconBytes(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;)[B
    .registers 12
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .param p2, "iconinfo"    # Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 2167
    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2168
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_a

    .line 2169
    return-object v7

    .line 2171
    :cond_a
    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p2, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    iget v5, p2, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2173
    .local v1, "iconScaled":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 2174
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v3, "image/png"

    iget-object v4, p2, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2175
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2176
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2182
    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2184
    if-eqz v2, :cond_4d

    .line 2185
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 2177
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_37
    const-string/jumbo v3, "image/jpeg"

    iget-object v4, p2, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2178
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2179
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v3, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2d

    .line 2188
    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_4d
    return-object v7
.end method

.method public static getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .registers 1

    .prologue
    .line 137
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    if-nez v0, :cond_b

    .line 130
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {v0, p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .line 132
    :cond_b
    sget-object v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->_instance:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    return-object v0
.end method

.method private getSelfSignedCertificate(Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 768
    :try_start_1
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 769
    .local v3, "jar":Ljava/util/jar/JarFile;
    const-string/jumbo v4, "assets/self-signed.ccc.crt"

    invoke-virtual {v3, v4}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 770
    .local v1, "entry":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_89

    .line 771
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Self Signed app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual {v3, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->createInstanceDevCert(Ljava/io/InputStream;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    move-result-object v0

    .line 775
    .local v0, "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    iget-object v4, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    if-eqz v4, :cond_64

    iget-object v4, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_64

    iget-object v4, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    if-eqz v4, :cond_64

    iget-object v4, v0, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->hasDeveloperEntityName()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 777
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Developer Certificate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_63
    return-object v0

    .line 779
    :cond_64
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not Developer Certificate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7e} :catch_7f

    goto :goto_63

    .line 784
    .end local v0    # "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v3    # "jar":Ljava/util/jar/JarFile;
    :catch_7f
    move-exception v2

    .line 785
    .local v2, "ioe":Ljava/io/IOException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "IOException in loading pkginfo"

    invoke-static {v4, v5, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 787
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_89
    return-object v7
.end method

.method public static isMirrorLinkComponent(Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 2018
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.lge.mirrorlink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isMirrorLinkComponent(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z
    .registers 3
    .param p0, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .prologue
    .line 2013
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->hasRequiredElements()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "com.lge.mirrorlink"

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isSupportedIconMimetype(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 2129
    const-string/jumbo v0, "image/png"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2130
    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2129
    if-eqz v0, :cond_14

    .line 2131
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 2134
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private loadPredefinedAppInfo(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 491
    .local v6, "res":Landroid/content/res/Resources;
    const v8, 0x7f05001c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 492
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x800

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 494
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 496
    .local v4, "is_xml":Ljava/io/InputStream;
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPredefinedAppList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 499
    .end local v4    # "is_xml":Ljava/io/InputStream;
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "application_resource_id_str":Ljava/lang/String;
    if-eqz v1, :cond_73

    .line 500
    const-string/jumbo v8, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v1, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 501
    .local v7, "res_id":I
    if-lez v7, :cond_1d

    .line 505
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 506
    .local v4, "is_xml":Ljava/io/InputStream;
    invoke-static {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppFromInputStream(Ljava/io/InputStream;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 507
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_6c

    .line 508
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadPredefinedAppInfo : load app:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPredefinedAppList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_6c
    if-eqz v4, :cond_1d

    .line 513
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_71} :catch_a0
    .catchall {:try_start_1d .. :try_end_71} :catchall_b6

    .line 514
    const/4 v4, 0x0

    .local v4, "is_xml":Ljava/io/InputStream;
    goto :goto_1d

    .line 521
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v4    # "is_xml":Ljava/io/InputStream;
    .end local v7    # "res_id":I
    :cond_73
    if-eqz v3, :cond_78

    .line 522
    :try_start_75
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 525
    :cond_78
    if-eqz v4, :cond_7d

    .line 526
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7d} :catch_c8

    .line 530
    :cond_7d
    :goto_7d
    const/4 v3, 0x0

    .line 531
    .end local v1    # "application_resource_id_str":Ljava/lang/String;
    .local v3, "is":Ljava/io/InputStream;
    :goto_7e
    const/4 v4, 0x0

    .line 533
    .restart local v4    # "is_xml":Ljava/io/InputStream;
    const-string/jumbo v8, "MirrorLink_UPnP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadPredefinedAppInfo : loaded app num:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPredefinedAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    return-void

    .line 517
    .end local v4    # "is_xml":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :catch_a0
    move-exception v2

    .line 518
    .local v2, "ex":Ljava/io/IOException;
    :try_start_a1
    const-string/jumbo v8, "MirrorLink_UPnP"

    const-string/jumbo v9, "loadPredefinedAppInfo : Fail to load application data"

    invoke-static {v8, v9, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_b6

    .line 521
    if-eqz v3, :cond_af

    .line 522
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 525
    :cond_af
    if-eqz v4, :cond_b4

    .line 526
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b4} :catch_c6

    .line 530
    :cond_b4
    :goto_b4
    const/4 v3, 0x0

    .local v3, "is":Ljava/io/InputStream;
    goto :goto_7e

    .line 519
    .end local v2    # "ex":Ljava/io/IOException;
    .local v3, "is":Ljava/io/InputStream;
    :catchall_b6
    move-exception v8

    .line 521
    if-eqz v3, :cond_bc

    .line 522
    :try_start_b9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 525
    :cond_bc
    if-eqz v4, :cond_c1

    .line 526
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c1} :catch_c4

    .line 530
    :cond_c1
    :goto_c1
    const/4 v3, 0x0

    .line 531
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 519
    .restart local v4    # "is_xml":Ljava/io/InputStream;
    throw v8

    .line 528
    .end local v4    # "is_xml":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :catch_c4
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_c1

    :catch_c6
    move-exception v2

    goto :goto_b4

    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "application_resource_id_str":Ljava/lang/String;
    :catch_c8
    move-exception v2

    .restart local v2    # "ex":Ljava/io/IOException;
    goto :goto_7d
.end method

.method private loadResourceOfAppForProfile(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Lcom/lge/mirrorlink/upnp/UpnpService;)Z
    .registers 14
    .param p1, "app"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .param p2, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .param p3, "upnpservice"    # Lcom/lge/mirrorlink/upnp/UpnpService;

    .prologue
    const/4 v3, 0x0

    .line 2066
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2067
    .local v9, "pm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_b

    if-nez v9, :cond_15

    .line 2068
    :cond_b
    const-string/jumbo v0, "MirrorLink_UPnP"

    const-string/jumbo v1, "[loadResourceOfAppForProfile] unexpected null arguments"

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    return v3

    .line 2067
    :cond_15
    if-eqz p3, :cond_b

    .line 2072
    invoke-static {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isMirrorLinkComponent(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2073
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[loadResourceOfAppForProfile] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is MirrorLinkComponent. not load Resource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    return v3

    .line 2077
    :cond_43
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    if-eqz v0, :cond_4f

    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_55

    .line 2078
    :cond_4f
    invoke-direct {p0, p1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->generateNewIconList(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    .line 2081
    :cond_55
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    if-eqz v0, :cond_aa

    .line 2082
    iget-object v0, p1, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->iconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2083
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;>;"
    :cond_5f
    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 2084
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;

    .line 2085
    .local v7, "info":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    if-eqz v7, :cond_5f

    .line 2089
    invoke-direct {p0, p1, v7}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getIconBytes(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;)[B

    move-result-object v6

    .line 2090
    .local v6, "bytes":[B
    if-eqz v6, :cond_a4

    .line 2091
    iput-object v6, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->bytes:[B

    .line 2092
    if-eqz v6, :cond_5f

    .line 2093
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[loadResourceOfAppForProfile] add icon for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    iget-object v1, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->url:Ljava/lang/String;

    iget-object v2, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->mimetype:Ljava/lang/String;

    iget v3, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->width:I

    iget v4, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->height:I

    iget v5, v7, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;->depth:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/mirrorlink/upnp/UpnpService;->addIcon(Ljava/lang/String;Ljava/lang/String;III[B)V

    goto :goto_5f

    .line 2097
    :cond_a4
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_5f

    .line 2100
    .end local v6    # "bytes":[B
    .end local v7    # "info":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;
    :cond_a8
    const/4 v0, 0x1

    return v0

    .line 2103
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lge/mirrorlink/upnp/applicationserver/types/AppIcon;>;"
    :cond_aa
    return v3
.end method

.method private notifyAppListUpdated(Ljava/lang/String;)V
    .registers 7
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 1474
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[notifyAppListUpdated] notifyAppListUpdated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    monitor-enter v3

    .line 1476
    :try_start_2e
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    .line 1477
    .local v0, "listener":Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;
    invoke-interface {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;->onAppListChanged(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_44

    goto :goto_34

    .line 1475
    .end local v0    # "listener":Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_44
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_47
    monitor-exit v3

    .line 1472
    return-void
.end method

.method private notifyLoadAppCompleted()V
    .registers 6

    .prologue
    .line 1484
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    monitor-enter v3

    .line 1485
    :try_start_3
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    .line 1486
    .local v0, "listener":Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v4, "notifyLoadAppCompleted"

    invoke-static {v2, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-interface {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;->onAppListLoadCompleted()V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_22

    goto :goto_9

    .line 1484
    .end local v0    # "listener":Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_25
    monitor-exit v3

    .line 1482
    return-void
.end method

.method private notifyPackageUpdated(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    .local v1, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1461
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1462
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1463
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1467
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 1468
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1457
    :cond_3a
    return-void
.end method

.method private putInternalApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 552
    const/4 v2, 0x0

    .line 555
    .local v2, "component":Landroid/content/ComponentName;
    :try_start_2
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_7} :catch_b

    .end local v2    # "component":Landroid/content/ComponentName;
    .local v3, "component":Landroid/content/ComponentName;
    move-object v2, v3

    .line 560
    .end local v3    # "component":Landroid/content/ComponentName;
    :goto_8
    if-nez v2, :cond_30

    .line 561
    return v9

    .line 556
    .restart local v2    # "component":Landroid/content/ComponentName;
    :catch_b
    move-exception v4

    .line 557
    .local v4, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid null arguments for componentName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_2c

    const-string/jumbo v6, "packageName"

    :goto_20
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_2c
    const-string/jumbo v6, "className"

    goto :goto_20

    .line 564
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    :cond_30
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPredefinedAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 565
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 566
    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->isMirrorLinkComponent(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 567
    new-instance v5, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    invoke-direct {v5, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)V

    .line 568
    .local v5, "newApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    monitor-enter v7

    .line 569
    :try_start_64
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    iget v8, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v6, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_93

    monitor-exit v7

    .line 571
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "add internal app:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v6, 0x1

    return v6

    .line 568
    :catchall_93
    move-exception v6

    monitor-exit v7

    throw v6

    .line 574
    .end local v5    # "newApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_96
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to load internal app:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 579
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_bd
    return v9
.end method

.method private putInternalApps()V
    .registers 3

    .prologue
    .line 540
    const-string/jumbo v0, "com.lge.mirrorlink"

    const-string/jumbo v1, "com.lge.mirrorlink.vnc.TmVNCServer"

    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->putInternalApp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 541
    const-string/jumbo v0, "com.lge.mirrorlink"

    const-string/jumbo v1, "com.lge.mirrorlink.rtp.TmRTPServer"

    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->putInternalApp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 542
    const-string/jumbo v0, "com.lge.mirrorlink"

    const-string/jumbo v1, "com.lge.mirrorlink.bt.BTHFP"

    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->putInternalApp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 543
    const-string/jumbo v0, "com.lge.mirrorlink"

    const-string/jumbo v1, "com.lge.mirrorlink.bt.BTA2DP"

    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->putInternalApp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 545
    const-string/jumbo v0, "com.lge.mirrorlink"

    const-string/jumbo v1, "com.lge.mirrorlink.dap.TmDAPServer"

    invoke-direct {p0, v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->putInternalApp(Ljava/lang/String;Ljava/lang/String;)Z

    .line 538
    return-void
.end method

.method private removeApplicationCertificate(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1196
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove application certificate :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_25

    .line 1198
    :cond_24
    return v7

    .line 1200
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v1, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    .line 1202
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1203
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1204
    iput-object v6, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 1205
    iput-object v6, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appIdentifier:Ljava/lang/String;

    .line 1206
    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->removeURL(Ljava/lang/String;)V

    .line 1207
    iput-object v6, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    .line 1208
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1212
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_5c
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    invoke-virtual {v3, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->deleteStoredAppCertificateInfo(Ljava/lang/String;)Z

    .line 1214
    if-eqz p2, :cond_70

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_70

    .line 1215
    invoke-static {v1, v6}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1217
    :cond_70
    const/4 v3, 0x1

    return v3
.end method

.method private removeDeveloperIdCertificate(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "devId"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1222
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove application developer certificate :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_25

    .line 1224
    :cond_24
    return v6

    .line 1226
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v1, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 1228
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1229
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDevId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1230
    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->removeDevIdCertificate()V

    .line 1231
    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->removeURL(Ljava/lang/String;)V

    .line 1232
    iput-object v7, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    .line 1233
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1237
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_5d
    if-eqz p2, :cond_6c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6c

    .line 1238
    invoke-static {v1, v7}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1240
    :cond_6c
    const/4 v3, 0x1

    return v3
.end method

.method private setFailedCertificate(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1245
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set unchecked application certificate :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_25

    .line 1247
    :cond_24
    return v6

    .line 1249
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v1, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 1251
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1252
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1253
    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->removeURL(Ljava/lang/String;)V

    .line 1254
    iput-object v7, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    .line 1255
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1259
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_58
    if-eqz p2, :cond_67

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_67

    .line 1260
    invoke-static {v1, v7}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1262
    :cond_67
    const/4 v3, 0x1

    return v3
.end method

.method private setFailedSelfCertificate(Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "devId"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1267
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set failed devloper application certificate :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_25

    .line 1269
    :cond_24
    return v6

    .line 1271
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    .local v1, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5e

    .line 1273
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1274
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDevId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1275
    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/UpnpService;->removeURL(Ljava/lang/String;)V

    .line 1276
    iput-object v7, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificateURL:Ljava/lang/String;

    .line 1277
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 1281
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_5e
    if-eqz p2, :cond_6d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6d

    .line 1282
    invoke-static {v1, v7}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1284
    :cond_6d
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public addNewApp(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1494
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1497
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    :try_start_8
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1499
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addInstalledPackageInfo(Landroid/content/pm/PackageInfo;Z)I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_10} :catch_11

    .line 1501
    return v5

    .line 1504
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_11
    move-exception v3

    .line 1505
    .local v3, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "RuntimeException in adding new app:"

    invoke-static {v4, v5, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1507
    .end local v3    # "re":Ljava/lang/RuntimeException;
    :goto_1b
    const/4 v4, 0x0

    return v4

    .line 1502
    :catch_1d
    move-exception v0

    .line 1503
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "MirrorLink_UPnP"

    const-string/jumbo v5, "NameNotFoundException in adding new app:"

    invoke-static {v4, v5, v0}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public checkAppAppCertRevocation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 721
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "TmAppListManager.checkAppAppCertRevocation"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    if-eqz v2, :cond_a1

    .line 723
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TmAppListManager mAppList.size() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_aa

    .line 725
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 726
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isInternalApp()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 724
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 729
    :cond_4a
    if-eqz v0, :cond_71

    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v2, :cond_71

    .line 730
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAppAppCertRevocation() app != null && app.appCertificate != null appId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    invoke-virtual {v2, v5}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->checkOCSPRevocation(Z)Z

    .line 733
    :cond_71
    if-eqz v0, :cond_47

    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v2, :cond_47

    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v2, v2, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    if-eqz v2, :cond_47

    .line 734
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "app != null && app.appDevCertificate != null && app.appDevCertificate.devIdCert != null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v2, v2, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    invoke-virtual {v2, v5}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->checkOCSPRevocation(Z)Z

    goto :goto_47

    .line 739
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v1    # "i":I
    :cond_a1
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "mAppList == null"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_aa
    return-void
.end method

.method public checkAppCertRevocation(Ljava/lang/String;)V
    .registers 6
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 676
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TmAppListManager.checkAppCertRevocation appname : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    if-nez p1, :cond_26

    .line 678
    const-string/jumbo v1, "MirrorLink_UPnP"

    const-string/jumbo v2, "appname is null"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void

    .line 682
    :cond_26
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 684
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v0, :cond_47

    .line 685
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TmApp is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void

    .line 688
    :cond_47
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 689
    return-void

    .line 691
    :cond_4e
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v1, :cond_58

    .line 692
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->checkOCSPRevocation(Z)Z

    .line 674
    :cond_58
    return-void
.end method

.method public checkAppDevCertRevocation(Ljava/lang/String;)V
    .registers 6
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 698
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TmAppListManager.checkAppDevCertRevocation appname : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    if-nez p1, :cond_26

    .line 700
    const-string/jumbo v1, "MirrorLink_UPnP"

    const-string/jumbo v2, "appname is null"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void

    .line 704
    :cond_26
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 706
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v0, :cond_47

    .line 707
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TmApp is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void

    .line 711
    :cond_47
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 712
    return-void

    .line 715
    :cond_4e
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v1, :cond_60

    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v1, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    if-eqz v1, :cond_60

    .line 716
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v1, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->checkOCSPRevocation(Z)Z

    .line 696
    :cond_60
    return-void
.end method

.method public checkStartingAppFinished()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1652
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 1653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingRequestTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    .line 1654
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getCurrentForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1658
    :cond_1e
    iput-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingPackageName:Ljava/lang/String;

    .line 1659
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingRequestTime:J

    .line 1661
    const/4 v0, 0x1

    return v0

    .line 1655
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1794
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1795
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;

    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1796
    .local v3, "mlAwareAppChecker":Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;
    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->isMlAwareApp()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1797
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.mirrorlink.android.app.LAUNCH"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1798
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/MlAwareAppChecker;->getActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1800
    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    .end local v1    # "component":Landroid/content/ComponentName;
    :goto_2e
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1807
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_48

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_35
    return-object v0

    .line 1802
    .local v2, "intent":Landroid/content/Intent;
    :cond_36
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1803
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1804
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2e

    .line 1807
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_48
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_35
.end method

.method public getApp(I)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .registers 5
    .param p1, "appid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1843
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1844
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_c

    .line 1845
    return-object v0

    .line 1848
    :cond_c
    return-object v2
.end method

.method public getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1824
    if-nez p1, :cond_4

    .line 1825
    return-object v4

    .line 1827
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 1828
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    if-nez v2, :cond_1b

    .line 1829
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "[ERROR] mAppList is null"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    return-object v4

    .line 1832
    :cond_1b
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1833
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1834
    return-object v0

    .line 1827
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1838
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_37
    return-object v4
.end method

.method public getAppByDevId(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .registers 5
    .param p1, "devId"    # Ljava/lang/String;

    .prologue
    .line 1853
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1854
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1855
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getDevId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1856
    return-object v0

    .line 1853
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1860
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAppCertification(I)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    .registers 5
    .param p1, "appID"    # I

    .prologue
    const/4 v2, 0x0

    .line 1978
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1979
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1980
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v1, :cond_1a

    .line 1981
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    iget-object v1, v1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    return-object v1

    .line 1983
    :cond_1a
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v1, :cond_23

    .line 1984
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v1, v1, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->appCertInfo:Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    return-object v1

    .line 1988
    :cond_23
    return-object v2
.end method

.method public getAppCertificationList(Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "appCertFilterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1993
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1995
    .local v1, "certAppIDListFiltered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 1996
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1997
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 1998
    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isRemovedByCertFilter(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1999
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAppCertificationList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is filtered out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2001
    :cond_4b
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 2006
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_55
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAppCertificationList result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v6}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-static {v1, v6}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAppIDList()Ljava/util/List;
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
    .line 1865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1867
    .local v0, "appidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1868
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1867
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1871
    :cond_1f
    return-object v0
.end method

.method public getAppList(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .param p1, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1884
    .local p2, "appListingFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1886
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 1887
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1889
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz p2, :cond_2a

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 1890
    invoke-virtual {v0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isRemovedByFilter(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1891
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1886
    :cond_27
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1894
    :cond_2a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1898
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_2e
    return-object v1
.end method

.method public getAppListXml(Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .param p1, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1911
    .local p2, "appListingFilter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1912
    .local v2, "strXML":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "<appList>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3a

    .line 1915
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1917
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz p2, :cond_26

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_33

    .line 1919
    :cond_26
    :goto_26
    const-string/jumbo v3, "app"

    invoke-virtual {v0, v3, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->makeXMLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1918
    :cond_33
    invoke-virtual {v0, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isRemovedByFilter(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_26

    .line 1923
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_3a
    const-string/jumbo v3, "</appList>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAudioAppId()I
    .registers 2

    .prologue
    .line 1634
    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->audioAppId:I

    return v0
.end method

.method public getAudioCategory()I
    .registers 2

    .prologue
    .line 1638
    iget v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->audioCategory:I

    return v0
.end method

.method public getBaseCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 1929
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1931
    .local v4, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "nonRestricted"

    invoke-interface {v4, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 1934
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1936
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isRemovedByCertFilter(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 1937
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBaseCertifiedAppList added : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1942
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_4b
    const-string/jumbo v3, ""

    .line 1943
    .local v3, "csvList":Ljava/lang/String;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1944
    .restart local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_78

    .line 1945
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1947
    :cond_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_52

    .line 1949
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_8e
    return-object v3
.end method

.method public getCurrentForegroundPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1674
    const/4 v0, 0x0

    .line 1689
    .local v0, "topPkg":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getCurrentForegroundPkg()Ljava/lang/String;

    move-result-object v0

    .line 1690
    .local v0, "topPkg":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1691
    iput-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mCurrentForegroundPackageName:Ljava/lang/String;

    .line 1703
    :cond_9
    return-object v0
.end method

.method public getDeveloperID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mDeveloperId:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveCertifiedAppList(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 1953
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1954
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1955
    .local v4, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "restricted"

    invoke-interface {v4, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2d

    .line 1958
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1960
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isRemovedByCertFilter(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 1961
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1957
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1965
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_2d
    const-string/jumbo v3, ""

    .line 1966
    .local v3, "csvList":Ljava/lang/String;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1967
    .restart local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5a

    .line 1968
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1970
    :cond_5a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    .line 1972
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_70
    return-object v3
.end method

.method public getStartingPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isLoadAppCompleted()Z
    .registers 2

    .prologue
    .line 2198
    iget-boolean v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mLoadAppCompleted:Z

    return v0
.end method

.method public isMirrorLinkSessionEstablished()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2216
    invoke-static {}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getInstance()Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;

    move-result-object v0

    .line 2217
    .local v0, "clientProfileMgr":Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;
    if-nez v0, :cond_8

    .line 2218
    return v2

    .line 2221
    :cond_8
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/clientprofile/TmClientProfileManager;->getprofileListInUse()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 2222
    const/4 v1, 0x1

    return v1

    .line 2225
    :cond_14
    return v2
.end method

.method public isNetworkAvailable()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2203
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_6

    .line 2204
    return v4

    .line 2206
    :cond_6
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2207
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2208
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2209
    const/4 v2, 0x1

    return v2

    .line 2211
    :cond_1f
    return v4
.end method

.method public loadAllAppList()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "appNum":I
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    monitor-enter v6

    .line 586
    :try_start_5
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_4f

    monitor-exit v6

    .line 588
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->putInternalApps()V

    .line 590
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 592
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 593
    .local v3, "pkginfo_list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_52

    .line 594
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "installed pkg num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkgInfo$iterator":Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 600
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addInstalledPackageInfo(Landroid/content/pm/PackageInfo;Z)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_3c

    .line 585
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkgInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "pkginfo_list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_4f
    move-exception v5

    monitor-exit v6

    throw v5

    .line 596
    .restart local v3    # "pkginfo_list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_52
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "installed pkg num:0"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void

    .line 603
    .restart local v2    # "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_5c
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loaded app num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iput-boolean v8, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mLoadAppCompleted:Z

    .line 606
    invoke-direct {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyLoadAppCompleted()V

    .line 582
    return-void
.end method

.method public loadSelfSignedAppList(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)V
    .registers 11
    .param p1, "devIdCerti"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .prologue
    const/4 v8, 0x1

    .line 745
    const/4 v0, 0x0

    .line 747
    .local v0, "appNum":I
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 749
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 750
    .local v3, "pkginfo_list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_42

    .line 751
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "installed pkg num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkgInfo$iterator":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 758
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1, p1, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->addSelfSignedAppInfo(Landroid/content/pm/PackageInfo;Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_30

    .line 753
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_42
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v6, "installed pkg num:0"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void

    .line 761
    .restart local v2    # "pkgInfo$iterator":Ljava/util/Iterator;
    :cond_4c
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loaded self-signed app num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public onClientProfileChanged(Lcom/lge/mirrorlink/upnp/UpnpService;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;)V
    .registers 7
    .param p1, "upnpservice"    # Lcom/lge/mirrorlink/upnp/UpnpService;
    .param p2, "profile"    # Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;

    .prologue
    .line 2043
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2044
    :cond_4
    return-void

    .line 2046
    :cond_5
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    .line 2047
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    if-eqz v2, :cond_1e

    .line 2048
    const-string/jumbo v2, "MirrorLink_UPnP"

    const-string/jumbo v3, "[CALLBACK] onMirrorLinkSessionChanged"

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->commonAPIMgr:Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->onMirrorLinkSessionChanged(Z)V

    .line 2052
    :cond_1e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 2053
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 2054
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_37

    .line 2055
    invoke-direct {p0, v0, p2, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->loadResourceOfAppForProfile(Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;Lcom/lge/mirrorlink/upnp/clientprofile/types/ClientProfile;Lcom/lge/mirrorlink/upnp/UpnpService;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2052
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 2041
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_3a
    return-void
.end method

.method public pintAppIDList()V
    .registers 6

    .prologue
    .line 1876
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5d

    .line 1877
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1878
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    const-string/jumbo v2, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AppId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") : AMCS Cert:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Self Cert:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isSelfCertified()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1874
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_5d
    return-void
.end method

.method public registAppListChangeListener(Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    monitor-enter v1

    .line 473
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_15

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit v1

    .line 470
    return-void

    .line 474
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    .line 472
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeApp(Ljava/lang/String;)Z
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1512
    const/4 v1, 0x0

    .line 1513
    .local v1, "appCert":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    const/4 v2, 0x0

    .line 1514
    .local v2, "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    .local v3, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeApp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const/4 v4, 0x0

    .end local v1    # "appCert":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .end local v2    # "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    .local v4, "i":I
    :goto_24
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7b

    .line 1519
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1521
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1522
    iget v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    iget-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    if-eqz v5, :cond_52

    .line 1525
    iget-object v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 1526
    .local v1, "appCert":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    iput-object v8, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appCertificate:Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 1527
    invoke-virtual {v1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->quit()V

    .line 1530
    .end local v1    # "appCert":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    :cond_52
    iget-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v5, :cond_63

    .line 1531
    iget-object v2, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 1532
    .local v2, "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    iput-object v8, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    .line 1533
    iget-object v5, v2, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    if-eqz v5, :cond_63

    .line 1534
    iget-object v5, v2, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devIdCert:Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    invoke-virtual {v5}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->quit()V

    .line 1538
    .end local v2    # "appDevCert":Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;
    :cond_63
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1539
    :try_start_66
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_78

    monitor-exit v6

    .line 1542
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->deleteStoredAppInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1518
    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1538
    :catchall_78
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1546
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_7b
    if-eqz v1, :cond_80

    .line 1547
    invoke-virtual {v1}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->quit()V

    .line 1550
    :cond_80
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppInfoStore:Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    invoke-virtual {v5, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->deleteStoredPackageInfo(Ljava/lang/String;)Z

    .line 1552
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_94

    .line 1553
    invoke-static {v3, v8}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyAppListUpdated(Ljava/lang/String;)V

    .line 1554
    const/4 v5, 0x1

    return v5

    .line 1556
    :cond_94
    return v9
.end method

.method public resetContextInformation(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1589
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1590
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1591
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setContextInformation(Ljava/util/List;)V

    .line 1588
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1586
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_22
    return-void
.end method

.method public retrieveAppCertFailedApp(Ljava/lang/String;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 634
    const-string/jumbo v6, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TmAppListManager.retrieveAppCertFailedApp appname : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    if-nez p1, :cond_1d

    .line 636
    return-void

    .line 639
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 640
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_27

    iget-boolean v6, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertFailed:Z

    if-nez v6, :cond_28

    .line 641
    :cond_27
    return-void

    .line 644
    :cond_28
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isInternalApp()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 645
    return-void

    .line 648
    :cond_2f
    iget-object v6, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 651
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    :try_start_36
    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 652
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;

    invoke-direct {p0, v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppIdentifier(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p0, v6, v7, v8}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .local v1, "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->start()V
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_4c} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_4c} :catch_4d

    .line 632
    .end local v1    # "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_4c
    return-void

    .line 656
    :catch_4d
    move-exception v5

    .line 657
    .local v5, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    const-string/jumbo v7, "RuntimeException in retrieveAppCertFailedApp:"

    invoke-static {v6, v7, v5}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    .line 654
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :catch_58
    move-exception v2

    .line 655
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "MirrorLink_UPnP"

    const-string/jumbo v7, "NameNotFoundException in retrieveAppCertFailedApp:"

    invoke-static {v6, v7, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method public retrieveAppCertNotTriedApps()V
    .registers 11

    .prologue
    .line 611
    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 613
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_56

    .line 614
    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 615
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isInternalApp()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 613
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 618
    :cond_20
    iget-boolean v7, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertTried:Z

    if-nez v7, :cond_1d

    .line 620
    :try_start_24
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 621
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;

    invoke-direct {p0, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppIdentifier(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, p0, v7, v8, v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .local v1, "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    invoke-virtual {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->start()V
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_3f} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_3f} :catch_4b

    goto :goto_1d

    .line 623
    .end local v1    # "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_40
    move-exception v3

    .line 624
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "NameNotFoundException in retrieveAppCertNotTriedApps:"

    invoke-static {v7, v8, v3}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 625
    .end local v3    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4b
    move-exception v6

    .line 626
    .local v6, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "MirrorLink_UPnP"

    const-string/jumbo v8, "RuntimeException in retrieveAppCertNotTriedApps:"

    invoke-static {v7, v8, v6}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 609
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    .end local v6    # "re":Ljava/lang/RuntimeException;
    :cond_56
    return-void
.end method

.method public setContextInformationAudioCategory(Ljava/lang/String;ZIZ)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "audioContent"    # Z
    .param p3, "audioCategories"    # I
    .param p4, "handleBlocking"    # Z

    .prologue
    .line 1624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 1625
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1626
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1627
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v2

    iput v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->audioAppId:I

    .line 1628
    iput p3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->audioCategory:I

    .line 1624
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1622
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_26
    return-void
.end method

.method public setDeveloperID(Ljava/lang/String;)V
    .registers 6
    .param p1, "devId"    # Ljava/lang/String;

    .prologue
    .line 668
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TmAppListManager.setDeveloperID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;

    invoke-direct {v0, p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V

    .line 671
    .local v0, "devIdCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->start()V

    .line 666
    return-void
.end method

.method public setFramebufferContextInformation(Ljava/lang/String;ZLjava/util/List;)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "handleBlocking"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/lge/mirrorlink/vnc/lib/ContextInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1598
    .local p3, "ctxInfo":Ljava/util/List;, "Ljava/util/List<Lcom/lge/mirrorlink/vnc/lib/ContextInformation;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_21

    .line 1599
    iget-object v7, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppList:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 1600
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1601
    invoke-virtual {v0, p3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->setContextInformation(Ljava/util/List;)V

    .line 1598
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1604
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_21
    const/4 v4, 0x0

    .line 1605
    .local v4, "vncRunning":Z
    invoke-static {}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getInstance()Lcom/lge/mirrorlink/vnc/lib/VNCHost;

    move-result-object v3

    .line 1606
    .local v3, "vncHost":Lcom/lge/mirrorlink/vnc/lib/VNCHost;
    if-eqz v3, :cond_39

    .line 1607
    invoke-virtual {v3}, Lcom/lge/mirrorlink/vnc/lib/VNCHost;->getClient()Lcom/lge/mirrorlink/vnc/lib/VNCSession;

    move-result-object v6

    .line 1608
    .local v6, "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    if-eqz v6, :cond_39

    .line 1609
    invoke-virtual {v6}, Lcom/lge/mirrorlink/vnc/lib/VNCSession;->getServer()Lcom/lge/mirrorlink/vnc/lib/VNCServer;

    move-result-object v5

    .line 1610
    .local v5, "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    if-eqz v5, :cond_39

    .line 1611
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/lge/mirrorlink/vnc/lib/VNCServer;->setContextInfoUpdated(Z)V

    .line 1612
    const/4 v4, 0x1

    .line 1616
    .end local v5    # "vncServer":Lcom/lge/mirrorlink/vnc/lib/VNCServer;
    .end local v6    # "vncSession":Lcom/lge/mirrorlink/vnc/lib/VNCSession;
    :cond_39
    if-nez v4, :cond_42

    .line 1617
    invoke-virtual {p0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getCurrentForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1618
    .local v2, "pkgForeground":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->updateCurrentForegroundPackageName(Ljava/lang/String;)V

    .line 1596
    .end local v2    # "pkgForeground":Ljava/lang/String;
    :cond_42
    return-void
.end method

.method public setStartingPackageName(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingPackageName:Ljava/lang/String;

    .line 1644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mStartingRequestTime:J

    .line 1642
    return-void
.end method

.method public terminatePackage(Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1561
    if-nez p1, :cond_d

    .line 1562
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v7, "terminatePackage() packageName:null"

    invoke-static {v5, v7}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    return v6

    .line 1565
    :cond_d
    iget-object v5, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1566
    .local v0, "actManager":Landroid/app/ActivityManager;
    const-string/jumbo v5, "MirrorLink_UPnP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "terminate packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1568
    .local v4, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_3e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_48

    .line 1569
    :cond_3e
    const-string/jumbo v5, "MirrorLink_UPnP"

    const-string/jumbo v7, "processInfos:null"

    invoke-static {v5, v7}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    return v6

    .line 1572
    :cond_48
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "processInfo$iterator":Ljava/util/Iterator;
    :cond_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1573
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v5, v7, :cond_4c

    .line 1574
    iget-object v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_62
    if-ge v5, v8, :cond_4c

    aget-object v1, v7, v5

    .line 1575
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pkgName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 1577
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1578
    const/4 v5, 0x1

    return v5

    .line 1574
    :cond_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 1583
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8e
    return v6
.end method

.method public unregistAppListChangeListener(Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/lge/mirrorlink/upnp/applicationserver/AppListChangeListener;

    .prologue
    .line 481
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    monitor-enter v1

    .line 482
    if-eqz p1, :cond_a

    .line 483
    :try_start_5
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mAppListChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit v1

    .line 479
    return-void

    .line 481
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unreigsterReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    if-eqz v0, :cond_e

    .line 465
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    iput-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mPkgReceiver:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$PackageReceiver;

    .line 463
    :cond_e
    return-void
.end method

.method public updateCurrentForegroundPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1666
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mCurrentForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1664
    :cond_a
    :goto_a
    return-void

    .line 1667
    :cond_b
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->mCurrentForegroundPackageName:Ljava/lang/String;

    .line 1668
    invoke-direct {p0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->notifyPackageUpdated(Ljava/lang/String;)V

    goto :goto_a
.end method
