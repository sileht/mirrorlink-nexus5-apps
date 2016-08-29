.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;
.super Ljava/lang/Object;
.source "TmAppListManager.java"

# interfaces
.implements Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCertificateBaseOver(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V
    .registers 6
    .param p1, "devIdCert"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 354
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCertificateBaseOver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z

    .line 352
    return-void
.end method

.method public onCertificateDriveOver(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V
    .registers 6
    .param p1, "devIdCert"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 348
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCertificateDriveOver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z

    .line 346
    return-void
.end method

.method public onCertificateFailed(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V
    .registers 6
    .param p1, "devIdCert"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 341
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCertificateFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z

    .line 339
    return-void
.end method

.method public onCertificateRevoked(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V
    .registers 7
    .param p1, "devIdCert"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 330
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCertificateRevoked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap3(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z

    .line 333
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppByDevId(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 334
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V

    .line 335
    .local v0, "devIdCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;->start()V

    .line 328
    .end local v0    # "devIdCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$DevIdCertDownloadThread;
    :cond_44
    return-void
.end method

.method public onCertificateSuccess(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;Z)V
    .registers 10
    .param p1, "devIdCert"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .param p2, "notify"    # Z

    .prologue
    const/4 v6, 0x0

    .line 310
    const-string/jumbo v3, "MirrorLink_UPnP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCertificateSuccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v1, "appIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get2(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_bd

    .line 313
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get2(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    .line 314
    .local v0, "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "app:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " cert:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " devId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v3, :cond_b9

    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v3, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    :goto_7d
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isACMSCertified()Z

    move-result v3

    if-nez v3, :cond_b5

    .line 316
    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    if-eqz v3, :cond_b5

    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v3, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    if-eqz v3, :cond_b5

    iget-object v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appDevCertificate:Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;

    iget-object v3, v3, Lcom/lge/mirrorlink/certificate/ApplicationDeveloperCertificate;->devID:Ljava/lang/String;

    iget-object v4, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->mDeveloperId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 315
    if-eqz v3, :cond_b5

    .line 317
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v3, v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap0(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 318
    iget v3, v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->appID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2e

    .line 314
    :cond_b9
    const-string/jumbo v3, "null"

    goto :goto_7d

    .line 322
    .end local v0    # "app":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_bd
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeDevCertRevocationInfo(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)Z

    .line 323
    if-eqz p2, :cond_d7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d7

    .line 324
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$5;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v1, v6}, Lcom/lge/mirrorlink/common/StringUtil;->ListToCommaSeparatedString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap6(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V

    .line 308
    :cond_d7
    return-void
.end method

.method public onOCSPQueryPeriodChanged(III)V
    .registers 4
    .param p1, "queryPeriod"    # I
    .param p2, "driveGrace"    # I
    .param p3, "baseGrace"    # I

    .prologue
    .line 358
    return-void
.end method
