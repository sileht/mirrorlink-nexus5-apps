.class public Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;
.super Landroid/test/AndroidTestCase;
.source "MediaStoreSynchronizerTest.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.cic.mediastore.dummy.provider"

.field public static final IMAGE_MEDIASTORE:Ljava/lang/String; = "IMAGE_MEDIASTORE"

.field public static final IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

.field public static final VIDEO_MEDIASTORE:Ljava/lang/String; = "VIDEO_MEDIASTORE"

.field public static final VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN:Ljava/lang/String; = "VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN"

.field public static final VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN_URI:Landroid/net/Uri;

.field public static final VIDEO_MEDIASTORE_URI:Landroid/net/Uri;


# instance fields
.field context:Landroid/content/Context;

.field dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

.field mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

.field testImageSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field testVideoSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "content://com.lge.cic.mediastore.dummy.provider/IMAGE_MEDIASTORE"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.lge.cic.mediastore.dummy.provider/VIDEO_MEDIASTORE"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.lge.cic.mediastore.dummy.provider/VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method

.method private checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1091
    .local p1, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .local p2, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 1092
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 1095
    return-void

    .line 1093
    :cond_13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-direct {p0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->isSameImage(Lcom/lge/cic/eden/db/type/MediaInfo;Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    move-result v1

    invoke-static {v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 1092
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1097
    .local p1, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .local p2, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 1098
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 1101
    return-void

    .line 1099
    :cond_13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-direct {p0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->isSameVideo(Lcom/lge/cic/eden/db/type/MediaInfo;Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    move-result v1

    invoke-static {v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 1098
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1086
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1089
    return-void
.end method

.method private createImageContentValues(JLjava/lang/String;JJ)Landroid/content/ContentValues;
    .registers 16
    .param p1, "mediaId"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "dateTaken"    # J
    .param p6, "size"    # J

    .prologue
    const/4 v6, 0x0

    .line 973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 974
    .local v0, "currentTime":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 975
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 976
    const-string v3, "_data"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v3, "_size"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 978
    const-string v3, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 979
    const-string v3, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 980
    const-string v3, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 981
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v3, "bucket_id"

    const v4, 0x1455669

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 983
    const-string v3, "bucket_display_name"

    const-string v4, "fasdfsaf"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v3, "width"

    const/16 v4, 0x780

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 985
    const-string v3, "height"

    const/16 v4, 0x4b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v3, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v3, "longitude"

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 989
    const-string v3, "latitude"

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 990
    const-string v3, "storage_id"

    const v4, 0x10001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    const-string v3, "is_favorite"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const-string v3, "burst_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-object v2
.end method

.method private createVideoContentValues(JLjava/lang/String;JJ)Landroid/content/ContentValues;
    .registers 14
    .param p1, "mediaId"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "dateTaken"    # J
    .param p6, "size"    # J

    .prologue
    .line 998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1000
    .local v0, "currentTime":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1001
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1002
    const-string v3, "_data"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v3, "_size"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1004
    const-string v3, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1005
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    const-string v3, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v3, "bucket_id"

    const v4, 0x1455669

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1009
    const-string v3, "bucket_display_name"

    const-string v4, "fasdfsaf"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    const-string v3, "width"

    const/16 v4, 0x780

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1011
    const-string v3, "height"

    const/16 v4, 0x4b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1012
    const-string v3, "mime_type"

    const-string v4, "video/mp4"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v3, "longitude"

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1014
    const-string v3, "latitude"

    const-wide/high16 v4, 0x4041000000000000L    # 34.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1015
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    const v4, 0x10001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1016
    sget-object v3, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    return-object v2
.end method

.method private fillDefaultValueIntoEdenDB(Ljava/util/ArrayList;)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/16 v36, 0xf

    .line 890
    .local v36, "nInsertImage":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    const/16 v4, 0xf

    if-lt v5, v4, :cond_e8

    .line 893
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 894
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    .end local v5    # "i":I
    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    .line 895
    .local v34, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v35

    .line 896
    .local v35, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 898
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v28

    .line 901
    .local v28, "bridge":Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_101

    .line 904
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "REPRESENTATIVE_ID"

    aput-object v7, v4, v6

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkUpdate(Ljava/util/ArrayList;[Ljava/lang/String;)I

    .line 908
    new-instance v10, Landroid/location/Location;

    const-string v4, "Test"

    invoke-direct {v10, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 909
    .local v10, "loc":Landroid/location/Location;
    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-virtual {v10, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 910
    const-wide/high16 v6, 0x4041000000000000L    # 34.0

    invoke-virtual {v10, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 913
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v27, "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_65
    const/4 v4, 0x3

    if-lt v5, v4, :cond_119

    .line 917
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 920
    const/16 v29, 0x0

    .line 921
    .local v29, "count":I
    const/16 v16, 0x0

    .line 922
    .local v16, "activityId":I
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_132

    .line 931
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ACTIVITY_ID"

    aput-object v7, v4, v6

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkUpdate(Ljava/util/ArrayList;[Ljava/lang/String;)I

    .line 934
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v31, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    const/4 v5, 0x0

    .end local v16    # "activityId":I
    :goto_92
    const/4 v4, 0x2

    if-lt v5, v4, :cond_153

    .line 938
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 941
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v26, "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    new-instance v4, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v4, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    new-instance v4, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 948
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v32, "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    const/16 v29, 0x0

    .line 950
    const/16 v16, 0x0

    .line 951
    .restart local v16    # "activityId":I
    const/4 v14, 0x0

    .line 952
    .local v14, "eventId":I
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_da
    :goto_da
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_187

    .line 962
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 969
    .end local v5    # "i":I
    .end local v10    # "loc":Landroid/location/Location;
    .end local v14    # "eventId":I
    .end local v16    # "activityId":I
    .end local v26    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .end local v27    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v28    # "bridge":Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .end local v29    # "count":I
    .end local v31    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v32    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v34    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v35    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_e7
    return-void

    .line 891
    .restart local v5    # "i":I
    :cond_e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 890
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 901
    .end local v5    # "i":I
    .restart local v28    # "bridge":Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .restart local v34    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .restart local v35    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_101
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 902
    .local v33, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v33

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-object/from16 v0, v33

    iput-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J
    :try_end_10f
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_10f} :catch_111

    goto/16 :goto_39

    .line 965
    .end local v28    # "bridge":Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .end local v33    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v34    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v35    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :catch_111
    move-exception v30

    .line 966
    .local v30, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 967
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_e7

    .line 915
    .end local v30    # "e":Ljava/lang/InterruptedException;
    .restart local v5    # "i":I
    .restart local v10    # "loc":Landroid/location/Location;
    .restart local v27    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .restart local v28    # "bridge":Lcom/lge/cic/eden/db/helper/DatabaseBridge;
    .restart local v34    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .restart local v35    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_119
    :try_start_119
    new-instance v4, Lcom/lge/cic/eden/db/type/ActivityInfo;

    int-to-long v6, v5

    int-to-long v8, v5

    new-instance v12, Lcom/lge/cic/eden/db/type/GeoData;

    invoke-direct {v12}, Lcom/lge/cic/eden/db/type/GeoData;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v10

    invoke-direct/range {v4 .. v15}, Lcom/lge/cic/eden/db/type/ActivityInfo;-><init>(IJJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_65

    .line 922
    .restart local v16    # "activityId":I
    .restart local v29    # "count":I
    :cond_132
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 923
    .restart local v33    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move/from16 v0, v16

    move-object/from16 v1, v33

    iput v0, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 924
    add-int/lit8 v29, v29, 0x1

    .line 925
    const/4 v6, 0x5

    move/from16 v0, v29

    if-ne v0, v6, :cond_149

    .line 926
    add-int/lit8 v16, v16, 0x1

    .line 927
    goto/16 :goto_77

    :cond_149
    const/16 v6, 0xa

    move/from16 v0, v29

    if-ne v0, v6, :cond_77

    .line 928
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_77

    .line 936
    .end local v16    # "activityId":I
    .end local v33    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .restart local v31    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    :cond_153
    new-instance v12, Lcom/lge/cic/eden/db/type/EventInfo;

    const/4 v14, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "event"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    int-to-long v0, v5

    move-wide/from16 v16, v0

    int-to-long v0, v5

    move-wide/from16 v18, v0

    new-instance v22, Lcom/lge/cic/eden/db/type/GeoData;

    invoke-direct/range {v22 .. v22}, Lcom/lge/cic/eden/db/type/GeoData;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move v13, v5

    move-object/from16 v20, v10

    move-object/from16 v21, v10

    invoke-direct/range {v12 .. v25}, Lcom/lge/cic/eden/db/type/EventInfo;-><init>(IILjava/lang/String;JJLandroid/location/Location;Landroid/location/Location;Lcom/lge/cic/eden/db/type/GeoData;III)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_92

    .line 952
    .restart local v14    # "eventId":I
    .restart local v16    # "activityId":I
    .restart local v26    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .restart local v32    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :cond_187
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 953
    .restart local v33    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    new-instance v11, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    move-object/from16 v0, v33

    iget-wide v12, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const/4 v15, 0x0

    const v17, 0x10001

    invoke-direct/range {v11 .. v17}, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;-><init>(JIIII)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19f
    .catch Ljava/lang/InterruptedException; {:try_start_119 .. :try_end_19f} :catch_111

    .line 954
    add-int/lit8 v29, v29, 0x1

    .line 955
    const/4 v6, 0x5

    move/from16 v0, v29

    if-ne v0, v6, :cond_1aa

    .line 956
    add-int/lit8 v16, v16, 0x1

    .line 957
    goto/16 :goto_da

    :cond_1aa
    const/16 v6, 0xa

    move/from16 v0, v29

    if-ne v0, v6, :cond_da

    .line 958
    add-int/lit8 v16, v16, 0x1

    .line 959
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_da
.end method

.method private getAllFromImageMediaStore()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1022
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v8, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1024
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_25

    .line 1026
    const/4 v0, -0x1

    :try_start_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1027
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_e4

    move-result v0

    if-nez v0, :cond_26

    .line 1048
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1051
    :cond_25
    return-object v8

    .line 1028
    :cond_26
    :try_start_26
    new-instance v7, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-direct {v7}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>()V

    .line 1029
    .local v7, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    .line 1030
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    .line 1031
    const-string v0, "orientation"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    .line 1032
    sget-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    .line 1033
    const-string v0, "datetaken"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 1034
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    .line 1035
    const-string v0, "date_modified"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    .line 1036
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    .line 1037
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    .line 1038
    const-string v0, "latitude"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 1039
    const-string v0, "longitude"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    .line 1040
    const-string v0, "bucket_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    .line 1041
    const-string v0, "width"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    .line 1042
    const-string v0, "height"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    .line 1043
    sget-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    .line 1045
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catchall {:try_start_26 .. :try_end_e2} :catchall_e4

    goto/16 :goto_1c

    .line 1047
    .end local v7    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :catchall_e4
    move-exception v0

    .line 1048
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1049
    throw v0
.end method

.method private getAllFromVideoMediaStore()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1055
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v8, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1057
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_25

    .line 1059
    const/4 v0, -0x1

    :try_start_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1060
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_d8

    move-result v0

    if-nez v0, :cond_26

    .line 1080
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1083
    :cond_25
    return-object v8

    .line 1061
    :cond_26
    :try_start_26
    new-instance v7, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-direct {v7}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>()V

    .line 1062
    .local v7, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    .line 1063
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    .line 1064
    sget-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    .line 1065
    sget-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 1066
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    .line 1067
    const-string v0, "date_modified"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    .line 1068
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    .line 1069
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    .line 1070
    const-string v0, "latitude"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 1071
    const-string v0, "longitude"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    .line 1072
    const-string v0, "bucket_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    .line 1073
    const-string v0, "width"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    .line 1074
    const-string v0, "height"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    .line 1075
    sget-object v0, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_STORAGE_ID:Ljava/lang/String;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    .line 1077
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d6
    .catchall {:try_start_26 .. :try_end_d6} :catchall_d8

    goto/16 :goto_1c

    .line 1079
    .end local v7    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :catchall_d8
    move-exception v0

    .line 1080
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1081
    throw v0
.end method

.method private isSameImage(Lcom/lge/cic/eden/db/type/MediaInfo;Lcom/lge/cic/eden/db/type/MediaInfo;)Z
    .registers 9
    .param p1, "src"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p2, "other"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    const/4 v0, 0x0

    .line 1104
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 1105
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 1106
    const-string v1, "wonbeom.lee"

    const-string v2, "bucketId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_10
    return v0

    .line 1109
    :cond_11
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1110
    const-string v1, "wonbeom.lee"

    const-string v2, "bucketId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1113
    :cond_23
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    if-eq v1, v2, :cond_31

    .line 1114
    const-string v1, "wonbeom.lee"

    const-string v2, "contentType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1117
    :cond_31
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_41

    .line 1118
    const-string v1, "wonbeom.lee"

    const-string v2, "dateModified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1121
    :cond_41
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_51

    .line 1122
    const-string v1, "wonbeom.lee"

    const-string v2, "dateTaken"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1125
    :cond_51
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    if-eq v1, v2, :cond_5f

    .line 1126
    const-string v1, "wonbeom.lee"

    const-string v2, "deleteFlag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1129
    :cond_5f
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-nez v1, :cond_6f

    .line 1130
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_81

    .line 1131
    const-string v1, "wonbeom.lee"

    const-string v2, "filePath"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1134
    :cond_6f
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 1135
    const-string v1, "wonbeom.lee"

    const-string v2, "filePath"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1138
    :cond_81
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    if-eq v1, v2, :cond_8f

    .line 1139
    const-string v1, "wonbeom.lee"

    const-string v2, "height"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1142
    :cond_8f
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    if-eq v1, v2, :cond_9e

    .line 1143
    const-string v1, "wonbeom.lee"

    const-string v2, "isFavorite"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1146
    :cond_9e
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1147
    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 1146
    cmp-long v1, v2, v4

    if-eqz v1, :cond_b7

    .line 1148
    const-string v1, "wonbeom.lee"

    const-string v2, "latitude"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1151
    :cond_b7
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1152
    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 1151
    cmp-long v1, v2, v4

    if-eqz v1, :cond_d0

    .line 1153
    const-string v1, "wonbeom.lee"

    const-string v2, "longitude"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1156
    :cond_d0
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e1

    .line 1157
    const-string v1, "wonbeom.lee"

    const-string v2, "mediaId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1160
    :cond_e1
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_f2

    .line 1161
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_105

    .line 1162
    const-string v1, "wonbeom.lee"

    const-string v2, "mimeType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1165
    :cond_f2
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    .line 1166
    const-string v1, "wonbeom.lee"

    const-string v2, "mimeType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1169
    :cond_105
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    if-eq v1, v2, :cond_114

    .line 1170
    const-string v1, "wonbeom.lee"

    const-string v2, "orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1173
    :cond_114
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_125

    .line 1174
    const-string v1, "wonbeom.lee"

    const-string v2, "size"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1177
    :cond_125
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    if-eq v1, v2, :cond_134

    .line 1178
    const-string v1, "wonbeom.lee"

    const-string v2, "storageId"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1181
    :cond_134
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_145

    .line 1182
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_158

    .line 1183
    const-string v1, "wonbeom.lee"

    const-string v2, "title"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1186
    :cond_145
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_158

    .line 1187
    const-string v1, "wonbeom.lee"

    const-string v2, "title"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1190
    :cond_158
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    if-eq v1, v2, :cond_167

    .line 1191
    const-string v1, "wonbeom.lee"

    const-string v2, "width"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1194
    :cond_167
    const/4 v0, 0x1

    goto/16 :goto_10
.end method

.method private isSameVideo(Lcom/lge/cic/eden/db/type/MediaInfo;Lcom/lge/cic/eden/db/type/MediaInfo;)Z
    .registers 9
    .param p1, "src"    # Lcom/lge/cic/eden/db/type/MediaInfo;
    .param p2, "other"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    const/4 v0, 0x0

    .line 1198
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1199
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 1264
    :cond_9
    :goto_9
    return v0

    .line 1202
    :cond_a
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1205
    :cond_14
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    if-ne v1, v2, :cond_9

    .line 1208
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1211
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1214
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    if-ne v1, v2, :cond_9

    .line 1217
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-nez v1, :cond_93

    .line 1218
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1224
    :cond_38
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    if-ne v1, v2, :cond_9

    .line 1227
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    if-ne v1, v2, :cond_9

    .line 1230
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1231
    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 1230
    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1234
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 1235
    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 1234
    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1238
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1241
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_9f

    .line 1242
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1248
    :cond_74
    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    iget-wide v4, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    .line 1251
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    if-ne v1, v2, :cond_9

    .line 1254
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_ab

    .line 1255
    iget-object v1, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1261
    :cond_8a
    iget v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    iget v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    if-ne v1, v2, :cond_9

    .line 1264
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1221
    :cond_93
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto/16 :goto_9

    .line 1245
    :cond_9f
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    goto/16 :goto_9

    .line 1258
    :cond_ab
    iget-object v1, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    iget-object v2, p2, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    goto/16 :goto_9
.end method


# virtual methods
.method protected setUp()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v12, 0x64

    .line 50
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 51
    invoke-virtual {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->create(Landroid/content/ContentResolver;)V

    .line 53
    new-instance v0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;-><init>(Lcom/lge/cic/eden/db/helper/DatabaseBridge;)V

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 55
    new-instance v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    iget-object v1, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    .line 57
    const/16 v9, 0x64

    .line 58
    .local v9, "nTestSet":I
    const/16 v10, 0x3e8

    .line 59
    .local v10, "uniqueInteger":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    .line 60
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_38
    if-lt v8, v12, :cond_45

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testVideoSet:Ljava/util/ArrayList;

    .line 66
    const/4 v8, 0x0

    :goto_42
    if-lt v8, v12, :cond_6a

    .line 70
    return-void

    .line 61
    :cond_45
    iget-object v11, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    int-to-long v1, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v10

    int-to-long v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->createImageContentValues(JLjava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v10, v10, 0x1

    .line 60
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 67
    :cond_6a
    iget-object v11, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testVideoSet:Ljava/util/ArrayList;

    int-to-long v1, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v10

    int-to-long v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->createVideoContentValues(JLjava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v10, v10, 0x1

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_42
.end method

.method public testHideAndLastDelete()V
    .registers 16

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 424
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 425
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 426
    .local v12, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v12}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fillDefaultValueIntoEdenDB(Ljava/util/ArrayList;)V

    .line 429
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v10

    .line 431
    .local v10, "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    const/16 v11, 0xa

    .local v11, "i":I
    :goto_21
    const/16 v0, 0xe

    if-lt v11, v0, :cond_84

    .line 437
    :try_start_25
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v2, "_id = 1014"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 440
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 441
    .local v13, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v14

    .line 442
    .local v14, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0, v14, v13}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 452
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/EventInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v9

    .line 453
    .local v9, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    const/4 v0, 0x2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 454
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/EventInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 455
    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/EventInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/EventInfo;->visibility:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 461
    .end local v9    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v13    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v14    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_83
    return-void

    .line 432
    :cond_84
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 433
    .local v7, "columnInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    const/4 v0, 0x1

    iput v0, v7, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    .line 434
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "VISIBILITY"

    aput-object v3, v1, v2

    invoke-virtual {v0, v7, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->update(Lcom/lge/cic/eden/db/type/ColumnInfo;[Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_9c} :catch_9f

    .line 431
    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    .line 457
    .end local v7    # "columnInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    :catch_9f
    move-exception v8

    .line 458
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 459
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_83
.end method

.method public testImageSyncForAddMoveUpdateDelete()V
    .registers 12

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 73
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 74
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 78
    .local v8, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_10
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 79
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 80
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 82
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 83
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 84
    .local v9, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 86
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 87
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 88
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 89
    .local v10, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 92
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v2, "_id = 1001"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 94
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 95
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 96
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_id"

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "2001.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 103
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 104
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 105
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 106
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 107
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 110
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_id"

    const/16 v2, 0x7d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "2002.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 113
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 114
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 116
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v2, "_id = 1002"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 118
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 119
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 120
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "wonbeom/1000.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 1000"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 126
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 127
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 128
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "1000_modified.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "title"

    const-string v2, "1000_modified"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 1000"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 135
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 136
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 137
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "orientation"

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 1000"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 143
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 144
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 145
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 1000"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 151
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 152
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 153
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "longitude"

    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 158
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 1000"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 160
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 161
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 162
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "latitude"

    const-wide v2, 0x4053800000000000L    # 78.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 166
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 1000"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 168
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 169
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 170
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_34d
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_34d} :catch_34e

    .line 179
    .end local v9    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v10    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_34d
    return-void

    .line 175
    :catch_34e
    move-exception v7

    .line 176
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 177
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_34d
.end method

.method public testImageSyncForeAddingExcludedImage()V
    .registers 15

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 183
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 184
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 186
    .local v8, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 187
    .local v13, "noLongitudeImage":Landroid/content/ContentValues;
    const-string v0, "longitude"

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 190
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 191
    .local v11, "noLatitudeImage":Landroid/content/ContentValues;
    const-string v0, "latitude"

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 194
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 195
    .local v12, "noLongitudeAndLatitudeImage":Landroid/content/ContentValues;
    const-string v0, "longitude"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 196
    const-string v0, "latitude"

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 200
    :try_start_5a
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 201
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 202
    .local v9, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 203
    .local v10, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/4 v0, 0x3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_89} :catch_8a

    .line 211
    .end local v9    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v10    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_89
    return-void

    .line 206
    :catch_8a
    move-exception v7

    .line 207
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 208
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_89
.end method

.method public testLightSyncForDelete()V
    .registers 15

    .prologue
    const/4 v3, 0x0

    .line 724
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 725
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 726
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 727
    .local v8, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v8}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fillDefaultValueIntoEdenDB(Ljava/util/ArrayList;)V

    .line 729
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v11

    .line 730
    .local v11, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/16 v7, 0xa

    .local v7, "i":I
    :goto_1a
    const/16 v0, 0xf

    if-lt v7, v0, :cond_4a

    .line 733
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    invoke-virtual {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->lightSyncOnRequest()Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 734
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 735
    .local v10, "mappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    const/16 v0, 0xa

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 736
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 740
    return-void

    .line 731
    .end local v10    # "mappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :cond_4a
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "_id = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v12, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 730
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    .line 736
    .restart local v10    # "mappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    :cond_6f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 737
    .local v9, "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    const/4 v1, 0x0

    iget v2, v9, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->eventId:I

    invoke-static {v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto :goto_43
.end method

.method public testMoveForHidedEvent()V
    .registers 22

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v4}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 371
    .local v18, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fillDefaultValueIntoEdenDB(Ljava/util/ArrayList;)V

    .line 373
    new-instance v14, Lcom/lge/cic/eden/controller/EdenController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-direct {v14, v4}, Lcom/lge/cic/eden/controller/EdenController;-><init>(Landroid/content/Context;)V

    .line 374
    .local v14, "edenController":Lcom/lge/cic/eden/controller/EdenController;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    invoke-virtual {v14, v4}, Lcom/lge/cic/eden/controller/EdenController;->setEventHideFlag([I)V

    .line 379
    :try_start_2e
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v20

    .line 380
    .local v20, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/16 v17, 0xa

    .local v17, "i":I
    :goto_34
    const/16 v4, 0xf

    move/from16 v0, v17

    if-lt v0, v4, :cond_d4

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 386
    const/16 v17, 0xa

    :goto_48
    const/16 v4, 0xf

    move/from16 v0, v17

    if-lt v0, v4, :cond_101

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 393
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    invoke-virtual {v14, v4}, Lcom/lge/cic/eden/controller/EdenController;->setEventHideFlag([I)V

    .line 396
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 397
    .local v19, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v20

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 401
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v12

    .line 402
    .local v12, "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 405
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v15

    .line 406
    .local v15, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    const/4 v4, 0x1

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 409
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    .line 410
    .local v11, "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 413
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v16

    .line 414
    .local v16, "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    const/16 v4, 0xa

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 420
    .end local v11    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .end local v12    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v15    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v16    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v17    # "i":I
    .end local v19    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v20    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_d3
    return-void

    .line 381
    .restart local v17    # "i":I
    .restart local v20    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_d4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v8, v4, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 380
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_34

    .line 387
    :cond_101
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_id"

    move/from16 v0, v17

    add-int/lit16 v6, v0, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_data"

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v0, v17

    add-int/lit16 v7, v0, 0x7d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_155
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_155} :catch_159

    .line 386
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_48

    .line 416
    .end local v17    # "i":I
    .end local v20    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :catch_159
    move-exception v13

    .line 417
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 418
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto/16 :goto_d3
.end method

.method public testRejectedImage()V
    .registers 13

    .prologue
    .line 644
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 645
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 648
    .local v9, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    const/4 v0, 0x5

    if-lt v8, v0, :cond_27f

    .line 652
    :try_start_11
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 653
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 654
    .local v10, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v11

    .line 655
    .local v11, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0, v11, v10}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 658
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 659
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 660
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 662
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 663
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 664
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 666
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 667
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 668
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 670
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 671
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 672
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 674
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v2, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iput-wide v2, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 675
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 676
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 678
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "REPRESENTATIVE_ID"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "SIMILAR_COUNT"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "VISIBILITY_TYPE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v10, v1}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkUpdate(Ljava/util/ArrayList;[Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 681
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v2, "_id = 1000"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 683
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 684
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v2, v3, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 685
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 686
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 688
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v2, v3, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 689
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 690
    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 692
    const-wide/16 v2, 0x3eb

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v2, v3, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 693
    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 694
    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 696
    const-wide/16 v2, 0x3eb

    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v2, v3, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 697
    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 698
    const/4 v1, 0x5

    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 700
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v2, "_id = 1004"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 701
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 702
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 704
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v2, v3, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 705
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 706
    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 708
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v2, v3, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 709
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 710
    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 712
    const-wide/16 v2, 0x3eb

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v2, v3, v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 713
    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 714
    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v0, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v1, v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 721
    .end local v10    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v11    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_27e
    return-void

    .line 649
    :cond_27f
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_290
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_290} :catch_294

    .line 648
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    .line 717
    :catch_294
    move-exception v7

    .line 718
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 719
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_27e
.end method

.method public testRepresentativeId()V
    .registers 21

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v4}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 468
    .local v14, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_15
    const/4 v4, 0x5

    if-lt v13, v4, :cond_281

    .line 472
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 473
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 474
    .local v18, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 475
    .local v19, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 477
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_298

    .line 482
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/MediaInfo;

    const/4 v5, 0x0

    iput v5, v4, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 483
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "REPRESENTATIVE_ID"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "SIMILAR_COUNT"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "VISIBILITY_TYPE"

    aput-object v7, v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkUpdate(Ljava/util/ArrayList;[Ljava/lang/String;)I

    .line 485
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v16, "mappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2c6

    .line 489
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 493
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 494
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2e5

    .line 505
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 506
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_32b

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v6, "_id = 1003"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 518
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 522
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fe
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_349

    .line 533
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 534
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_118
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_38f

    .line 544
    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_id"

    const/16 v6, 0x7d3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_data"

    const-string v6, "2003.jpg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 548
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 549
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 551
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_180
    :goto_180
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3ad

    .line 564
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 565
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19a
    :goto_19a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3fd

    .line 575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v6, "_id = 1000"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 577
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 578
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 581
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1de
    :goto_1de
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_423

    .line 594
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 595
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f8
    :goto_1f8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_473

    .line 605
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_id"

    const/16 v6, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_data"

    const-string v6, "2000.jpg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 608
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 609
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 614
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_260
    :goto_260
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_499

    .line 627
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 628
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27a
    :goto_27a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4f3

    .line 642
    .end local v16    # "mappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_280
    return-void

    .line 469
    :cond_281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 468
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_15

    .line 477
    .restart local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .restart local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_298
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 478
    .local v17, "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v6, v4, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    move-object/from16 v0, v17

    iput-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 479
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    iput v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 480
    const/4 v4, 0x2

    move-object/from16 v0, v17

    iput v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I
    :try_end_2bc
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_2bc} :catch_2be

    goto/16 :goto_46

    .line 638
    .end local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    .end local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :catch_2be
    move-exception v12

    .line 639
    .local v12, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 640
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_280

    .line 486
    .end local v12    # "e":Ljava/lang/InterruptedException;
    .restart local v16    # "mappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .restart local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .restart local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_2c6
    :try_start_2c6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 487
    .restart local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    new-instance v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const/4 v8, 0x1

    move-object/from16 v0, v17

    iget v9, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    const/4 v10, 0x1

    const v11, 0x10001

    invoke-direct/range {v5 .. v11}, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;-><init>(JIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7c

    .line 494
    .end local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_2e5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 495
    .restart local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-nez v5, :cond_310

    .line 496
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 497
    const/4 v5, 0x4

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 498
    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_a0

    .line 500
    :cond_310
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 501
    const/4 v5, 0x4

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 502
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_a0

    .line 506
    .end local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_32b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 507
    .local v15, "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-nez v5, :cond_341

    .line 508
    const/4 v5, 0x0

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_ba

    .line 510
    :cond_341
    const/4 v5, 0x2

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_ba

    .line 522
    .end local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    :cond_349
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 523
    .restart local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-nez v5, :cond_374

    .line 524
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 525
    const/4 v5, 0x3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 526
    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_fe

    .line 528
    :cond_374
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 529
    const/4 v5, 0x3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 530
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_fe

    .line 534
    .end local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_38f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 535
    .restart local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3a5

    .line 536
    const/4 v5, 0x0

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_118

    .line 538
    :cond_3a5
    const/4 v5, 0x2

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_118

    .line 551
    .end local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    :cond_3ad
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 552
    .restart local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x7d3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_180

    .line 553
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3e2

    .line 554
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 555
    const/4 v5, 0x3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 556
    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_180

    .line 558
    :cond_3e2
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 559
    const/4 v5, 0x3

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 560
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_180

    .line 565
    .end local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_3fd
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 566
    .restart local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x7d3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_19a

    .line 567
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-nez v5, :cond_41b

    .line 568
    const/4 v5, 0x0

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_19a

    .line 570
    :cond_41b
    const/4 v5, 0x2

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_19a

    .line 581
    .end local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    :cond_423
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 582
    .restart local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x7d3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1de

    .line 583
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x3e9

    cmp-long v5, v6, v8

    if-nez v5, :cond_458

    .line 584
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 585
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 586
    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_1de

    .line 588
    :cond_458
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 589
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 590
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_1de

    .line 595
    .end local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_473
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 596
    .restart local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x7d3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1f8

    .line 597
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x3e9

    cmp-long v5, v6, v8

    if-nez v5, :cond_491

    .line 598
    const/4 v5, 0x0

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_1f8

    .line 600
    :cond_491
    const/4 v5, 0x2

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_1f8

    .line 614
    .end local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    :cond_499
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 615
    .restart local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x7d0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_260

    .line 616
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x7d3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_260

    .line 617
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    const-wide/16 v8, 0x3e9

    cmp-long v5, v6, v8

    if-nez v5, :cond_4d8

    .line 618
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 619
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 620
    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_260

    .line 622
    :cond_4d8
    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7, v8, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(JJ)V

    .line 623
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 624
    const/4 v5, 0x2

    move-object/from16 v0, v17

    iget v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_260

    .line 628
    .end local v17    # "mediaInfo":Lcom/lge/cic/eden/db/type/MediaInfo;
    :cond_4f3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    .line 629
    .restart local v15    # "mappingInfo":Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x7d0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_27a

    .line 630
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x7d3

    cmp-long v5, v6, v8

    if-eqz v5, :cond_27a

    .line 631
    iget-wide v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->mediaId:J

    const-wide/16 v8, 0x3e9

    cmp-long v5, v6, v8

    if-nez v5, :cond_519

    .line 632
    const/4 v5, 0x0

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    goto/16 :goto_27a

    .line 634
    :cond_519
    const/4 v5, 0x2

    iget v6, v15, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;->visibilityFlag:I

    invoke-static {v5, v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V
    :try_end_51f
    .catch Ljava/lang/InterruptedException; {:try_start_2c6 .. :try_end_51f} :catch_2be

    goto/16 :goto_27a
.end method

.method public testUpdateOtherTableAfterDelete()V
    .registers 21

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v4}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 217
    .local v17, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fillDefaultValueIntoEdenDB(Ljava/util/ArrayList;)V

    .line 221
    :try_start_1b
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 222
    .local v19, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_21
    const/4 v4, 0x5

    move/from16 v0, v16

    if-lt v0, v4, :cond_124

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 229
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 230
    .local v18, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 234
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v12

    .line 235
    .local v12, "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 238
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v14

    .line 239
    .local v14, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 242
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    .line 243
    .local v11, "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 246
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v15

    .line 247
    .local v15, "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    const/16 v4, 0xa

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 250
    const/16 v16, 0x5

    :goto_a3
    const/16 v4, 0xa

    move/from16 v0, v16

    if-lt v0, v4, :cond_151

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 257
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 262
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v12

    .line 263
    const/4 v4, 0x1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 266
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v14

    .line 267
    const/4 v4, 0x1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 270
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    .line 271
    const/4 v4, 0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 274
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v15

    .line 275
    const/4 v4, 0x5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 281
    .end local v11    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .end local v12    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v14    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v15    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v16    # "i":I
    .end local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_123
    return-void

    .line 223
    .restart local v16    # "i":I
    .restart local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v8, v4, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_21

    .line 251
    .restart local v11    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .restart local v12    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .restart local v14    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .restart local v15    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .restart local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v8, v4, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_17a
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_17a} :catch_17e

    .line 250
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a3

    .line 277
    .end local v11    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .end local v12    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v14    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v15    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v16    # "i":I
    .end local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :catch_17e
    move-exception v13

    .line 278
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 279
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_123
.end method

.method public testUpdateOtherTableAfterMove()V
    .registers 21

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v4}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testImageSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 287
    .local v17, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fillDefaultValueIntoEdenDB(Ljava/util/ArrayList;)V

    .line 292
    :try_start_1b
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 293
    .local v19, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_21
    const/4 v4, 0x5

    move/from16 v0, v16

    if-lt v0, v4, :cond_14b

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 299
    const/16 v16, 0x0

    :goto_34
    const/4 v4, 0x5

    move/from16 v0, v16

    if-lt v0, v4, :cond_178

    .line 304
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 308
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 309
    .local v18, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 313
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v12

    .line 314
    .local v12, "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 317
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v14

    .line 318
    .local v14, "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 321
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    .line 322
    .local v11, "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    const/4 v4, 0x2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 325
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v15

    .line 326
    .local v15, "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    const/16 v4, 0xa

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 328
    const/16 v16, 0xa

    :goto_b6
    const/16 v4, 0xf

    move/from16 v0, v16

    if-lt v0, v4, :cond_1d0

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 334
    const/16 v16, 0xa

    :goto_ca
    const/16 v4, 0xf

    move/from16 v0, v16

    if-lt v0, v4, :cond_1f5

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v4

    invoke-static {v4}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 342
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "MEDIA_ID ASC"

    invoke-virtual/range {v4 .. v10}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromImageMediaStore()Ljava/util/ArrayList;

    move-result-object v19

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkImageSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 347
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityInfoTable;->ACTIVITYINFO_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v12

    .line 348
    const/4 v4, 0x1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 351
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventInfoTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v14

    .line 352
    const/4 v4, 0x1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 355
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/ActivityEventMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v11

    .line 356
    const/4 v4, 0x1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 359
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    const-class v5, Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;

    sget-object v6, Lcom/lge/cic/eden/db/table/EventMediaMapTable;->TABLE_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->getAll(Ljava/lang/Class;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v15

    .line 360
    const/4 v4, 0x5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 366
    .end local v11    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .end local v12    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v14    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v15    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v16    # "i":I
    .end local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_14a
    return-void

    .line 294
    .restart local v16    # "i":I
    .restart local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_14b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v8, v4, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_21

    .line 300
    :cond_178
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_id"

    move/from16 v0, v16

    add-int/lit16 v6, v0, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_data"

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v0, v16

    add-int/lit16 v7, v0, 0x7d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 299
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_34

    .line 329
    .restart local v11    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .restart local v12    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .restart local v14    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .restart local v15    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .restart local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    add-int/lit16 v7, v0, 0x3e8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 328
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b6

    .line 335
    :cond_1f5
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_id"

    move/from16 v0, v16

    add-int/lit16 v6, v0, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "_data"

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v0, v16

    add-int/lit16 v7, v0, 0x7d0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_249
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_249} :catch_24d

    .line 334
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_ca

    .line 362
    .end local v11    # "activityEventMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityEventMappingInfo;>;"
    .end local v12    # "activityInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    .end local v14    # "eventInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventInfo;>;"
    .end local v15    # "eventMediaMappingInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/EventMediaMappingInfo;>;"
    .end local v16    # "i":I
    .end local v18    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v19    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :catch_24d
    move-exception v13

    .line 363
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 364
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto/16 :goto_14a
.end method

.method public testVideoSyncForAddMoveUpdateDelete()V
    .registers 12

    .prologue
    .line 748
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v0}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 749
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 750
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testVideoSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 754
    .local v8, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_10
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 755
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 756
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 758
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 759
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 760
    .local v9, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 762
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 763
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 764
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 766
    .local v10, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 769
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v2, "_id = 1101"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 771
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 772
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 773
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 777
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_id"

    const/16 v2, 0x835

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "2101.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 780
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 781
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 782
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 783
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 784
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 787
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_id"

    const/16 v2, 0x836

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "2102.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 790
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 791
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const-string v2, "_id = 1102"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 793
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 794
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 795
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 798
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "wonbeom/1100.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 1100"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 801
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 802
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 803
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 806
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    const-string v2, "2102_modified.jpg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "title"

    const-string v2, "2102_modified"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 2102"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 810
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 811
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 812
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 815
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/lge/cic/eden/mediastore/MediaStoreImageInfo;->COLUMN_NAME_IS_FAVORITE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "_id = 2102"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    .line 818
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v0

    const-class v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v2, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "MEDIA_ID ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 819
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v10

    .line 820
    invoke-direct {p0, v10, v9}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->checkVideoSynchronized(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_265
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_265} :catch_266

    .line 826
    .end local v9    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v10    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_265
    return-void

    .line 822
    :catch_266
    move-exception v7

    .line 823
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 824
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_265
.end method

.method public testVideoSyncForeAddingExcludedVideo()V
    .registers 18

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testVideoSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 849
    .local v9, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 850
    .local v15, "noLongitudeVideo":Landroid/content/ContentValues;
    const-string v1, "longitude"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 853
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 854
    .local v13, "noLatitudeVideo":Landroid/content/ContentValues;
    const-string v1, "latitude"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 857
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 858
    .local v14, "noLongitudeAndLatitudeVideo":Landroid/content/ContentValues;
    const-string v1, "longitude"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 859
    const-string v1, "latitude"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 862
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 863
    .local v12, "minusValueVideoDataTaken":Landroid/content/ContentValues;
    sget-object v1, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    const/16 v2, -0x457

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 866
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    .line 867
    .local v16, "zeroValueVideoDataTaken":Landroid/content/ContentValues;
    sget-object v1, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 871
    :try_start_a5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->mediaStoreSynchronizer:Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    move-result v1

    invoke-static {v1}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertFalse(Z)V

    .line 872
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v1

    const-class v2, Lcom/lge/cic/eden/db/type/MediaInfo;

    sget-object v3, Lcom/lge/cic/eden/db/table/MediaInfoTable;->TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "MEDIA_ID ASC"

    invoke-virtual/range {v1 .. v7}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get(Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 873
    .local v10, "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->getAllFromVideoMediaStore()Ljava/util/ArrayList;

    move-result-object v11

    .line 874
    .local v11, "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    const/4 v1, 0x5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V

    .line 875
    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertEquals(II)V
    :try_end_d6
    .catch Ljava/lang/InterruptedException; {:try_start_a5 .. :try_end_d6} :catch_d7

    .line 881
    .end local v10    # "mediaInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    .end local v11    # "mediaInfosAtStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    :goto_d6
    return-void

    .line 877
    :catch_d7
    move-exception v8

    .line 878
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 879
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->fail()V

    goto :goto_d6
.end method

.method public testVideoSync_NoColumn()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 828
    iget-object v3, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->dbHelper:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    invoke-virtual {v3}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->clearDatabase()V

    .line 829
    invoke-direct {p0}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->clear()V

    .line 830
    iget-object v3, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->testVideoSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 834
    .local v1, "localTestSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    sget-object v4, Lcom/lge/cic/eden/mediastore/MediaStoreVideoInfo;->COLUMN_NAME_VIDEO_DATETAKEN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 836
    new-instance v2, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;

    iget-object v3, p0, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->context:Landroid/content/Context;

    sget-object v4, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->IMAGE_MEDIASTORE_URI:Landroid/net/Uri;

    sget-object v5, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->VIDEO_MEDIASTORE_NO_VIDEO_DATE_TAKEN_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v5}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 837
    .local v2, "mediaStoreSynchronizer":Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;->syncOnRequest(Z)Z

    .line 838
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_42} :catch_43

    .line 842
    .end local v2    # "mediaStoreSynchronizer":Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizer;
    :goto_42
    return-void

    .line 839
    :catch_43
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/lge/cic/eden/sync/mediastore/MediaStoreSynchronizerTest;->assertTrue(Z)V

    goto :goto_42
.end method
