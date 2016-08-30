.class public Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;
.super Ljava/util/ArrayList;
.source "TimeSortedMediaList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/lge/cic/eden/db/type/MediaInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10a89b3f2b36628L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z
    .registers 8
    .param p1, "mediaInfo"    # Lcom/lge/cic/eden/db/type/MediaInfo;

    .prologue
    .line 18
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_9
    if-lez v0, :cond_1b

    iget-wide v2, p1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget-wide v4, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1d

    .line 24
    :cond_1b
    const/4 v1, 0x1

    return v1

    .line 21
    :cond_1d
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 20
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/lge/cic/eden/db/type/MediaInfo;

    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->add(Lcom/lge/cic/eden/db/type/MediaInfo;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/lge/cic/eden/clustering/manager/TimeSortedMediaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_14

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 31
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/cic/eden/db/type/MediaInfo;

    .line 32
    .local v1, "media":Lcom/lge/cic/eden/db/type/MediaInfo;
    const-string v3, "Media ID="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 33
    iget-wide v4, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->mediaId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 34
    const-string v4, ", Date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 35
    iget-wide v4, v1, Lcom/lge/cic/eden/db/type/MediaInfo;->dateTaken:J

    invoke-static {v4, v5}, Lcom/lge/cic/eden/utils/UTC2StringConverter;->toFullTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9
.end method
