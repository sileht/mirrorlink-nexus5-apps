.class public Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;
.super Ljava/lang/Object;
.source "MediaStoreVideoInfo.java"


# static fields
.field public static COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

.field public static COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

.field public static COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

.field public static column:[Ljava/lang/String;


# instance fields
.field public final bucketId:Ljava/lang/String;

.field public final dateModified:J

.field public final dateTaken:J

.field public final filePath:Ljava/lang/String;

.field public final height:I

.field public final isFavorite:I

.field public final latitude:D

.field public final longitude:D

.field public final mediaId:J

.field public final mediaType:I

.field public final mimeType:Ljava/lang/String;

.field public final size:J

.field public final storageId:I

.field public final title:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const-string v0, "storage_type"

    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    .line 27
    const-string v0, "video_datetaken"

    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    .line 28
    const-string v0, "is_favorite"

    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    .line 30
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 31
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 32
    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 33
    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 34
    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 35
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 36
    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 37
    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 38
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 39
    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 40
    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 41
    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 42
    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 43
    const-string v2, "_size"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->column:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDLjava/lang/String;IIIIIJ)V
    .registers 24
    .param p1, "mediaId"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "dateTaken"    # J
    .param p6, "dateModified"    # J
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "latitude"    # D
    .param p12, "longitude"    # D
    .param p14, "bucketId"    # Ljava/lang/String;
    .param p15, "mediaType"    # I
    .param p16, "width"    # I
    .param p17, "height"    # I
    .param p18, "storageId"    # I
    .param p19, "isFavorite"    # I
    .param p20, "size"    # J

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mediaId:J

    .line 79
    iput-object p3, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->filePath:Ljava/lang/String;

    .line 80
    iput-wide p4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->dateTaken:J

    .line 81
    iput-wide p6, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->dateModified:J

    .line 82
    iput-object p8, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mimeType:Ljava/lang/String;

    .line 83
    iput-object p9, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->title:Ljava/lang/String;

    .line 84
    iput-wide p10, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->latitude:D

    .line 85
    iput-wide p12, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->longitude:D

    .line 86
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->bucketId:Ljava/lang/String;

    .line 87
    move/from16 v0, p15

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mediaType:I

    .line 88
    move/from16 v0, p16

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->width:I

    .line 89
    move/from16 v0, p17

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->height:I

    .line 90
    move/from16 v0, p18

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->storageId:I

    .line 91
    move/from16 v0, p19

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->isFavorite:I

    .line 92
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->size:J

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v8, 0x0

    const-wide v6, -0x3f70c80000000000L    # -999.0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_14

    .line 47
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "cursor is null"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_14
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mediaId:J

    .line 51
    const-string v4, "_data"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->filePath:Ljava/lang/String;

    .line 52
    sget-object v4, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->dateTaken:J

    .line 53
    const-string v4, "date_modified"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->dateModified:J

    .line 54
    const-string v4, "mime_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mimeType:Ljava/lang/String;

    .line 55
    const-string v4, "title"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->title:Ljava/lang/String;

    .line 57
    const-string v4, "latitude"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 58
    .local v0, "latitude":D
    const-string v4, "longitude"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 59
    .local v2, "longitude":D
    cmpl-double v4, v0, v8

    if-nez v4, :cond_c8

    cmpl-double v4, v2, v8

    if-nez v4, :cond_c8

    .line 60
    iput-wide v6, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->latitude:D

    .line 61
    iput-wide v6, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->longitude:D

    .line 68
    :goto_7c
    const-string v4, "bucket_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->bucketId:Ljava/lang/String;

    .line 69
    const/4 v4, 0x3

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mediaType:I

    .line 71
    const-string v4, "width"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->width:I

    .line 72
    const-string v4, "height"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->height:I

    .line 73
    sget-object v4, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->storageId:I

    .line 74
    sget-object v4, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->isFavorite:I

    .line 75
    const-string v4, "_size"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->size:J

    .line 76
    return-void

    .line 64
    :cond_c8
    iput-wide v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->latitude:D

    .line 65
    iput-wide v2, p0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->longitude:D

    goto :goto_7c
.end method
