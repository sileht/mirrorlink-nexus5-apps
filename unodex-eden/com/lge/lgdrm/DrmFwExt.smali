.class public final Lcom/lge/lgdrm/DrmFwExt;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFwExt$MediaFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmFwExt"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 375
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkDRMMediaFile(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "checkIsImage"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 215
    if-eqz p1, :cond_6

    if-nez p0, :cond_7

    .line 244
    :cond_6
    :goto_6
    return v2

    .line 219
    :cond_7
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 224
    if-eqz p2, :cond_17

    .line 225
    :try_start_f
    invoke-static {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_17

    move v2, v3

    .line 226
    goto :goto_6

    .line 230
    :cond_17
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v1

    .line 231
    .local v1, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-nez v1, :cond_1f

    move v2, v3

    .line 232
    goto :goto_6

    .line 235
    :cond_1f
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v2

    if-nez v2, :cond_34

    .line 236
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_30

    move-result v2

    if-nez v2, :cond_34

    .line 237
    const/4 v2, 0x2

    goto :goto_6

    .line 240
    .end local v1    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_30
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34
    move v2, v3

    .line 244
    goto :goto_6
.end method

.method public static checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "setKey"    # Z
    .param p3, "resetKey"    # Z
    .param p4, "consume"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 70
    if-nez p1, :cond_6

    .line 101
    :cond_5
    :goto_5
    return v2

    .line 74
    :cond_6
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    :try_start_c
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v1

    .line 80
    .local v1, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-eqz v1, :cond_19

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v2, v3

    .line 81
    goto :goto_5

    .line 84
    :cond_1b
    if-eqz p2, :cond_26

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v2

    if-eqz v2, :cond_26

    move v2, v3

    .line 85
    goto :goto_5

    .line 87
    :cond_26
    if-eqz p3, :cond_31

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v2

    if-eqz v2, :cond_31

    move v2, v3

    .line 88
    goto :goto_5

    .line 91
    :cond_31
    if-eqz p4, :cond_3c

    .line 93
    invoke-virtual {v1}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_3e

    :cond_3c
    move v2, v4

    .line 96
    goto :goto_5

    .line 97
    .end local v1    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_3e
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 101
    goto :goto_5
.end method

.method public static getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 113
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 154
    :cond_6
    :goto_6
    return-object v8

    .line 116
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_15

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 118
    :cond_15
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 120
    :cond_1a
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 123
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 122
    invoke-static {p0, v0}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v11

    .line 124
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_6

    .line 127
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_3e

    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 132
    :cond_3e
    invoke-static {p0, v11}, Lcom/lge/lgdrm/DrmFwExt;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 133
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_43
    if-eqz v6, :cond_6

    const-string v0, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "^[0-9]+@media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    :cond_55
    const/4 v7, 0x0

    .line 135
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 137
    .local v8, "data":Ljava/lang/String;
    :try_start_57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 137
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 139
    if-eqz v7, :cond_7b

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_7b

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_7a} :catch_81
    .catchall {:try_start_57 .. :try_end_7a} :catchall_8c

    move-result-object v8

    .line 147
    :cond_7b
    if-eqz v7, :cond_6

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 143
    :catch_81
    move-exception v9

    .line 145
    .local v9, "e":Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_8c

    .line 147
    if-eqz v7, :cond_6

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 146
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_8c
    move-exception v0

    .line 147
    if-eqz v7, :cond_92

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 150
    :cond_92
    throw v0
.end method

.method public static getDRMAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "albumArt":[B
    :try_start_1
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 261
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    .line 263
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 267
    .end local v2    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_10
    return-object v0

    .line 264
    :catch_11
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method private static isDRM(Ljava/lang/String;)Z
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 376
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 385
    :cond_9
    :goto_9
    return v1

    .line 380
    :cond_a
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 381
    .local v0, "drmType":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_9

    const/16 v2, 0x3000

    if-gt v0, v2, :cond_9

    .line 385
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static setDRMMediaQuery(Landroid/content/Context;Landroid/database/sqlite/SQLiteQueryBuilder;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "appendAND"    # Z

    .prologue
    .line 179
    const-string v0, "android.permission.ACCESS_LGDRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 194
    :cond_8
    :goto_8
    return-void

    .line 183
    :cond_9
    const-string v0, "android.permission.ACCESS_LGDRM_CNTLIST"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    if-eqz p2, :cond_19

    .line 190
    const-string v0, " AND (mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\'))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 192
    :cond_19
    const-string v0, " mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public static setDataSourceFromResource(Landroid/content/Context;Landroid/media/MediaPlayer;I)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 160
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_1d

    .line 161
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 162
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 163
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 165
    :cond_1d
    return-void
.end method
