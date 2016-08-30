.class Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$7;
.super Ljava/lang/Object;
.source "EventClusteringDbHelper.java"

# interfaces
.implements Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getLastMonthEventIdsInEventInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$7;->this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow(Landroid/content/ContentValues;)Ljava/lang/Integer;
    .registers 9
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 554
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$7;->this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    # getter for: Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v4}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->access$0(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "key = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "id":I
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 558
    .local v3, "temp":Ljava/lang/Integer;
    if-eqz v3, :cond_37

    .line 559
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 561
    :cond_37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 564
    .end local v0    # "id":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "temp":Ljava/lang/Integer;
    :goto_3b
    return-object v4

    :cond_3c
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3b
.end method

.method public bridge synthetic mapRow(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$7;->mapRow(Landroid/content/ContentValues;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
