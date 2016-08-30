.class public Lcom/lge/media/DocumentsThumbnail;
.super Ljava/lang/Object;
.source "DocumentsThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/DocumentsThumbnail$ImageOrientationQuery;,
        Lcom/lge/media/DocumentsThumbnail$ImageThumbnailQuery;,
        Lcom/lge/media/DocumentsThumbnail$VideoThumbnailQuery;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "DocumentsThumbnail"

    iput-object v0, p0, Lcom/lge/media/DocumentsThumbnail;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private getOriginalImageID(Ljava/lang/String;)J
    .registers 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 142
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_7
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 143
    sget-object v2, Lcom/lge/media/DocumentsThumbnail$ImageThumbnailQuery;->PROJECTION_ID:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_display_name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 146
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_35

    move-result-wide v8

    .line 150
    .local v8, "data":J
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    .end local v8    # "data":J
    :goto_34
    return-wide v8

    .line 149
    :catchall_35
    move-exception v1

    .line 150
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 151
    throw v1

    .line 150
    :cond_3a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 152
    const-wide/16 v8, 0x0

    goto :goto_34
.end method

.method private getOriginalVideoID(Ljava/lang/String;)J
    .registers 12
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 124
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_7
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 125
    sget-object v2, Lcom/lge/media/DocumentsThumbnail$VideoThumbnailQuery;->PROJECTION_ID:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_display_name=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 128
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_35

    move-result-wide v8

    .line 132
    .local v8, "data":J
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    .end local v8    # "data":J
    :goto_34
    return-wide v8

    .line 131
    :catchall_35
    move-exception v1

    .line 132
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 133
    throw v1

    .line 132
    :cond_3a
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    const-wide/16 v8, 0x0

    goto :goto_34
.end method

.method private openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 167
    iget-object v1, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 171
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_8
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 172
    sget-object v2, Lcom/lge/media/DocumentsThumbnail$ImageThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 173
    const/4 v5, 0x0

    move-object v6, p3

    .line 171
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 174
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 175
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "data":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 176
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_3c

    move-result-object v1

    .line 180
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 182
    .end local v8    # "data":Ljava/lang/String;
    :goto_3b
    return-object v1

    .line 179
    :catchall_3c
    move-exception v1

    .line 180
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 181
    throw v1

    .line 180
    :cond_41
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v9

    .line 182
    goto :goto_3b
.end method

.method private openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 15
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 83
    iget-object v1, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 86
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_8
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 87
    sget-object v2, Lcom/lge/media/DocumentsThumbnail$VideoThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "video_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    move-object v6, p3

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 90
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "data":Ljava/lang/String;
    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    .line 92
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 91
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 92
    const-wide/16 v4, 0x0

    .line 93
    const-wide/16 v6, -0x1

    .line 91
    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_45

    .line 96
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 98
    .end local v9    # "data":Ljava/lang/String;
    :goto_44
    return-object v2

    .line 95
    :catchall_45
    move-exception v1

    .line 96
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 97
    throw v1

    .line 96
    :cond_4a
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v7

    .line 98
    goto :goto_44
.end method

.method private queryOrientationForImage(JLandroid/os/CancellationSignal;)I
    .registers 13
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v8, 0x0

    .line 226
    iget-object v1, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 230
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_8
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 231
    sget-object v2, Lcom/lge/media/DocumentsThumbnail$ImageOrientationQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    .line 230
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 234
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4a

    move-result v1

    .line 240
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 237
    :goto_30
    return v1

    .line 236
    :cond_31
    :try_start_31
    const-string v1, "DocumentsThumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing orientation data for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_4a

    .line 240
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v1, v8

    .line 237
    goto :goto_30

    .line 239
    :catchall_4a
    move-exception v1

    .line 240
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 241
    throw v1
.end method


# virtual methods
.method public getThumbnail(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 12
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 53
    const-string v5, "image"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_13

    const-string v5, "video"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_13

    .line 67
    :goto_12
    return-object v4

    .line 57
    :cond_13
    :try_start_13
    const-string v5, "video"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_38

    .line 58
    invoke-direct {p0, p1}, Lcom/lge/media/DocumentsThumbnail;->getOriginalVideoID(Ljava/lang/String;)J

    move-result-wide v2

    .line 59
    .local v2, "video_id":J
    const-string v5, "DocumentsThumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video_id "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0, v2, v3, p3}, Lcom/lge/media/DocumentsThumbnail;->openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    goto :goto_12

    .line 62
    .end local v2    # "video_id":J
    :cond_38
    invoke-direct {p0, p1}, Lcom/lge/media/DocumentsThumbnail;->getOriginalImageID(Ljava/lang/String;)J

    move-result-wide v0

    .line 63
    .local v0, "image_id":J
    const-string v5, "DocumentsThumbnail"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "image_id "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, v0, v1, p3}, Lcom/lge/media/DocumentsThumbnail;->openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_53} :catch_55

    move-result-object v4

    goto :goto_12

    .line 67
    .end local v0    # "image_id":J
    :catch_55
    move-exception v5

    goto :goto_12
.end method

.method public openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 15
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 187
    iget-object v0, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 189
    .local v10, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/media/DocumentsThumbnail;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 190
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1b

    .line 193
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 194
    .local v8, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    invoke-static {v10, p1, p2, v2, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/media/DocumentsThumbnail;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 200
    .end local v8    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1b
    if-nez v1, :cond_29

    .line 202
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 203
    .local v7, "fullUri":Landroid/net/Uri;
    const-string v0, "r"

    invoke-virtual {v10, v7, v0, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 206
    .end local v7    # "fullUri":Landroid/net/Uri;
    :cond_29
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/media/DocumentsThumbnail;->queryOrientationForImage(JLandroid/os/CancellationSignal;)I

    move-result v9

    .line 208
    .local v9, "orientation":I
    if-eqz v9, :cond_43

    .line 209
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 210
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "android.content.extra.ORIENTATION"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    :goto_39
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v0

    .line 212
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_43
    const/4 v6, 0x0

    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_39
.end method

.method public openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 103
    iget-object v3, p0, Lcom/lge/media/DocumentsThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 105
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/media/DocumentsThumbnail;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 106
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_1b

    .line 109
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 110
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    invoke-static {v2, p1, p2, v4, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/media/DocumentsThumbnail;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 116
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1b
    return-object v0
.end method
