.class Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;
.super Ljava/lang/Object;
.source "EventClusteringDbHelper.java"

# interfaces
.implements Lcom/lge/cic/eden/db/helper/DatabaseBridge$RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->getMostFrequentColumnCount(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

.field private final synthetic val$columnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    iput-object p2, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->val$columnName:Ljava/lang/String;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow(Landroid/content/ContentValues;)Landroid/util/Pair;
    .registers 11
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 395
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, ""

    .line 396
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 398
    .local v0, "count":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 412
    new-instance v5, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 398
    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    # getter for: Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v6}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->access$0(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "key = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "count("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->val$columnName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 401
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 402
    .local v4, "temp":Ljava/lang/Integer;
    if-eqz v4, :cond_60

    .line 403
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 405
    :cond_60
    iget-object v6, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    # getter for: Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v6}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->access$0(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "count = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto :goto_b

    .line 406
    .end local v4    # "temp":Ljava/lang/Integer;
    :cond_79
    iget-object v6, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->val$columnName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 407
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    iget-object v6, p0, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->this$0:Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;

    # getter for: Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->logger:Lcom/lge/cic/eden/utils/Logger;
    invoke-static {v6}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;->access$0(Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper;)Lcom/lge/cic/eden/utils/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "str = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/cic/eden/utils/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public bridge synthetic mapRow(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lge/cic/eden/db/helper/EventClusteringDbHelper$5;->mapRow(Landroid/content/ContentValues;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
