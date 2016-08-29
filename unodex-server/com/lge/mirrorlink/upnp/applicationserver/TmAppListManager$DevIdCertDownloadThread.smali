.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;
.super Ljava/lang/Thread;
.source "TmAppListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DevIdCertDownloadThread"
.end annotation


# instance fields
.field developerId:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;


# direct methods
.method public constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    .param p2, "devId"    # Ljava/lang/String;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1377
    iput-object p2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->developerId:Ljava/lang/String;

    .line 1375
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->developerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap5(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    move-result-object v0

    .line 1385
    .local v0, "devIdCert":Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    if-eqz v0, :cond_16

    .line 1386
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->developerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-set0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-virtual {v1, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->loadSelfSignedAppList(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)V

    .line 1381
    :cond_16
    return-void
.end method
