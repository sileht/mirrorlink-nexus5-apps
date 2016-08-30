.class public Lcom/lge/cic/eden/db/type/MediaInfo;
.super Lcom/lge/cic/eden/db/type/ColumnInfo;
.source "MediaInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public activityId:I

.field public bucketId:Ljava/lang/String;

.field public contentType:I

.field public dateModified:J

.field public dateTaken:J

.field public deleteFlag:I

.field public filePath:Ljava/lang/String;

.field public height:I

.field public isFavorite:I

.field public latitude:D

.field public longitude:D

.field public mediaId:J

.field public mediaType:I

.field public mimeType:Ljava/lang/String;

.field public orientation:I

.field public photoNicenessScore:F

.field public photoState:I

.field public representativeId:J

.field public roiPos:Ljava/lang/String;

.field public sceneType:I

.field public setTimeDeleteFlag:J

.field public similarCount:I

.field public size:J

.field public storageId:I

.field public title:Ljava/lang/String;

.field public visibilityType:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .prologue
    const-wide/16 v1, -0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 49
    const-string v3, ""

    move-object v0, p0

    move-wide v4, v1

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>(JLjava/lang/String;JDD)V

    .line 50
    return-void
.end method

.method public constructor <init>(J)V
    .registers 14
    .param p1, "mediaId"    # J

    .prologue
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 45
    const-string v3, ""

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>(JLjava/lang/String;JDD)V

    .line 46
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJ)V
    .registers 59
    .param p1, "mediaId"    # J
    .param p3, "contentType"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "dateTaken"    # J
    .param p7, "dateModified"    # J
    .param p9, "mimeType"    # Ljava/lang/String;
    .param p10, "title"    # Ljava/lang/String;
    .param p11, "latitude"    # D
    .param p13, "longitude"    # D
    .param p15, "orientation"    # I
    .param p16, "bucketId"    # Ljava/lang/String;
    .param p17, "mediaType"    # I
    .param p18, "width"    # I
    .param p19, "height"    # I
    .param p20, "storageId"    # I
    .param p21, "isFavorite"    # I
    .param p22, "size"    # J

    .prologue
    .line 59
    .line 61
    const/16 v25, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, ""

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-wide/from16 v23, p22

    move-wide/from16 v26, p1

    invoke-direct/range {v1 .. v33}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJIJIIIIFLjava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJIJIIIIFLjava/lang/String;)V
    .registers 70
    .param p1, "mediaId"    # J
    .param p3, "contentType"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "dateTaken"    # J
    .param p7, "dateModified"    # J
    .param p9, "mimeType"    # Ljava/lang/String;
    .param p10, "title"    # Ljava/lang/String;
    .param p11, "latitude"    # D
    .param p13, "longitude"    # D
    .param p15, "orientation"    # I
    .param p16, "bucketId"    # Ljava/lang/String;
    .param p17, "mediaType"    # I
    .param p18, "width"    # I
    .param p19, "height"    # I
    .param p20, "storageId"    # I
    .param p21, "isFavorite"    # I
    .param p22, "size"    # J
    .param p24, "activityId"    # I
    .param p25, "representativeId"    # J
    .param p27, "similarCount"    # I
    .param p28, "sceneType"    # I
    .param p29, "photoState"    # I
    .param p30, "visibilityType"    # I
    .param p31, "photoNicenessScore"    # F
    .param p32, "roiPos"    # Ljava/lang/String;

    .prologue
    .line 68
    .line 71
    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move-wide/from16 v23, p22

    move/from16 v25, p24

    move-wide/from16 v26, p25

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move-object/from16 v33, p32

    invoke-direct/range {v1 .. v36}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJIJIIIIFLjava/lang/String;IJ)V

    .line 72
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJIJIIIIFLjava/lang/String;IJ)V
    .registers 39
    .param p1, "mediaId"    # J
    .param p3, "contentType"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "dateTaken"    # J
    .param p7, "dateModified"    # J
    .param p9, "mimeType"    # Ljava/lang/String;
    .param p10, "title"    # Ljava/lang/String;
    .param p11, "latitude"    # D
    .param p13, "longitude"    # D
    .param p15, "orientation"    # I
    .param p16, "bucketId"    # Ljava/lang/String;
    .param p17, "mediaType"    # I
    .param p18, "width"    # I
    .param p19, "height"    # I
    .param p20, "storageId"    # I
    .param p21, "isFavorite"    # I
    .param p22, "size"    # J
    .param p24, "activityId"    # I
    .param p25, "representativeId"    # J
    .param p27, "similarCount"    # I
    .param p28, "sceneType"    # I
    .param p29, "photoState"    # I
    .param p30, "visibilityType"    # I
    .param p31, "photoNicenessScore"    # F
    .param p32, "roiPos"    # Ljava/lang/String;
    .param p33, "deleteFlag"    # I
    .param p34, "setTimeDeleteFlag"    # J

    .prologue
    .line 79
    invoke-static {}, Lcom/lge/cic/eden/db/table/MediaInfoTable;->get()Lcom/lge/cic/eden/db/table/TableInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/cic/eden/db/type/ColumnInfo;-><init>(Lcom/lge/cic/eden/db/table/TableInfo;)V

    .line 81
    iput-wide p1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    .line 82
    iput p3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    .line 83
    iput-object p4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    .line 84
    iput-wide p5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 85
    iput-wide p7, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    .line 86
    iput-object p9, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    .line 87
    iput-object p10, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    .line 88
    iput-wide p11, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 89
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    .line 90
    move/from16 v0, p15

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    .line 91
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    .line 92
    move/from16 v0, p17

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    .line 93
    move/from16 v0, p18

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    .line 94
    move/from16 v0, p19

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    .line 95
    move/from16 v0, p20

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    .line 96
    move/from16 v0, p21

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    .line 97
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    .line 99
    move/from16 v0, p24

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 100
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 101
    move/from16 v0, p27

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 102
    move/from16 v0, p28

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->sceneType:I

    .line 103
    move/from16 v0, p29

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    .line 104
    move/from16 v0, p30

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 105
    move/from16 v0, p31

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    .line 106
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    .line 108
    move/from16 v0, p33

    iput v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    .line 109
    move-wide/from16 v0, p34

    iput-wide v0, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->setTimeDeleteFlag:J

    .line 110
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JDD)V
    .registers 44
    .param p1, "mediaId"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "dateTaken"    # J
    .param p6, "latitude"    # D
    .param p8, "longitude"    # D

    .prologue
    .line 52
    const/4 v4, 0x1

    const-string v10, ""

    const-string v11, ""

    .line 53
    const/16 v16, 0x0

    const-string v17, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0x10001

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    .line 54
    const/16 v25, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, ""

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move-wide/from16 v26, p1

    invoke-direct/range {v1 .. v33}, Lcom/lge/cic/eden/db/type/MediaInfo;-><init>(JILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;DDILjava/lang/String;IIIIIJIJIIIIFLjava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    if-ne p0, p1, :cond_5

    .line 578
    :cond_4
    :goto_4
    return v1

    .line 467
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 468
    goto :goto_4

    .line 470
    :cond_9
    instance-of v3, p1, Lcom/lge/cic/eden/db/type/MediaInfo;

    if-nez v3, :cond_f

    move v1, v2

    .line 471
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 473
    check-cast v0, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 474
    .local v0, "other":Lcom/lge/cic/eden/db/type/MediaInfo;
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    if-eq v3, v4, :cond_1a

    move v1, v2

    .line 475
    goto :goto_4

    .line 477
    :cond_1a
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 478
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    if-eqz v3, :cond_30

    move v1, v2

    .line 479
    goto :goto_4

    .line 481
    :cond_24
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    move v1, v2

    .line 482
    goto :goto_4

    .line 484
    :cond_30
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    if-eq v3, v4, :cond_38

    move v1, v2

    .line 485
    goto :goto_4

    .line 487
    :cond_38
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_42

    move v1, v2

    .line 488
    goto :goto_4

    .line 490
    :cond_42
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4c

    move v1, v2

    .line 491
    goto :goto_4

    .line 493
    :cond_4c
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    if-eq v3, v4, :cond_54

    move v1, v2

    .line 494
    goto :goto_4

    .line 496
    :cond_54
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-nez v3, :cond_5e

    .line 497
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_6a

    move v1, v2

    .line 498
    goto :goto_4

    .line 500
    :cond_5e
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    move v1, v2

    .line 501
    goto :goto_4

    .line 503
    :cond_6a
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    if-eq v3, v4, :cond_72

    move v1, v2

    .line 504
    goto :goto_4

    .line 506
    :cond_72
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    if-eq v3, v4, :cond_7a

    move v1, v2

    .line 507
    goto :goto_4

    .line 509
    :cond_7a
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 510
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 509
    cmp-long v3, v4, v6

    if-eqz v3, :cond_8d

    move v1, v2

    .line 511
    goto/16 :goto_4

    .line 513
    :cond_8d
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 514
    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 513
    cmp-long v3, v4, v6

    if-eqz v3, :cond_a0

    move v1, v2

    .line 515
    goto/16 :goto_4

    .line 517
    :cond_a0
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_ab

    move v1, v2

    .line 518
    goto/16 :goto_4

    .line 520
    :cond_ab
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    if-eq v3, v4, :cond_b4

    move v1, v2

    .line 521
    goto/16 :goto_4

    .line 523
    :cond_b4
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_bf

    .line 524
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_cc

    move v1, v2

    .line 525
    goto/16 :goto_4

    .line 527
    :cond_bf
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cc

    move v1, v2

    .line 528
    goto/16 :goto_4

    .line 530
    :cond_cc
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    if-eq v3, v4, :cond_d5

    move v1, v2

    .line 531
    goto/16 :goto_4

    .line 533
    :cond_d5
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 534
    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 533
    if-eq v3, v4, :cond_e6

    move v1, v2

    .line 535
    goto/16 :goto_4

    .line 537
    :cond_e6
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    if-eq v3, v4, :cond_ef

    move v1, v2

    .line 538
    goto/16 :goto_4

    .line 540
    :cond_ef
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_fa

    move v1, v2

    .line 541
    goto/16 :goto_4

    .line 543
    :cond_fa
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    if-nez v3, :cond_105

    .line 544
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    if-eqz v3, :cond_112

    move v1, v2

    .line 545
    goto/16 :goto_4

    .line 547
    :cond_105
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_112

    move v1, v2

    .line 548
    goto/16 :goto_4

    .line 550
    :cond_112
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->sceneType:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->sceneType:I

    if-eq v3, v4, :cond_11b

    move v1, v2

    .line 551
    goto/16 :goto_4

    .line 553
    :cond_11b
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->setTimeDeleteFlag:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->setTimeDeleteFlag:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_126

    move v1, v2

    .line 554
    goto/16 :goto_4

    .line 556
    :cond_126
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    if-eq v3, v4, :cond_12f

    move v1, v2

    .line 557
    goto/16 :goto_4

    .line 559
    :cond_12f
    iget-wide v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    iget-wide v6, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_13a

    move v1, v2

    .line 560
    goto/16 :goto_4

    .line 562
    :cond_13a
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    if-eq v3, v4, :cond_143

    move v1, v2

    .line 563
    goto/16 :goto_4

    .line 565
    :cond_143
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    if-nez v3, :cond_14e

    .line 566
    iget-object v3, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    if-eqz v3, :cond_15b

    move v1, v2

    .line 567
    goto/16 :goto_4

    .line 569
    :cond_14e
    iget-object v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15b

    move v1, v2

    .line 570
    goto/16 :goto_4

    .line 572
    :cond_15b
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    if-eq v3, v4, :cond_164

    move v1, v2

    .line 573
    goto/16 :goto_4

    .line 575
    :cond_164
    iget v3, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    iget v4, v0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 576
    goto/16 :goto_4
.end method

.method public getClazz()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/cic/eden/db/type/ColumnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public varargs getContentValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .param p1, "columnList"    # [Ljava/lang/String;

    .prologue
    .line 310
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v2, "contentValues":Landroid/content/ContentValues;
    array-length v4, p1

    if-nez v4, :cond_203

    .line 313
    invoke-virtual {p0}, Lcom/lge/cic/eden/db/type/MediaInfo;->getAllColumns()[Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "columns":[Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 319
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, v1

    const/4 v4, 0x0

    :goto_13
    if-lt v4, v5, :cond_206

    .line 323
    const-string v4, "MEDIA_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 324
    const-string v4, "MEDIA_ID"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 326
    :cond_28
    const-string v4, "CONTENT_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 327
    const-string v4, "CONTENT_TYPE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    :cond_3b
    const-string v4, "FILE_PATH"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 330
    const-string v4, "FILE_PATH"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_4a
    const-string v4, "DATE_TAKEN"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 333
    const-string v4, "DATE_TAKEN"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    :cond_5d
    const-string v4, "DATE_MODIFIED"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 336
    const-string v4, "DATE_MODIFIED"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    :cond_70
    const-string v4, "MIME_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 339
    const-string v4, "MIME_TYPE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_7f
    const-string v4, "TITLE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 342
    const-string v4, "TITLE"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_8e
    const-string v4, "LATITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 345
    const-string v4, "LATITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 347
    :cond_a1
    const-string v4, "LONGITUDE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 348
    const-string v4, "LONGITUDE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 350
    :cond_b4
    const-string v4, "ORIENTATION"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 351
    const-string v4, "ORIENTATION"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    :cond_c7
    const-string v4, "BUCKET_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 354
    const-string v4, "BUCKET_ID"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_d6
    const-string v4, "MEDIA_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 357
    const-string v4, "MEDIA_TYPE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    :cond_e9
    const-string v4, "WIDTH"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 360
    const-string v4, "WIDTH"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    :cond_fc
    const-string v4, "HEIGHT"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10f

    .line 363
    const-string v4, "HEIGHT"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    :cond_10f
    const-string v4, "STORAGE_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 366
    const-string v4, "STORAGE_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    :cond_122
    const-string v4, "IS_FAVORITE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_135

    .line 369
    const-string v4, "IS_FAVORITE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    :cond_135
    const-string v4, "SIZE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_148

    .line 372
    const-string v4, "SIZE"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    :cond_148
    const-string v4, "ACTIVITY_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 375
    const-string v4, "ACTIVITY_ID"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    :cond_15b
    const-string v4, "REPRESENTATIVE_ID"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e

    .line 378
    const-string v4, "REPRESENTATIVE_ID"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 380
    :cond_16e
    const-string v4, "SIMILAR_COUNT"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_181

    .line 381
    const-string v4, "SIMILAR_COUNT"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    :cond_181
    const-string v4, "SCENE_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_194

    .line 384
    const-string v4, "SCENE_TYPE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->sceneType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    :cond_194
    const-string v4, "PHOTO_STATE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 387
    const-string v4, "PHOTO_STATE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    :cond_1a7
    const-string v4, "VISIBILITY_TYPE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 390
    const-string v4, "VISIBILITY_TYPE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    :cond_1ba
    const-string v4, "PHOTO_NICENESSSCORE"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cd

    .line 393
    const-string v4, "PHOTO_NICENESSSCORE"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 395
    :cond_1cd
    const-string v4, "ROI_POINT"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1dc

    .line 396
    const-string v4, "ROI_POINT"

    iget-object v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_1dc
    const-string v4, "DELETE_FLAG"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ef

    .line 399
    const-string v4, "DELETE_FLAG"

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    :cond_1ef
    const-string v4, "SET_TIME_DELETE_FLAG"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_202

    .line 402
    const-string v4, "SET_TIME_DELETE_FLAG"

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->setTimeDeleteFlag:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 406
    :cond_202
    return-object v2

    .line 315
    .end local v1    # "columns":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_203
    move-object v1, p1

    .restart local v1    # "columns":[Ljava/lang/String;
    goto/16 :goto_c

    .line 319
    .restart local v3    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_206
    aget-object v0, v1, v4

    .line 320
    .local v0, "columnName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13
.end method

.method public getPrimaryValues()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 411
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 412
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "MEDIA_ID"

    iget-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    return-object v0
.end method

.method public hashCode()I
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/16 v10, 0x20

    .line 422
    const/16 v0, 0x1f

    .line 423
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 424
    .local v1, "result":I
    iget v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    add-int/lit8 v1, v4, 0x1f

    .line 425
    mul-int/lit8 v6, v1, 0x1f

    .line 426
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    if-nez v4, :cond_e7

    move v4, v5

    .line 425
    :goto_11
    add-int v1, v6, v4

    .line 427
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    add-int v1, v4, v6

    .line 428
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 429
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 430
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    add-int v1, v4, v6

    .line 431
    mul-int/lit8 v6, v1, 0x1f

    .line 432
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    if-nez v4, :cond_ef

    move v4, v5

    .line 431
    :goto_3c
    add-int v1, v6, v4

    .line 433
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    add-int v1, v4, v6

    .line 434
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    add-int v1, v4, v6

    .line 436
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 437
    .local v2, "temp":J
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 438
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 439
    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 440
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 441
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    add-int v1, v4, v6

    .line 442
    mul-int/lit8 v6, v1, 0x1f

    .line 443
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    if-nez v4, :cond_f7

    move v4, v5

    .line 442
    :goto_7e
    add-int v1, v6, v4

    .line 444
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    add-int v1, v4, v6

    .line 445
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    add-int v1, v4, v6

    .line 446
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    add-int v1, v4, v6

    .line 447
    mul-int/lit8 v4, v1, 0x1f

    .line 448
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    .line 447
    add-int v1, v4, v6

    .line 449
    mul-int/lit8 v6, v1, 0x1f

    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    if-nez v4, :cond_fe

    move v4, v5

    :goto_a8
    add-int v1, v6, v4

    .line 450
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->sceneType:I

    add-int v1, v4, v6

    .line 451
    mul-int/lit8 v4, v1, 0x1f

    .line 452
    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->setTimeDeleteFlag:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->setTimeDeleteFlag:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    .line 451
    add-int v1, v4, v6

    .line 453
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    add-int v1, v4, v6

    .line 454
    mul-int/lit8 v4, v1, 0x1f

    iget-wide v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    iget-wide v8, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v6, v6

    add-int v1, v4, v6

    .line 455
    mul-int/lit8 v4, v1, 0x1f

    iget v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    add-int v1, v4, v6

    .line 456
    mul-int/lit8 v4, v1, 0x1f

    iget-object v6, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    if-nez v6, :cond_105

    :goto_d8
    add-int v1, v4, v5

    .line 457
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    add-int v1, v4, v5

    .line 458
    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    add-int v1, v4, v5

    .line 459
    return v1

    .line 426
    .end local v2    # "temp":J
    :cond_e7
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_11

    .line 432
    :cond_ef
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_3c

    .line 443
    .restart local v2    # "temp":J
    :cond_f7
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_7e

    .line 449
    :cond_fe
    iget-object v4, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_a8

    .line 456
    :cond_105
    iget-object v5, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_d8
.end method

.method public setContentValues(Landroid/content/ContentValues;)V
    .registers 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 114
    const-string v1, "MEDIA_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 115
    const-string v1, "MEDIA_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 116
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_235

    .line 117
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    .line 122
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_16
    :goto_16
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 123
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_23e

    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->contentType:I

    .line 130
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_2c
    :goto_2c
    const-string v1, "FILE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 131
    const-string v1, "FILE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->filePath:Ljava/lang/String;

    .line 133
    :cond_3c
    const-string v1, "DATE_TAKEN"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 134
    const-string v1, "DATE_TAKEN"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 135
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_247

    .line 136
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    .line 141
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_52
    :goto_52
    const-string v1, "DATE_MODIFIED"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 142
    const-string v1, "DATE_MODIFIED"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 143
    .restart local v0    # "temp":Ljava/lang/Long;
    if-eqz v0, :cond_250

    .line 144
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->dateModified:J

    .line 149
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_68
    :goto_68
    const-string v1, "MIME_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 150
    const-string v1, "MIME_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mimeType:Ljava/lang/String;

    .line 152
    :cond_78
    const-string v1, "TITLE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 153
    const-string v1, "TITLE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->title:Ljava/lang/String;

    .line 155
    :cond_88
    const-string v1, "LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 156
    const-string v1, "LATITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 157
    .local v0, "temp":Ljava/lang/Double;
    if-eqz v0, :cond_259

    .line 158
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->latitude:D

    .line 163
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_9e
    :goto_9e
    const-string v1, "LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 164
    const-string v1, "LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 165
    .restart local v0    # "temp":Ljava/lang/Double;
    if-eqz v0, :cond_262

    .line 166
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->longitude:D

    .line 171
    .end local v0    # "temp":Ljava/lang/Double;
    :cond_b4
    :goto_b4
    const-string v1, "ORIENTATION"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 172
    const-string v1, "ORIENTATION"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_26b

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->orientation:I

    .line 179
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_ca
    :goto_ca
    const-string v1, "BUCKET_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 180
    const-string v1, "BUCKET_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->bucketId:Ljava/lang/String;

    .line 182
    :cond_da
    const-string v1, "MEDIA_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 183
    const-string v1, "MEDIA_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_274

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaType:I

    .line 190
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_f0
    :goto_f0
    const-string v1, "WIDTH"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 191
    const-string v1, "WIDTH"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 192
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_27d

    .line 193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->width:I

    .line 198
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_106
    :goto_106
    const-string v1, "HEIGHT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 199
    const-string v1, "HEIGHT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 200
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_286

    .line 201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->height:I

    .line 206
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_11c
    :goto_11c
    const-string v1, "STORAGE_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 207
    const-string v1, "STORAGE_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 208
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_28f

    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->storageId:I

    .line 214
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_132
    :goto_132
    const-string v1, "IS_FAVORITE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 215
    const-string v1, "IS_FAVORITE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_298

    .line 217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->isFavorite:I

    .line 222
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_148
    :goto_148
    const-string v1, "SIZE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 223
    const-string v1, "SIZE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 224
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_2a1

    .line 225
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->size:J

    .line 230
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_15e
    :goto_15e
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_174

    .line 231
    const-string v1, "ACTIVITY_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2aa

    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    .line 238
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_174
    :goto_174
    const-string v1, "REPRESENTATIVE_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 239
    const-string v1, "REPRESENTATIVE_ID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 240
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_2b3

    .line 241
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->representativeId:J

    .line 246
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_18a
    :goto_18a
    const-string v1, "SIMILAR_COUNT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 247
    const-string v1, "SIMILAR_COUNT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 248
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2bc

    .line 249
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->similarCount:I

    .line 254
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_1a0
    :goto_1a0
    const-string v1, "SCENE_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    .line 255
    const-string v1, "SCENE_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 256
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2c5

    .line 257
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->sceneType:I

    .line 262
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_1b6
    :goto_1b6
    const-string v1, "PHOTO_STATE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 263
    const-string v1, "PHOTO_STATE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 264
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2ce

    .line 265
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoState:I

    .line 270
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_1cc
    :goto_1cc
    const-string v1, "VISIBILITY_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 271
    const-string v1, "VISIBILITY_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 272
    .restart local v0    # "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2d7

    .line 273
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->visibilityType:I

    .line 278
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_1e2
    :goto_1e2
    const-string v1, "PHOTO_NICENESSSCORE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    .line 279
    const-string v1, "PHOTO_NICENESSSCORE"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 280
    .local v0, "temp":Ljava/lang/Float;
    if-eqz v0, :cond_2e0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->photoNicenessScore:F

    .line 286
    .end local v0    # "temp":Ljava/lang/Float;
    :cond_1f8
    :goto_1f8
    const-string v1, "ROI_POINT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_208

    .line 287
    const-string v1, "ROI_POINT"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->roiPos:Ljava/lang/String;

    .line 289
    :cond_208
    const-string v1, "DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 290
    const-string v1, "DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 291
    .local v0, "temp":Ljava/lang/Integer;
    if-eqz v0, :cond_2e9

    .line 292
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->deleteFlag:I

    .line 297
    .end local v0    # "temp":Ljava/lang/Integer;
    :cond_21e
    :goto_21e
    const-string v1, "SET_TIME_DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_234

    .line 298
    const-string v1, "SET_TIME_DELETE_FLAG"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 299
    .local v0, "temp":Ljava/lang/Long;
    if-eqz v0, :cond_2f2

    .line 300
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/cic/eden/db/type/MediaInfo;->setTimeDeleteFlag:J

    .line 306
    .end local v0    # "temp":Ljava/lang/Long;
    :cond_234
    :goto_234
    return-void

    .line 119
    .restart local v0    # "temp":Ljava/lang/Long;
    :cond_235
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "MEDIA_ID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 127
    .local v0, "temp":Ljava/lang/Integer;
    :cond_23e
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "CONTENT_TYPE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 138
    .local v0, "temp":Ljava/lang/Long;
    :cond_247
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "DATE_TAKEN is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 146
    :cond_250
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "DATE_MODIFIED is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    .line 160
    .local v0, "temp":Ljava/lang/Double;
    :cond_259
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "LATITUDE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 168
    :cond_262
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "LONGITUDE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 176
    .local v0, "temp":Ljava/lang/Integer;
    :cond_26b
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "ORIENTATION is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    .line 187
    :cond_274
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "MEDIA_TYPE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f0

    .line 195
    :cond_27d
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "WIDTH is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_106

    .line 203
    :cond_286
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "HEIGHT is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11c

    .line 211
    :cond_28f
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "STORAGE_ID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_132

    .line 219
    :cond_298
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "IS_FAVORITE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_148

    .line 227
    .local v0, "temp":Ljava/lang/Long;
    :cond_2a1
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "SIZE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15e

    .line 235
    .local v0, "temp":Ljava/lang/Integer;
    :cond_2aa
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "ACTIVITY_ID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_174

    .line 243
    .local v0, "temp":Ljava/lang/Long;
    :cond_2b3
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "REPRESENTATIVE_ID is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18a

    .line 251
    .local v0, "temp":Ljava/lang/Integer;
    :cond_2bc
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "SIMILAR_COUNT is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a0

    .line 259
    :cond_2c5
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "SCENE_TYPE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b6

    .line 267
    :cond_2ce
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "PHOTO_STATE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cc

    .line 275
    :cond_2d7
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "VISIBILITY_TYPE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e2

    .line 283
    .local v0, "temp":Ljava/lang/Float;
    :cond_2e0
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "PHOTO_NICENESSSCORE is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f8

    .line 294
    .local v0, "temp":Ljava/lang/Integer;
    :cond_2e9
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "DELETE_FLAG is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21e

    .line 302
    .local v0, "temp":Ljava/lang/Long;
    :cond_2f2
    sget-object v1, Lcom/lge/cic/eden/db/type/MediaInfo;->TAG:Ljava/lang/String;

    const-string v2, "SET_TIME_DELETE_FLAG is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234
.end method
