.class Lcom/lge/mirrorlink/commonapi/CertificationManager$1;
.super Lcom/mirrorlink/android/commonapi/ICertificationManager$Stub;
.source "CertificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mirrorlink/commonapi/CertificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mirrorlink/commonapi/CertificationManager;


# direct methods
.method constructor <init>(Lcom/lge/mirrorlink/commonapi/CertificationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mirrorlink/commonapi/CertificationManager;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CertificationManager;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/ICertificationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationCertificationInformation(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .param p1, "entity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 95
    const-string/jumbo v10, "MirrorLink_Cert"

    const-string/jumbo v11, "[START] getApplicationCertificationInformation"

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v7, 0x0

    .line 97
    .local v7, "res":Z
    const/4 v2, -0x1

    .line 98
    .local v2, "appId":I
    const/4 v5, 0x0

    .line 99
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 100
    .local v8, "restricted":Ljava/lang/String;
    const/4 v6, 0x0

    .line 101
    .local v6, "nonrestricted":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v3

    .line 102
    .local v3, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v3, :cond_9b

    .line 103
    iget-object v10, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CertificationManager;

    invoke-static {v10}, Lcom/lge/mirrorlink/commonapi/CertificationManager;->-get0(Lcom/lge/mirrorlink/commonapi/CertificationManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v9

    .line 104
    .local v9, "tmapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v9, :cond_9a

    .line 105
    invoke-virtual {v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v2

    .line 106
    invoke-virtual {v9}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v7

    .line 113
    .local v7, "res":Z
    invoke-virtual {v3, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppCertification(I)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-result-object v1

    .line 114
    .local v1, "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    if-eqz v1, :cond_41

    .line 115
    invoke-virtual {v1, p1}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->getEntity(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;

    move-result-object v0

    .line 116
    .local v0, "appCertEntity":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;
    if-eqz v0, :cond_41

    .line 117
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->getEntityname()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->getEntityrestricted()Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "restricted":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;->getEntitynonrestricted()Ljava/lang/String;

    move-result-object v6

    .line 122
    .end local v0    # "appCertEntity":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificationEntity;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nonrestricted":Ljava/lang/String;
    .end local v8    # "restricted":Ljava/lang/String;
    :cond_41
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v4, "bundle_certinfo":Landroid/os/Bundle;
    const-string/jumbo v10, "ENTITY"

    invoke-virtual {v4, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v10, "CERTIFIED"

    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    const-string/jumbo v10, "RESTRICTED"

    invoke-virtual {v4, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v10, "NONRESTRICTED"

    invoke-virtual {v4, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v10, "MirrorLink_Cert"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "res:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "restricted:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "nonrestricted:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v4

    .line 108
    .end local v1    # "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    .end local v4    # "bundle_certinfo":Landroid/os/Bundle;
    .local v5, "name":Ljava/lang/String;
    .restart local v6    # "nonrestricted":Ljava/lang/String;
    .local v7, "res":Z
    .local v8, "restricted":Ljava/lang/String;
    :cond_9a
    return-object v12

    .line 111
    .end local v9    # "tmapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_9b
    return-object v12
.end method

.method public getApplicationCertificationStatus()Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 33
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "[START] getApplicationCertificationStatus"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, "res":Z
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v0

    .line 37
    .local v0, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-nez v0, :cond_1b

    .line 38
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "[ERROR] appListMgr is null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v6

    .line 41
    :cond_1b
    iget-object v4, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CertificationManager;

    invoke-static {v4}, Lcom/lge/mirrorlink/commonapi/CertificationManager;->-get0(Lcom/lge/mirrorlink/commonapi/CertificationManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v3

    .line 42
    .local v3, "tmapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-nez v3, :cond_31

    .line 43
    const-string/jumbo v4, "MirrorLink_Cert"

    const-string/jumbo v5, "[ERROR] tmapp is null"

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v6

    .line 46
    :cond_31
    const-string/jumbo v4, "MirrorLink_Cert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "appId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->isCertifiedApp()Z

    move-result v2

    .line 48
    .local v2, "res":Z
    const-string/jumbo v4, "MirrorLink_Cert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v1, "bundle_appCertStatus":Landroid/os/Bundle;
    const-string/jumbo v4, "HAS_VALID_CERTIFICATE"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string/jumbo v4, "ADVERTISED_AS_CERTIFIEDAPP"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    return-object v1
.end method

.method public getApplicationCertifyingEntities()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "[START] getApplicationCertifyingEntities"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v2, -0x1

    .line 63
    .local v2, "appId":I
    const/4 v1, 0x0

    .line 64
    .local v1, "appCertiEntity":Ljava/lang/String;
    invoke-static {}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getInstance()Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;

    move-result-object v3

    .line 65
    .local v3, "appListMgr":Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;
    if-eqz v3, :cond_6b

    .line 66
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "appListMgr is not null"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CertificationManager;

    invoke-static {v5}, Lcom/lge/mirrorlink/commonapi/CertificationManager;->-get0(Lcom/lge/mirrorlink/commonapi/CertificationManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getApp(Ljava/lang/String;)Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;

    move-result-object v4

    .line 68
    .local v4, "tmapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    if-eqz v4, :cond_61

    .line 69
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "tmapp is not null"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4}, Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;->getAppId()I

    move-result v2

    .line 71
    if-lez v2, :cond_57

    .line 72
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3, v2}, Lcom/lge/mirrorlink/upnp/applicationserver/TmAppListManager;->getAppCertification(I)Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;

    move-result-object v0

    .line 74
    .local v0, "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    if-eqz v0, :cond_51

    .line 75
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "2"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;->getAppCertificationEntities()Ljava/lang/String;

    move-result-object v1

    .line 87
    .end local v0    # "appCertInfo":Lcom/lge/mirrorlink/upnp/applicationserver/types/AppCertificateInfo;
    .end local v1    # "appCertiEntity":Ljava/lang/String;
    .end local v4    # "tmapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_51
    :goto_51
    if-nez v1, :cond_75

    .line 88
    const-string/jumbo v5, "ERROR"

    return-object v5

    .line 79
    .restart local v1    # "appCertiEntity":Ljava/lang/String;
    .restart local v4    # "tmapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_57
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "appId is -"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 82
    :cond_61
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "[ERROR] tmapp is null"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 85
    .end local v4    # "tmapp":Lcom/lge/mirrorlink/upnp/applicationserver/TmApp;
    :cond_6b
    const-string/jumbo v5, "MirrorLink_Cert"

    const-string/jumbo v6, "[ERROR] appListMgr is null"

    invoke-static {v5, v6}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 90
    .end local v1    # "appCertiEntity":Ljava/lang/String;
    :cond_75
    return-object v1
.end method

.method public unregister()V
    .registers 4

    .prologue
    .line 133
    const-string/jumbo v1, "MirrorLink_Cert"

    const-string/jumbo v2, "[START] unregister"

    invoke-static {v1, v2}, Lcom/lge/mirrorlink/common/ExtLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->getInstance()Lcom/lge/mirrorlink/commonapi/CommonAPIManager;

    move-result-object v0

    .line 135
    .local v0, "sCommonAPIManager":Lcom/lge/mirrorlink/commonapi/CommonAPIManager;
    if-eqz v0, :cond_18

    .line 136
    iget-object v1, p0, Lcom/lge/mirrorlink/commonapi/CertificationManager$1;->this$0:Lcom/lge/mirrorlink/commonapi/CertificationManager;

    invoke-static {v1}, Lcom/lge/mirrorlink/commonapi/CertificationManager;->-get0(Lcom/lge/mirrorlink/commonapi/CertificationManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/mirrorlink/commonapi/CommonAPIManager;->unregisterCertificationManager(Ljava/lang/String;)V

    .line 132
    :cond_18
    return-void
.end method
