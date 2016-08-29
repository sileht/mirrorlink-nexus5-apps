.class public Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;
.super Ljava/lang/Object;
.source "AppInfoStoreManager.java"


# static fields
.field private static final SHARED_PREF_NAME_APPID_LIST:Ljava/lang/String; = "AppIdList"

.field private static final SHARED_PREF_NAME_OCSP_INFO:Ljava/lang/String; = "OCSPInfo"

.field private static final TAG:Ljava/lang/String; = "MirrorLink_UPnP"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static getOCSPBaseGrace(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    const-string/jumbo v1, "OCSPInfo"

    .line 248
    .local v1, "prefName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, "ocsp_pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "baseGrace"

    const/16 v3, 0x870

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getOCSPDriveGrace(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    const-string/jumbo v1, "OCSPInfo"

    .line 240
    .local v1, "prefName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    .local v0, "ocsp_pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "driveGrace"

    const/16 v3, 0x2d0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getOCSPQueryPeriod(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const-string/jumbo v1, "OCSPInfo"

    .line 232
    .local v1, "prefName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, "ocsp_pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "queryPeriod"

    const/16 v3, 0xa8

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static storeOCSPQueryPeriod(Landroid/content/Context;III)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "queryPeriod"    # I
    .param p2, "driveGrace"    # I
    .param p3, "baseGrace"    # I

    .prologue
    .line 255
    const-string/jumbo v2, "OCSPInfo"

    .line 256
    .local v2, "prefName":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 258
    .local v1, "ocsp_pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "queryPeriod"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string/jumbo v3, "deiveGrace"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string/jumbo v3, "baseGrace"

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    return v3
.end method


# virtual methods
.method public deleteStoredAppCertificateInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 267
    move-object v2, p1

    .line 268
    .local v2, "prefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 271
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "acmsappid"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    const-string/jumbo v3, "appcert"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    const-string/jumbo v3, "lastocspretrieve"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string/jumbo v3, "lastocspsuccess"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    const/4 v3, 0x1

    return v3
.end method

.method public deleteStoredAppInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "prefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 298
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    const/4 v3, 0x1

    return v3
.end method

.method public deleteStoredPackageInfo(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 282
    move-object v2, p1

    .line 283
    .local v2, "prefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 286
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    const/4 v3, 0x1

    return v3
.end method

.method public getNextAvailableAppId(I)I
    .registers 8
    .param p1, "minId"    # I

    .prologue
    .line 79
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "AppIdList"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 82
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_11

    .line 83
    return p1

    .line 85
    :cond_11
    move v2, p1

    .local v2, "id":I
    :goto_12
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 87
    return v2

    .line 85
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 90
    :cond_26
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v3, p1

    return v3
.end method

.method public getStoredAppCertiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .registers 16
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/lge/mirrorlink/certificate/CertificateStatusListener;

    .prologue
    .line 116
    move-object v8, p2

    .line 117
    .local v8, "prefName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "file":Ljava/io/File;
    iget-object v9, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 120
    .local v2, "appid_pref":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "filesize"

    const-wide/16 v10, 0x0

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 121
    .local v6, "pkg_size":J
    const-string/jumbo v9, "filemodified"

    const-wide/16 v10, 0x0

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 122
    .local v4, "pkg_modified":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_91

    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_91

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v9, v6, v10

    if-nez v9, :cond_91

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_91

    .line 124
    const-string/jumbo v9, "appcert"

    const-string/jumbo v10, ""

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "appcertStr":Ljava/lang/String;
    if-eqz v1, :cond_91

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_91

    .line 126
    invoke-static {v1, p3}, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->createInstance(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/CertificateStatusListener;)Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    move-result-object v0

    .line 128
    .local v0, "appCerti":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    iput-object p2, v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    .line 129
    iput-object p1, v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->sourcePath:Ljava/lang/String;

    .line 131
    const-string/jumbo v9, "lastocspretrieve"

    const-wide/16 v10, 0x0

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPRetrieve:J

    .line 133
    const-string/jumbo v9, "lastocspsuccess"

    const-wide/16 v10, 0x0

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    .line 135
    const-string/jumbo v9, "MirrorLink_UPnP"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getStoredAppInfo filesize:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  modified:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0

    .line 141
    .end local v0    # "appCerti":Lcom/lge/mirrorlink/certificate/ApplicationCertificate;
    .end local v1    # "appcertStr":Ljava/lang/String;
    :cond_91
    const/4 v9, 0x0

    return-object v9
.end method

.method public getStoredAppDevCertiInfo(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 146
    move-object v3, p1

    .line 147
    .local v3, "prefName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 149
    .local v2, "appid_pref":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "appcert"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "appcertStr":Ljava/lang/String;
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6c

    .line 152
    invoke-static {v1, p2}, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->createInstance(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/DevIdCertStatusListener;)Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    move-result-object v0

    .line 153
    .local v0, "appCerti":Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    const-string/jumbo v4, "lastocspretrieve"

    invoke-interface {v2, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPRetrieve:J

    .line 154
    const-string/jumbo v4, "lastocspsuccess"

    invoke-interface {v2, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    .line 155
    const-string/jumbo v4, "MirrorLink_UPnP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStoredAppInfo appcertStr.length():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  lastocspretrievefilesize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPRetrieve:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " appCerti.lastOCSPSuccess:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/mirrorlink/common/ExtLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-object v0

    .line 158
    .end local v0    # "appCerti":Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;
    :cond_6c
    return-object v6
.end method

.method public getStoredAppId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 31
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v3, p2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    .local v1, "appid_pref":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "filesize"

    invoke-interface {v1, v3, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 35
    .local v6, "pkg_size":J
    const-string/jumbo v3, "filemodified"

    invoke-interface {v1, v3, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 36
    .local v4, "pkg_modified":J
    cmp-long v3, v6, v10

    if-eqz v3, :cond_3f

    cmp-long v3, v4, v10

    if-eqz v3, :cond_3f

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_3f

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-nez v3, :cond_3f

    .line 37
    const-string/jumbo v3, "acmsappid"

    const-string/jumbo v8, ""

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "appid":Ljava/lang/String;
    return-object v0

    .line 41
    .end local v0    # "appid":Ljava/lang/String;
    :cond_3f
    const/4 v3, 0x0

    return-object v3
.end method

.method public getStoredAppInfo(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 96
    move-object v1, p1

    .line 97
    .local v1, "prefName":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "app_info_pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "trustlevel"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public getStoredUpnpAppId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "AppIdList"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public storeAppCertRevocationInfo(Lcom/lge/mirrorlink/certificate/ApplicationCertificate;)Z
    .registers 8
    .param p1, "appCert"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .prologue
    .line 201
    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->packageName:Ljava/lang/String;

    .line 202
    .local v2, "prefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 205
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1f

    .line 206
    const-string/jumbo v3, "lastocspretrieve"

    iget-wide v4, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPRetrieve:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string/jumbo v3, "lastocspsuccess"

    iget-wide v4, p1, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 209
    :cond_1f
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    const/4 v3, 0x1

    return v3
.end method

.method public storeAppCertiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/lge/mirrorlink/certificate/ApplicationCertificate;)Z
    .registers 12
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "appCerti"    # Lcom/lge/mirrorlink/certificate/ApplicationCertificate;

    .prologue
    .line 163
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "file":Ljava/io/File;
    move-object v3, p2

    .line 165
    .local v3, "prefName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 168
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "filename"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string/jumbo v4, "filesize"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string/jumbo v4, "filemodified"

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string/jumbo v4, "acmsappid"

    iget-object v5, p3, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->appIdentifier:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    if-eqz p3, :cond_4d

    .line 173
    const-string/jumbo v4, "appcert"

    iget-object v5, p3, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->rawCertificate:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string/jumbo v4, "lastocspretrieve"

    iget-wide v6, p3, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPRetrieve:J

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string/jumbo v4, "lastocspsuccess"

    iget-wide v6, p3, Lcom/lge/mirrorlink/certificate/ApplicationCertificate;->lastOCSPSuccess:J

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 177
    :cond_4d
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    const/4 v4, 0x1

    return v4
.end method

.method public storeAppDevCertiInfo(Ljava/lang/String;Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appCerti"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .prologue
    .line 184
    move-object v2, p1

    .line 185
    .local v2, "prefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 189
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_26

    .line 190
    const-string/jumbo v3, "appcert"

    iget-object v4, p2, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->downloadRawCertificate:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string/jumbo v3, "lastocspretrieve"

    iget-wide v4, p2, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPRetrieve:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string/jumbo v3, "lastocspsuccess"

    iget-wide v4, p2, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    :cond_26
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    const/4 v3, 0x1

    return v3
.end method

.method public storeAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "appid"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v2, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "filename"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    const-string/jumbo v3, "filesize"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    const-string/jumbo v3, "filemodified"

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string/jumbo v3, "acmsappid"

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    const/4 v3, 0x1

    return v3
.end method

.method public storeAppInfo(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "trustLevel"    # I

    .prologue
    .line 104
    move-object v2, p1

    .line 105
    .local v2, "prefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, "app_info_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "trustlevel"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    const/4 v3, 0x1

    return v3
.end method

.method public storeDevCertRevocationInfo(Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;)Z
    .registers 8
    .param p1, "appCert"    # Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;

    .prologue
    .line 216
    iget-object v2, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->packageName:Ljava/lang/String;

    .line 217
    .local v2, "prefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 220
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1f

    .line 221
    const-string/jumbo v3, "lastocspretrieve"

    iget-wide v4, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPRetrieve:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string/jumbo v3, "lastocspsuccess"

    iget-wide v4, p1, Lcom/lge/mirrorlink/certificate/DeveloperIdCertificate;->lastOCSPSuccess:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 224
    :cond_1f
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    const/4 v3, 0x1

    return v3
.end method

.method public storeUpnpAppId(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "appid"    # I

    .prologue
    .line 68
    iget-object v2, p0, Lcom/lge/mirrorlink/upnp/applicationserver/AppInfoStoreManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "AppIdList"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "appid_pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    const/4 v2, 0x1

    return v2
.end method
