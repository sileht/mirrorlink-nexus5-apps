.class public Lcom/lge/cic/eden/mediastore/MediaInfoAdapter;
.super Ljava/lang/Object;
.source "MediaInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cic/eden/mediastore/MediaInfoAdapter$NoSuchTagException;
    }
.end annotation


# static fields
.field private static final logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/lge/cic/eden/mediastore/MediaInfoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/mediastore/MediaInfoAdapter;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;)Lcom/lge/cic/eden/db/type/MediaInfo;
    .registers 28
    .param p0, "mediaStoreImageInfo"    # Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lge/cic/eden/mediastore/MediaInfoAdapter$NoSuchTagException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v3, Lcom/lge/cic/eden/db/type/MediaInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mediaId:J

    .line 75
    const/4 v6, 0x1

    .line 76
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->filePath:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->dateTaken:J

    .line 78
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->dateModified:J

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mimeType:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->title:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->latitude:D

    .line 82
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->longitude:D

    move-wide/from16 v16, v0

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->orientation:I

    move/from16 v18, v0

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->bucketId:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 85
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->mediaType:I

    move/from16 v20, v0

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->width:I

    move/from16 v21, v0

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->height:I

    move/from16 v22, v0

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->storageId:I

    move/from16 v23, v0

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->isFavorite:I

    move/from16 v24, v0

    .line 90
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->size:J

    move-wide/from16 v25, v0

    .line 74
    invoke-direct/range {v3 .. v26}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJ)V

    .line 93
    .local v3, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    return-object v3
.end method

.method public static convert(Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;)Lcom/lge/cic/eden/db/type/MediaInfo;
    .registers 28
    .param p0, "mediaStoreVideoInfo"    # Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;

    .prologue
    .line 97
    new-instance v3, Lcom/lge/cic/eden/db/type/MediaInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mediaId:J

    .line 98
    const/4 v6, 0x1

    .line 99
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->filePath:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->dateTaken:J

    .line 101
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->dateModified:J

    .line 102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mimeType:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->title:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->latitude:D

    .line 105
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->longitude:D

    move-wide/from16 v16, v0

    .line 106
    const/16 v18, 0x0

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->bucketId:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->mediaType:I

    move/from16 v20, v0

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->width:I

    move/from16 v21, v0

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->height:I

    move/from16 v22, v0

    .line 111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->storageId:I

    move/from16 v23, v0

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->isFavorite:I

    move/from16 v24, v0

    .line 113
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->size:J

    move-wide/from16 v25, v0

    .line 97
    invoke-direct/range {v3 .. v26}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJ)V

    .line 115
    .local v3, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    return-object v3
.end method

.method public static convert(Lcom/lge/cic/eden/db/type/MediaInfo;)Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;
    .registers 26
    .param p0, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    .line 34
    new-instance v2, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    .line 35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    .line 36
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 37
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    .line 38
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    .line 39
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    .line 40
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 41
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    .line 42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    move/from16 v16, v0

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    move/from16 v18, v0

    .line 45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    move/from16 v19, v0

    .line 46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    move/from16 v20, v0

    .line 47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    move/from16 v21, v0

    .line 48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    move/from16 v22, v0

    .line 49
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    move-wide/from16 v23, v0

    .line 34
    invoke-direct/range {v2 .. v24}, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;-><init>(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJ)V

    return-object v2
.end method
