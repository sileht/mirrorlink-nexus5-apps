.class public Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
.super Ljava/lang/Object;
.source "VideoSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoInfoForSync"
.end annotation


# instance fields
.field public dateTaken:J

.field public filePath:Ljava/lang/String;

.field public isFavorite:I

.field public latitude:D

.field public longitude:D

.field public mediaId:J

.field public size:J


# direct methods
.method public constructor <init>()V
    .registers 15

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v2, 0x0

    .line 57
    const-string v4, ""

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v6, v2

    move-wide v8, v2

    move-wide v12, v10

    invoke-direct/range {v1 .. v13}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;-><init>(JLjava/lang/String;IJJDD)V

    .line 58
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IJJDD)V
    .registers 14
    .param p1, "mediaId"    # J
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "isFavorite"    # I
    .param p5, "dateTaken"    # J
    .param p7, "size"    # J
    .param p9, "latitude"    # D
    .param p11, "longitude"    # D

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    .line 62
    iput-object p3, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    .line 63
    iput p4, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->isFavorite:I

    .line 64
    iput-wide p5, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->dateTaken:J

    .line 65
    iput-wide p7, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->size:J

    .line 66
    iput-wide p9, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->latitude:D

    .line 67
    iput-wide p11, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->longitude:D

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 72
    if-eqz p1, :cond_17

    instance-of v2, p1, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    if-eqz v2, :cond_17

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;

    .line 74
    .local v0, "target":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 75
    # getter for: Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->access$0()Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "filePath is null."

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    .line 90
    .end local v0    # "target":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    :cond_17
    :goto_17
    return v1

    .line 78
    .restart local v0    # "target":Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;
    :cond_18
    iget-object v2, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 79
    # getter for: Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {}, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer;->access$0()Lcom/lge/cic/eden/utils/Logger;

    move-result-object v2

    const-string v3, "target.filePath is null."

    invoke-virtual {v2, v3}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_17

    .line 83
    :cond_26
    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    iget-wide v4, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    iget v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->isFavorite:I

    iget v3, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->isFavorite:I

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 84
    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 85
    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 88
    const/4 v1, 0x1

    goto :goto_17
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->mediaId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->isFavorite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/cic/eden/sync/mediastore/VideoSynchronizer$VideoInfoForSync;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
