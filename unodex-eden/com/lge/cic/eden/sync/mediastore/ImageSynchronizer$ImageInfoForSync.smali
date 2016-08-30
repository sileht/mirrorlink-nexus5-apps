.class public Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
.super Ljava/lang/Object;
.source "ImageSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageInfoForSync"
.end annotation


# instance fields
.field public dateTaken:J

.field public filePath:Ljava/lang/String;

.field public isFavorite:I

.field public latitude:D

.field public longitude:D

.field public mediaId:J

.field public orientation:I

.field public size:J

.field final synthetic this$0:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;


# direct methods
.method public constructor <init>(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;)V
    .registers 18

    .prologue
    .line 94
    const-wide/16 v3, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;-><init>(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;JLjava/lang/String;IIJJDD)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;JLjava/lang/String;IIJJDD)V
    .registers 16
    .param p2, "mediaId"    # J
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "orientation"    # I
    .param p6, "isFavorite"    # I
    .param p7, "dateTaken"    # J
    .param p9, "size"    # J
    .param p11, "latitude"    # D
    .param p13, "longitude"    # D

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->this$0:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    .line 100
    iput-object p4, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    .line 101
    iput p5, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->orientation:I

    .line 102
    iput p6, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->isFavorite:I

    .line 103
    iput-wide p7, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->dateTaken:J

    .line 104
    iput-wide p9, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->size:J

    .line 105
    iput-wide p11, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->latitude:D

    .line 106
    iput-wide p13, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->longitude:D

    .line 107
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 111
    if-eqz p1, :cond_19

    instance-of v2, p1, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    if-eqz v2, :cond_19

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;

    .line 113
    .local v0, "target":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 114
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->this$0:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    # getter for: Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->access$0(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "filePath is null."

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 131
    .end local v0    # "target":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    :cond_19
    :goto_19
    return v1

    .line 117
    .restart local v0    # "target":Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;
    :cond_1a
    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    if-nez v2, :cond_2a

    .line 118
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->this$0:Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;

    # getter for: Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v2}, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;->access$0(Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "target.filePath is null."

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_19

    .line 122
    :cond_2a
    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    iget-wide v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    iget v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->orientation:I

    iget v3, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->orientation:I

    if-ne v2, v3, :cond_19

    .line 123
    iget v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->isFavorite:I

    iget v3, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->isFavorite:I

    if-ne v2, v3, :cond_19

    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 124
    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 125
    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 129
    const/4 v1, 0x1

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->isFavorite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/ImageSynchronizer$ImageInfoForSync;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
