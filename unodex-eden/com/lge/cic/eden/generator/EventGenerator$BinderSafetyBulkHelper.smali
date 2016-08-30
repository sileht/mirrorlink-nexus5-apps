.class Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;
.super Ljava/lang/Object;
.source "EventGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/cic/eden/generator/EventGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderSafetyBulkHelper"
.end annotation


# static fields
.field private static logger:Lcom/lge/cic/eden/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 506
    const-class v0, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/cic/eden/utils/Logger;->getLogger(Ljava/lang/String;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityInfoIndices(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "trunc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/ActivityInfo;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/ActivityInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v2, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 543
    .local v4, "n":I
    if-ge v4, p1, :cond_2f

    .line 544
    sget-object v6, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  ActivityInfo at ACT: n = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 545
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :goto_2e
    return-object v2

    .line 548
    :cond_2f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p1

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 550
    .local v5, "nTimes":I
    sget-object v6, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  ActivityInfo at ACT: n = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nTimes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5d
    if-lt v1, v5, :cond_67

    .line 563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 552
    :cond_67
    add-int/lit8 v6, v1, 0x1

    mul-int v0, v6, p1

    .line 554
    .local v0, "findIdx":I
    move v3, v0

    .local v3, "j":I
    :goto_6c
    add-int/lit8 v6, v4, -0x1

    if-lt v3, v6, :cond_73

    .line 551
    :cond_70
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 555
    :cond_73
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget v7, v6, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/ActivityInfo;

    iget v6, v6, Lcom/lge/cic/eden/db/type/ActivityInfo;->activityId:I

    if-eq v7, v6, :cond_a5

    .line 556
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    if-eq v6, v7, :cond_70

    .line 557
    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 554
    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c
.end method

.method private static getMediaInfoIndices(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "trunc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/cic/eden/db/type/MediaInfo;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/cic/eden/db/type/MediaInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v2, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 513
    .local v4, "n":I
    if-ge v4, p1, :cond_2f

    .line 514
    sget-object v6, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  MediaInfo at ACT: n = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :goto_2e
    return-object v2

    .line 518
    :cond_2f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p1

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 520
    .local v5, "nTimes":I
    sget-object v6, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  MediaInfo at ACT: n = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nTimes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5b
    if-lt v1, v5, :cond_65

    .line 533
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 522
    :cond_65
    add-int/lit8 v6, v1, 0x1

    mul-int v0, v6, p1

    .line 524
    .local v0, "findIdx":I
    move v3, v0

    .local v3, "j":I
    :goto_6a
    add-int/lit8 v6, v4, -0x1

    if-lt v3, v6, :cond_71

    .line 521
    :cond_6e
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 525
    :cond_71
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v7, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/cic/eden/db/type/MediaInfo;

    iget v6, v6, Lcom/lge/cic/eden/db/type/MediaInfo;->activityId:I

    if-eq v7, v6, :cond_a3

    .line 526
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    if-eq v6, v7, :cond_6e

    .line 527
    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 524
    :cond_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a
.end method

.method public static insert(Ljava/util/ArrayList;I)V
    .registers 9
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "trunc"    # I

    .prologue
    .line 589
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "insert()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 591
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "list is null"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 606
    :cond_14
    :goto_14
    return-void

    .line 595
    :cond_15
    const/4 v2, 0x0

    .line 596
    .local v2, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;

    if-eqz v4, :cond_55

    .line 597
    invoke-static {p0, p1}, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->getActivityInfoIndices(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_14

    .line 599
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 600
    .local v3, "start":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 601
    .local v0, "end":I
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkInsert(Ljava/util/ArrayList;)I

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 604
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v3    # "start":I
    :cond_55
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "Unsupported Type"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public static update(Ljava/util/ArrayList;I)V
    .registers 11
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "trunc"    # I

    .prologue
    const/4 v8, 0x0

    .line 569
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "update()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 571
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "list is null"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 586
    :cond_15
    :goto_15
    return-void

    .line 575
    :cond_16
    const/4 v2, 0x0

    .line 576
    .local v2, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/lge/cic/eden/db/type/MediaInfo;

    if-eqz v4, :cond_5c

    .line 577
    invoke-static {p0, p1}, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->getMediaInfoIndices(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 578
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_15

    .line 579
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 580
    .local v3, "start":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 581
    .local v0, "end":I
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "ACTIVITY_ID"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkUpdate(Ljava/util/ArrayList;[Ljava/lang/String;)I

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 584
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v3    # "start":I
    :cond_5c
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "Unsupported Type"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static updateGeoCode(Ljava/util/ArrayList;I)V
    .registers 12
    .param p0, "list"    # Ljava/util/ArrayList;
    .param p1, "trunc"    # I

    .prologue
    const/4 v9, 0x0

    .line 609
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "update()"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 611
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "list is null"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->debug(Ljava/lang/String;)V

    .line 627
    :cond_15
    :goto_15
    return-void

    .line 615
    :cond_16
    const/4 v2, 0x0

    .line 616
    .local v2, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/lge/cic/eden/db/type/ActivityInfo;

    if-eqz v4, :cond_75

    .line 617
    invoke-static {p0, p1}, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->getActivityInfoIndices(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 618
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_15

    .line 619
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 620
    .local v3, "start":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 621
    .local v0, "end":I
    invoke-static {}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->get()Lcom/lge/cic/eden/db/helper/DatabaseBridge;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "A_LOCALE"

    aput-object v7, v6, v9

    const/4 v7, 0x1

    .line 622
    const-string v8, "A_GEOCOUNTRYNAME"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "A_GEOADMINAREA"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "A_GEOLOCALITY"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "A_GEOTHOROUGHFARE"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "A_RETRYCOUNT"

    aput-object v8, v6, v7

    .line 621
    invoke-virtual {v4, v5, v6}, Lcom/lge/cic/eden/db/helper/DatabaseBridge;->bulkUpdate(Ljava/util/ArrayList;[Ljava/lang/String;)I

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 625
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v3    # "start":I
    :cond_75
    sget-object v4, Lcom/lge/cic/eden/generator/EventGenerator$BinderSafetyBulkHelper;->logger:Lcom/lge/cic/eden/utils/Logger;

    const-string v5, "Unsupported Type"

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->warn(Ljava/lang/String;)V

    goto :goto_15
.end method
