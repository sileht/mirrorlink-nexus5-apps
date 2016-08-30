.class public Lcom/lge/cic/eden/mediastore/MediaStoreHelper;
.super Ljava/lang/Object;
.source "MediaStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;
    }
.end annotation


# static fields
.field public static final EXTERNAL_STORAGE_FILTER:Ljava/lang/String; = "storage_type = 131073"

.field public static final EXTERNAL_STORAGE_FILTER_FOR_EDEN:Ljava/lang/String; = "storage_id = 131073"

.field public static final EXTERNAL_STORAGE_ID:I = 0x20001

.field public static final IMAGE_NO_LOCATION_EXCLUDE_FILTER:Ljava/lang/String; = "(latitude != 0  AND longitude != 0) AND (latitude != \'\' AND longitude != \'\')"

.field public static final PRIMARY_AND_EXTERNAL_STORAGE_FILTER:Ljava/lang/String; = "(storage_type IN (65537,131073))"

.field public static final PRIMARY_AND_EXTERNAL_STORAGE_FILTER_FOR_EDEN:Ljava/lang/String; = "(storage_id IN (65537,131073))"

.field public static final PRIMARY_STORAGE_FILTER:Ljava/lang/String; = "storage_type = 65537"

.field public static final PRIMARY_STORAGE_FILTER_FOR_EDEN:Ljava/lang/String; = "storage_id = 65537"

.field public static final PRIMARY_STORAGE_ID:I = 0x10001

.field public static final VIDEO_MP4_FILTER:Ljava/lang/String; = "mime_type = \'video/mp4\'"

.field public static final VIDEO_NO_LOCATION_EXCLUDE_FILTER:Ljava/lang/String; = "(latitude != 0  AND longitude != 0) AND (latitude != \'\' AND longitude != \'\')"

.field public static final VIDEO_POSITIVE_DATETAKEN_FILTER:Ljava/lang/String; = "video_datetaken > 0"

.field public static final sMountUsbStorageId:I = 0x30001


# instance fields
.field private final IMAGE_URI:Landroid/net/Uri;

.field private final VIDEO_URI:Landroid/net/Uri;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->IMAGE_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->VIDEO_URI:Landroid/net/Uri;

    .line 40
    iput-object p1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "column"    # [Ljava/lang/String;
    .param p3, "selectionQuery"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p6, "rowMapper":Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;, "Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper<TT;>;"
    const/4 v6, 0x0

    .line 48
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v8, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :try_start_6
    iget-object v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_14} :catch_27
    .catchall {:try_start_6 .. :try_end_14} :catchall_32

    move-result-object v6

    .line 57
    :goto_15
    if-eqz v6, :cond_21

    .line 58
    const/4 v0, -0x1

    :try_start_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 59
    :goto_1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_32

    move-result v0

    if-nez v0, :cond_2a

    .line 65
    :cond_21
    if-eqz v6, :cond_26

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_26
    return-object v8

    .line 54
    :catch_27
    move-exception v7

    .line 55
    .local v7, "e":Ljava/lang/SecurityException;
    const/4 v6, 0x0

    goto :goto_15

    .line 60
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_2a
    :try_start_2a
    invoke-interface {p6, v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;->mapRow(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_32

    goto :goto_1b

    .line 64
    :catchall_32
    move-exception v0

    .line 65
    if-eqz v6, :cond_38

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_38
    throw v0
.end method


# virtual methods
.method public getAllMediaStoreImageInfo()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->column:[Ljava/lang/String;

    const-string v5, "datetaken ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$1;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$1;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllMediaStoreVideoInfo()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->column:[Ljava/lang/String;

    const-string v5, "datetaken ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$6;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$6;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreImageInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "folderPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data like \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "datetaken ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$2;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$2;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreImageInfoAfterSpecificMediaId(J)Ljava/util/ArrayList;
    .registers 10
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id > "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$5;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$5;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreImageInfoAfterSpecificMediaId(Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 12
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data like \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$4;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$4;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreImageInfoAfterSpecificTime(Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 12
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "takenTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data like \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "datetaken"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "datetaken ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$3;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$3;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreVideoInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "folderPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data like \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "datetaken ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$7;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$7;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreVideoInfoAfterSpecificMediaId(J)Ljava/util/ArrayList;
    .registers 10
    .param p1, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_id > "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$10;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$10;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreVideoInfoAfterSpecificMediaId(Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 12
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "mediaId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data like \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$9;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$9;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStoreVideoInfoAfterSpecificTime(Ljava/lang/String;J)Ljava/util/ArrayList;
    .registers 12
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "takenTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->column:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data like \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "datetaken"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "datetaken ASC"

    new-instance v6, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$8;

    invoke-direct {v6, p0}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper$8;-><init>(Lcom/lge/cic/eden/mediastore/MediaStoreHelper;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/cic/eden/mediastore/MediaStoreHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/lge/cic/eden/mediastore/MediaStoreHelper$RowMapper;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
