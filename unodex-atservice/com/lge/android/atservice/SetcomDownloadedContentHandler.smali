.class public Lcom/lge/android/atservice/SetcomDownloadedContentHandler;
.super Lcom/lge/android/atservice/ATCmdHandler;
.source "SetcomDownloadedContentHandler.java"


# static fields
.field private static final vpl_app_list:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field packageGetStatCount:J

.field totalCount:J

.field totalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    .line 36
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 37
    const-string/jumbo v2, "com.amazon.kindle"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 38
    const-string/jumbo v2, "com.att.android.digitallocker"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 39
    const-string/jumbo v2, "com.att.android.mobile.attmessages"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 40
    const-string/jumbo v2, "com.att.myWireless"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 41
    const-string/jumbo v2, "com.lge.ATTDeviceHelp"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 42
    const-string/jumbo v2, "com.mobitv.client.tv"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 43
    const-string/jumbo v2, "com.mspot.android.moviesClub.att"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 44
    const-string/jumbo v2, "com.mtag.att.codescanner"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 45
    const-string/jumbo v2, "com.qik.lite.android"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 46
    const-string/jumbo v2, "com.wavemarket.waplauncher"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 35
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->vpl_app_list:Ljava/util/Set;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/lge/android/atservice/ATCmdHandler;-><init>()V

    .line 50
    iput-wide v0, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalSize:J

    .line 51
    iput-wide v0, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    .line 52
    iput-wide v0, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->packageGetStatCount:J

    .line 55
    iput-object p1, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method protected getInstalledApplicationsCount()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 225
    const-string/jumbo v4, ""

    .line 226
    .local v4, "responseString":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 227
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    .line 232
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 234
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_16

    .line 235
    sget-object v5, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->vpl_app_list:Ljava/util/Set;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 236
    iget-wide v6, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    goto :goto_16

    .line 241
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_3a
    const-string/jumbo v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 242
    return-object v4
.end method

.method protected getInstalledApplicationsSize()Ljava/lang/String;
    .registers 19

    .prologue
    .line 172
    const-string/jumbo v10, ""

    .line 173
    .local v10, "responseString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 174
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 175
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 177
    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalSize:J

    .line 178
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    .line 179
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->packageGetStatCount:J

    .line 181
    :cond_26
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b0

    .line 182
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 183
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_26

    .line 184
    sget-object v11, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->vpl_app_list:Ljava/util/Set;

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_26

    .line 185
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    .line 186
    const/4 v6, 0x0

    .line 188
    .local v6, "getPackageSizeInfo":Ljava/lang/reflect/Method;
    :try_start_4e
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getPackageSizeInfo"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-class v14, Landroid/content/pm/IPackageStatsObserver;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_65} :catch_96

    move-result-object v6

    .line 194
    .end local v6    # "getPackageSizeInfo":Ljava/lang/reflect/Method;
    :goto_66
    const/4 v11, 0x2

    :try_start_67
    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    new-instance v12, Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler$1;-><init>(Lcom/lge/android/atservice/SetcomDownloadedContentHandler;)V

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v6, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7b} :catch_7c

    goto :goto_26

    .line 202
    :catch_7c
    move-exception v4

    .line 203
    .local v4, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_26

    .line 189
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "getPackageSizeInfo":Ljava/lang/reflect/Method;
    :catch_96
    move-exception v4

    .line 190
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_66

    .line 209
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "getPackageSizeInfo":Ljava/lang/reflect/Method;
    :cond_b0
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_b1
    const/16 v11, 0xa

    if-ge v8, v11, :cond_da

    .line 210
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->packageGetStatCount:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalCount:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_db

    .line 211
    const-string/jumbo v11, "%dKB"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->totalSize:J

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 221
    :cond_da
    return-object v10

    .line 215
    :cond_db
    const-wide/16 v12, 0x3e8

    :try_start_dd
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e0
    .catch Ljava/lang/InterruptedException; {:try_start_dd .. :try_end_e0} :catch_e3

    .line 209
    :goto_e0
    add-int/lit8 v8, v8, 0x1

    goto :goto_b1

    .line 216
    :catch_e3
    move-exception v5

    .line 217
    .local v5, "e":Ljava/lang/InterruptedException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_e0
.end method

.method protected getStoredTotalMediaFileCount(Landroid/net/Uri;)Ljava/lang/String;
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "mediaProvider":Landroid/content/ContentProviderClient;
    const-string/jumbo v11, ""

    .line 143
    .local v11, "responseString":Ljava/lang/String;
    const-string/jumbo v8, "media"

    .line 145
    .local v8, "mediaString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 146
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 147
    .local v9, "nCount":I
    const/4 v10, 0x0

    .line 150
    .local v10, "nSizes":I
    :try_start_a
    iget-object v1, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 151
    .local v0, "mediaProvider":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_23

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 156
    :cond_23
    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_33} :catch_3f
    .catchall {:try_start_a .. :try_end_33} :catchall_63

    move-result-object v11

    .line 161
    if-eqz v6, :cond_39

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_39
    if-eqz v0, :cond_3e

    .line 165
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 168
    .end local v0    # "mediaProvider":Landroid/content/ContentProviderClient;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3e
    :goto_3e
    return-object v11

    .line 157
    :catch_3f
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/Exception;
    :try_start_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_63

    move-result-object v11

    .line 161
    if-eqz v6, :cond_5d

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_5d
    if-eqz v0, :cond_3e

    .line 165
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_3e

    .line 160
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_63
    move-exception v1

    .line 161
    if-eqz v6, :cond_69

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_69
    if-eqz v0, :cond_6e

    .line 165
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 160
    :cond_6e
    throw v1
.end method

.method protected getStoredTotalMediaFileSize(Landroid/net/Uri;)Ljava/lang/String;
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "mediaProvider":Landroid/content/ContentProviderClient;
    const-string/jumbo v12, ""

    .line 109
    .local v12, "responseString":Ljava/lang/String;
    const-string/jumbo v9, "media"

    .line 110
    .local v9, "mediaString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 111
    .local v6, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 112
    .local v10, "nCount":I
    const/4 v11, 0x0

    .line 115
    .local v11, "nSizes":I
    :try_start_a
    iget-object v1, p0, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 116
    .local v0, "mediaProvider":Landroid/content/ContentProviderClient;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3e

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 120
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    if-ge v8, v10, :cond_3e

    .line 121
    const-string/jumbo v1, "_size"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v11, v1

    .line 122
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 120
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 126
    .end local v8    # "i":I
    :cond_3e
    const-string/jumbo v1, "%dKB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit16 v3, v11, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_50} :catch_5c
    .catchall {:try_start_a .. :try_end_50} :catchall_80

    move-result-object v12

    .line 130
    if-eqz v6, :cond_56

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_56
    if-eqz v0, :cond_5b

    .line 134
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 137
    .end local v0    # "mediaProvider":Landroid/content/ContentProviderClient;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5b
    :goto_5b
    return-object v12

    .line 127
    :catch_5c
    move-exception v7

    .line 128
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERROR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_80

    move-result-object v12

    .line 130
    if-eqz v6, :cond_7a

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_7a
    if-eqz v0, :cond_5b

    .line 134
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_5b

    .line 129
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_80
    move-exception v1

    .line 130
    if-eqz v6, :cond_86

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_86
    if-eqz v0, :cond_8b

    .line 134
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 129
    :cond_8b
    throw v1
.end method

.method public handleCmd([Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 59
    const/4 v4, 0x0

    .line 61
    .local v4, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_48

    array-length v6, p1

    if-lez v6, :cond_48

    .line 62
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "IM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 63
    const-string/jumbo v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    .local v1, "ImagesUri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uri ==  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/android/atservice/Debug;->Log(Ljava/lang/String;)V

    .line 65
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 66
    invoke-virtual {p0, v1}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getStoredTotalMediaFileCount(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .end local v1    # "ImagesUri":Landroid/net/Uri;
    .end local v4    # "responseString":Ljava/lang/String;
    :cond_48
    :goto_48
    if-nez v4, :cond_4f

    .line 93
    if-nez p1, :cond_11b

    .line 94
    const-string/jumbo v4, "parameter is null"

    .line 102
    :cond_4f
    return-object v4

    .line 67
    .restart local v1    # "ImagesUri":Landroid/net/Uri;
    .restart local v4    # "responseString":Ljava/lang/String;
    :cond_50
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SZ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 68
    invoke-virtual {p0, v1}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getStoredTotalMediaFileSize(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .local v4, "responseString":Ljava/lang/String;
    goto :goto_48

    .line 70
    .end local v1    # "ImagesUri":Landroid/net/Uri;
    .local v4, "responseString":Ljava/lang/String;
    :cond_64
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "AUD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 71
    const-string/jumbo v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    .local v0, "AudioUri":Landroid/net/Uri;
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 73
    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getStoredTotalMediaFileCount(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .local v4, "responseString":Ljava/lang/String;
    goto :goto_48

    .line 74
    .local v4, "responseString":Ljava/lang/String;
    :cond_8e
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SZ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 75
    invoke-virtual {p0, v0}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getStoredTotalMediaFileSize(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .local v4, "responseString":Ljava/lang/String;
    goto :goto_48

    .line 77
    .end local v0    # "AudioUri":Landroid/net/Uri;
    .local v4, "responseString":Ljava/lang/String;
    :cond_a2
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "VID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 78
    const-string/jumbo v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 79
    .local v2, "VideoUri":Landroid/net/Uri;
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 80
    invoke-virtual {p0, v2}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getStoredTotalMediaFileCount(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .local v4, "responseString":Ljava/lang/String;
    goto/16 :goto_48

    .line 81
    .local v4, "responseString":Ljava/lang/String;
    :cond_cd
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SZ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 82
    invoke-virtual {p0, v2}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getStoredTotalMediaFileSize(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .local v4, "responseString":Ljava/lang/String;
    goto/16 :goto_48

    .line 84
    .end local v2    # "VideoUri":Landroid/net/Uri;
    .local v4, "responseString":Ljava/lang/String;
    :cond_e2
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "GA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 85
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_106

    .line 86
    invoke-virtual {p0}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getInstalledApplicationsCount()Ljava/lang/String;

    move-result-object v4

    .local v4, "responseString":Ljava/lang/String;
    goto/16 :goto_48

    .line 87
    .local v4, "responseString":Ljava/lang/String;
    :cond_106
    aget-object v6, p1, v8

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SZ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 88
    invoke-virtual {p0}, Lcom/lge/android/atservice/SetcomDownloadedContentHandler;->getInstalledApplicationsSize()Ljava/lang/String;

    move-result-object v4

    .local v4, "responseString":Ljava/lang/String;
    goto/16 :goto_48

    .line 96
    .end local v4    # "responseString":Ljava/lang/String;
    :cond_11b
    const-string/jumbo v4, "Invalid parameter: "

    .line 97
    .restart local v4    # "responseString":Ljava/lang/String;
    array-length v6, p1

    :goto_11f
    if-ge v5, v6, :cond_4f

    aget-object v3, p1, v5

    .line 98
    .local v3, "p":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_11f
.end method
