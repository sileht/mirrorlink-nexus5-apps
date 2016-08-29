.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
.super Ljava/lang/Thread;
.source "TmAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCertDownloadThread"
.end annotation


# instance fields
.field appIdentifier:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field sourceDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "srcDir"    # Ljava/lang/String;

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1304
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->appIdentifier:Ljava/lang/String;

    .line 1305
    iput-object p3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->packageName:Ljava/lang/String;

    .line 1306
    iput-object p4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->sourceDir:Ljava/lang/String;

    .line 1302
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 1312
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v0, :cond_21

    .line 1313
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->retrieveAppCertTried:Z

    .line 1319
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1320
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->appIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->sourceDir:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap4(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .line 1310
    :cond_20
    return-void

    .line 1315
    :cond_21
    const-string/jumbo v1, "MirrorLink_UPnP"

    const-string/jumbo v2, "AppCertDownloadThread - app is null"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    return-void
.end method
