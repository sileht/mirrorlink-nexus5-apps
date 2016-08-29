.class Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;
.super Ljava/lang/Object;
.source "TmAppListManager.java"

# interfaces
.implements Lcom/lge/mirrorlink/certificate/CertificateStatusListener;


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
    .line 245
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationCertificateBaseOver(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
    .registers 6
    .param p1, "appCert"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 284
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApplicationCertificateBaseOver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

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

    .line 285
    if-eqz p2, :cond_30

    .line 286
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap7(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V

    .line 282
    :cond_30
    return-void
.end method

.method public onApplicationCertificateDriveOver(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
    .registers 6
    .param p1, "appCert"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 276
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApplicationCertificateDriveOver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

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

    .line 277
    if-eqz p2, :cond_30

    .line 278
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap7(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)V

    .line 274
    :cond_30
    return-void
.end method

.method public onApplicationCertificateFailed(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
    .registers 6
    .param p1, "appCert"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 269
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApplicationCertificateFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

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

    .line 271
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap2(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z

    .line 267
    return-void
.end method

.method public onApplicationCertificateRevoked(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
    .registers 8
    .param p1, "appCert"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 258
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onApplicationCertificateRevoked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

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

    .line 259
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap2(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z

    .line 261
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 262
    new-instance v0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;

    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->sourcePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;-><init>(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v0, "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;->start()V

    .line 256
    .end local v0    # "appCertThread":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$AppCertDownloadThread;
    :cond_48
    return-void
.end method

.method public onApplicationCertificateRevoked(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 298
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-virtual {v1, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v0

    .line 299
    .local v0, "tmApp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v0, :cond_9

    .line 300
    return-void

    .line 302
    :cond_9
    const-string/jumbo v1, "MirrorLink_UPnP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onApplicationCertificateRevoked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v1, p1, p2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap2(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;Z)Z

    .line 296
    return-void
.end method

.method public onApplicationCertificateSuccess(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;Z)V
    .registers 6
    .param p1, "appCert"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .param p2, "notify"    # Z

    .prologue
    .line 248
    const-string/jumbo v0, "MirrorLink_UPnP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApplicationCertificateSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

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

    .line 249
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    invoke-static {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-get1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;)Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->storeAppCertRevocationInfo(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;)Z

    .line 251
    if-eqz p2, :cond_39

    .line 252
    iget-object v0, p0, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager$4;->this$0:Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    iget-object v1, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->-wrap1(Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;Ljava/lang/String;)Z

    .line 246
    :cond_39
    return-void
.end method

.method public onOCSPQueryPeriodChanged(III)V
    .registers 4
    .param p1, "queryPeriod"    # I
    .param p2, "driveGrace"    # I
    .param p3, "baseGrace"    # I

    .prologue
    .line 290
    return-void
.end method
