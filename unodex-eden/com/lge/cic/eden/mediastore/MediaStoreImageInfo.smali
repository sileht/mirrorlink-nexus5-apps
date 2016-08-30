.class public Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;
.super Ljava/lang/Object;
.source "MediaStoreImageInfo.java"


# static fields
.field public static COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

.field public static COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

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

.field public final orientation:I

.field public final size:J

.field public final storageId:I

.field public final title:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const-string v0, "storage_type"

    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    .line 29
    const-string v0, "is_favorite"

    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    .line 31
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 33
    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 34
    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 35
    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 36
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 37
    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 39
    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 40
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 41
    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 42
    const-string v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 43
    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 44
    sget-object v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 45
    const-string v2, "_size"

    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->column:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJ)V
    .registers 25
    .param p1, "mediaId"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "dateTaken"    # J
    .param p6, "dateModified"    # J
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "latitude"    # D
    .param p12, "longitude"    # D
    .param p14, "orientation"    # I
    .param p15, "bucketId"    # Ljava/lang/String;
    .param p16, "mediaType"    # I
    .param p17, "width"    # I
    .param p18, "height"    # I
    .param p19, "storageId"    # I
    .param p20, "isFavorite"    # I
    .param p21, "size"    # J

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mediaId:J

    .line 85
    iput-object p3, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->filePath:Ljava/lang/String;

    .line 86
    iput-wide p4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->dateTaken:J

    .line 87
    iput-wide p6, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->dateModified:J

    .line 88
    iput-object p8, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mimeType:Ljava/lang/String;

    .line 89
    iput-object p9, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->title:Ljava/lang/String;

    .line 90
    iput-wide p10, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->latitude:D

    .line 91
    iput-wide p12, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->longitude:D

    .line 92
    move/from16 v0, p14

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->orientation:I

    .line 93
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->bucketId:Ljava/lang/String;

    .line 94
    move/from16 v0, p16

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mediaType:I

    .line 95
    move/from16 v0, p17

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->width:I

    .line 96
    move/from16 v0, p18

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->height:I

    .line 97
    move/from16 v0, p19

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->storageId:I

    .line 98
    move/from16 v0, p20

    iput v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->isFavorite:I

    .line 99
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->size:J

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide v6, -0x3f70c80000000000L    # -999.0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_14

    .line 49
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "cursor is null"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 52
    :cond_14
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mediaId:J

    .line 53
    const-string v4, "_data"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->filePath:Ljava/lang/String;

    .line 54
    const-string v4, "datetaken"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->dateTaken:J

    .line 55
    const-string v4, "date_modified"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->dateModified:J

    .line 56
    const-string v4, "mime_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mimeType:Ljava/lang/String;

    .line 57
    const-string v4, "title"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->title:Ljava/lang/String;

    .line 59
    const-string v4, "latitude"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    .line 60
    .local v0, "latitude":D
    const-string v4, "longitude"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    .line 61
    .local v2, "longitude":D
    cmpl-double v4, v0, v8

    if-nez v4, :cond_d4

    cmpl-double v4, v2, v8

    if-nez v4, :cond_d4

    .line 62
    iput-wide v6, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->latitude:D

    .line 63
    iput-wide v6, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->longitude:D

    .line 70
    :goto_7c
    const-string v4, "orientation"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->orientation:I

    .line 71
    const-string v4, "bucket_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->bucketId:Ljava/lang/String;

    .line 72
    const/4 v4, 0x1

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mediaType:I

    .line 74
    const-string v4, "width"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->width:I

    .line 75
    const-string v4, "height"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->height:I

    .line 76
    sget-object v4, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->storageId:I

    .line 77
    sget-object v4, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->isFavorite:I

    .line 78
    const-string v4, "_size"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->size:J

    .line 79
    return-void

    .line 66
    :cond_d4
    iput-wide v0, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->latitude:D

    .line 67
    iput-wide v2, p0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->longitude:D

    goto :goto_7c
.end method
